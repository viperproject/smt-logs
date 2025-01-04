(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:21:11
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
(declare-fun s$struct$self$init<$Struct> (Int Int Int Int Bool $Map<Int~_Int> $Map<Int~_Int> Bool) $Struct)
(declare-fun s$struct$self$eq<Bool> ($Struct $Struct) Bool)
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
(declare-fun $accessible$set_f%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$set_f_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$set_f_fail%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$set_f_fail_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$pay%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_0%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_fail%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_fail_0%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_and_set_f%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_and_set_f_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_and_set_f_fail_1%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_and_set_f_fail_1_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_and_set_f_fail_2%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_and_set_f_fail_2_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_and_set_f_fail_3%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$pay_and_set_f_fail_3_0%trigger ($Snap Int Int Int Int Int Int) Bool)
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
(assert (forall (($arg_0 Int) ($arg_1 Int) ($arg_2 Int) ($arg_3 Int) ($arg_4 Bool) ($arg_5 $Map<Int~_Int>) ($arg_6 $Map<Int~_Int>) ($arg_7 Bool)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) (- 0 1)))
      9122519725869122497593506884710)
    (and
      (=
        ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) 0))
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
  :qid |quant-u-1336|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-1337|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1342|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1343|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1338|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-1339|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1344|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1345|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1340|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1341|)))
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
  :qid |quant-u-1346|)))
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
  :qid |quant-u-1347|)))
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
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 0)): Int) &&
;   ($struct_get($struct_loc($self$0, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 0))))
(assert (= ($Snap.second $t@8@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 0))
  170141183460469231731687303715884105727))
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
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 3)): Int) &&
;   ($struct_get($struct_loc($self$0, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 ($Snap.combine ($Snap.first $t@11@01) ($Snap.second $t@11@01))))
(assert (= ($Snap.first $t@11@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 3))))
(assert (= ($Snap.second $t@11@01) $Snap.unit))
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
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@13@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(push) ; 4
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q0@13@01)) | live]
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q0@13@01) | live]
(push) ; 5
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q0@13@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q0@13@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@13@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@634@11@634@354-aux|)))
(assert (forall (($q0@13@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@634@11@634@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $q0@15@01 Int)
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
(assert (forall (($q0@15@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@15@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@635@11@635@262|)))
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
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@17@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(push) ; 4
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 6)), $q1@17@01)) | live]
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 6)), $q1@17@01) | live]
(push) ; 5
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 6)), $q1@17@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 6)), $q1@17@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@17@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@636@11@636@354-aux|)))
(assert (forall (($q1@17@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@636@11@636@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $q1@19@01 Int)
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
(assert (forall (($q1@19@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@19@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@637@11@637@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 $Snap.unit))
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
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(assert (= ($Snap.first $t@21@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0))))
(assert (= ($Snap.second $t@21@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 ($Snap.combine ($Snap.first $t@22@01) ($Snap.second $t@22@01))))
(assert (= ($Snap.first $t@22@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))
(assert (= ($Snap.second $t@22@01) $Snap.unit))
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
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 ($Snap.combine ($Snap.first $t@23@01) ($Snap.second $t@23@01))))
(assert (= ($Snap.first $t@23@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2))))
(assert (= ($Snap.second $t@23@01) $Snap.unit))
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
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
(assert (= ($Snap.first $t@24@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 3))))
(assert (= ($Snap.second $t@24@01) $Snap.unit))
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
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@26@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(push) ; 4
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q0@26@01)) | live]
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q0@26@01) | live]
(push) ; 5
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q0@26@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q0@26@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@26@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@643@11@643@354-aux|)))
(assert (forall (($q0@26@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@643@11@643@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $q0@28@01 Int)
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
(assert (forall (($q0@28@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@28@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@644@11@644@262|)))
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
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@30@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(push) ; 4
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 6)), $q1@30@01)) | live]
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 6)), $q1@30@01) | live]
(push) ; 5
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 6)), $q1@30@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 6)), $q1@30@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@30@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@645@11@645@354-aux|)))
(assert (forall (($q1@30@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@645@11@645@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $q1@32@01 Int)
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
(assert (forall (($q1@32@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@32@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@646@11@646@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 $Snap.unit))
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
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$2, 0)): Int) &&
;   ($struct_get($struct_loc($self$2, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0))))
(assert (= ($Snap.second $t@34@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 1)): Int) &&
;   ($struct_get($struct_loc($self$2, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
(assert (= ($Snap.first $t@35@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))
(assert (= ($Snap.second $t@35@01) $Snap.unit))
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
(declare-const $t@36@01 $Snap)
(assert (= $t@36@01 ($Snap.combine ($Snap.first $t@36@01) ($Snap.second $t@36@01))))
(assert (= ($Snap.first $t@36@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))))
(assert (= ($Snap.second $t@36@01) $Snap.unit))
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
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01))))
(assert (= ($Snap.first $t@37@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$2, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$2, 3)): Int)
; [eval] $struct_loc($self$2, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 3))))
(assert (= ($Snap.second $t@37@01) $Snap.unit))
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
(declare-const $t@38@01 $Snap)
(assert (= $t@38@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@39@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
(push) ; 4
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q0@39@01)) | live]
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q0@39@01) | live]
(push) ; 5
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q0@39@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q0@39@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@39@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@652@11@652@354-aux|)))
(assert (forall (($q0@39@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@652@11@652@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int))
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int))
(declare-const $q0@41@01 Int)
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
(assert (forall (($q0@41@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@41@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@41@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@653@11@653@262|)))
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
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@43@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 6)
(push) ; 4
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 6)), $q1@43@01)) | live]
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 6)), $q1@43@01) | live]
(push) ; 5
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 6)), $q1@43@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 6)), $q1@43@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@43@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@654@11@654@354-aux|)))
(assert (forall (($q1@43@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@654@11@654@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])): Int))
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])): Int))
(declare-const $q1@45@01 Int)
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
(assert (forall (($q1@45@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@45@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@655@11@655@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 $Snap.unit))
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
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 ($Snap.combine ($Snap.first $t@47@01) ($Snap.second $t@47@01))))
(assert (= ($Snap.first $t@47@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 0))))
(assert (= ($Snap.second $t@47@01) $Snap.unit))
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
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 ($Snap.combine ($Snap.first $t@48@01) ($Snap.second $t@48@01))))
(assert (= ($Snap.first $t@48@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 1))))
(assert (= ($Snap.second $t@48@01) $Snap.unit))
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
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 ($Snap.combine ($Snap.first $t@49@01) ($Snap.second $t@49@01))))
(assert (= ($Snap.first $t@49@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 2))))
(assert (= ($Snap.second $t@49@01) $Snap.unit))
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
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 $Snap.unit))
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
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 ($Snap.combine ($Snap.first $t@51@01) ($Snap.second $t@51@01))))
(assert (= ($Snap.first $t@51@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 4))))
(assert (= ($Snap.second $t@51@01) $Snap.unit))
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
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 $Snap.unit))
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
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@54@01 Int)
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
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@56@01 Int)
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
(assert (forall (($a@56@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $a@56@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $a@56@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $a@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@664@11@664@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@58@01 Int)
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
(assert (forall (($a@58@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $a@58@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $a@58@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $a@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@665@11@665@263|)))
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
(declare-const $self$0@59@01 $Struct)
; [exec]
; var $$contracts$0: $Map[Int, $Struct]
(declare-const $$contracts$0@60@01 $Map<Int~_$Struct>)
; [exec]
; var $self$1: $Struct
(declare-const $self$1@61@01 $Struct)
; [exec]
; var $$contracts$1: $Map[Int, $Struct]
(declare-const $$contracts$1@62@01 $Map<Int~_$Struct>)
; [exec]
; var block: $Struct
(declare-const block@63@01 $Struct)
; [exec]
; var $post: Bool
(declare-const $post@64@01 Bool)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 0)): Int) &&
;   ($struct_get($struct_loc($self$0, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 ($Snap.combine ($Snap.first $t@65@01) ($Snap.second $t@65@01))))
(assert (= ($Snap.first $t@65@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 0))))
(assert (= ($Snap.second $t@65@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 ($Snap.combine ($Snap.first $t@66@01) ($Snap.second $t@66@01))))
(assert (= ($Snap.first $t@66@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 1))))
(assert (= ($Snap.second $t@66@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 ($Snap.combine ($Snap.first $t@67@01) ($Snap.second $t@67@01))))
(assert (= ($Snap.first $t@67@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 2))))
(assert (= ($Snap.second $t@67@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 3)): Int) &&
;   ($struct_get($struct_loc($self$0, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(assert (= ($Snap.first $t@68@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 3))))
(assert (= ($Snap.second $t@68@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 3))
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
(declare-const $t@69@01 $Snap)
(assert (= $t@69@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@70@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(push) ; 4
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 5)), $q0@70@01)) | live]
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 5)), $q0@70@01) | live]
(push) ; 5
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 5)), $q0@70@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@70@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 5)), $q0@70@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@70@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@70@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@70@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@70@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@70@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@70@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@680@11@680@354-aux|)))
(assert (forall (($q0@70@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@70@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@70@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@680@11@680@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $t@71@01 $Snap)
(assert (= $t@71@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $q0@72@01 Int)
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
(assert (forall (($q0@72@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@72@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q0@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@681@11@681@262|)))
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
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@74@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(push) ; 4
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 6)), $q1@74@01)) | live]
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 6)), $q1@74@01) | live]
(push) ; 5
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 6)), $q1@74@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@74@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 6)), $q1@74@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@74@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@74@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@74@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@74@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@74@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@74@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@682@11@682@354-aux|)))
(assert (forall (($q1@74@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@74@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@74@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@682@11@682@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $q1@76@01 Int)
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
(assert (forall (($q1@76@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@76@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 6)) $q1@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@683@11@683@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$0, -1)): Int)
; [eval] $struct_loc($self$0, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 ($Snap.combine ($Snap.first $t@78@01) ($Snap.second $t@78@01))))
(assert (= ($Snap.first $t@78@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 0))))
(assert (= ($Snap.second $t@78@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01))))
(assert (= ($Snap.first $t@79@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 1))))
(assert (= ($Snap.second $t@79@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 ($Snap.combine ($Snap.first $t@80@01) ($Snap.second $t@80@01))))
(assert (= ($Snap.first $t@80@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 2))))
(assert (= ($Snap.second $t@80@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 3)): Int) &&
;   ($struct_get($struct_loc($self$1, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 ($Snap.combine ($Snap.first $t@81@01) ($Snap.second $t@81@01))))
(assert (= ($Snap.first $t@81@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 3))))
(assert (= ($Snap.second $t@81@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 3))
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
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@83@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(push) ; 4
; [then-branch: 8 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 5)), $q0@83@01)) | live]
; [else-branch: 8 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 5)), $q0@83@01) | live]
(push) ; 5
; [then-branch: 8 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 5)), $q0@83@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@83@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 8 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 5)), $q0@83@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@83@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@83@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@83@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@83@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@83@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@83@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@689@11@689@354-aux|)))
(assert (forall (($q0@83@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@83@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@83@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@689@11@689@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $q0@85@01 Int)
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
(assert (forall (($q0@85@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@85@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q0@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@690@11@690@262|)))
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
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@87@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(push) ; 4
; [then-branch: 9 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 6)), $q1@87@01)) | live]
; [else-branch: 9 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 6)), $q1@87@01) | live]
(push) ; 5
; [then-branch: 9 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 6)), $q1@87@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@87@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 6)), $q1@87@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@87@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@87@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@87@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@87@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@87@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@87@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@691@11@691@354-aux|)))
(assert (forall (($q1@87@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@87@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@87@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@691@11@691@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $q1@89@01 Int)
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
(assert (forall (($q1@89@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@89@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 6)) $q1@89@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@692@11@692@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$1, -1)): Int)
; [eval] $struct_loc($self$1, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@91@01 $Snap)
(assert (= $t@91@01 ($Snap.combine ($Snap.first $t@91@01) ($Snap.second $t@91@01))))
(assert (= ($Snap.first $t@91@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@63@01 0))))
(assert (= ($Snap.second $t@91@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@63@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@92@01 $Snap)
(assert (= $t@92@01 ($Snap.combine ($Snap.first $t@92@01) ($Snap.second $t@92@01))))
(assert (= ($Snap.first $t@92@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@63@01 1))))
(assert (= ($Snap.second $t@92@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@63@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 ($Snap.combine ($Snap.first $t@93@01) ($Snap.second $t@93@01))))
(assert (= ($Snap.first $t@93@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@63@01 2))))
(assert (= ($Snap.second $t@93@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@63@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@63@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 ($Snap.combine ($Snap.first $t@95@01) ($Snap.second $t@95@01))))
(assert (= ($Snap.first $t@95@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@63@01 4))))
(assert (= ($Snap.second $t@95@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@63@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@63@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@98@01 Int)
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
(assert (forall (($a@98@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $a@98@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $a@98@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $a@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@700@11@700@263|)))
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
(declare-const self@99@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@100@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@101@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@102@01 $Map<Int~_$Struct>)
; [exec]
; var $post: Bool
(declare-const $post@103@01 Bool)
; [exec]
; var $havoc: Int
(declare-const $havoc@104@01 Int)
; [exec]
; var block: $Struct
(declare-const block@105@01 $Struct)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 ($Snap.combine ($Snap.first $t@106@01) ($Snap.second $t@106@01))))
(assert (= ($Snap.first $t@106@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@99@01 0))))
(assert (= ($Snap.second $t@106@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@99@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (= ($Snap.first $t@107@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@99@01 1))))
(assert (= ($Snap.second $t@107@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@99@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 ($Snap.combine ($Snap.first $t@108@01) ($Snap.second $t@108@01))))
(assert (= ($Snap.first $t@108@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@99@01 2))))
(assert (= ($Snap.second $t@108@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@99@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 ($Snap.combine ($Snap.first $t@109@01) ($Snap.second $t@109@01))))
(assert (= ($Snap.first $t@109@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@99@01 3))))
(assert (= ($Snap.second $t@109@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@99@01 3))
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
(declare-const $t@110@01 $Snap)
(assert (= $t@110@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@111@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@99@01, 5)), $q0@111@01)) | live]
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@99@01, 5)), $q0@111@01) | live]
(push) ; 5
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@99@01, 5)), $q0@111@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@111@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@99@01, 5)), $q0@111@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@111@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@111@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@111@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@111@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@111@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@111@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@716@11@716@345-aux|)))
(assert (forall (($q0@111@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@111@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@111@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@716@11@716@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@112@01 $Snap)
(assert (= $t@112@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@113@01 Int)
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
(assert (forall (($q0@113@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@113@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 5)) $q0@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@717@11@717@253|)))
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
(declare-const $t@114@01 $Snap)
(assert (= $t@114@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@115@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@99@01, 6)), $q1@115@01)) | live]
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@99@01, 6)), $q1@115@01) | live]
(push) ; 5
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@99@01, 6)), $q1@115@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@115@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@99@01, 6)), $q1@115@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@115@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@115@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@115@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@115@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@115@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@115@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@718@11@718@345-aux|)))
(assert (forall (($q1@115@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@115@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@115@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@718@11@718@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@117@01 Int)
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
(assert (forall (($q1@117@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@117@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@99@01 6)) $q1@117@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@719@11@719@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@99@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 0)): Int) &&
;   ($struct_get($struct_loc($pre_self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (= ($Snap.first $t@119@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@101@01 0))))
(assert (= ($Snap.second $t@119@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@101@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 1)): Int) &&
;   ($struct_get($struct_loc($pre_self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 ($Snap.combine ($Snap.first $t@120@01) ($Snap.second $t@120@01))))
(assert (= ($Snap.first $t@120@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@101@01 1))))
(assert (= ($Snap.second $t@120@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@101@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 2)): Int) &&
;   ($struct_get($struct_loc($pre_self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 ($Snap.combine ($Snap.first $t@121@01) ($Snap.second $t@121@01))))
(assert (= ($Snap.first $t@121@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@101@01 2))))
(assert (= ($Snap.second $t@121@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@101@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 3)): Int) &&
;   ($struct_get($struct_loc($pre_self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 ($Snap.combine ($Snap.first $t@122@01) ($Snap.second $t@122@01))))
(assert (= ($Snap.first $t@122@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] $struct_loc($pre_self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@101@01 3))))
(assert (= ($Snap.second $t@122@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] $struct_loc($pre_self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@101@01 3))
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
(declare-const $t@123@01 $Snap)
(assert (= $t@123@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@124@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
(push) ; 4
; [then-branch: 12 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@101@01, 5)), $q0@124@01)) | live]
; [else-branch: 12 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@101@01, 5)), $q0@124@01) | live]
(push) ; 5
; [then-branch: 12 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@101@01, 5)), $q0@124@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@124@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@101@01, 5)), $q0@124@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@124@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@124@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@124@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@124@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@124@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@124@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@725@11@725@360-aux|)))
(assert (forall (($q0@124@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@124@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@124@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@725@11@725@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int))
(declare-const $t@125@01 $Snap)
(assert (= $t@125@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@126@01 Int)
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
(assert (forall (($q0@126@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@126@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 5)) $q0@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@726@11@726@268|)))
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
(declare-const $t@127@01 $Snap)
(assert (= $t@127@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@128@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 6)
(push) ; 4
; [then-branch: 13 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@101@01, 6)), $q1@128@01)) | live]
; [else-branch: 13 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@101@01, 6)), $q1@128@01) | live]
(push) ; 5
; [then-branch: 13 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@101@01, 6)), $q1@128@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@128@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@101@01, 6)), $q1@128@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@128@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@128@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@128@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@128@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@128@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@128@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@727@11@727@360-aux|)))
(assert (forall (($q1@128@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@128@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@128@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@727@11@727@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])): Int))
(declare-const $t@129@01 $Snap)
(assert (= $t@129@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@130@01 Int)
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
(assert (forall (($q1@130@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@130@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@101@01 6)) $q1@130@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@728@11@728@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($pre_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@131@01 $Snap)
(assert (= $t@131@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int)
; [eval] $struct_loc($pre_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@101@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01))))
(assert (= ($Snap.first $t@132@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@105@01 0))))
(assert (= ($Snap.second $t@132@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@105@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 ($Snap.combine ($Snap.first $t@133@01) ($Snap.second $t@133@01))))
(assert (= ($Snap.first $t@133@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@105@01 1))))
(assert (= ($Snap.second $t@133@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@105@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 ($Snap.combine ($Snap.first $t@134@01) ($Snap.second $t@134@01))))
(assert (= ($Snap.first $t@134@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@105@01 2))))
(assert (= ($Snap.second $t@134@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@105@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@135@01 $Snap)
(assert (= $t@135@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@105@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@136@01 $Snap)
(assert (= $t@136@01 ($Snap.combine ($Snap.first $t@136@01) ($Snap.second $t@136@01))))
(assert (= ($Snap.first $t@136@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@105@01 4))))
(assert (= ($Snap.second $t@136@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@105@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@137@01 $Snap)
(assert (= $t@137@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@105@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale $havoc >= 0
(declare-const $t@138@01 $Snap)
(assert (= $t@138@01 $Snap.unit))
; [eval] $havoc >= 0
(assert (>= $havoc@104@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@139@01 $Snap)
(assert (= $t@139@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@140@01 Int)
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
(declare-const self@141@01 $Struct)
(assert (=
  self@141@01
  ($struct_set<$Struct> self@99@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@99@01 2))
    $havoc@104@01))))
(pop) ; 2
(pop) ; 1
; ---------- f$__init__ ----------
(declare-const $succ@142@01 Bool)
(declare-const $succ@143@01 Bool)
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
(declare-const msg@144@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@145@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@146@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@147@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@148@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@149@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@150@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@151@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@152@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@153@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@154@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@155@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@156@01 Bool)
; [exec]
; var $first_public_state: Bool
(declare-const $first_public_state@157@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@158@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@159@01 Bool)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@160@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@161@01 $Map<Int~_$Struct>)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 ($Snap.combine ($Snap.first $t@162@01) ($Snap.second $t@162@01))))
(assert (= ($Snap.first $t@162@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@148@01 0))))
(assert (= ($Snap.second $t@162@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@148@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@163@01 $Snap)
(assert (= $t@163@01 ($Snap.combine ($Snap.first $t@163@01) ($Snap.second $t@163@01))))
(assert (= ($Snap.first $t@163@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@148@01 1))))
(assert (= ($Snap.second $t@163@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@148@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@164@01 $Snap)
(assert (= $t@164@01 ($Snap.combine ($Snap.first $t@164@01) ($Snap.second $t@164@01))))
(assert (= ($Snap.first $t@164@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@148@01 2))))
(assert (= ($Snap.second $t@164@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@148@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@165@01 $Snap)
(assert (= $t@165@01 ($Snap.combine ($Snap.first $t@165@01) ($Snap.second $t@165@01))))
(assert (= ($Snap.first $t@165@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@148@01 3))))
(assert (= ($Snap.second $t@165@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@148@01 3))
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
(declare-const $t@166@01 $Snap)
(assert (= $t@166@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@167@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@148@01, 5)), $q0@167@01)) | live]
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@148@01, 5)), $q0@167@01) | live]
(push) ; 5
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@148@01, 5)), $q0@167@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@167@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@148@01, 5)), $q0@167@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@167@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@167@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@167@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@167@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@167@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@167@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@167@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@769@11@769@345-aux|)))
(assert (forall (($q0@167@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@167@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@167@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@167@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@769@11@769@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@168@01 $Snap)
(assert (= $t@168@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@169@01 Int)
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
(assert (forall (($q0@169@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@169@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 5)) $q0@169@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@770@11@770@253|)))
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
(declare-const $t@170@01 $Snap)
(assert (= $t@170@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@171@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@148@01, 6)), $q1@171@01)) | live]
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@148@01, 6)), $q1@171@01) | live]
(push) ; 5
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@148@01, 6)), $q1@171@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@171@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@148@01, 6)), $q1@171@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@171@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@171@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@171@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@171@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@171@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@171@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@171@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@771@11@771@345-aux|)))
(assert (forall (($q1@171@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@171@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@171@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@171@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@771@11@771@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@172@01 $Snap)
(assert (= $t@172@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@173@01 Int)
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
(assert (forall (($q1@173@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@173@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@148@01 6)) $q1@173@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@772@11@772@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@174@01 $Snap)
(assert (= $t@174@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@148@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@175@01 $Snap)
(assert (= $t@175@01 ($Snap.combine ($Snap.first $t@175@01) ($Snap.second $t@175@01))))
(assert (= ($Snap.first $t@175@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@175@01) $Snap.unit))
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
(declare-const $t@176@01 $Snap)
(assert (= $t@176@01 ($Snap.combine ($Snap.first $t@176@01) ($Snap.second $t@176@01))))
(assert (= ($Snap.first $t@176@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@145@01 0))))
(assert (= ($Snap.second $t@176@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@145@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@177@01 $Snap)
(assert (= $t@177@01 ($Snap.combine ($Snap.first $t@177@01) ($Snap.second $t@177@01))))
(assert (= ($Snap.first $t@177@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@145@01 1))))
(assert (= ($Snap.second $t@177@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@145@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 ($Snap.combine ($Snap.first $t@178@01) ($Snap.second $t@178@01))))
(assert (= ($Snap.first $t@178@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@145@01 2))))
(assert (= ($Snap.second $t@178@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@145@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@179@01 $Snap)
(assert (= $t@179@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@145@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@180@01 $Snap)
(assert (= $t@180@01 ($Snap.combine ($Snap.first $t@180@01) ($Snap.second $t@180@01))))
(assert (= ($Snap.first $t@180@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@145@01 4))))
(assert (= ($Snap.second $t@180@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@145@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@181@01 $Snap)
(assert (= $t@181@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@145@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@182@01 $Snap)
(assert (= $t@182@01 ($Snap.combine ($Snap.first $t@182@01) ($Snap.second $t@182@01))))
(assert (= ($Snap.first $t@182@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@144@01 0))))
(assert (= ($Snap.second $t@182@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@144@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@183@01 $Snap)
(assert (= $t@183@01 ($Snap.combine ($Snap.first $t@183@01) ($Snap.second $t@183@01))))
(assert (= ($Snap.first $t@183@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@144@01 1))))
(assert (= ($Snap.second $t@183@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@144@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@184@01 $Snap)
(assert (= $t@184@01 ($Snap.combine ($Snap.first $t@184@01) ($Snap.second $t@184@01))))
(assert (= ($Snap.first $t@184@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@144@01 2))))
(assert (= ($Snap.second $t@184@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@144@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@185@01 $Snap)
(assert (= $t@185@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@144@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@186@01 $Snap)
(assert (= $t@186@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@144@01 0)) 0)))
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
; self := s$struct$self$init(0, 0, 0, 0, false, ($map_init(0): $Map[Int, Int]),
;   ($map_init(0): $Map[Int, Int]), false)
; [eval] s$struct$self$init(0, 0, 0, 0, false, ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]), false)
; [eval] ($map_init(0): $Map[Int, Int])
; [eval] ($map_init(0): $Map[Int, Int])
(declare-const self@187@01 $Struct)
(assert (=
  self@187@01
  (s$struct$self$init<$Struct> 0 0 0 0 false ($map_init<$Map<Int~_Int>> 0) ($map_init<$Map<Int~_Int>> 0) false)))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@188@01 $Snap)
(assert (= $t@188@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@158@01 0))
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
(declare-const self@189@01 $Struct)
(assert (=
  self@189@01
  ($struct_set<$Struct> self@187@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@187@01 2))
    l$havoc@158@01))))
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@190@01 $Struct)
(assert (=
  self@190@01
  ($struct_set<$Struct> self@189@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@189@01 2))
    ($struct_get<Int> ($struct_loc<Int> msg@144@01 1))))))
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
(declare-const self@191@01 $Struct)
(assert (=
  self@191@01
  ($struct_set<$Struct> self@190@01 6 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@190@01 6)) ($struct_get<Int> ($struct_loc<Int> msg@144@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@190@01 6)) ($struct_get<Int> ($struct_loc<Int> msg@144@01 0)))
    ($struct_get<Int> ($struct_loc<Int> msg@144@01 1)))))))
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(msg, 0)): Int)): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(msg, 0)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const self@192@01 $Struct)
(assert (=
  self@192@01
  ($struct_set<$Struct> self@191@01 1 ($struct_get<Int> ($struct_loc<Int> msg@144@01 0)))))
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@159@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@159@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | $out_of_gas@159@01 | live]
; [else-branch: 16 | !($out_of_gas@159@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 16 | $out_of_gas@159@01]
(assert $out_of_gas@159@01)
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
; [then-branch: 17 | True | live]
; [else-branch: 17 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 17 | True]
; [exec]
; $old_self := self
; [then-branch: 18 | False | dead]
; [else-branch: 18 | True | live]
(push) ; 5
; [else-branch: 18 | True]
(pop) ; 5
; [eval] !$succ
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
; inhale l$havoc$1 >= 0
(declare-const $t@193@01 $Snap)
(assert (= $t@193@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@160@01 0))
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
(declare-const self@194@01 $Struct)
(assert (=
  self@194@01
  ($struct_set<$Struct> self@148@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@148@01 2))
    l$havoc$1@160@01))))
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
; [then-branch: 20 | True | live]
; [else-branch: 20 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 20 | True]
; [exec]
; $old_self := self
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 21 | False | dead]
; [else-branch: 21 | True | live]
(push) ; 6
; [else-branch: 21 | True]
(pop) ; 6
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 22 | False | dead]
; [else-branch: 22 | True | live]
(push) ; 4
; [else-branch: 22 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 16 | !($out_of_gas@159@01)]
(assert (not $out_of_gas@159@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@159@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@159@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | !($out_of_gas@159@01) | live]
; [else-branch: 23 | $out_of_gas@159@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 23 | !($out_of_gas@159@01)]
(assert (not $out_of_gas@159@01))
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
; [then-branch: 24 | True | live]
; [else-branch: 24 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 24 | True]
; [exec]
; $old_self := self
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | True | live]
; [else-branch: 25 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 25 | True]
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@144@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@192@01 1)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | $struct_get[Int]($struct_loc[Int](msg@144@01, 0)) != $struct_get[Int]($struct_loc[Int](self@192@01, 1)) | dead]
; [else-branch: 26 | $struct_get[Int]($struct_loc[Int](msg@144@01, 0)) == $struct_get[Int]($struct_loc[Int](self@192@01, 1)) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 26 | $struct_get[Int]($struct_loc[Int](msg@144@01, 0)) == $struct_get[Int]($struct_loc[Int](self@192@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@144@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@192@01 1))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@144@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@192@01 1))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
; [then-branch: 27 | $struct_get[Int]($struct_loc[Int](msg@144@01, 0)) != $struct_get[Int]($struct_loc[Int](self@192@01, 1)) | dead]
; [else-branch: 27 | $struct_get[Int]($struct_loc[Int](msg@144@01, 0)) == $struct_get[Int]($struct_loc[Int](self@192@01, 1)) | live]
(push) ; 7
; [else-branch: 27 | $struct_get[Int]($struct_loc[Int](msg@144@01, 0)) == $struct_get[Int]($struct_loc[Int](self@192@01, 1))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@195@01 $Snap)
(assert (= $t@195@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@160@01 0))
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
(declare-const self@196@01 $Struct)
(assert (=
  self@196@01
  ($struct_set<$Struct> self@192@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@192@01 2))
    l$havoc$1@160@01))))
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
; [then-branch: 28 | True | live]
; [else-branch: 28 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 28 | True]
; [exec]
; $old_self := self
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 29 | False | dead]
; [else-branch: 29 | True | live]
(push) ; 6
; [else-branch: 29 | True]
(pop) ; 6
(pop) ; 5
; [eval] !$succ
; [then-branch: 30 | False | dead]
; [else-branch: 30 | True | live]
(push) ; 5
; [else-branch: 30 | True]
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 31 | False | dead]
; [else-branch: 31 | True | live]
(push) ; 4
; [else-branch: 31 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 23 | $out_of_gas@159@01]
(assert $out_of_gas@159@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$set_f ----------
(declare-const l$new_f@197@01 $Int)
(declare-const $succ@198@01 Bool)
(declare-const l$new_f@199@01 $Int)
(declare-const $succ@200@01 Bool)
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
(declare-const msg@201@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@202@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@203@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@204@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@205@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@206@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@207@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@208@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@209@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@210@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@211@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@212@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@213@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@214@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@215@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@216@01 $Map<Int~_$Struct>)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@217@01 $Snap)
(assert (= $t@217@01 ($Snap.combine ($Snap.first $t@217@01) ($Snap.second $t@217@01))))
(assert (= ($Snap.first $t@217@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@205@01 0))))
(assert (= ($Snap.second $t@217@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@205@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@218@01 $Snap)
(assert (= $t@218@01 ($Snap.combine ($Snap.first $t@218@01) ($Snap.second $t@218@01))))
(assert (= ($Snap.first $t@218@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@205@01 1))))
(assert (= ($Snap.second $t@218@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@205@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@219@01 $Snap)
(assert (= $t@219@01 ($Snap.combine ($Snap.first $t@219@01) ($Snap.second $t@219@01))))
(assert (= ($Snap.first $t@219@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@205@01 2))))
(assert (= ($Snap.second $t@219@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@205@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@220@01 $Snap)
(assert (= $t@220@01 ($Snap.combine ($Snap.first $t@220@01) ($Snap.second $t@220@01))))
(assert (= ($Snap.first $t@220@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@205@01 3))))
(assert (= ($Snap.second $t@220@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@205@01 3))
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
(declare-const $t@221@01 $Snap)
(assert (= $t@221@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@222@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 32 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@205@01, 5)), $q0@222@01)) | live]
; [else-branch: 32 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@205@01, 5)), $q0@222@01) | live]
(push) ; 5
; [then-branch: 32 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@205@01, 5)), $q0@222@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@222@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 32 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@205@01, 5)), $q0@222@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@222@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@222@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@222@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@222@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@222@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@222@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@222@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@860@11@860@345-aux|)))
(assert (forall (($q0@222@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@222@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@222@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@222@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@860@11@860@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@223@01 $Snap)
(assert (= $t@223@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@224@01 Int)
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
(assert (forall (($q0@224@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@224@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 5)) $q0@224@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@861@11@861@253|)))
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
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@226@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 33 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@205@01, 6)), $q1@226@01)) | live]
; [else-branch: 33 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@205@01, 6)), $q1@226@01) | live]
(push) ; 5
; [then-branch: 33 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@205@01, 6)), $q1@226@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@226@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 33 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@205@01, 6)), $q1@226@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@226@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@226@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@226@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@226@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@226@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@226@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@862@11@862@345-aux|)))
(assert (forall (($q1@226@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@226@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@226@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@862@11@862@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@227@01 $Snap)
(assert (= $t@227@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@228@01 Int)
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
(assert (forall (($q1@228@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@228@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@205@01 6)) $q1@228@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@863@11@863@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@229@01 $Snap)
(assert (= $t@229@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@205@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@230@01 $Snap)
(assert (= $t@230@01 ($Snap.combine ($Snap.first $t@230@01) ($Snap.second $t@230@01))))
(assert (= ($Snap.first $t@230@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@230@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <= $unwrap(l$new_f) &&
;   $unwrap(l$new_f) <= 170141183460469231731687303715884105727
(declare-const $t@231@01 $Snap)
(assert (= $t@231@01 ($Snap.combine ($Snap.first $t@231@01) ($Snap.second $t@231@01))))
(assert (= ($Snap.first $t@231@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= $unwrap(l$new_f)
; [eval] -170141183460469231731687303715884105728
; [eval] $unwrap(l$new_f)
(assert (<= (- 0 170141183460469231731687303715884105728) ($unwrap<Int> l$new_f@199@01)))
(assert (= ($Snap.second $t@231@01) $Snap.unit))
; [eval] $unwrap(l$new_f) <= 170141183460469231731687303715884105727
; [eval] $unwrap(l$new_f)
(assert (<= ($unwrap<Int> l$new_f@199@01) 170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@232@01 $Snap)
(assert (= $t@232@01 ($Snap.combine ($Snap.first $t@232@01) ($Snap.second $t@232@01))))
(assert (= ($Snap.first $t@232@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@202@01 0))))
(assert (= ($Snap.second $t@232@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@202@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@233@01 $Snap)
(assert (= $t@233@01 ($Snap.combine ($Snap.first $t@233@01) ($Snap.second $t@233@01))))
(assert (= ($Snap.first $t@233@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@202@01 1))))
(assert (= ($Snap.second $t@233@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@202@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@234@01 $Snap)
(assert (= $t@234@01 ($Snap.combine ($Snap.first $t@234@01) ($Snap.second $t@234@01))))
(assert (= ($Snap.first $t@234@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@202@01 2))))
(assert (= ($Snap.second $t@234@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@202@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@235@01 $Snap)
(assert (= $t@235@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@202@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@236@01 $Snap)
(assert (= $t@236@01 ($Snap.combine ($Snap.first $t@236@01) ($Snap.second $t@236@01))))
(assert (= ($Snap.first $t@236@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@202@01 4))))
(assert (= ($Snap.second $t@236@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@202@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@237@01 $Snap)
(assert (= $t@237@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@202@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@238@01 $Snap)
(assert (= $t@238@01 ($Snap.combine ($Snap.first $t@238@01) ($Snap.second $t@238@01))))
(assert (= ($Snap.first $t@238@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))))
(assert (= ($Snap.second $t@238@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@239@01 $Snap)
(assert (= $t@239@01 ($Snap.combine ($Snap.first $t@239@01) ($Snap.second $t@239@01))))
(assert (= ($Snap.first $t@239@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@201@01 1))))
(assert (= ($Snap.second $t@239@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@240@01 $Snap)
(assert (= $t@240@01 ($Snap.combine ($Snap.first $t@240@01) ($Snap.second $t@240@01))))
(assert (= ($Snap.first $t@240@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@201@01 2))))
(assert (= ($Snap.second $t@240@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@241@01 $Snap)
(assert (= $t@241@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@242@01 $Snap)
(assert (= $t@242@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@201@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@243@01 $Snap)
(assert (= $t@243@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@244@01 Int)
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
(declare-const $t@245@01 $Snap)
(assert (= $t@245@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@201@01 1)) 0))
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
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@205@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@205@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | live]
; [else-branch: 34 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 34 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@205@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@205@01 1)))))
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
; [then-branch: 35 | False | dead]
; [else-branch: 35 | True | live]
(push) ; 4
; [else-branch: 35 | True]
(pop) ; 4
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | True | live]
; [else-branch: 36 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 36 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@205@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | live]
; [else-branch: 37 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 37 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@205@01, 1))]
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@205@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | live]
; [else-branch: 38 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 38 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@205@01, 1))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; inhale l$havoc >= 0
(declare-const $t@246@01 $Snap)
(assert (= $t@246@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@215@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@247@01 $Struct)
(assert (=
  self@247@01
  ($struct_set<$Struct> self@205@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@205@01 2))
    l$havoc@215@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 34 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@205@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@205@01 1))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@205@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@205@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | live]
; [else-branch: 39 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 39 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@205@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@205@01 1))))
; [exec]
; self := ($struct_set(self, 0, $unwrap(l$new_f)): $Struct)
; [eval] ($struct_set(self, 0, $unwrap(l$new_f)): $Struct)
; [eval] $unwrap(l$new_f)
(declare-const self@248@01 $Struct)
(assert (=
  self@248@01
  ($struct_set<$Struct> self@205@01 0 ($unwrap<Int> l$new_f@199@01))))
; [exec]
; label return
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@214@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@214@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 40 | $out_of_gas@214@01 | live]
; [else-branch: 40 | !($out_of_gas@214@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 40 | $out_of_gas@214@01]
(assert $out_of_gas@214@01)
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
; [then-branch: 41 | False | dead]
; [else-branch: 41 | True | live]
(push) ; 5
; [else-branch: 41 | True]
(pop) ; 5
; [eval] !$succ
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 42 | True | live]
; [else-branch: 42 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 42 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
; [then-branch: 43 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | dead]
; [else-branch: 43 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | live]
(push) ; 7
; [else-branch: 43 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@205@01, 1))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
; [then-branch: 44 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | dead]
; [else-branch: 44 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@205@01, 1)) | live]
(push) ; 7
; [else-branch: 44 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@205@01, 1))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; inhale l$havoc >= 0
(declare-const $t@249@01 $Snap)
(assert (= $t@249@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@215@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@250@01 $Struct)
(assert (=
  self@250@01
  ($struct_set<$Struct> self@205@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@205@01 2))
    l$havoc@215@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 40 | !($out_of_gas@214@01)]
(assert (not $out_of_gas@214@01))
(pop) ; 4
; [eval] !$out_of_gas
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@214@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@214@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | !($out_of_gas@214@01) | live]
; [else-branch: 45 | $out_of_gas@214@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 45 | !($out_of_gas@214@01)]
(assert (not $out_of_gas@214@01))
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
; [then-branch: 46 | True | live]
; [else-branch: 46 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 46 | True]
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@248@01 1)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 47 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@248@01, 1)) | dead]
; [else-branch: 47 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@248@01, 1)) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 47 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@248@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@248@01 1))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@248@01 1))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
; [then-branch: 48 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@248@01, 1)) | dead]
; [else-branch: 48 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@248@01, 1)) | live]
(push) ; 7
; [else-branch: 48 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) == $struct_get[Int]($struct_loc[Int](self@248@01, 1))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; inhale l$havoc >= 0
(declare-const $t@251@01 $Snap)
(assert (= $t@251@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@215@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@252@01 $Struct)
(assert (=
  self@252@01
  ($struct_set<$Struct> self@248@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@248@01 2))
    l$havoc@215@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
; [eval] !$succ
; [then-branch: 49 | False | dead]
; [else-branch: 49 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 49 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 45 | $out_of_gas@214@01]
(assert $out_of_gas@214@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 39 | $struct_get[Int]($struct_loc[Int](msg@201@01, 0)) != $struct_get[Int]($struct_loc[Int](self@205@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@201@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@205@01 1)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$set_f_fail ----------
(declare-const l$new_f@253@01 $Int)
(declare-const $succ@254@01 Bool)
(declare-const l$new_f@255@01 $Int)
(declare-const $succ@256@01 Bool)
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
(declare-const msg@257@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@258@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@259@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@260@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@261@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@262@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@263@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@264@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@265@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@266@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@267@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@268@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@269@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@270@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@271@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@272@01 $Map<Int~_$Struct>)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@273@01 $Snap)
(assert (= $t@273@01 ($Snap.combine ($Snap.first $t@273@01) ($Snap.second $t@273@01))))
(assert (= ($Snap.first $t@273@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@261@01 0))))
(assert (= ($Snap.second $t@273@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@261@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@274@01 $Snap)
(assert (= $t@274@01 ($Snap.combine ($Snap.first $t@274@01) ($Snap.second $t@274@01))))
(assert (= ($Snap.first $t@274@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@261@01 1))))
(assert (= ($Snap.second $t@274@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@261@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@275@01 $Snap)
(assert (= $t@275@01 ($Snap.combine ($Snap.first $t@275@01) ($Snap.second $t@275@01))))
(assert (= ($Snap.first $t@275@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@261@01 2))))
(assert (= ($Snap.second $t@275@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@261@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@276@01 $Snap)
(assert (= $t@276@01 ($Snap.combine ($Snap.first $t@276@01) ($Snap.second $t@276@01))))
(assert (= ($Snap.first $t@276@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@261@01 3))))
(assert (= ($Snap.second $t@276@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@261@01 3))
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
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@278@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 50 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@261@01, 5)), $q0@278@01)) | live]
; [else-branch: 50 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@261@01, 5)), $q0@278@01) | live]
(push) ; 5
; [then-branch: 50 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@261@01, 5)), $q0@278@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@278@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 50 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@261@01, 5)), $q0@278@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@278@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@278@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@278@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@278@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@278@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@278@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@950@11@950@345-aux|)))
(assert (forall (($q0@278@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@278@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@278@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@950@11@950@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@280@01 Int)
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
(assert (forall (($q0@280@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@280@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 5)) $q0@280@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@951@11@951@253|)))
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
(declare-const $t@281@01 $Snap)
(assert (= $t@281@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@282@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 51 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@261@01, 6)), $q1@282@01)) | live]
; [else-branch: 51 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@261@01, 6)), $q1@282@01) | live]
(push) ; 5
; [then-branch: 51 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@261@01, 6)), $q1@282@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@282@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 51 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@261@01, 6)), $q1@282@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@282@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@282@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@282@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@282@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@282@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@282@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@952@11@952@345-aux|)))
(assert (forall (($q1@282@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@282@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@282@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@952@11@952@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@283@01 $Snap)
(assert (= $t@283@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@284@01 Int)
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
(assert (forall (($q1@284@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@284@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@261@01 6)) $q1@284@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@953@11@953@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@285@01 $Snap)
(assert (= $t@285@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@261@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@286@01 $Snap)
(assert (= $t@286@01 ($Snap.combine ($Snap.first $t@286@01) ($Snap.second $t@286@01))))
(assert (= ($Snap.first $t@286@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@286@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <= $unwrap(l$new_f) &&
;   $unwrap(l$new_f) <= 170141183460469231731687303715884105727
(declare-const $t@287@01 $Snap)
(assert (= $t@287@01 ($Snap.combine ($Snap.first $t@287@01) ($Snap.second $t@287@01))))
(assert (= ($Snap.first $t@287@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= $unwrap(l$new_f)
; [eval] -170141183460469231731687303715884105728
; [eval] $unwrap(l$new_f)
(assert (<= (- 0 170141183460469231731687303715884105728) ($unwrap<Int> l$new_f@255@01)))
(assert (= ($Snap.second $t@287@01) $Snap.unit))
; [eval] $unwrap(l$new_f) <= 170141183460469231731687303715884105727
; [eval] $unwrap(l$new_f)
(assert (<= ($unwrap<Int> l$new_f@255@01) 170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@288@01 $Snap)
(assert (= $t@288@01 ($Snap.combine ($Snap.first $t@288@01) ($Snap.second $t@288@01))))
(assert (= ($Snap.first $t@288@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@258@01 0))))
(assert (= ($Snap.second $t@288@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@258@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@289@01 $Snap)
(assert (= $t@289@01 ($Snap.combine ($Snap.first $t@289@01) ($Snap.second $t@289@01))))
(assert (= ($Snap.first $t@289@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@258@01 1))))
(assert (= ($Snap.second $t@289@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@258@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@290@01 $Snap)
(assert (= $t@290@01 ($Snap.combine ($Snap.first $t@290@01) ($Snap.second $t@290@01))))
(assert (= ($Snap.first $t@290@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@258@01 2))))
(assert (= ($Snap.second $t@290@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@258@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@291@01 $Snap)
(assert (= $t@291@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@258@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@292@01 $Snap)
(assert (= $t@292@01 ($Snap.combine ($Snap.first $t@292@01) ($Snap.second $t@292@01))))
(assert (= ($Snap.first $t@292@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@258@01 4))))
(assert (= ($Snap.second $t@292@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@258@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@293@01 $Snap)
(assert (= $t@293@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@258@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@294@01 $Snap)
(assert (= $t@294@01 ($Snap.combine ($Snap.first $t@294@01) ($Snap.second $t@294@01))))
(assert (= ($Snap.first $t@294@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))))
(assert (= ($Snap.second $t@294@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@295@01 $Snap)
(assert (= $t@295@01 ($Snap.combine ($Snap.first $t@295@01) ($Snap.second $t@295@01))))
(assert (= ($Snap.first $t@295@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@257@01 1))))
(assert (= ($Snap.second $t@295@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@296@01 $Snap)
(assert (= $t@296@01 ($Snap.combine ($Snap.first $t@296@01) ($Snap.second $t@296@01))))
(assert (= ($Snap.first $t@296@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@257@01 2))))
(assert (= ($Snap.second $t@296@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@297@01 $Snap)
(assert (= $t@297@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@298@01 $Snap)
(assert (= $t@298@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@257@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@299@01 $Snap)
(assert (= $t@299@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@300@01 Int)
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
(declare-const $t@301@01 $Snap)
(assert (= $t@301@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@257@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, $unwrap(l$new_f)): $Struct)
; [eval] ($struct_set(self, 0, $unwrap(l$new_f)): $Struct)
; [eval] $unwrap(l$new_f)
(declare-const self@302@01 $Struct)
(assert (=
  self@302@01
  ($struct_set<$Struct> self@261@01 0 ($unwrap<Int> l$new_f@255@01))))
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@270@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@270@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 52 | $out_of_gas@270@01 | live]
; [else-branch: 52 | !($out_of_gas@270@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 52 | $out_of_gas@270@01]
(assert $out_of_gas@270@01)
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
; [then-branch: 53 | False | dead]
; [else-branch: 53 | True | live]
(push) ; 4
; [else-branch: 53 | True]
(pop) ; 4
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | True | live]
; [else-branch: 54 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 54 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@261@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@261@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@261@01, 1)) | live]
; [else-branch: 55 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@261@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 55 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@261@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@261@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(push) ; 6
; [else-branch: 55 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@261@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@261@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@261@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@261@01 1))))))
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@261@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@261@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@261@01, 1)) | live]
; [else-branch: 56 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@261@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 56 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@261@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@261@01 1)))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 6
(push) ; 6
; [else-branch: 56 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@261@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@261@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [exec]
; inhale l$havoc >= 0
(declare-const $t@303@01 $Snap)
(assert (= $t@303@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@271@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@304@01 $Struct)
(assert (=
  self@304@01
  ($struct_set<$Struct> self@261@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@261@01 2))
    l$havoc@271@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 52 | !($out_of_gas@270@01)]
(assert (not $out_of_gas@270@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@270@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@270@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | !($out_of_gas@270@01) | live]
; [else-branch: 57 | $out_of_gas@270@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 57 | !($out_of_gas@270@01)]
(assert (not $out_of_gas@270@01))
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
; [then-branch: 58 | True | live]
; [else-branch: 58 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 58 | True]
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@302@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@302@01, 1)) | live]
; [else-branch: 59 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@302@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 59 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@302@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@302@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(push) ; 6
; [else-branch: 59 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@302@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@302@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))))
(push) ; 5
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@302@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@261@01 0))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@302@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 60 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@302@01, 1)) | live]
; [else-branch: 60 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@302@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 60 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@302@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@302@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 60 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@302@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 5
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@302@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@261@01 0))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@302@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@302@01, 1)) | live]
; [else-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@302@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@302@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@302@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@302@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 5
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@302@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@261@01 0))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@302@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 62 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@302@01, 1)) | live]
; [else-branch: 62 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@302@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 62 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) != $struct_get[Int]($struct_loc[Int](self@302@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@302@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 62 | $struct_get[Int]($struct_loc[Int](msg@257@01, 0)) == $struct_get[Int]($struct_loc[Int](self@302@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 5
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@257@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@302@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@302@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@261@01 0))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$pay ----------
(declare-const l$amount@305@01 $Int)
(declare-const l$to@306@01 Int)
(declare-const $succ@307@01 Bool)
(declare-const l$amount@308@01 $Int)
(declare-const l$to@309@01 Int)
(declare-const $succ@310@01 Bool)
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
(declare-const msg@311@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@312@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@313@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@314@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@315@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@316@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@317@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@318@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@319@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@320@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@321@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@322@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@323@01 Bool)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@324@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@325@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@326@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@327@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@328@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@329@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@330@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@331@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@332@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@333@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@334@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@335@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@336@01 $Map<Int~_$Struct>)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@337@01 $Snap)
(assert (= $t@337@01 ($Snap.combine ($Snap.first $t@337@01) ($Snap.second $t@337@01))))
(assert (= ($Snap.first $t@337@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@315@01 0))))
(assert (= ($Snap.second $t@337@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@315@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@338@01 $Snap)
(assert (= $t@338@01 ($Snap.combine ($Snap.first $t@338@01) ($Snap.second $t@338@01))))
(assert (= ($Snap.first $t@338@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@315@01 1))))
(assert (= ($Snap.second $t@338@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@315@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@339@01 $Snap)
(assert (= $t@339@01 ($Snap.combine ($Snap.first $t@339@01) ($Snap.second $t@339@01))))
(assert (= ($Snap.first $t@339@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@315@01 2))))
(assert (= ($Snap.second $t@339@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@340@01 $Snap)
(assert (= $t@340@01 ($Snap.combine ($Snap.first $t@340@01) ($Snap.second $t@340@01))))
(assert (= ($Snap.first $t@340@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@315@01 3))))
(assert (= ($Snap.second $t@340@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@315@01 3))
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
(declare-const $t@341@01 $Snap)
(assert (= $t@341@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@342@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 63 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@315@01, 5)), $q0@342@01)) | live]
; [else-branch: 63 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@315@01, 5)), $q0@342@01) | live]
(push) ; 5
; [then-branch: 63 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@315@01, 5)), $q0@342@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@342@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 63 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@315@01, 5)), $q0@342@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@342@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@342@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@342@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@342@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@342@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@342@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@342@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1047@11@1047@345-aux|)))
(assert (forall (($q0@342@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@342@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@342@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@342@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1047@11@1047@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@343@01 $Snap)
(assert (= $t@343@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@344@01 Int)
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
(assert (forall (($q0@344@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@344@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) $q0@344@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1048@11@1048@253|)))
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
(declare-const $t@345@01 $Snap)
(assert (= $t@345@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@346@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 64 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@315@01, 6)), $q1@346@01)) | live]
; [else-branch: 64 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@315@01, 6)), $q1@346@01) | live]
(push) ; 5
; [then-branch: 64 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@315@01, 6)), $q1@346@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@346@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 64 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@315@01, 6)), $q1@346@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@346@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@346@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@346@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@346@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@346@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@346@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@346@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1049@11@1049@345-aux|)))
(assert (forall (($q1@346@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@346@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@346@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@346@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1049@11@1049@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@347@01 $Snap)
(assert (= $t@347@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@348@01 Int)
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
(assert (forall (($q1@348@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@348@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 6)) $q1@348@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1050@11@1050@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@349@01 $Snap)
(assert (= $t@349@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@315@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@350@01 $Snap)
(assert (= $t@350@01 ($Snap.combine ($Snap.first $t@350@01) ($Snap.second $t@350@01))))
(assert (= ($Snap.first $t@350@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@350@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$amount) &&
;   $unwrap(l$amount) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@351@01 $Snap)
(assert (= $t@351@01 ($Snap.combine ($Snap.first $t@351@01) ($Snap.second $t@351@01))))
(assert (= ($Snap.first $t@351@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$amount)
; [eval] $unwrap(l$amount)
(assert (<= 0 ($unwrap<Int> l$amount@308@01)))
(assert (= ($Snap.second $t@351@01) $Snap.unit))
; [eval] $unwrap(l$amount) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$amount)
(assert (<=
  ($unwrap<Int> l$amount@308@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= l$to &&
;   l$to <= 1461501637330902918203684832716283019655932542975
(declare-const $t@352@01 $Snap)
(assert (= $t@352@01 ($Snap.combine ($Snap.first $t@352@01) ($Snap.second $t@352@01))))
(assert (= ($Snap.first $t@352@01) $Snap.unit))
; [eval] 0 <= l$to
(assert (<= 0 l$to@309@01))
(assert (= ($Snap.second $t@352@01) $Snap.unit))
; [eval] l$to <= 1461501637330902918203684832716283019655932542975
(assert (<= l$to@309@01 1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@353@01 $Snap)
(assert (= $t@353@01 ($Snap.combine ($Snap.first $t@353@01) ($Snap.second $t@353@01))))
(assert (= ($Snap.first $t@353@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@312@01 0))))
(assert (= ($Snap.second $t@353@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@312@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@354@01 $Snap)
(assert (= $t@354@01 ($Snap.combine ($Snap.first $t@354@01) ($Snap.second $t@354@01))))
(assert (= ($Snap.first $t@354@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@312@01 1))))
(assert (= ($Snap.second $t@354@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@312@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@355@01 $Snap)
(assert (= $t@355@01 ($Snap.combine ($Snap.first $t@355@01) ($Snap.second $t@355@01))))
(assert (= ($Snap.first $t@355@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@312@01 2))))
(assert (= ($Snap.second $t@355@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@312@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@356@01 $Snap)
(assert (= $t@356@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@312@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@357@01 $Snap)
(assert (= $t@357@01 ($Snap.combine ($Snap.first $t@357@01) ($Snap.second $t@357@01))))
(assert (= ($Snap.first $t@357@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@312@01 4))))
(assert (= ($Snap.second $t@357@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@312@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@358@01 $Snap)
(assert (= $t@358@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@312@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@359@01 $Snap)
(assert (= $t@359@01 ($Snap.combine ($Snap.first $t@359@01) ($Snap.second $t@359@01))))
(assert (= ($Snap.first $t@359@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))))
(assert (= ($Snap.second $t@359@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@360@01 $Snap)
(assert (= $t@360@01 ($Snap.combine ($Snap.first $t@360@01) ($Snap.second $t@360@01))))
(assert (= ($Snap.first $t@360@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@311@01 1))))
(assert (= ($Snap.second $t@360@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@361@01 $Snap)
(assert (= $t@361@01 ($Snap.combine ($Snap.first $t@361@01) ($Snap.second $t@361@01))))
(assert (= ($Snap.first $t@361@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@311@01 2))))
(assert (= ($Snap.second $t@361@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@362@01 $Snap)
(assert (= $t@362@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@363@01 $Snap)
(assert (= $t@363@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@311@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@364@01 $Snap)
(assert (= $t@364@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@365@01 Int)
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
(declare-const $t@366@01 $Snap)
(assert (= $t@366@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@311@01 1)) 0))
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
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@315@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@315@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
; [else-branch: 65 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 65 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@315@01 1)))))
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
; [then-branch: 66 | False | dead]
; [else-branch: 66 | True | live]
(push) ; 4
; [else-branch: 66 | True]
(pop) ; 4
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 67 | True | live]
; [else-branch: 67 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 67 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@315@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
; [else-branch: 68 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 68 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@315@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
; [else-branch: 69 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 69 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@367@01 $Snap)
(assert (= $t@367@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@335@01 0))
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
(declare-const self@368@01 $Struct)
(assert (=
  self@368@01
  ($struct_set<$Struct> self@315@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    l$havoc$6@335@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 65 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@315@01 1))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@315@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@315@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 70 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
; [else-branch: 70 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 70 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@315@01 1))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    ($unwrap<Int> l$amount@308@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
  ($unwrap<Int> l$amount@308@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | $struct_get[Int]($struct_loc[Int](self@315@01, 2)) < $unwrap[Int](l$amount@308@01) | live]
; [else-branch: 71 | !($struct_get[Int]($struct_loc[Int](self@315@01, 2)) < $unwrap[Int](l$amount@308@01)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 71 | $struct_get[Int]($struct_loc[Int](self@315@01, 2)) < $unwrap[Int](l$amount@308@01)]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
  ($unwrap<Int> l$amount@308@01)))
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
; [then-branch: 72 | False | dead]
; [else-branch: 72 | True | live]
(push) ; 5
; [else-branch: 72 | True]
(pop) ; 5
; [eval] !$succ
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 73 | True | live]
; [else-branch: 73 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 73 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
; [then-branch: 74 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | dead]
; [else-branch: 74 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
(push) ; 7
; [else-branch: 74 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
; [then-branch: 75 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | dead]
; [else-branch: 75 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
(push) ; 7
; [else-branch: 75 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@369@01 $Snap)
(assert (= $t@369@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@335@01 0))
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
(declare-const self@370@01 $Struct)
(assert (=
  self@370@01
  ($struct_set<$Struct> self@315@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    l$havoc$6@335@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 5
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 71 | !($struct_get[Int]($struct_loc[Int](self@315@01, 2)) < $unwrap[Int](l$amount@308@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    ($unwrap<Int> l$amount@308@01))))
(pop) ; 4
; [eval] !(($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
  ($unwrap<Int> l$amount@308@01))))
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
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    ($unwrap<Int> l$amount@308@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 76 | !($struct_get[Int]($struct_loc[Int](self@315@01, 2)) < $unwrap[Int](l$amount@308@01)) | live]
; [else-branch: 76 | $struct_get[Int]($struct_loc[Int](self@315@01, 2)) < $unwrap[Int](l$amount@308@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 76 | !($struct_get[Int]($struct_loc[Int](self@315@01, 2)) < $unwrap[Int](l$amount@308@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    ($unwrap<Int> l$amount@308@01))))
; [exec]
; self := ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]),
;   l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) +
;   $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] $unwrap(l$amount)
(declare-const self@371@01 $Struct)
(assert (=
  self@371@01
  ($struct_set<$Struct> self@315@01 5 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) l$to@309@01 (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)) l$to@309@01)
    ($unwrap<Int> l$amount@308@01))))))
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) -
;   $unwrap(l$amount)): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(declare-const self@372@01 $Struct)
(assert (=
  self@372@01
  ($struct_set<$Struct> self@371@01 2 (-
    ($struct_get<Int> ($struct_loc<Int> self@371@01 2))
    ($unwrap<Int> l$amount@308@01)))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@372@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 77 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@372@01, 1)) | dead]
; [else-branch: 77 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@372@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 77 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@372@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@372@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@372@01 1))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
; [then-branch: 78 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@372@01, 1)) | dead]
; [else-branch: 78 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@372@01, 1)) | live]
(push) ; 6
; [else-branch: 78 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@372@01, 1))]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$send_fail@325@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not l$send_fail@325@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | l$send_fail@325@01 | live]
; [else-branch: 79 | !(l$send_fail@325@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 79 | l$send_fail@325@01]
(assert l$send_fail@325@01)
; [exec]
; inhale acc($failed(l$to), write)
(declare-const $t@373@01 $Snap)
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
; [then-branch: 80 | False | dead]
; [else-branch: 80 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 80 | True]
(pop) ; 6
; [eval] !$succ
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 81 | True | live]
; [else-branch: 81 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 81 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 7
; [then-branch: 82 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | dead]
; [else-branch: 82 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
(push) ; 8
; [else-branch: 82 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 7
; [then-branch: 83 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | dead]
; [else-branch: 83 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
(push) ; 8
; [else-branch: 83 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@374@01 $Snap)
(assert (= $t@374@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@335@01 0))
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
(declare-const self@375@01 $Struct)
(assert (=
  self@375@01
  ($struct_set<$Struct> self@315@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    l$havoc$6@335@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 6
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 79 | !(l$send_fail@325@01)]
(assert (not l$send_fail@325@01))
(pop) ; 5
; [eval] !l$send_fail
(push) ; 5
(set-option :timeout 10)
(assert (not l$send_fail@325@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$send_fail@325@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 84 | !(l$send_fail@325@01) | live]
; [else-branch: 84 | l$send_fail@325@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 84 | !(l$send_fail@325@01)]
(assert (not l$send_fail@325@01))
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
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@376@01 $Snap)
(assert (= $t@376@01 ($Snap.combine ($Snap.first $t@376@01) ($Snap.second $t@376@01))))
(assert (= ($Snap.first $t@376@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 0))))
(assert (= ($Snap.second $t@376@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@377@01 $Snap)
(assert (= $t@377@01 ($Snap.combine ($Snap.first $t@377@01) ($Snap.second $t@377@01))))
(assert (= ($Snap.first $t@377@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1))))
(assert (= ($Snap.second $t@377@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@378@01 $Snap)
(assert (= $t@378@01 ($Snap.combine ($Snap.first $t@378@01) ($Snap.second $t@378@01))))
(assert (= ($Snap.first $t@378@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 2))))
(assert (= ($Snap.second $t@378@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@379@01 $Snap)
(assert (= $t@379@01 ($Snap.combine ($Snap.first $t@379@01) ($Snap.second $t@379@01))))
(assert (= ($Snap.first $t@379@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 3))))
(assert (= ($Snap.second $t@379@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 3))
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
(declare-const $t@380@01 $Snap)
(assert (= $t@380@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@381@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 7
; [then-branch: 85 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@329@01, 5)), $q0@381@01)) | live]
; [else-branch: 85 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@329@01, 5)), $q0@381@01) | live]
(push) ; 8
; [then-branch: 85 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@329@01, 5)), $q0@381@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@381@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 85 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@329@01, 5)), $q0@381@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@381@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@381@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@381@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@381@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@381@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@381@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@381@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1121@11@1121@345-aux|)))
(assert (forall (($q0@381@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@381@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@381@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@381@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1121@11@1121@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@382@01 $Snap)
(assert (= $t@382@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@383@01 Int)
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
(assert (forall (($q0@383@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@383@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $q0@383@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1122@11@1122@253|)))
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
(declare-const $t@384@01 $Snap)
(assert (= $t@384@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@385@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 7
; [then-branch: 86 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@329@01, 6)), $q1@385@01)) | live]
; [else-branch: 86 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@329@01, 6)), $q1@385@01) | live]
(push) ; 8
; [then-branch: 86 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@329@01, 6)), $q1@385@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@385@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 86 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@329@01, 6)), $q1@385@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@385@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@385@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@385@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@385@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@385@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@385@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@385@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1123@11@1123@345-aux|)))
(assert (forall (($q1@385@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@385@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@385@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@385@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1123@11@1123@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@386@01 $Snap)
(assert (= $t@386@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@387@01 Int)
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
(assert (forall (($q1@387@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@387@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 6)) $q1@387@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1124@11@1124@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@388@01 $Snap)
(assert (= $t@388@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@389@01 $Snap)
(assert (= $t@389@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@390@01 Int)
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
(assert (forall (($a@390@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $a@390@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@372@01 5)) $a@390@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@329@01 5)) $a@390@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1127@11@1127@259|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@331@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not l$no_reentrant_call@331@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 87 | l$no_reentrant_call@331@01 | live]
; [else-branch: 87 | !(l$no_reentrant_call@331@01) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 87 | l$no_reentrant_call@331@01]
(assert l$no_reentrant_call@331@01)
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
(assert (not (not $out_of_gas@334@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@334@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 88 | $out_of_gas@334@01 | live]
; [else-branch: 88 | !($out_of_gas@334@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 88 | $out_of_gas@334@01]
(assert $out_of_gas@334@01)
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
; [then-branch: 89 | False | dead]
; [else-branch: 89 | True | live]
(push) ; 8
; [else-branch: 89 | True]
(pop) ; 8
; [eval] !$succ
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 90 | True | live]
; [else-branch: 90 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 90 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 91 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | dead]
; [else-branch: 91 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
(push) ; 10
; [else-branch: 91 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 92 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | dead]
; [else-branch: 92 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
(push) ; 10
; [else-branch: 92 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@391@01 $Snap)
(assert (= $t@391@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@335@01 0))
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
(declare-const self@392@01 $Struct)
(assert (=
  self@392@01
  ($struct_set<$Struct> self@315@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    l$havoc$6@335@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 8
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 88 | !($out_of_gas@334@01)]
(assert (not $out_of_gas@334@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@334@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@334@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 93 | !($out_of_gas@334@01) | live]
; [else-branch: 93 | $out_of_gas@334@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 93 | !($out_of_gas@334@01)]
(assert (not $out_of_gas@334@01))
; [exec]
; label end
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 94 | True | live]
; [else-branch: 94 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 94 | True]
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 95 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@372@01, 1)) | dead]
; [else-branch: 95 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@372@01, 1)) | live]
(push) ; 10
; [else-branch: 95 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@372@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 96 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@372@01, 1)) | dead]
; [else-branch: 96 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@372@01, 1)) | live]
(push) ; 10
; [else-branch: 96 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@372@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@393@01 $Snap)
(assert (= $t@393@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@335@01 0))
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
(declare-const self@394@01 $Struct)
(assert (=
  self@394@01
  ($struct_set<$Struct> self@372@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@372@01 2))
    l$havoc$6@335@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 8
; [eval] !$succ
; [then-branch: 97 | False | dead]
; [else-branch: 97 | True | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 97 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 93 | $out_of_gas@334@01]
(assert $out_of_gas@334@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 87 | !(l$no_reentrant_call@331@01)]
(assert (not l$no_reentrant_call@331@01))
(pop) ; 6
; [eval] !l$no_reentrant_call
(push) ; 6
(set-option :timeout 10)
(assert (not l$no_reentrant_call@331@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@331@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | !(l$no_reentrant_call@331@01) | live]
; [else-branch: 98 | l$no_reentrant_call@331@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 98 | !(l$no_reentrant_call@331@01)]
(assert (not l$no_reentrant_call@331@01))
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
(assert (not (not $out_of_gas@334@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@334@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 99 | $out_of_gas@334@01 | live]
; [else-branch: 99 | !($out_of_gas@334@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 99 | $out_of_gas@334@01]
(assert $out_of_gas@334@01)
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
; [then-branch: 100 | False | dead]
; [else-branch: 100 | True | live]
(push) ; 8
; [else-branch: 100 | True]
(pop) ; 8
; [eval] !$succ
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | True | live]
; [else-branch: 101 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 101 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 102 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | dead]
; [else-branch: 102 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
(push) ; 10
; [else-branch: 102 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 103 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | dead]
; [else-branch: 103 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1)) | live]
(push) ; 10
; [else-branch: 103 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@395@01 $Snap)
(assert (= $t@395@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@335@01 0))
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
(declare-const self@396@01 $Struct)
(assert (=
  self@396@01
  ($struct_set<$Struct> self@315@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    l$havoc$6@335@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 8
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 99 | !($out_of_gas@334@01)]
(assert (not $out_of_gas@334@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@334@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@334@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 104 | !($out_of_gas@334@01) | live]
; [else-branch: 104 | $out_of_gas@334@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 104 | !($out_of_gas@334@01)]
(assert (not $out_of_gas@334@01))
; [exec]
; label end
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 105 | True | live]
; [else-branch: 105 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 105 | True]
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1))))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](l$havoc$2@329@01, 1)) | live]
; [else-branch: 106 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](l$havoc$2@329@01, 1)) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 106 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](l$havoc$2@329@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 10
(push) ; 10
; [else-branch: 106 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](l$havoc$2@329@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
      ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1))))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1))))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 107 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](l$havoc$2@329@01, 1)) | live]
; [else-branch: 107 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](l$havoc$2@329@01, 1)) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 107 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](l$havoc$2@329@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1)))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 10
(push) ; 10
; [else-branch: 107 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) == $struct_get[Int]($struct_loc[Int](l$havoc$2@329@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 1))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@397@01 $Snap)
(assert (= $t@397@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@335@01 0))
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
(declare-const self@398@01 $Struct)
(assert (=
  self@398@01
  ($struct_set<$Struct> l$havoc$2@329@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@329@01 2))
    l$havoc$6@335@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 8
; [eval] !$succ
; [then-branch: 108 | False | dead]
; [else-branch: 108 | True | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 108 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 104 | $out_of_gas@334@01]
(assert $out_of_gas@334@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 98 | l$no_reentrant_call@331@01]
(assert l$no_reentrant_call@331@01)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 84 | l$send_fail@325@01]
(assert l$send_fail@325@01)
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 76 | $struct_get[Int]($struct_loc[Int](self@315@01, 2)) < $unwrap[Int](l$amount@308@01)]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
  ($unwrap<Int> l$amount@308@01)))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 70 | $struct_get[Int]($struct_loc[Int](msg@311@01, 0)) != $struct_get[Int]($struct_loc[Int](self@315@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@311@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@315@01 1)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$pay_fail ----------
(declare-const l$amount@399@01 $Int)
(declare-const l$to@400@01 Int)
(declare-const $succ@401@01 Bool)
(declare-const l$amount@402@01 $Int)
(declare-const l$to@403@01 Int)
(declare-const $succ@404@01 Bool)
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
(declare-const msg@405@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@406@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@407@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@408@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@409@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@410@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@411@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@412@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@413@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@414@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@415@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@416@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@417@01 Bool)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@418@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@419@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@420@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@421@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@422@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@423@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@424@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@425@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@426@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@427@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@428@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@429@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@430@01 $Map<Int~_$Struct>)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@431@01 $Snap)
(assert (= $t@431@01 ($Snap.combine ($Snap.first $t@431@01) ($Snap.second $t@431@01))))
(assert (= ($Snap.first $t@431@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@409@01 0))))
(assert (= ($Snap.second $t@431@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@409@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@432@01 $Snap)
(assert (= $t@432@01 ($Snap.combine ($Snap.first $t@432@01) ($Snap.second $t@432@01))))
(assert (= ($Snap.first $t@432@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@409@01 1))))
(assert (= ($Snap.second $t@432@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@409@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@433@01 $Snap)
(assert (= $t@433@01 ($Snap.combine ($Snap.first $t@433@01) ($Snap.second $t@433@01))))
(assert (= ($Snap.first $t@433@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@409@01 2))))
(assert (= ($Snap.second $t@433@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@409@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@434@01 $Snap)
(assert (= $t@434@01 ($Snap.combine ($Snap.first $t@434@01) ($Snap.second $t@434@01))))
(assert (= ($Snap.first $t@434@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@409@01 3))))
(assert (= ($Snap.second $t@434@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@409@01 3))
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
(declare-const $t@435@01 $Snap)
(assert (= $t@435@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@436@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 109 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@409@01, 5)), $q0@436@01)) | live]
; [else-branch: 109 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@409@01, 5)), $q0@436@01) | live]
(push) ; 5
; [then-branch: 109 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@409@01, 5)), $q0@436@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@436@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 109 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@409@01, 5)), $q0@436@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@436@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@436@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@436@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@436@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@436@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@436@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@436@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1209@11@1209@345-aux|)))
(assert (forall (($q0@436@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@436@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@436@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@436@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1209@11@1209@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@437@01 $Snap)
(assert (= $t@437@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@438@01 Int)
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
(assert (forall (($q0@438@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@438@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) $q0@438@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1210@11@1210@253|)))
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
(declare-const $t@439@01 $Snap)
(assert (= $t@439@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@440@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 110 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@409@01, 6)), $q1@440@01)) | live]
; [else-branch: 110 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@409@01, 6)), $q1@440@01) | live]
(push) ; 5
; [then-branch: 110 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@409@01, 6)), $q1@440@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@440@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 110 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@409@01, 6)), $q1@440@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@440@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@440@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@440@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@440@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@440@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@440@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@440@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1211@11@1211@345-aux|)))
(assert (forall (($q1@440@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@440@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@440@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@440@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1211@11@1211@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@441@01 $Snap)
(assert (= $t@441@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@442@01 Int)
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
(assert (forall (($q1@442@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@442@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 6)) $q1@442@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1212@11@1212@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@443@01 $Snap)
(assert (= $t@443@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@409@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@444@01 $Snap)
(assert (= $t@444@01 ($Snap.combine ($Snap.first $t@444@01) ($Snap.second $t@444@01))))
(assert (= ($Snap.first $t@444@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@444@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$amount) &&
;   $unwrap(l$amount) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@445@01 $Snap)
(assert (= $t@445@01 ($Snap.combine ($Snap.first $t@445@01) ($Snap.second $t@445@01))))
(assert (= ($Snap.first $t@445@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$amount)
; [eval] $unwrap(l$amount)
(assert (<= 0 ($unwrap<Int> l$amount@402@01)))
(assert (= ($Snap.second $t@445@01) $Snap.unit))
; [eval] $unwrap(l$amount) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$amount)
(assert (<=
  ($unwrap<Int> l$amount@402@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= l$to &&
;   l$to <= 1461501637330902918203684832716283019655932542975
(declare-const $t@446@01 $Snap)
(assert (= $t@446@01 ($Snap.combine ($Snap.first $t@446@01) ($Snap.second $t@446@01))))
(assert (= ($Snap.first $t@446@01) $Snap.unit))
; [eval] 0 <= l$to
(assert (<= 0 l$to@403@01))
(assert (= ($Snap.second $t@446@01) $Snap.unit))
; [eval] l$to <= 1461501637330902918203684832716283019655932542975
(assert (<= l$to@403@01 1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@447@01 $Snap)
(assert (= $t@447@01 ($Snap.combine ($Snap.first $t@447@01) ($Snap.second $t@447@01))))
(assert (= ($Snap.first $t@447@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@406@01 0))))
(assert (= ($Snap.second $t@447@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@406@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@448@01 $Snap)
(assert (= $t@448@01 ($Snap.combine ($Snap.first $t@448@01) ($Snap.second $t@448@01))))
(assert (= ($Snap.first $t@448@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@406@01 1))))
(assert (= ($Snap.second $t@448@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@406@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@449@01 $Snap)
(assert (= $t@449@01 ($Snap.combine ($Snap.first $t@449@01) ($Snap.second $t@449@01))))
(assert (= ($Snap.first $t@449@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@406@01 2))))
(assert (= ($Snap.second $t@449@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@406@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@450@01 $Snap)
(assert (= $t@450@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@406@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@451@01 $Snap)
(assert (= $t@451@01 ($Snap.combine ($Snap.first $t@451@01) ($Snap.second $t@451@01))))
(assert (= ($Snap.first $t@451@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@406@01 4))))
(assert (= ($Snap.second $t@451@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@406@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@452@01 $Snap)
(assert (= $t@452@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@406@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@453@01 $Snap)
(assert (= $t@453@01 ($Snap.combine ($Snap.first $t@453@01) ($Snap.second $t@453@01))))
(assert (= ($Snap.first $t@453@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))))
(assert (= ($Snap.second $t@453@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@454@01 $Snap)
(assert (= $t@454@01 ($Snap.combine ($Snap.first $t@454@01) ($Snap.second $t@454@01))))
(assert (= ($Snap.first $t@454@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@405@01 1))))
(assert (= ($Snap.second $t@454@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@455@01 $Snap)
(assert (= $t@455@01 ($Snap.combine ($Snap.first $t@455@01) ($Snap.second $t@455@01))))
(assert (= ($Snap.first $t@455@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@405@01 2))))
(assert (= ($Snap.second $t@455@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@456@01 $Snap)
(assert (= $t@456@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@457@01 $Snap)
(assert (= $t@457@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@405@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@458@01 $Snap)
(assert (= $t@458@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@459@01 Int)
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
(declare-const $t@460@01 $Snap)
(assert (= $t@460@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@405@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@409@01 2))
    ($unwrap<Int> l$amount@402@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@409@01 2))
  ($unwrap<Int> l$amount@402@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | $struct_get[Int]($struct_loc[Int](self@409@01, 2)) < $unwrap[Int](l$amount@402@01) | live]
; [else-branch: 111 | !($struct_get[Int]($struct_loc[Int](self@409@01, 2)) < $unwrap[Int](l$amount@402@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 111 | $struct_get[Int]($struct_loc[Int](self@409@01, 2)) < $unwrap[Int](l$amount@402@01)]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@409@01 2))
  ($unwrap<Int> l$amount@402@01)))
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
; [then-branch: 112 | False | dead]
; [else-branch: 112 | True | live]
(push) ; 4
; [else-branch: 112 | True]
(pop) ; 4
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 113 | True | live]
; [else-branch: 113 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 113 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@409@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@409@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@409@01, 1)) | live]
; [else-branch: 114 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@409@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 114 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@409@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@409@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(push) ; 6
; [else-branch: 114 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@409@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@409@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@409@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@409@01 1))))))
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@409@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@409@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 115 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@409@01, 1)) | live]
; [else-branch: 115 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@409@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 115 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@409@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@409@01 1)))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 6
(push) ; 6
; [else-branch: 115 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@409@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@409@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@461@01 $Snap)
(assert (= $t@461@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@429@01 0))
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
(declare-const self@462@01 $Struct)
(assert (=
  self@462@01
  ($struct_set<$Struct> self@409@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@409@01 2))
    l$havoc$6@429@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 111 | !($struct_get[Int]($struct_loc[Int](self@409@01, 2)) < $unwrap[Int](l$amount@402@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@409@01 2))
    ($unwrap<Int> l$amount@402@01))))
(pop) ; 3
; [eval] !(($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@409@01 2))
  ($unwrap<Int> l$amount@402@01))))
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
    ($struct_get<Int> ($struct_loc<Int> self@409@01 2))
    ($unwrap<Int> l$amount@402@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 116 | !($struct_get[Int]($struct_loc[Int](self@409@01, 2)) < $unwrap[Int](l$amount@402@01)) | live]
; [else-branch: 116 | $struct_get[Int]($struct_loc[Int](self@409@01, 2)) < $unwrap[Int](l$amount@402@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 116 | !($struct_get[Int]($struct_loc[Int](self@409@01, 2)) < $unwrap[Int](l$amount@402@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@409@01 2))
    ($unwrap<Int> l$amount@402@01))))
; [exec]
; self := ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]),
;   l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) +
;   $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] $unwrap(l$amount)
(declare-const self@463@01 $Struct)
(assert (=
  self@463@01
  ($struct_set<$Struct> self@409@01 5 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) l$to@403@01 (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)) l$to@403@01)
    ($unwrap<Int> l$amount@402@01))))))
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) -
;   $unwrap(l$amount)): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(declare-const self@464@01 $Struct)
(assert (=
  self@464@01
  ($struct_set<$Struct> self@463@01 2 (-
    ($struct_get<Int> ($struct_loc<Int> self@463@01 2))
    ($unwrap<Int> l$amount@402@01)))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 117 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@464@01, 1)) | live]
; [else-branch: 117 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@464@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 117 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@464@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(push) ; 5
; [else-branch: 117 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@464@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))))
(push) ; 4
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@464@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@409@01 0))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@464@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@409@01 0)))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 118 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@464@01, 1)) | live]
; [else-branch: 118 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@464@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 118 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@464@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 5
(push) ; 5
; [else-branch: 118 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@464@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@464@01 5)))
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 119 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@464@01, 1)) | live]
; [else-branch: 119 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@464@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 119 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@464@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 119 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@464@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@464@01 5)))
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 120 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@464@01, 1)) | live]
; [else-branch: 120 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@464@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 120 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@464@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 120 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@464@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@464@01 5)))
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 121 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@464@01, 1)) | live]
; [else-branch: 121 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@464@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 121 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) != $struct_get[Int]($struct_loc[Int](self@464@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@464@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 121 | $struct_get[Int]($struct_loc[Int](msg@405@01, 0)) == $struct_get[Int]($struct_loc[Int](self@464@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@405@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@464@01 1))))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@464@01 5)))
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@409@01 5)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$pay_and_set_f ----------
(declare-const l$amount@465@01 $Int)
(declare-const l$to@466@01 Int)
(declare-const l$new_f@467@01 $Int)
(declare-const $succ@468@01 Bool)
(declare-const l$amount@469@01 $Int)
(declare-const l$to@470@01 Int)
(declare-const l$new_f@471@01 $Int)
(declare-const $succ@472@01 Bool)
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
(declare-const msg@473@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@474@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@475@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@476@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@477@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@478@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@479@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@480@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@481@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@482@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@483@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@484@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@485@01 Bool)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@486@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@487@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@488@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@489@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@490@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@491@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@492@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@493@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@494@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@495@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@496@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@497@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@498@01 $Map<Int~_$Struct>)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@499@01 $Snap)
(assert (= $t@499@01 ($Snap.combine ($Snap.first $t@499@01) ($Snap.second $t@499@01))))
(assert (= ($Snap.first $t@499@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@477@01 0))))
(assert (= ($Snap.second $t@499@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@477@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@500@01 $Snap)
(assert (= $t@500@01 ($Snap.combine ($Snap.first $t@500@01) ($Snap.second $t@500@01))))
(assert (= ($Snap.first $t@500@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@477@01 1))))
(assert (= ($Snap.second $t@500@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@477@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@501@01 $Snap)
(assert (= $t@501@01 ($Snap.combine ($Snap.first $t@501@01) ($Snap.second $t@501@01))))
(assert (= ($Snap.first $t@501@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@477@01 2))))
(assert (= ($Snap.second $t@501@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@477@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@502@01 $Snap)
(assert (= $t@502@01 ($Snap.combine ($Snap.first $t@502@01) ($Snap.second $t@502@01))))
(assert (= ($Snap.first $t@502@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@477@01 3))))
(assert (= ($Snap.second $t@502@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@477@01 3))
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
(declare-const $t@503@01 $Snap)
(assert (= $t@503@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@504@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 122 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@477@01, 5)), $q0@504@01)) | live]
; [else-branch: 122 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@477@01, 5)), $q0@504@01) | live]
(push) ; 5
; [then-branch: 122 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@477@01, 5)), $q0@504@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@504@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 122 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@477@01, 5)), $q0@504@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@504@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@504@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@504@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@504@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@504@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@504@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@504@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1368@11@1368@345-aux|)))
(assert (forall (($q0@504@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@504@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@504@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@504@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1368@11@1368@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@505@01 $Snap)
(assert (= $t@505@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@506@01 Int)
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
(assert (forall (($q0@506@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@506@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 5)) $q0@506@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1369@11@1369@253|)))
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
(declare-const $t@507@01 $Snap)
(assert (= $t@507@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@508@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 123 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@477@01, 6)), $q1@508@01)) | live]
; [else-branch: 123 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@477@01, 6)), $q1@508@01) | live]
(push) ; 5
; [then-branch: 123 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@477@01, 6)), $q1@508@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@508@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 123 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@477@01, 6)), $q1@508@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@508@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@508@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@508@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@508@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@508@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@508@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@508@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1370@11@1370@345-aux|)))
(assert (forall (($q1@508@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@508@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@508@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@508@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1370@11@1370@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@509@01 $Snap)
(assert (= $t@509@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@510@01 Int)
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
(assert (forall (($q1@510@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@510@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@477@01 6)) $q1@510@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1371@11@1371@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@511@01 $Snap)
(assert (= $t@511@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@477@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@512@01 $Snap)
(assert (= $t@512@01 ($Snap.combine ($Snap.first $t@512@01) ($Snap.second $t@512@01))))
(assert (= ($Snap.first $t@512@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@512@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$amount) &&
;   $unwrap(l$amount) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@513@01 $Snap)
(assert (= $t@513@01 ($Snap.combine ($Snap.first $t@513@01) ($Snap.second $t@513@01))))
(assert (= ($Snap.first $t@513@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$amount)
; [eval] $unwrap(l$amount)
(assert (<= 0 ($unwrap<Int> l$amount@469@01)))
(assert (= ($Snap.second $t@513@01) $Snap.unit))
; [eval] $unwrap(l$amount) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$amount)
(assert (<=
  ($unwrap<Int> l$amount@469@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= l$to &&
;   l$to <= 1461501637330902918203684832716283019655932542975
(declare-const $t@514@01 $Snap)
(assert (= $t@514@01 ($Snap.combine ($Snap.first $t@514@01) ($Snap.second $t@514@01))))
(assert (= ($Snap.first $t@514@01) $Snap.unit))
; [eval] 0 <= l$to
(assert (<= 0 l$to@470@01))
(assert (= ($Snap.second $t@514@01) $Snap.unit))
; [eval] l$to <= 1461501637330902918203684832716283019655932542975
(assert (<= l$to@470@01 1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <= $unwrap(l$new_f) &&
;   $unwrap(l$new_f) <= 170141183460469231731687303715884105727
(declare-const $t@515@01 $Snap)
(assert (= $t@515@01 ($Snap.combine ($Snap.first $t@515@01) ($Snap.second $t@515@01))))
(assert (= ($Snap.first $t@515@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= $unwrap(l$new_f)
; [eval] -170141183460469231731687303715884105728
; [eval] $unwrap(l$new_f)
(assert (<= (- 0 170141183460469231731687303715884105728) ($unwrap<Int> l$new_f@471@01)))
(assert (= ($Snap.second $t@515@01) $Snap.unit))
; [eval] $unwrap(l$new_f) <= 170141183460469231731687303715884105727
; [eval] $unwrap(l$new_f)
(assert (<= ($unwrap<Int> l$new_f@471@01) 170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@516@01 $Snap)
(assert (= $t@516@01 ($Snap.combine ($Snap.first $t@516@01) ($Snap.second $t@516@01))))
(assert (= ($Snap.first $t@516@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@474@01 0))))
(assert (= ($Snap.second $t@516@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@474@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@517@01 $Snap)
(assert (= $t@517@01 ($Snap.combine ($Snap.first $t@517@01) ($Snap.second $t@517@01))))
(assert (= ($Snap.first $t@517@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@474@01 1))))
(assert (= ($Snap.second $t@517@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@474@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@518@01 $Snap)
(assert (= $t@518@01 ($Snap.combine ($Snap.first $t@518@01) ($Snap.second $t@518@01))))
(assert (= ($Snap.first $t@518@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@474@01 2))))
(assert (= ($Snap.second $t@518@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@474@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@519@01 $Snap)
(assert (= $t@519@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@474@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@520@01 $Snap)
(assert (= $t@520@01 ($Snap.combine ($Snap.first $t@520@01) ($Snap.second $t@520@01))))
(assert (= ($Snap.first $t@520@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@474@01 4))))
(assert (= ($Snap.second $t@520@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@474@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@521@01 $Snap)
(assert (= $t@521@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@474@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@522@01 $Snap)
(assert (= $t@522@01 ($Snap.combine ($Snap.first $t@522@01) ($Snap.second $t@522@01))))
(assert (= ($Snap.first $t@522@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))))
(assert (= ($Snap.second $t@522@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@523@01 $Snap)
(assert (= $t@523@01 ($Snap.combine ($Snap.first $t@523@01) ($Snap.second $t@523@01))))
(assert (= ($Snap.first $t@523@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@473@01 1))))
(assert (= ($Snap.second $t@523@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@524@01 $Snap)
(assert (= $t@524@01 ($Snap.combine ($Snap.first $t@524@01) ($Snap.second $t@524@01))))
(assert (= ($Snap.first $t@524@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@473@01 2))))
(assert (= ($Snap.second $t@524@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@525@01 $Snap)
(assert (= $t@525@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@526@01 $Snap)
(assert (= $t@526@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@473@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@527@01 $Snap)
(assert (= $t@527@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@528@01 Int)
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
(declare-const $t@529@01 $Snap)
(assert (= $t@529@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@473@01 1)) 0))
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
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@477@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@477@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 124 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
; [else-branch: 124 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 124 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@477@01 1)))))
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
; [then-branch: 125 | False | dead]
; [else-branch: 125 | True | live]
(push) ; 4
; [else-branch: 125 | True]
(pop) ; 4
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 126 | True | live]
; [else-branch: 126 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 126 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@477@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 127 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
; [else-branch: 127 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 127 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@477@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 128 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
; [else-branch: 128 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 128 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@530@01 $Snap)
(assert (= $t@530@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@497@01 0))
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
(declare-const self@531@01 $Struct)
(assert (=
  self@531@01
  ($struct_set<$Struct> self@477@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@477@01 2))
    l$havoc$6@497@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 124 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@477@01 1))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@477@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@477@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 129 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
; [else-branch: 129 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 129 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@477@01 1))))
; [exec]
; self := ($struct_set(self, 0, $unwrap(l$new_f)): $Struct)
; [eval] ($struct_set(self, 0, $unwrap(l$new_f)): $Struct)
; [eval] $unwrap(l$new_f)
(declare-const self@532@01 $Struct)
(assert (=
  self@532@01
  ($struct_set<$Struct> self@477@01 0 ($unwrap<Int> l$new_f@471@01))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@532@01 2))
    ($unwrap<Int> l$amount@469@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@532@01 2))
  ($unwrap<Int> l$amount@469@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 130 | $struct_get[Int]($struct_loc[Int](self@532@01, 2)) < $unwrap[Int](l$amount@469@01) | live]
; [else-branch: 130 | !($struct_get[Int]($struct_loc[Int](self@532@01, 2)) < $unwrap[Int](l$amount@469@01)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 130 | $struct_get[Int]($struct_loc[Int](self@532@01, 2)) < $unwrap[Int](l$amount@469@01)]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@532@01 2))
  ($unwrap<Int> l$amount@469@01)))
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
; [then-branch: 131 | False | dead]
; [else-branch: 131 | True | live]
(push) ; 5
; [else-branch: 131 | True]
(pop) ; 5
; [eval] !$succ
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 132 | True | live]
; [else-branch: 132 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 132 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
; [then-branch: 133 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | dead]
; [else-branch: 133 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
(push) ; 7
; [else-branch: 133 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
; [then-branch: 134 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | dead]
; [else-branch: 134 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
(push) ; 7
; [else-branch: 134 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@533@01 $Snap)
(assert (= $t@533@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@497@01 0))
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
(declare-const self@534@01 $Struct)
(assert (=
  self@534@01
  ($struct_set<$Struct> self@477@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@477@01 2))
    l$havoc$6@497@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 5
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 130 | !($struct_get[Int]($struct_loc[Int](self@532@01, 2)) < $unwrap[Int](l$amount@469@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@532@01 2))
    ($unwrap<Int> l$amount@469@01))))
(pop) ; 4
; [eval] !(($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@532@01 2))
  ($unwrap<Int> l$amount@469@01))))
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
    ($struct_get<Int> ($struct_loc<Int> self@532@01 2))
    ($unwrap<Int> l$amount@469@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 135 | !($struct_get[Int]($struct_loc[Int](self@532@01, 2)) < $unwrap[Int](l$amount@469@01)) | live]
; [else-branch: 135 | $struct_get[Int]($struct_loc[Int](self@532@01, 2)) < $unwrap[Int](l$amount@469@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 135 | !($struct_get[Int]($struct_loc[Int](self@532@01, 2)) < $unwrap[Int](l$amount@469@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@532@01 2))
    ($unwrap<Int> l$amount@469@01))))
; [exec]
; self := ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]),
;   l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) +
;   $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] $unwrap(l$amount)
(declare-const self@535@01 $Struct)
(assert (=
  self@535@01
  ($struct_set<$Struct> self@532@01 5 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@532@01 5)) l$to@470@01 (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@532@01 5)) l$to@470@01)
    ($unwrap<Int> l$amount@469@01))))))
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) -
;   $unwrap(l$amount)): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(declare-const self@536@01 $Struct)
(assert (=
  self@536@01
  ($struct_set<$Struct> self@535@01 2 (-
    ($struct_get<Int> ($struct_loc<Int> self@535@01 2))
    ($unwrap<Int> l$amount@469@01)))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@536@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 136 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@536@01, 1)) | dead]
; [else-branch: 136 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@536@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 136 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@536@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@536@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@536@01 1))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
; [then-branch: 137 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@536@01, 1)) | dead]
; [else-branch: 137 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@536@01, 1)) | live]
(push) ; 6
; [else-branch: 137 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@536@01, 1))]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$send_fail@487@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not l$send_fail@487@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 138 | l$send_fail@487@01 | live]
; [else-branch: 138 | !(l$send_fail@487@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 138 | l$send_fail@487@01]
(assert l$send_fail@487@01)
; [exec]
; inhale acc($failed(l$to), write)
(declare-const $t@537@01 $Snap)
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
; [then-branch: 139 | False | dead]
; [else-branch: 139 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 139 | True]
(pop) ; 6
; [eval] !$succ
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 140 | True | live]
; [else-branch: 140 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 140 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 7
; [then-branch: 141 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | dead]
; [else-branch: 141 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
(push) ; 8
; [else-branch: 141 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 7
; [then-branch: 142 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | dead]
; [else-branch: 142 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
(push) ; 8
; [else-branch: 142 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@538@01 $Snap)
(assert (= $t@538@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@497@01 0))
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
(declare-const self@539@01 $Struct)
(assert (=
  self@539@01
  ($struct_set<$Struct> self@477@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@477@01 2))
    l$havoc$6@497@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 6
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 138 | !(l$send_fail@487@01)]
(assert (not l$send_fail@487@01))
(pop) ; 5
; [eval] !l$send_fail
(push) ; 5
(set-option :timeout 10)
(assert (not l$send_fail@487@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$send_fail@487@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 143 | !(l$send_fail@487@01) | live]
; [else-branch: 143 | l$send_fail@487@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 143 | !(l$send_fail@487@01)]
(assert (not l$send_fail@487@01))
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
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@540@01 $Snap)
(assert (= $t@540@01 ($Snap.combine ($Snap.first $t@540@01) ($Snap.second $t@540@01))))
(assert (= ($Snap.first $t@540@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 0))))
(assert (= ($Snap.second $t@540@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@541@01 $Snap)
(assert (= $t@541@01 ($Snap.combine ($Snap.first $t@541@01) ($Snap.second $t@541@01))))
(assert (= ($Snap.first $t@541@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1))))
(assert (= ($Snap.second $t@541@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@542@01 $Snap)
(assert (= $t@542@01 ($Snap.combine ($Snap.first $t@542@01) ($Snap.second $t@542@01))))
(assert (= ($Snap.first $t@542@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 2))))
(assert (= ($Snap.second $t@542@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@543@01 $Snap)
(assert (= $t@543@01 ($Snap.combine ($Snap.first $t@543@01) ($Snap.second $t@543@01))))
(assert (= ($Snap.first $t@543@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 3))))
(assert (= ($Snap.second $t@543@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 3))
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
(declare-const $t@544@01 $Snap)
(assert (= $t@544@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@545@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 7
; [then-branch: 144 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@491@01, 5)), $q0@545@01)) | live]
; [else-branch: 144 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@491@01, 5)), $q0@545@01) | live]
(push) ; 8
; [then-branch: 144 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@491@01, 5)), $q0@545@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@545@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 144 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@491@01, 5)), $q0@545@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@545@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@545@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@545@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@545@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@545@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@545@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@545@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1444@11@1444@345-aux|)))
(assert (forall (($q0@545@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@545@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@545@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@545@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1444@11@1444@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@546@01 $Snap)
(assert (= $t@546@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@547@01 Int)
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
(assert (forall (($q0@547@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@547@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $q0@547@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1445@11@1445@253|)))
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
(declare-const $t@548@01 $Snap)
(assert (= $t@548@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@549@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 7
; [then-branch: 145 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@491@01, 6)), $q1@549@01)) | live]
; [else-branch: 145 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@491@01, 6)), $q1@549@01) | live]
(push) ; 8
; [then-branch: 145 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@491@01, 6)), $q1@549@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@549@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 145 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@491@01, 6)), $q1@549@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@549@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@549@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@549@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@549@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@549@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@549@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@549@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1446@11@1446@345-aux|)))
(assert (forall (($q1@549@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@549@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@549@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@549@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1446@11@1446@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@550@01 $Snap)
(assert (= $t@550@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@551@01 Int)
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
(assert (forall (($q1@551@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@551@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 6)) $q1@551@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1447@11@1447@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@552@01 $Snap)
(assert (= $t@552@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@553@01 $Snap)
(assert (= $t@553@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@554@01 Int)
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
(assert (forall (($a@554@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $a@554@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@536@01 5)) $a@554@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@491@01 5)) $a@554@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1450@11@1450@259|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@493@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not l$no_reentrant_call@493@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 146 | l$no_reentrant_call@493@01 | live]
; [else-branch: 146 | !(l$no_reentrant_call@493@01) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 146 | l$no_reentrant_call@493@01]
(assert l$no_reentrant_call@493@01)
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
(assert (not (not $out_of_gas@496@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@496@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 147 | $out_of_gas@496@01 | live]
; [else-branch: 147 | !($out_of_gas@496@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 147 | $out_of_gas@496@01]
(assert $out_of_gas@496@01)
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
; [then-branch: 148 | False | dead]
; [else-branch: 148 | True | live]
(push) ; 8
; [else-branch: 148 | True]
(pop) ; 8
; [eval] !$succ
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 149 | True | live]
; [else-branch: 149 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 149 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 150 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | dead]
; [else-branch: 150 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
(push) ; 10
; [else-branch: 150 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 151 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | dead]
; [else-branch: 151 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
(push) ; 10
; [else-branch: 151 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@555@01 $Snap)
(assert (= $t@555@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@497@01 0))
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
(declare-const self@556@01 $Struct)
(assert (=
  self@556@01
  ($struct_set<$Struct> self@477@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@477@01 2))
    l$havoc$6@497@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 8
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 147 | !($out_of_gas@496@01)]
(assert (not $out_of_gas@496@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@496@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@496@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 152 | !($out_of_gas@496@01) | live]
; [else-branch: 152 | $out_of_gas@496@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 152 | !($out_of_gas@496@01)]
(assert (not $out_of_gas@496@01))
; [exec]
; label end
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 153 | True | live]
; [else-branch: 153 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 153 | True]
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 154 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@536@01, 1)) | dead]
; [else-branch: 154 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@536@01, 1)) | live]
(push) ; 10
; [else-branch: 154 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@536@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 155 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@536@01, 1)) | dead]
; [else-branch: 155 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@536@01, 1)) | live]
(push) ; 10
; [else-branch: 155 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@536@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@557@01 $Snap)
(assert (= $t@557@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@497@01 0))
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
(declare-const self@558@01 $Struct)
(assert (=
  self@558@01
  ($struct_set<$Struct> self@536@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@536@01 2))
    l$havoc$6@497@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 8
; [eval] !$succ
; [then-branch: 156 | False | dead]
; [else-branch: 156 | True | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 156 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 152 | $out_of_gas@496@01]
(assert $out_of_gas@496@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 146 | !(l$no_reentrant_call@493@01)]
(assert (not l$no_reentrant_call@493@01))
(pop) ; 6
; [eval] !l$no_reentrant_call
(push) ; 6
(set-option :timeout 10)
(assert (not l$no_reentrant_call@493@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@493@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 157 | !(l$no_reentrant_call@493@01) | live]
; [else-branch: 157 | l$no_reentrant_call@493@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 157 | !(l$no_reentrant_call@493@01)]
(assert (not l$no_reentrant_call@493@01))
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
(assert (not (not $out_of_gas@496@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@496@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 158 | $out_of_gas@496@01 | live]
; [else-branch: 158 | !($out_of_gas@496@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 158 | $out_of_gas@496@01]
(assert $out_of_gas@496@01)
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
; [then-branch: 159 | False | dead]
; [else-branch: 159 | True | live]
(push) ; 8
; [else-branch: 159 | True]
(pop) ; 8
; [eval] !$succ
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 160 | True | live]
; [else-branch: 160 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 160 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 161 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | dead]
; [else-branch: 161 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
(push) ; 10
; [else-branch: 161 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 162 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | dead]
; [else-branch: 162 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1)) | live]
(push) ; 10
; [else-branch: 162 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@559@01 $Snap)
(assert (= $t@559@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@497@01 0))
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
(declare-const self@560@01 $Struct)
(assert (=
  self@560@01
  ($struct_set<$Struct> self@477@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@477@01 2))
    l$havoc$6@497@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 8
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 158 | !($out_of_gas@496@01)]
(assert (not $out_of_gas@496@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@496@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@496@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 163 | !($out_of_gas@496@01) | live]
; [else-branch: 163 | $out_of_gas@496@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 163 | !($out_of_gas@496@01)]
(assert (not $out_of_gas@496@01))
; [exec]
; label end
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
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1))))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 165 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](l$havoc$2@491@01, 1)) | live]
; [else-branch: 165 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](l$havoc$2@491@01, 1)) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 165 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](l$havoc$2@491@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 10
(push) ; 10
; [else-branch: 165 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](l$havoc$2@491@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
      ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1))))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1))))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 166 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](l$havoc$2@491@01, 1)) | live]
; [else-branch: 166 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](l$havoc$2@491@01, 1)) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 166 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](l$havoc$2@491@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1)))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 10
(push) ; 10
; [else-branch: 166 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) == $struct_get[Int]($struct_loc[Int](l$havoc$2@491@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 1))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@561@01 $Snap)
(assert (= $t@561@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@497@01 0))
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
(declare-const self@562@01 $Struct)
(assert (=
  self@562@01
  ($struct_set<$Struct> l$havoc$2@491@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@491@01 2))
    l$havoc$6@497@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 8
; [eval] !$succ
; [then-branch: 167 | False | dead]
; [else-branch: 167 | True | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 167 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 163 | $out_of_gas@496@01]
(assert $out_of_gas@496@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 157 | l$no_reentrant_call@493@01]
(assert l$no_reentrant_call@493@01)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 143 | l$send_fail@487@01]
(assert l$send_fail@487@01)
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 135 | $struct_get[Int]($struct_loc[Int](self@532@01, 2)) < $unwrap[Int](l$amount@469@01)]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@532@01 2))
  ($unwrap<Int> l$amount@469@01)))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 129 | $struct_get[Int]($struct_loc[Int](msg@473@01, 0)) != $struct_get[Int]($struct_loc[Int](self@477@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@473@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@477@01 1)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$pay_and_set_f_fail_1 ----------
(declare-const l$amount@563@01 $Int)
(declare-const l$to@564@01 Int)
(declare-const l$new_f@565@01 $Int)
(declare-const $succ@566@01 Bool)
(declare-const l$amount@567@01 $Int)
(declare-const l$to@568@01 Int)
(declare-const l$new_f@569@01 $Int)
(declare-const $succ@570@01 Bool)
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
(declare-const msg@571@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@572@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@573@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@574@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@575@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@576@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@577@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@578@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@579@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@580@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@581@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@582@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@583@01 Bool)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@584@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@585@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@586@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@587@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@588@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@589@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@590@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@591@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@592@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@593@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@594@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@595@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@596@01 $Map<Int~_$Struct>)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@597@01 $Snap)
(assert (= $t@597@01 ($Snap.combine ($Snap.first $t@597@01) ($Snap.second $t@597@01))))
(assert (= ($Snap.first $t@597@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@575@01 0))))
(assert (= ($Snap.second $t@597@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@575@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@598@01 $Snap)
(assert (= $t@598@01 ($Snap.combine ($Snap.first $t@598@01) ($Snap.second $t@598@01))))
(assert (= ($Snap.first $t@598@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@575@01 1))))
(assert (= ($Snap.second $t@598@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@575@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@599@01 $Snap)
(assert (= $t@599@01 ($Snap.combine ($Snap.first $t@599@01) ($Snap.second $t@599@01))))
(assert (= ($Snap.first $t@599@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@575@01 2))))
(assert (= ($Snap.second $t@599@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@575@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@600@01 $Snap)
(assert (= $t@600@01 ($Snap.combine ($Snap.first $t@600@01) ($Snap.second $t@600@01))))
(assert (= ($Snap.first $t@600@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@575@01 3))))
(assert (= ($Snap.second $t@600@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@575@01 3))
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
(declare-const $t@601@01 $Snap)
(assert (= $t@601@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@602@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 168 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@575@01, 5)), $q0@602@01)) | live]
; [else-branch: 168 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@575@01, 5)), $q0@602@01) | live]
(push) ; 5
; [then-branch: 168 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@575@01, 5)), $q0@602@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@602@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 168 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@575@01, 5)), $q0@602@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@602@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@602@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@602@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@602@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@602@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@602@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@602@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1532@11@1532@345-aux|)))
(assert (forall (($q0@602@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@602@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@602@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@602@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1532@11@1532@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@603@01 $Snap)
(assert (= $t@603@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@604@01 Int)
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
(assert (forall (($q0@604@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@604@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 5)) $q0@604@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1533@11@1533@253|)))
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
(declare-const $t@605@01 $Snap)
(assert (= $t@605@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@606@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 169 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@575@01, 6)), $q1@606@01)) | live]
; [else-branch: 169 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@575@01, 6)), $q1@606@01) | live]
(push) ; 5
; [then-branch: 169 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@575@01, 6)), $q1@606@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@606@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 169 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@575@01, 6)), $q1@606@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@606@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@606@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@606@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@606@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@606@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@606@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@606@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1534@11@1534@345-aux|)))
(assert (forall (($q1@606@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@606@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@606@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@606@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1534@11@1534@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@607@01 $Snap)
(assert (= $t@607@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@608@01 Int)
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
(assert (forall (($q1@608@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@608@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@575@01 6)) $q1@608@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1535@11@1535@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@609@01 $Snap)
(assert (= $t@609@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@575@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@610@01 $Snap)
(assert (= $t@610@01 ($Snap.combine ($Snap.first $t@610@01) ($Snap.second $t@610@01))))
(assert (= ($Snap.first $t@610@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@610@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$amount) &&
;   $unwrap(l$amount) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@611@01 $Snap)
(assert (= $t@611@01 ($Snap.combine ($Snap.first $t@611@01) ($Snap.second $t@611@01))))
(assert (= ($Snap.first $t@611@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$amount)
; [eval] $unwrap(l$amount)
(assert (<= 0 ($unwrap<Int> l$amount@567@01)))
(assert (= ($Snap.second $t@611@01) $Snap.unit))
; [eval] $unwrap(l$amount) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$amount)
(assert (<=
  ($unwrap<Int> l$amount@567@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= l$to &&
;   l$to <= 1461501637330902918203684832716283019655932542975
(declare-const $t@612@01 $Snap)
(assert (= $t@612@01 ($Snap.combine ($Snap.first $t@612@01) ($Snap.second $t@612@01))))
(assert (= ($Snap.first $t@612@01) $Snap.unit))
; [eval] 0 <= l$to
(assert (<= 0 l$to@568@01))
(assert (= ($Snap.second $t@612@01) $Snap.unit))
; [eval] l$to <= 1461501637330902918203684832716283019655932542975
(assert (<= l$to@568@01 1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <= $unwrap(l$new_f) &&
;   $unwrap(l$new_f) <= 170141183460469231731687303715884105727
(declare-const $t@613@01 $Snap)
(assert (= $t@613@01 ($Snap.combine ($Snap.first $t@613@01) ($Snap.second $t@613@01))))
(assert (= ($Snap.first $t@613@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= $unwrap(l$new_f)
; [eval] -170141183460469231731687303715884105728
; [eval] $unwrap(l$new_f)
(assert (<= (- 0 170141183460469231731687303715884105728) ($unwrap<Int> l$new_f@569@01)))
(assert (= ($Snap.second $t@613@01) $Snap.unit))
; [eval] $unwrap(l$new_f) <= 170141183460469231731687303715884105727
; [eval] $unwrap(l$new_f)
(assert (<= ($unwrap<Int> l$new_f@569@01) 170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@614@01 $Snap)
(assert (= $t@614@01 ($Snap.combine ($Snap.first $t@614@01) ($Snap.second $t@614@01))))
(assert (= ($Snap.first $t@614@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@572@01 0))))
(assert (= ($Snap.second $t@614@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@572@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@615@01 $Snap)
(assert (= $t@615@01 ($Snap.combine ($Snap.first $t@615@01) ($Snap.second $t@615@01))))
(assert (= ($Snap.first $t@615@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@572@01 1))))
(assert (= ($Snap.second $t@615@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@572@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@616@01 $Snap)
(assert (= $t@616@01 ($Snap.combine ($Snap.first $t@616@01) ($Snap.second $t@616@01))))
(assert (= ($Snap.first $t@616@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@572@01 2))))
(assert (= ($Snap.second $t@616@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@572@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@617@01 $Snap)
(assert (= $t@617@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@572@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@618@01 $Snap)
(assert (= $t@618@01 ($Snap.combine ($Snap.first $t@618@01) ($Snap.second $t@618@01))))
(assert (= ($Snap.first $t@618@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@572@01 4))))
(assert (= ($Snap.second $t@618@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@572@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@619@01 $Snap)
(assert (= $t@619@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@572@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@620@01 $Snap)
(assert (= $t@620@01 ($Snap.combine ($Snap.first $t@620@01) ($Snap.second $t@620@01))))
(assert (= ($Snap.first $t@620@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))))
(assert (= ($Snap.second $t@620@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@621@01 $Snap)
(assert (= $t@621@01 ($Snap.combine ($Snap.first $t@621@01) ($Snap.second $t@621@01))))
(assert (= ($Snap.first $t@621@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@571@01 1))))
(assert (= ($Snap.second $t@621@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@622@01 $Snap)
(assert (= $t@622@01 ($Snap.combine ($Snap.first $t@622@01) ($Snap.second $t@622@01))))
(assert (= ($Snap.first $t@622@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@571@01 2))))
(assert (= ($Snap.second $t@622@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@623@01 $Snap)
(assert (= $t@623@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@624@01 $Snap)
(assert (= $t@624@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@571@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@625@01 $Snap)
(assert (= $t@625@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@626@01 Int)
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
(declare-const $t@627@01 $Snap)
(assert (= $t@627@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@571@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, $unwrap(l$new_f)): $Struct)
; [eval] ($struct_set(self, 0, $unwrap(l$new_f)): $Struct)
; [eval] $unwrap(l$new_f)
(declare-const self@628@01 $Struct)
(assert (=
  self@628@01
  ($struct_set<$Struct> self@575@01 0 ($unwrap<Int> l$new_f@569@01))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@628@01 2))
    ($unwrap<Int> l$amount@567@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@628@01 2))
  ($unwrap<Int> l$amount@567@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 170 | $struct_get[Int]($struct_loc[Int](self@628@01, 2)) < $unwrap[Int](l$amount@567@01) | live]
; [else-branch: 170 | !($struct_get[Int]($struct_loc[Int](self@628@01, 2)) < $unwrap[Int](l$amount@567@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 170 | $struct_get[Int]($struct_loc[Int](self@628@01, 2)) < $unwrap[Int](l$amount@567@01)]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@628@01 2))
  ($unwrap<Int> l$amount@567@01)))
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
; [then-branch: 171 | False | dead]
; [else-branch: 171 | True | live]
(push) ; 4
; [else-branch: 171 | True]
(pop) ; 4
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 172 | True | live]
; [else-branch: 172 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 172 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@575@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@575@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 173 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@575@01, 1)) | live]
; [else-branch: 173 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@575@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 173 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@575@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@575@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(push) ; 6
; [else-branch: 173 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@575@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@575@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@575@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@575@01 1))))))
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@575@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@575@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 174 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@575@01, 1)) | live]
; [else-branch: 174 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@575@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 174 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@575@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@575@01 1)))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 6
(push) ; 6
; [else-branch: 174 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@575@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@575@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@629@01 $Snap)
(assert (= $t@629@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@595@01 0))
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
(declare-const self@630@01 $Struct)
(assert (=
  self@630@01
  ($struct_set<$Struct> self@575@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@575@01 2))
    l$havoc$6@595@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 170 | !($struct_get[Int]($struct_loc[Int](self@628@01, 2)) < $unwrap[Int](l$amount@567@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@628@01 2))
    ($unwrap<Int> l$amount@567@01))))
(pop) ; 3
; [eval] !(($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@628@01 2))
  ($unwrap<Int> l$amount@567@01))))
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
    ($struct_get<Int> ($struct_loc<Int> self@628@01 2))
    ($unwrap<Int> l$amount@567@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | !($struct_get[Int]($struct_loc[Int](self@628@01, 2)) < $unwrap[Int](l$amount@567@01)) | live]
; [else-branch: 175 | $struct_get[Int]($struct_loc[Int](self@628@01, 2)) < $unwrap[Int](l$amount@567@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 175 | !($struct_get[Int]($struct_loc[Int](self@628@01, 2)) < $unwrap[Int](l$amount@567@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@628@01 2))
    ($unwrap<Int> l$amount@567@01))))
; [exec]
; self := ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]),
;   l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) +
;   $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] $unwrap(l$amount)
(declare-const self@631@01 $Struct)
(assert (=
  self@631@01
  ($struct_set<$Struct> self@628@01 5 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@628@01 5)) l$to@568@01 (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@628@01 5)) l$to@568@01)
    ($unwrap<Int> l$amount@567@01))))))
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) -
;   $unwrap(l$amount)): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(declare-const self@632@01 $Struct)
(assert (=
  self@632@01
  ($struct_set<$Struct> self@631@01 2 (-
    ($struct_get<Int> ($struct_loc<Int> self@631@01 2))
    ($unwrap<Int> l$amount@567@01)))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@632@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 176 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@632@01, 1)) | live]
; [else-branch: 176 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@632@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 176 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@632@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@632@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(push) ; 5
; [else-branch: 176 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@632@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@632@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))))
(push) ; 4
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@632@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@575@01 0))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@632@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 177 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@632@01, 1)) | live]
; [else-branch: 177 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@632@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 177 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@632@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@632@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 177 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@632@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@632@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@575@01 0))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@632@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 178 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@632@01, 1)) | live]
; [else-branch: 178 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@632@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 178 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@632@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@632@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 178 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@632@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@632@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@575@01 0))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@632@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 179 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@632@01, 1)) | live]
; [else-branch: 179 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@632@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 179 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) != $struct_get[Int]($struct_loc[Int](self@632@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@632@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 179 | $struct_get[Int]($struct_loc[Int](msg@571@01, 0)) == $struct_get[Int]($struct_loc[Int](self@632@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@571@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@632@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@632@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@575@01 0))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$pay_and_set_f_fail_2 ----------
(declare-const l$amount@633@01 $Int)
(declare-const l$to@634@01 Int)
(declare-const l$new_f@635@01 $Int)
(declare-const $succ@636@01 Bool)
(declare-const l$amount@637@01 $Int)
(declare-const l$to@638@01 Int)
(declare-const l$new_f@639@01 $Int)
(declare-const $succ@640@01 Bool)
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
(declare-const msg@641@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@642@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@643@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@644@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@645@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@646@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@647@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@648@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@649@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@650@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@651@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@652@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@653@01 Bool)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@654@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@655@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@656@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@657@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@658@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@659@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@660@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@661@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@662@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@663@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@664@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@665@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@666@01 $Map<Int~_$Struct>)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@667@01 $Snap)
(assert (= $t@667@01 ($Snap.combine ($Snap.first $t@667@01) ($Snap.second $t@667@01))))
(assert (= ($Snap.first $t@667@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@645@01 0))))
(assert (= ($Snap.second $t@667@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@645@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@668@01 $Snap)
(assert (= $t@668@01 ($Snap.combine ($Snap.first $t@668@01) ($Snap.second $t@668@01))))
(assert (= ($Snap.first $t@668@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@645@01 1))))
(assert (= ($Snap.second $t@668@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@645@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@669@01 $Snap)
(assert (= $t@669@01 ($Snap.combine ($Snap.first $t@669@01) ($Snap.second $t@669@01))))
(assert (= ($Snap.first $t@669@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@645@01 2))))
(assert (= ($Snap.second $t@669@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@645@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@670@01 $Snap)
(assert (= $t@670@01 ($Snap.combine ($Snap.first $t@670@01) ($Snap.second $t@670@01))))
(assert (= ($Snap.first $t@670@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@645@01 3))))
(assert (= ($Snap.second $t@670@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@645@01 3))
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
(declare-const $t@671@01 $Snap)
(assert (= $t@671@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@672@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 180 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@645@01, 5)), $q0@672@01)) | live]
; [else-branch: 180 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@645@01, 5)), $q0@672@01) | live]
(push) ; 5
; [then-branch: 180 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@645@01, 5)), $q0@672@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@672@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 180 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@645@01, 5)), $q0@672@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@672@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@672@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@672@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@672@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@672@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@672@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@672@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1693@11@1693@345-aux|)))
(assert (forall (($q0@672@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@672@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@672@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@672@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1693@11@1693@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@673@01 $Snap)
(assert (= $t@673@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@674@01 Int)
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
(assert (forall (($q0@674@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@674@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) $q0@674@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1694@11@1694@253|)))
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
(declare-const $t@675@01 $Snap)
(assert (= $t@675@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@676@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 181 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@645@01, 6)), $q1@676@01)) | live]
; [else-branch: 181 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@645@01, 6)), $q1@676@01) | live]
(push) ; 5
; [then-branch: 181 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@645@01, 6)), $q1@676@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@676@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 181 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@645@01, 6)), $q1@676@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@676@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@676@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@676@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@676@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@676@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@676@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@676@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1695@11@1695@345-aux|)))
(assert (forall (($q1@676@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@676@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@676@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@676@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1695@11@1695@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@677@01 $Snap)
(assert (= $t@677@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@678@01 Int)
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
(assert (forall (($q1@678@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@678@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 6)) $q1@678@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1696@11@1696@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@679@01 $Snap)
(assert (= $t@679@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@645@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@680@01 $Snap)
(assert (= $t@680@01 ($Snap.combine ($Snap.first $t@680@01) ($Snap.second $t@680@01))))
(assert (= ($Snap.first $t@680@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@680@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$amount) &&
;   $unwrap(l$amount) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@681@01 $Snap)
(assert (= $t@681@01 ($Snap.combine ($Snap.first $t@681@01) ($Snap.second $t@681@01))))
(assert (= ($Snap.first $t@681@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$amount)
; [eval] $unwrap(l$amount)
(assert (<= 0 ($unwrap<Int> l$amount@637@01)))
(assert (= ($Snap.second $t@681@01) $Snap.unit))
; [eval] $unwrap(l$amount) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$amount)
(assert (<=
  ($unwrap<Int> l$amount@637@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= l$to &&
;   l$to <= 1461501637330902918203684832716283019655932542975
(declare-const $t@682@01 $Snap)
(assert (= $t@682@01 ($Snap.combine ($Snap.first $t@682@01) ($Snap.second $t@682@01))))
(assert (= ($Snap.first $t@682@01) $Snap.unit))
; [eval] 0 <= l$to
(assert (<= 0 l$to@638@01))
(assert (= ($Snap.second $t@682@01) $Snap.unit))
; [eval] l$to <= 1461501637330902918203684832716283019655932542975
(assert (<= l$to@638@01 1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <= $unwrap(l$new_f) &&
;   $unwrap(l$new_f) <= 170141183460469231731687303715884105727
(declare-const $t@683@01 $Snap)
(assert (= $t@683@01 ($Snap.combine ($Snap.first $t@683@01) ($Snap.second $t@683@01))))
(assert (= ($Snap.first $t@683@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= $unwrap(l$new_f)
; [eval] -170141183460469231731687303715884105728
; [eval] $unwrap(l$new_f)
(assert (<= (- 0 170141183460469231731687303715884105728) ($unwrap<Int> l$new_f@639@01)))
(assert (= ($Snap.second $t@683@01) $Snap.unit))
; [eval] $unwrap(l$new_f) <= 170141183460469231731687303715884105727
; [eval] $unwrap(l$new_f)
(assert (<= ($unwrap<Int> l$new_f@639@01) 170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@684@01 $Snap)
(assert (= $t@684@01 ($Snap.combine ($Snap.first $t@684@01) ($Snap.second $t@684@01))))
(assert (= ($Snap.first $t@684@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@642@01 0))))
(assert (= ($Snap.second $t@684@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@642@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@685@01 $Snap)
(assert (= $t@685@01 ($Snap.combine ($Snap.first $t@685@01) ($Snap.second $t@685@01))))
(assert (= ($Snap.first $t@685@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@642@01 1))))
(assert (= ($Snap.second $t@685@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@642@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@686@01 $Snap)
(assert (= $t@686@01 ($Snap.combine ($Snap.first $t@686@01) ($Snap.second $t@686@01))))
(assert (= ($Snap.first $t@686@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@642@01 2))))
(assert (= ($Snap.second $t@686@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@642@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@687@01 $Snap)
(assert (= $t@687@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@642@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@688@01 $Snap)
(assert (= $t@688@01 ($Snap.combine ($Snap.first $t@688@01) ($Snap.second $t@688@01))))
(assert (= ($Snap.first $t@688@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@642@01 4))))
(assert (= ($Snap.second $t@688@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@642@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@689@01 $Snap)
(assert (= $t@689@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@642@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@690@01 $Snap)
(assert (= $t@690@01 ($Snap.combine ($Snap.first $t@690@01) ($Snap.second $t@690@01))))
(assert (= ($Snap.first $t@690@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))))
(assert (= ($Snap.second $t@690@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@691@01 $Snap)
(assert (= $t@691@01 ($Snap.combine ($Snap.first $t@691@01) ($Snap.second $t@691@01))))
(assert (= ($Snap.first $t@691@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@641@01 1))))
(assert (= ($Snap.second $t@691@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@692@01 $Snap)
(assert (= $t@692@01 ($Snap.combine ($Snap.first $t@692@01) ($Snap.second $t@692@01))))
(assert (= ($Snap.first $t@692@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@641@01 2))))
(assert (= ($Snap.second $t@692@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@693@01 $Snap)
(assert (= $t@693@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@694@01 $Snap)
(assert (= $t@694@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@641@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@695@01 $Snap)
(assert (= $t@695@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@696@01 Int)
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
(declare-const $t@697@01 $Snap)
(assert (= $t@697@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@641@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@645@01 2))
    ($unwrap<Int> l$amount@637@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@645@01 2))
  ($unwrap<Int> l$amount@637@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 182 | $struct_get[Int]($struct_loc[Int](self@645@01, 2)) < $unwrap[Int](l$amount@637@01) | live]
; [else-branch: 182 | !($struct_get[Int]($struct_loc[Int](self@645@01, 2)) < $unwrap[Int](l$amount@637@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 182 | $struct_get[Int]($struct_loc[Int](self@645@01, 2)) < $unwrap[Int](l$amount@637@01)]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@645@01 2))
  ($unwrap<Int> l$amount@637@01)))
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
; [then-branch: 183 | False | dead]
; [else-branch: 183 | True | live]
(push) ; 4
; [else-branch: 183 | True]
(pop) ; 4
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 184 | True | live]
; [else-branch: 184 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 184 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@645@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@645@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 185 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@645@01, 1)) | live]
; [else-branch: 185 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@645@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 185 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@645@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@645@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(push) ; 6
; [else-branch: 185 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@645@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@645@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@645@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@645@01 1))))))
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@645@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@645@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 186 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@645@01, 1)) | live]
; [else-branch: 186 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@645@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 186 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@645@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@645@01 1)))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 6
(push) ; 6
; [else-branch: 186 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@645@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@645@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@698@01 $Snap)
(assert (= $t@698@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@665@01 0))
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
(declare-const self@699@01 $Struct)
(assert (=
  self@699@01
  ($struct_set<$Struct> self@645@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@645@01 2))
    l$havoc$6@665@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 182 | !($struct_get[Int]($struct_loc[Int](self@645@01, 2)) < $unwrap[Int](l$amount@637@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@645@01 2))
    ($unwrap<Int> l$amount@637@01))))
(pop) ; 3
; [eval] !(($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@645@01 2))
  ($unwrap<Int> l$amount@637@01))))
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
    ($struct_get<Int> ($struct_loc<Int> self@645@01 2))
    ($unwrap<Int> l$amount@637@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 187 | !($struct_get[Int]($struct_loc[Int](self@645@01, 2)) < $unwrap[Int](l$amount@637@01)) | live]
; [else-branch: 187 | $struct_get[Int]($struct_loc[Int](self@645@01, 2)) < $unwrap[Int](l$amount@637@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 187 | !($struct_get[Int]($struct_loc[Int](self@645@01, 2)) < $unwrap[Int](l$amount@637@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@645@01 2))
    ($unwrap<Int> l$amount@637@01))))
; [exec]
; self := ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]),
;   l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) +
;   $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] $unwrap(l$amount)
(declare-const self@700@01 $Struct)
(assert (=
  self@700@01
  ($struct_set<$Struct> self@645@01 5 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) l$to@638@01 (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)) l$to@638@01)
    ($unwrap<Int> l$amount@637@01))))))
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) -
;   $unwrap(l$amount)): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(declare-const self@701@01 $Struct)
(assert (=
  self@701@01
  ($struct_set<$Struct> self@700@01 2 (-
    ($struct_get<Int> ($struct_loc<Int> self@700@01 2))
    ($unwrap<Int> l$amount@637@01)))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 188 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@701@01, 1)) | live]
; [else-branch: 188 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@701@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 188 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@701@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(push) ; 5
; [else-branch: 188 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@701@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))))
(push) ; 4
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@701@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@645@01 0))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@701@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@645@01 0)))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 189 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@701@01, 1)) | live]
; [else-branch: 189 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@701@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 189 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@701@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 5
(push) ; 5
; [else-branch: 189 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@701@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@701@01 5)))
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 190 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@701@01, 1)) | live]
; [else-branch: 190 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@701@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 190 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@701@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 190 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@701@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@701@01 5)))
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 191 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@701@01, 1)) | live]
; [else-branch: 191 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@701@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 191 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@701@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 191 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@701@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@701@01 5)))
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 192 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@701@01, 1)) | live]
; [else-branch: 192 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@701@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 192 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) != $struct_get[Int]($struct_loc[Int](self@701@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@701@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 192 | $struct_get[Int]($struct_loc[Int](msg@641@01, 0)) == $struct_get[Int]($struct_loc[Int](self@701@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@641@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@701@01 1))))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@701@01 5)))
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@645@01 5)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$pay_and_set_f_fail_3 ----------
(declare-const l$amount@702@01 $Int)
(declare-const l$to@703@01 Int)
(declare-const l$new_f@704@01 $Int)
(declare-const $succ@705@01 Bool)
(declare-const l$amount@706@01 $Int)
(declare-const l$to@707@01 Int)
(declare-const l$new_f@708@01 $Int)
(declare-const $succ@709@01 Bool)
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
(declare-const msg@710@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@711@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@712@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@713@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@714@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@715@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@716@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@717@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@718@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@719@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@720@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@721@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@722@01 Bool)
; [exec]
; var l$temp: $Int
(declare-const l$temp@723@01 $Int)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@724@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@725@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@726@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@727@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@728@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@729@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@730@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@731@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@732@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@733@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@734@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@735@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@736@01 $Map<Int~_$Struct>)
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@737@01 $Snap)
(assert (= $t@737@01 ($Snap.combine ($Snap.first $t@737@01) ($Snap.second $t@737@01))))
(assert (= ($Snap.first $t@737@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@714@01 0))))
(assert (= ($Snap.second $t@737@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@714@01 0))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@738@01 $Snap)
(assert (= $t@738@01 ($Snap.combine ($Snap.first $t@738@01) ($Snap.second $t@738@01))))
(assert (= ($Snap.first $t@738@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@714@01 1))))
(assert (= ($Snap.second $t@738@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@714@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@739@01 $Snap)
(assert (= $t@739@01 ($Snap.combine ($Snap.first $t@739@01) ($Snap.second $t@739@01))))
(assert (= ($Snap.first $t@739@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@714@01 2))))
(assert (= ($Snap.second $t@739@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@714@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@740@01 $Snap)
(assert (= $t@740@01 ($Snap.combine ($Snap.first $t@740@01) ($Snap.second $t@740@01))))
(assert (= ($Snap.first $t@740@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@714@01 3))))
(assert (= ($Snap.second $t@740@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@714@01 3))
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
(declare-const $t@741@01 $Snap)
(assert (= $t@741@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@742@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 193 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@714@01, 5)), $q0@742@01)) | live]
; [else-branch: 193 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@714@01, 5)), $q0@742@01) | live]
(push) ; 5
; [then-branch: 193 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@714@01, 5)), $q0@742@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@742@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 193 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@714@01, 5)), $q0@742@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@742@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@742@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@742@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@742@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@742@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@742@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@742@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1855@11@1855@345-aux|)))
(assert (forall (($q0@742@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@742@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@742@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@742@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1855@11@1855@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@743@01 $Snap)
(assert (= $t@743@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@744@01 Int)
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
(assert (forall (($q0@744@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@744@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 5)) $q0@744@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1856@11@1856@253|)))
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
(declare-const $t@745@01 $Snap)
(assert (= $t@745@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@746@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 194 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@714@01, 6)), $q1@746@01)) | live]
; [else-branch: 194 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@714@01, 6)), $q1@746@01) | live]
(push) ; 5
; [then-branch: 194 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@714@01, 6)), $q1@746@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@746@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 194 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@714@01, 6)), $q1@746@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@746@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@746@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@746@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@746@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@746@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@746@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@746@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1857@11@1857@345-aux|)))
(assert (forall (($q1@746@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@746@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@746@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@746@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1857@11@1857@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@747@01 $Snap)
(assert (= $t@747@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@748@01 Int)
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
(assert (forall (($q1@748@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@748@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@714@01 6)) $q1@748@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguagealways_check.vy.vpr@1858@11@1858@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@749@01 $Snap)
(assert (= $t@749@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@714@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@750@01 $Snap)
(assert (= $t@750@01 ($Snap.combine ($Snap.first $t@750@01) ($Snap.second $t@750@01))))
(assert (= ($Snap.first $t@750@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@750@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$amount) &&
;   $unwrap(l$amount) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@751@01 $Snap)
(assert (= $t@751@01 ($Snap.combine ($Snap.first $t@751@01) ($Snap.second $t@751@01))))
(assert (= ($Snap.first $t@751@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$amount)
; [eval] $unwrap(l$amount)
(assert (<= 0 ($unwrap<Int> l$amount@706@01)))
(assert (= ($Snap.second $t@751@01) $Snap.unit))
; [eval] $unwrap(l$amount) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$amount)
(assert (<=
  ($unwrap<Int> l$amount@706@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= l$to &&
;   l$to <= 1461501637330902918203684832716283019655932542975
(declare-const $t@752@01 $Snap)
(assert (= $t@752@01 ($Snap.combine ($Snap.first $t@752@01) ($Snap.second $t@752@01))))
(assert (= ($Snap.first $t@752@01) $Snap.unit))
; [eval] 0 <= l$to
(assert (<= 0 l$to@707@01))
(assert (= ($Snap.second $t@752@01) $Snap.unit))
; [eval] l$to <= 1461501637330902918203684832716283019655932542975
(assert (<= l$to@707@01 1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <= $unwrap(l$new_f) &&
;   $unwrap(l$new_f) <= 170141183460469231731687303715884105727
(declare-const $t@753@01 $Snap)
(assert (= $t@753@01 ($Snap.combine ($Snap.first $t@753@01) ($Snap.second $t@753@01))))
(assert (= ($Snap.first $t@753@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= $unwrap(l$new_f)
; [eval] -170141183460469231731687303715884105728
; [eval] $unwrap(l$new_f)
(assert (<= (- 0 170141183460469231731687303715884105728) ($unwrap<Int> l$new_f@708@01)))
(assert (= ($Snap.second $t@753@01) $Snap.unit))
; [eval] $unwrap(l$new_f) <= 170141183460469231731687303715884105727
; [eval] $unwrap(l$new_f)
(assert (<= ($unwrap<Int> l$new_f@708@01) 170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@754@01 $Snap)
(assert (= $t@754@01 ($Snap.combine ($Snap.first $t@754@01) ($Snap.second $t@754@01))))
(assert (= ($Snap.first $t@754@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@711@01 0))))
(assert (= ($Snap.second $t@754@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@711@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@755@01 $Snap)
(assert (= $t@755@01 ($Snap.combine ($Snap.first $t@755@01) ($Snap.second $t@755@01))))
(assert (= ($Snap.first $t@755@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@711@01 1))))
(assert (= ($Snap.second $t@755@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@711@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@756@01 $Snap)
(assert (= $t@756@01 ($Snap.combine ($Snap.first $t@756@01) ($Snap.second $t@756@01))))
(assert (= ($Snap.first $t@756@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@711@01 2))))
(assert (= ($Snap.second $t@756@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@711@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@757@01 $Snap)
(assert (= $t@757@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@711@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@758@01 $Snap)
(assert (= $t@758@01 ($Snap.combine ($Snap.first $t@758@01) ($Snap.second $t@758@01))))
(assert (= ($Snap.first $t@758@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@711@01 4))))
(assert (= ($Snap.second $t@758@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@711@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@759@01 $Snap)
(assert (= $t@759@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@711@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@760@01 $Snap)
(assert (= $t@760@01 ($Snap.combine ($Snap.first $t@760@01) ($Snap.second $t@760@01))))
(assert (= ($Snap.first $t@760@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))))
(assert (= ($Snap.second $t@760@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@761@01 $Snap)
(assert (= $t@761@01 ($Snap.combine ($Snap.first $t@761@01) ($Snap.second $t@761@01))))
(assert (= ($Snap.first $t@761@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@710@01 1))))
(assert (= ($Snap.second $t@761@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@762@01 $Snap)
(assert (= $t@762@01 ($Snap.combine ($Snap.first $t@762@01) ($Snap.second $t@762@01))))
(assert (= ($Snap.first $t@762@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@710@01 2))))
(assert (= ($Snap.second $t@762@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@763@01 $Snap)
(assert (= $t@763@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@764@01 $Snap)
(assert (= $t@764@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@710@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@765@01 $Snap)
(assert (= $t@765@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@766@01 Int)
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
(declare-const $t@767@01 $Snap)
(assert (= $t@767@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@710@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; l$temp := $wrap(($struct_get($struct_loc(self, 0)): Int))
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Int))
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const l$temp@768@01 $Int)
(assert (=
  l$temp@768@01
  ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@714@01 0)))))
; [exec]
; self := ($struct_set(self, 0, $unwrap(l$new_f)): $Struct)
; [eval] ($struct_set(self, 0, $unwrap(l$new_f)): $Struct)
; [eval] $unwrap(l$new_f)
(declare-const self@769@01 $Struct)
(assert (=
  self@769@01
  ($struct_set<$Struct> self@714@01 0 ($unwrap<Int> l$new_f@708@01))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@769@01 2))
    ($unwrap<Int> l$amount@706@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@769@01 2))
  ($unwrap<Int> l$amount@706@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 195 | $struct_get[Int]($struct_loc[Int](self@769@01, 2)) < $unwrap[Int](l$amount@706@01) | live]
; [else-branch: 195 | !($struct_get[Int]($struct_loc[Int](self@769@01, 2)) < $unwrap[Int](l$amount@706@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 195 | $struct_get[Int]($struct_loc[Int](self@769@01, 2)) < $unwrap[Int](l$amount@706@01)]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@769@01 2))
  ($unwrap<Int> l$amount@706@01)))
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
; exhale ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
; [then-branch: 196 | False | dead]
; [else-branch: 196 | True | live]
(push) ; 4
; [else-branch: 196 | True]
(pop) ; 4
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 197 | True | live]
; [else-branch: 197 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 197 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@714@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@714@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 198 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@714@01, 1)) | live]
; [else-branch: 198 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@714@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 198 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@714@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@714@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 6
(push) ; 6
; [else-branch: 198 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@714@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@714@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@714@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@714@01 1))))))
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@714@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@714@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 199 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@714@01, 1)) | live]
; [else-branch: 199 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@714@01, 1)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 199 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@714@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@714@01 1)))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 6
(push) ; 6
; [else-branch: 199 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@714@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@714@01 1))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@770@01 $Snap)
(assert (= $t@770@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@735@01 0))
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
(declare-const self@771@01 $Struct)
(assert (=
  self@771@01
  ($struct_set<$Struct> self@714@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@714@01 2))
    l$havoc$6@735@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 195 | !($struct_get[Int]($struct_loc[Int](self@769@01, 2)) < $unwrap[Int](l$amount@706@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@769@01 2))
    ($unwrap<Int> l$amount@706@01))))
(pop) ; 3
; [eval] !(($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@769@01 2))
  ($unwrap<Int> l$amount@706@01))))
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
    ($struct_get<Int> ($struct_loc<Int> self@769@01 2))
    ($unwrap<Int> l$amount@706@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 200 | !($struct_get[Int]($struct_loc[Int](self@769@01, 2)) < $unwrap[Int](l$amount@706@01)) | live]
; [else-branch: 200 | $struct_get[Int]($struct_loc[Int](self@769@01, 2)) < $unwrap[Int](l$amount@706@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 200 | !($struct_get[Int]($struct_loc[Int](self@769@01, 2)) < $unwrap[Int](l$amount@706@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@769@01 2))
    ($unwrap<Int> l$amount@706@01))))
; [exec]
; self := ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]),
;   l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) +
;   $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to, ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int) + $unwrap(l$amount)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), l$to): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] $unwrap(l$amount)
(declare-const self@772@01 $Struct)
(assert (=
  self@772@01
  ($struct_set<$Struct> self@769@01 5 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@769@01 5)) l$to@707@01 (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@769@01 5)) l$to@707@01)
    ($unwrap<Int> l$amount@706@01))))))
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) -
;   $unwrap(l$amount)): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) - $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] $unwrap(l$amount)
(declare-const self@773@01 $Struct)
(assert (=
  self@773@01
  ($struct_set<$Struct> self@772@01 2 (-
    ($struct_get<Int> ($struct_loc<Int> self@772@01 2))
    ($unwrap<Int> l$amount@706@01)))))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 1)): Int) ==>
;   ($struct_get($struct_loc(self, 0)): Int) ==
;   ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@773@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 201 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@773@01, 1)) | live]
; [else-branch: 201 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@773@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 201 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@773@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@773@01 1)))))
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(push) ; 5
; [else-branch: 201 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@773@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@773@01 1)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))))
(push) ; 4
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@773@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@714@01 0))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@773@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 202 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@773@01, 1)) | live]
; [else-branch: 202 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@773@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 202 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@773@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@773@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 202 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@773@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@773@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@714@01 0))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@773@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 203 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@773@01, 1)) | live]
; [else-branch: 203 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@773@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 203 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@773@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@773@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 203 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@773@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@773@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@714@01 0))))))
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
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int) ==> ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@773@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 204 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@773@01, 1)) | live]
; [else-branch: 204 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@773@01, 1)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 204 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) != $struct_get[Int]($struct_loc[Int](self@773@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@773@01 1)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 0)): Int) == ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc($old_self, 0)): Int)
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 204 | $struct_get[Int]($struct_loc[Int](msg@710@01, 0)) == $struct_get[Int]($struct_loc[Int](self@773@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))
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
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@710@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@773@01 1))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@773@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@714@01 0))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
