(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 02:51:25
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
(declare-fun s$struct$self$init<$Struct> (Int Int Bool Bool Bool Bool Int Int Bool $Map<Int~_Int> $Map<Int~_Int> Bool) $Struct)
(declare-fun s$struct$self$eq<Bool> ($Struct $Struct) Bool)
(declare-fun $struct_loc<Int> ($Struct Int) Int)
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
(declare-fun $accessible$__init__%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$__init___0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$go_up%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$go_up_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$go_down%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$go_down_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$call_elevator%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$call_elevator_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$collect_fees%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$collect_fees_0%trigger ($Snap Int Int Int) Bool)
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
(assert (forall (($arg_0 Int) ($arg_1 Int) ($arg_2 Bool) ($arg_3 Bool) ($arg_4 Bool) ($arg_5 Bool) ($arg_6 Int) ($arg_7 Int) ($arg_8 Bool) ($arg_9 $Map<Int~_Int>) ($arg_10 $Map<Int~_Int>) ($arg_11 Bool)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) (- 0 1)))
      9122519725869122497593506884710)
    (and
      (=
        ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 0))
        $arg_0)
      (and
        (=
          ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 1))
          $arg_1)
        (and
          (=
            ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 2))
            $arg_2)
          (and
            (=
              ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 3))
              $arg_3)
            (and
              (=
                ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 4))
                $arg_4)
              (and
                (=
                  ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 5))
                  $arg_5)
                (and
                  (=
                    ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 6))
                    $arg_6)
                  (and
                    (=
                      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 7))
                      $arg_7)
                    (and
                      (=
                        ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 8))
                        $arg_8)
                      (and
                        (=
                          ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 9))
                          $arg_9)
                        (and
                          (=
                            ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 10))
                            $arg_10)
                          (=
                            ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11) 11))
                            $arg_11)))))))))))))
  :pattern ((s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11))
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
                (=
                  ($struct_get<Bool> ($struct_loc<Int> $l 3))
                  ($struct_get<Bool> ($struct_loc<Int> $r 3)))
                (and
                  (=
                    ($struct_get<Bool> ($struct_loc<Int> $l 4))
                    ($struct_get<Bool> ($struct_loc<Int> $r 4)))
                  (and
                    (=
                      ($struct_get<Bool> ($struct_loc<Int> $l 5))
                      ($struct_get<Bool> ($struct_loc<Int> $r 5)))
                    (and
                      (=
                        ($struct_get<Int> ($struct_loc<Int> $l 6))
                        ($struct_get<Int> ($struct_loc<Int> $r 6)))
                      (and
                        (=
                          ($struct_get<Int> ($struct_loc<Int> $l 7))
                          ($struct_get<Int> ($struct_loc<Int> $r 7)))
                        (and
                          (=
                            ($struct_get<Bool> ($struct_loc<Int> $l 8))
                            ($struct_get<Bool> ($struct_loc<Int> $r 8)))
                          (and
                            ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 9)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 9)))
                            (and
                              ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 10)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 10)))
                              (=
                                ($struct_get<Bool> ($struct_loc<Int> $l 11))
                                ($struct_get<Bool> ($struct_loc<Int> $r 11)))))))))))))))))
  :pattern ((s$struct$self$eq<Bool> $l $r))
  :qid |prog.s$struct$self$eq$ax|)))
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
  :qid |quant-u-2080|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-2081|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-2086|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-2087|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-2082|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-2083|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-2088|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-2089|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-2084|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-2085|)))
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
  :qid |quant-u-2090|)))
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
  :qid |quant-u-2091|)))
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
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (= ($Snap.first $t@9@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))
(assert (= ($Snap.second $t@9@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 6)): Int) &&
;   ($struct_get($struct_loc($self$0, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 6)): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): Int)
; [eval] $struct_loc($self$0, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 6))))
(assert (= ($Snap.second $t@10@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 6)): Int)
; [eval] $struct_loc($self$0, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 7)): Int) &&
;   ($struct_get($struct_loc($self$0, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 ($Snap.combine ($Snap.first $t@11@01) ($Snap.second $t@11@01))))
(assert (= ($Snap.first $t@11@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 7)): Int)
; [eval] $struct_loc($self$0, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 7))))
(assert (= ($Snap.second $t@11@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 7)): Int)
; [eval] $struct_loc($self$0, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@13@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
(push) ; 4
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 9)), $q0@13@01)) | live]
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 9)), $q0@13@01) | live]
(push) ; 5
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 9)), $q0@13@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@13@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 9)), $q0@13@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@13@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@13@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@13@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@13@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@13@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@13@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@618@11@618@354-aux|)))
(assert (forall (($q0@13@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@13@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@13@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@618@11@618@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])): Int))
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])): Int))
(declare-const $q0@15@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@15@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@15@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $q0@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@619@11@619@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@17@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 10)
(push) ; 4
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 10)), $q1@17@01)) | live]
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 10)), $q1@17@01) | live]
(push) ; 5
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 10)), $q1@17@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@17@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 10)), $q1@17@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@17@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 10)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@17@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@17@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@17@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@17@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@17@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@620@11@620@357-aux|)))
(assert (forall (($q1@17@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@17@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@17@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@620@11@620@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])): Int))
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])): Int))
(declare-const $q1@19@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 10)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 10)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@19@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@19@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 10)) $q1@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@621@11@621@265|)))
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
; inhale 0 <= ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(assert (= ($Snap.first $t@21@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0))))
(assert (= ($Snap.second $t@21@01) $Snap.unit))
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
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 ($Snap.combine ($Snap.first $t@22@01) ($Snap.second $t@22@01))))
(assert (= ($Snap.first $t@22@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))
(assert (= ($Snap.second $t@22@01) $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc($self$1, 6)): Int) &&
;   ($struct_get($struct_loc($self$1, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 ($Snap.combine ($Snap.first $t@23@01) ($Snap.second $t@23@01))))
(assert (= ($Snap.first $t@23@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 6)): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): Int)
; [eval] $struct_loc($self$1, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 6))))
(assert (= ($Snap.second $t@23@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 6)): Int)
; [eval] $struct_loc($self$1, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 7)): Int) &&
;   ($struct_get($struct_loc($self$1, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
(assert (= ($Snap.first $t@24@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 7)): Int)
; [eval] $struct_loc($self$1, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 7))))
(assert (= ($Snap.second $t@24@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 7)): Int)
; [eval] $struct_loc($self$1, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@26@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
(push) ; 4
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 9)), $q0@26@01)) | live]
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 9)), $q0@26@01) | live]
(push) ; 5
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 9)), $q0@26@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@26@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 9)), $q0@26@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@26@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@26@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@26@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@26@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@26@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@26@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@627@11@627@354-aux|)))
(assert (forall (($q0@26@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@26@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@26@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@627@11@627@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])): Int))
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])): Int))
(declare-const $q0@28@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@28@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@28@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $q0@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@628@11@628@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@30@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 10)
(push) ; 4
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 10)), $q1@30@01)) | live]
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 10)), $q1@30@01) | live]
(push) ; 5
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 10)), $q1@30@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@30@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 10)), $q1@30@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@30@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 10)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@30@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@30@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@30@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@30@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@30@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@629@11@629@357-aux|)))
(assert (forall (($q1@30@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@30@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@30@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@629@11@629@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])): Int))
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])): Int))
(declare-const $q1@32@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 10)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 10)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@32@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@32@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 10)) $q1@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@630@11@630@265|)))
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
; inhale 0 <= ($struct_get($struct_loc($self$2, 0)): Int) &&
;   ($struct_get($struct_loc($self$2, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0))))
(assert (= ($Snap.second $t@34@01) $Snap.unit))
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
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
(assert (= ($Snap.first $t@35@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))
(assert (= ($Snap.second $t@35@01) $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc($self$2, 6)): Int) &&
;   ($struct_get($struct_loc($self$2, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@36@01 $Snap)
(assert (= $t@36@01 ($Snap.combine ($Snap.first $t@36@01) ($Snap.second $t@36@01))))
(assert (= ($Snap.first $t@36@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 6)): Int)
; [eval] ($struct_get($struct_loc($self$2, 6)): Int)
; [eval] $struct_loc($self$2, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 6))))
(assert (= ($Snap.second $t@36@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$2, 6)): Int)
; [eval] $struct_loc($self$2, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$2, 7)): Int) &&
;   ($struct_get($struct_loc($self$2, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01))))
(assert (= ($Snap.first $t@37@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$2, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$2, 7)): Int)
; [eval] $struct_loc($self$2, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 7))))
(assert (= ($Snap.second $t@37@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$2, 7)): Int)
; [eval] $struct_loc($self$2, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@38@01 $Snap)
(assert (= $t@38@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@39@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 9)
(push) ; 4
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 9)), $q0@39@01)) | live]
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 9)), $q0@39@01) | live]
(push) ; 5
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 9)), $q0@39@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@39@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 9)), $q0@39@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@39@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@39@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@39@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@39@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@39@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@39@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@636@11@636@354-aux|)))
(assert (forall (($q0@39@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@39@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@39@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@636@11@636@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int])): Int))
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int])): Int))
(declare-const $q0@41@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 9)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@41@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@41@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $q0@41@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@637@11@637@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@43@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 10)
(push) ; 4
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 10)), $q1@43@01)) | live]
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 10)), $q1@43@01) | live]
(push) ; 5
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 10)), $q1@43@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@43@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 10)), $q1@43@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@43@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 10)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@43@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@43@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@43@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@43@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@43@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@638@11@638@357-aux|)))
(assert (forall (($q1@43@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@43@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@43@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@638@11@638@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int])): Int))
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int])): Int))
(declare-const $q1@45@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 10)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 10)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@45@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@45@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 10)) $q1@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@639@11@639@265|)))
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
;     { ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int))
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int))
(declare-const $a@54@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 2)): Bool) ||
;   ($struct_get($struct_loc($self$0, 3)): Bool) &&
;   !(($struct_get($struct_loc($self$0, 2)): Bool) &&
;   ($struct_get($struct_loc($self$0, 3)): Bool))
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Bool) || ($struct_get($struct_loc($self$0, 3)): Bool) && !(($struct_get($struct_loc($self$0, 2)): Bool) && ($struct_get($struct_loc($self$0, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$0, 2)): Bool)
; [eval] $struct_loc($self$0, 2)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 6 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2)) | live]
; [else-branch: 6 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2))) | live]
(push) ; 4
; [then-branch: 6 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))))
; [eval] ($struct_get($struct_loc($self$0, 3)): Bool) && !(($struct_get($struct_loc($self$0, 2)): Bool) && ($struct_get($struct_loc($self$0, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$0, 3)): Bool)
; [eval] $struct_loc($self$0, 3)
(push) ; 5
; [then-branch: 7 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 3))) | live]
; [else-branch: 7 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 3)) | live]
(push) ; 6
; [then-branch: 7 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 7 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3)))
; [eval] !(($struct_get($struct_loc($self$0, 2)): Bool) && ($struct_get($struct_loc($self$0, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$0, 2)): Bool) && ($struct_get($struct_loc($self$0, 3)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 2)): Bool)
; [eval] $struct_loc($self$0, 2)
(push) ; 7
; [then-branch: 8 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2))) | live]
; [else-branch: 8 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2)) | live]
(push) ; 8
; [then-branch: 8 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2)))]
(pop) ; 8
(push) ; 8
; [else-branch: 8 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2)))
; [eval] ($struct_get($struct_loc($self$0, 3)): Bool)
; [eval] $struct_loc($self$0, 3)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))
        ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 3)): Bool) ==>
;   ($struct_get($struct_loc($self$0, 5)): Bool) &&
;   !($struct_get($struct_loc($self$0, 4)): Bool)
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 3)): Bool) ==> ($struct_get($struct_loc($self$0, 5)): Bool) && !($struct_get($struct_loc($self$0, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 3)): Bool)
; [eval] $struct_loc($self$0, 3)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 3)) | live]
; [else-branch: 9 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 3))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 9 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3)))
; [eval] ($struct_get($struct_loc($self$0, 5)): Bool) && !($struct_get($struct_loc($self$0, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 5)): Bool)
; [eval] $struct_loc($self$0, 5)
(push) ; 5
; [then-branch: 10 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 5))) | live]
; [else-branch: 10 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 5)) | live]
(push) ; 6
; [then-branch: 10 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 5))))
(pop) ; 6
(push) ; 6
; [else-branch: 10 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 5)))
; [eval] !($struct_get($struct_loc($self$0, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 4)): Bool)
; [eval] $struct_loc($self$0, 4)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 5)))))
(pop) ; 4
(push) ; 4
; [else-branch: 9 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 4))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 2)): Bool) ==>
;   ($struct_get($struct_loc($self$0, 4)): Bool) &&
;   !($struct_get($struct_loc($self$0, 5)): Bool)
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Bool) ==> ($struct_get($struct_loc($self$0, 4)): Bool) && !($struct_get($struct_loc($self$0, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 2)): Bool)
; [eval] $struct_loc($self$0, 2)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2)) | live]
; [else-branch: 11 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 11 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2)))
; [eval] ($struct_get($struct_loc($self$0, 4)): Bool) && !($struct_get($struct_loc($self$0, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 4)): Bool)
; [eval] $struct_loc($self$0, 4)
(push) ; 5
; [then-branch: 12 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 4))) | live]
; [else-branch: 12 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 4)) | live]
(push) ; 6
; [then-branch: 12 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 4))))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 4)))
; [eval] !($struct_get($struct_loc($self$0, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 5)): Bool)
; [eval] $struct_loc($self$0, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 4)))))
(pop) ; 4
(push) ; 4
; [else-branch: 11 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 4)))))))
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 5))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int))
(declare-const $t@58@01 $Snap)
(assert (= $t@58@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int))
(declare-const $a@59@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@59@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $a@59@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 9)) $a@59@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $a@59@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@651@11@651@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 2)): Bool) ||
;   ($struct_get($struct_loc($self$1, 3)): Bool) &&
;   !(($struct_get($struct_loc($self$1, 2)): Bool) &&
;   ($struct_get($struct_loc($self$1, 3)): Bool))
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool) || ($struct_get($struct_loc($self$1, 3)): Bool) && !(($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool)
; [eval] $struct_loc($self$1, 2)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 13 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2)) | live]
; [else-branch: 13 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2))) | live]
(push) ; 4
; [then-branch: 13 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2)))
(pop) ; 4
(push) ; 4
; [else-branch: 13 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool) && !(($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] $struct_loc($self$1, 3)
(push) ; 5
; [then-branch: 14 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 3))) | live]
; [else-branch: 14 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 3)) | live]
(push) ; 6
; [then-branch: 14 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 14 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3)))
; [eval] !(($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool)
; [eval] $struct_loc($self$1, 2)
(push) ; 7
; [then-branch: 15 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2))) | live]
; [else-branch: 15 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2)) | live]
(push) ; 8
; [then-branch: 15 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2)))]
(pop) ; 8
(push) ; 8
; [else-branch: 15 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2)))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] $struct_loc($self$1, 3)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))
        ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 3)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 5)): Bool) &&
;   !($struct_get($struct_loc($self$1, 4)): Bool)
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool) ==> ($struct_get($struct_loc($self$1, 5)): Bool) && !($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] $struct_loc($self$1, 3)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 3)) | live]
; [else-branch: 16 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 3))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 16 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3)))
; [eval] ($struct_get($struct_loc($self$1, 5)): Bool) && !($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] $struct_loc($self$1, 5)
(push) ; 5
; [then-branch: 17 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 5))) | live]
; [else-branch: 17 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 5)) | live]
(push) ; 6
; [then-branch: 17 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 5))))
(pop) ; 6
(push) ; 6
; [else-branch: 17 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 5)))
; [eval] !($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] $struct_loc($self$1, 4)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 5)))))
(pop) ; 4
(push) ; 4
; [else-branch: 16 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 4))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 2)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 4)): Bool) &&
;   !($struct_get($struct_loc($self$1, 5)): Bool)
(declare-const $t@62@01 $Snap)
(assert (= $t@62@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool) ==> ($struct_get($struct_loc($self$1, 4)): Bool) && !($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool)
; [eval] $struct_loc($self$1, 2)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2)) | live]
; [else-branch: 18 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 18 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2)))
; [eval] ($struct_get($struct_loc($self$1, 4)): Bool) && !($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] $struct_loc($self$1, 4)
(push) ; 5
; [then-branch: 19 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 4))) | live]
; [else-branch: 19 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 4)) | live]
(push) ; 6
; [then-branch: 19 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 4))))
(pop) ; 6
(push) ; 6
; [else-branch: 19 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 4)))
; [eval] !($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] $struct_loc($self$1, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 4)))))
(pop) ; 4
(push) ; 4
; [else-branch: 18 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 4)))))))
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 5))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int))
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int))
(declare-const $a@64@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$2, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 9)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@64@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $a@64@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 9)) $a@64@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 9)) $a@64@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@655@11@655@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, 2)): Bool) ||
;   ($struct_get($struct_loc($self$2, 3)): Bool) &&
;   !(($struct_get($struct_loc($self$2, 2)): Bool) &&
;   ($struct_get($struct_loc($self$2, 3)): Bool))
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool) || ($struct_get($struct_loc($self$2, 3)): Bool) && !(($struct_get($struct_loc($self$2, 2)): Bool) && ($struct_get($struct_loc($self$2, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool)
; [eval] $struct_loc($self$2, 2)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 20 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)) | live]
; [else-branch: 20 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))) | live]
(push) ; 4
; [then-branch: 20 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))
(pop) ; 4
(push) ; 4
; [else-branch: 20 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))))
; [eval] ($struct_get($struct_loc($self$2, 3)): Bool) && !(($struct_get($struct_loc($self$2, 2)): Bool) && ($struct_get($struct_loc($self$2, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$2, 3)): Bool)
; [eval] $struct_loc($self$2, 3)
(push) ; 5
; [then-branch: 21 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3))) | live]
; [else-branch: 21 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3)) | live]
(push) ; 6
; [then-branch: 21 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 21 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))
; [eval] !(($struct_get($struct_loc($self$2, 2)): Bool) && ($struct_get($struct_loc($self$2, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool) && ($struct_get($struct_loc($self$2, 3)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool)
; [eval] $struct_loc($self$2, 2)
(push) ; 7
; [then-branch: 22 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))) | live]
; [else-branch: 22 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)) | live]
(push) ; 8
; [then-branch: 22 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)))]
(pop) ; 8
(push) ; 8
; [else-branch: 22 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))
; [eval] ($struct_get($struct_loc($self$2, 3)): Bool)
; [eval] $struct_loc($self$2, 3)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))
        ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, 3)): Bool) ==>
;   ($struct_get($struct_loc($self$2, 5)): Bool) &&
;   !($struct_get($struct_loc($self$2, 4)): Bool)
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 3)): Bool) ==> ($struct_get($struct_loc($self$2, 5)): Bool) && !($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 3)): Bool)
; [eval] $struct_loc($self$2, 3)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3)) | live]
; [else-branch: 23 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 23 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))
; [eval] ($struct_get($struct_loc($self$2, 5)): Bool) && !($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] $struct_loc($self$2, 5)
(push) ; 5
; [then-branch: 24 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 5))) | live]
; [else-branch: 24 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 5)) | live]
(push) ; 6
; [then-branch: 24 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5))))
(pop) ; 6
(push) ; 6
; [else-branch: 24 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5)))
; [eval] !($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] $struct_loc($self$2, 4)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5)))))
(pop) ; 4
(push) ; 4
; [else-branch: 23 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, 2)): Bool) ==>
;   ($struct_get($struct_loc($self$2, 4)): Bool) &&
;   !($struct_get($struct_loc($self$2, 5)): Bool)
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool) ==> ($struct_get($struct_loc($self$2, 4)): Bool) && !($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool)
; [eval] $struct_loc($self$2, 2)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)) | live]
; [else-branch: 25 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))
; [eval] ($struct_get($struct_loc($self$2, 4)): Bool) && !($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] $struct_loc($self$2, 4)
(push) ; 5
; [then-branch: 26 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 4))) | live]
; [else-branch: 26 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 4)) | live]
(push) ; 6
; [then-branch: 26 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4))))
(pop) ; 6
(push) ; 6
; [else-branch: 26 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4)))
; [eval] !($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] $struct_loc($self$2, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4)))))
(pop) ; 4
(push) ; 4
; [else-branch: 25 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4)))))))
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert ($struct_get($struct_loc($self$2, 2)): Bool) ||
;   ($struct_get($struct_loc($self$2, 3)): Bool) &&
;   !(($struct_get($struct_loc($self$2, 2)): Bool) &&
;   ($struct_get($struct_loc($self$2, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool) || ($struct_get($struct_loc($self$2, 3)): Bool) && !(($struct_get($struct_loc($self$2, 2)): Bool) && ($struct_get($struct_loc($self$2, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool)
; [eval] $struct_loc($self$2, 2)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 27 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)) | live]
; [else-branch: 27 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))) | live]
(push) ; 4
; [then-branch: 27 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))
(pop) ; 4
(push) ; 4
; [else-branch: 27 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))))
; [eval] ($struct_get($struct_loc($self$2, 3)): Bool) && !(($struct_get($struct_loc($self$2, 2)): Bool) && ($struct_get($struct_loc($self$2, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$2, 3)): Bool)
; [eval] $struct_loc($self$2, 3)
(push) ; 5
; [then-branch: 28 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3))) | live]
; [else-branch: 28 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3)) | live]
(push) ; 6
; [then-branch: 28 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 28 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))
; [eval] !(($struct_get($struct_loc($self$2, 2)): Bool) && ($struct_get($struct_loc($self$2, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool) && ($struct_get($struct_loc($self$2, 3)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool)
; [eval] $struct_loc($self$2, 2)
(push) ; 7
; [then-branch: 29 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))) | live]
; [else-branch: 29 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)) | live]
(push) ; 8
; [then-branch: 29 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)))]
(pop) ; 8
(push) ; 8
; [else-branch: 29 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))
; [eval] ($struct_get($struct_loc($self$2, 3)): Bool)
; [eval] $struct_loc($self$2, 3)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc($self$2, 3)): Bool) ==>
;   ($struct_get($struct_loc($self$2, 5)): Bool) &&
;   !($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 3)): Bool) ==> ($struct_get($struct_loc($self$2, 5)): Bool) && !($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 3)): Bool)
; [eval] $struct_loc($self$2, 3)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3)) | live]
; [else-branch: 30 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 30 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3)))
; [eval] ($struct_get($struct_loc($self$2, 5)): Bool) && !($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] $struct_loc($self$2, 5)
(push) ; 5
; [then-branch: 31 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 5))) | live]
; [else-branch: 31 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 5)) | live]
(push) ; 6
; [then-branch: 31 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5))))
(pop) ; 6
(push) ; 6
; [else-branch: 31 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5)))
; [eval] !($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] $struct_loc($self$2, 4)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 5)))))
(pop) ; 4
(push) ; 4
; [else-branch: 30 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 3))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc($self$2, 2)): Bool) ==>
;   ($struct_get($struct_loc($self$2, 4)): Bool) &&
;   !($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool) ==> ($struct_get($struct_loc($self$2, 4)): Bool) && !($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 2)): Bool)
; [eval] $struct_loc($self$2, 2)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)) | live]
; [else-branch: 32 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 32 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2)))
; [eval] ($struct_get($struct_loc($self$2, 4)): Bool) && !($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 4)): Bool)
; [eval] $struct_loc($self$2, 4)
(push) ; 5
; [then-branch: 33 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 4))) | live]
; [else-branch: 33 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 4)) | live]
(push) ; 6
; [then-branch: 33 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4))))
(pop) ; 6
(push) ; 6
; [else-branch: 33 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4)))
; [eval] !($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 5)): Bool)
; [eval] $struct_loc($self$2, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 4)))))
(pop) ; 4
(push) ; 4
; [else-branch: 32 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 2))))
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
; inhale 0 <= ($struct_get($struct_loc($self$0, 0)): Int) &&
;   ($struct_get($struct_loc($self$0, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 ($Snap.combine ($Snap.first $t@74@01) ($Snap.second $t@74@01))))
(assert (= ($Snap.first $t@74@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 0))))
(assert (= ($Snap.second $t@74@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 ($Snap.combine ($Snap.first $t@75@01) ($Snap.second $t@75@01))))
(assert (= ($Snap.first $t@75@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 1))))
(assert (= ($Snap.second $t@75@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 6)): Int) &&
;   ($struct_get($struct_loc($self$0, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@76@01 $Snap)
(assert (= $t@76@01 ($Snap.combine ($Snap.first $t@76@01) ($Snap.second $t@76@01))))
(assert (= ($Snap.first $t@76@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 6)): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): Int)
; [eval] $struct_loc($self$0, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 6))))
(assert (= ($Snap.second $t@76@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 6)): Int)
; [eval] $struct_loc($self$0, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 7)): Int) &&
;   ($struct_get($struct_loc($self$0, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 ($Snap.combine ($Snap.first $t@77@01) ($Snap.second $t@77@01))))
(assert (= ($Snap.first $t@77@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 7)): Int)
; [eval] $struct_loc($self$0, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 7))))
(assert (= ($Snap.second $t@77@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 7)): Int)
; [eval] $struct_loc($self$0, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@79@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
(push) ; 4
; [then-branch: 34 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@68@01, 9)), $q0@79@01)) | live]
; [else-branch: 34 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@68@01, 9)), $q0@79@01) | live]
(push) ; 5
; [then-branch: 34 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@68@01, 9)), $q0@79@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@79@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 34 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@68@01, 9)), $q0@79@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@79@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@79@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@79@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@79@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@79@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@79@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@676@11@676@354-aux|)))
(assert (forall (($q0@79@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@79@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@79@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@676@11@676@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])): Int))
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])): Int))
(declare-const $q0@81@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@81@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@81@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $q0@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@677@11@677@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@83@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 10)
(push) ; 4
; [then-branch: 35 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@68@01, 10)), $q1@83@01)) | live]
; [else-branch: 35 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@68@01, 10)), $q1@83@01) | live]
(push) ; 5
; [then-branch: 35 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@68@01, 10)), $q1@83@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@83@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 35 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@68@01, 10)), $q1@83@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@83@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 10)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@83@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@83@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@83@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@83@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@83@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@678@11@678@357-aux|)))
(assert (forall (($q1@83@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@83@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@83@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@678@11@678@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])): Int))
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])): Int))
(declare-const $q1@85@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 10)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 10)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@85@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@85@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 10)) $q1@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@679@11@679@265|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 ($Snap.combine ($Snap.first $t@87@01) ($Snap.second $t@87@01))))
(assert (= ($Snap.first $t@87@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 0))))
(assert (= ($Snap.second $t@87@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 ($Snap.combine ($Snap.first $t@88@01) ($Snap.second $t@88@01))))
(assert (= ($Snap.first $t@88@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 1))))
(assert (= ($Snap.second $t@88@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 6)): Int) &&
;   ($struct_get($struct_loc($self$1, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 ($Snap.combine ($Snap.first $t@89@01) ($Snap.second $t@89@01))))
(assert (= ($Snap.first $t@89@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 6)): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): Int)
; [eval] $struct_loc($self$1, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 6))))
(assert (= ($Snap.second $t@89@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 6)): Int)
; [eval] $struct_loc($self$1, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 7)): Int) &&
;   ($struct_get($struct_loc($self$1, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 ($Snap.combine ($Snap.first $t@90@01) ($Snap.second $t@90@01))))
(assert (= ($Snap.first $t@90@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 7)): Int)
; [eval] $struct_loc($self$1, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 7))))
(assert (= ($Snap.second $t@90@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 7)): Int)
; [eval] $struct_loc($self$1, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@91@01 $Snap)
(assert (= $t@91@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@92@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
(push) ; 4
; [then-branch: 36 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@70@01, 9)), $q0@92@01)) | live]
; [else-branch: 36 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@70@01, 9)), $q0@92@01) | live]
(push) ; 5
; [then-branch: 36 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@70@01, 9)), $q0@92@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@92@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 36 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@70@01, 9)), $q0@92@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@92@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@92@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@92@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@92@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@92@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@92@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@92@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@685@11@685@354-aux|)))
(assert (forall (($q0@92@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@92@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@92@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@92@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@685@11@685@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])): Int))
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])): Int))
(declare-const $q0@94@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@94@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@94@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $q0@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@686@11@686@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@96@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 10)
(push) ; 4
; [then-branch: 37 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@70@01, 10)), $q1@96@01)) | live]
; [else-branch: 37 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@70@01, 10)), $q1@96@01) | live]
(push) ; 5
; [then-branch: 37 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@70@01, 10)), $q1@96@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@96@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 37 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@70@01, 10)), $q1@96@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@96@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 10)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@96@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@96@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@96@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@96@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@96@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@687@11@687@357-aux|)))
(assert (forall (($q1@96@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@96@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@96@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@687@11@687@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])): Int))
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])): Int))
(declare-const $q1@98@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 10)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 10)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 10)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@98@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@98@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 10)) $q1@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@688@11@688@265|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 ($Snap.combine ($Snap.first $t@100@01) ($Snap.second $t@100@01))))
(assert (= ($Snap.first $t@100@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@72@01 0))))
(assert (= ($Snap.second $t@100@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@72@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 ($Snap.combine ($Snap.first $t@101@01) ($Snap.second $t@101@01))))
(assert (= ($Snap.first $t@101@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@72@01 1))))
(assert (= ($Snap.second $t@101@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@72@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 ($Snap.combine ($Snap.first $t@102@01) ($Snap.second $t@102@01))))
(assert (= ($Snap.first $t@102@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@72@01 2))))
(assert (= ($Snap.second $t@102@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@72@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@72@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@104@01 $Snap)
(assert (= $t@104@01 ($Snap.combine ($Snap.first $t@104@01) ($Snap.second $t@104@01))))
(assert (= ($Snap.first $t@104@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@72@01 4))))
(assert (= ($Snap.second $t@104@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@72@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 $Snap.unit))
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
;     { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int))
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int))
(declare-const $a@107@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 9)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 9)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@107@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $a@107@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 9)) $a@107@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 9)) $a@107@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@696@11@696@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 2)): Bool) ||
;   ($struct_get($struct_loc($self$1, 3)): Bool) &&
;   !(($struct_get($struct_loc($self$1, 2)): Bool) &&
;   ($struct_get($struct_loc($self$1, 3)): Bool))
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool) || ($struct_get($struct_loc($self$1, 3)): Bool) && !(($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool)
; [eval] $struct_loc($self$1, 2)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 38 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)) | live]
; [else-branch: 38 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))) | live]
(push) ; 4
; [then-branch: 38 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))
(pop) ; 4
(push) ; 4
; [else-branch: 38 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool) && !(($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] $struct_loc($self$1, 3)
(push) ; 5
; [then-branch: 39 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3))) | live]
; [else-branch: 39 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3)) | live]
(push) ; 6
; [then-branch: 39 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 39 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))
; [eval] !(($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool)
; [eval] $struct_loc($self$1, 2)
(push) ; 7
; [then-branch: 40 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))) | live]
; [else-branch: 40 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)) | live]
(push) ; 8
; [then-branch: 40 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)))]
(pop) ; 8
(push) ; 8
; [else-branch: 40 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] $struct_loc($self$1, 3)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))
        ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 3)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 5)): Bool) &&
;   !($struct_get($struct_loc($self$1, 4)): Bool)
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool) ==> ($struct_get($struct_loc($self$1, 5)): Bool) && !($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] $struct_loc($self$1, 3)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3)) | live]
; [else-branch: 41 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 41 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))
; [eval] ($struct_get($struct_loc($self$1, 5)): Bool) && !($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] $struct_loc($self$1, 5)
(push) ; 5
; [then-branch: 42 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 5))) | live]
; [else-branch: 42 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 5)) | live]
(push) ; 6
; [then-branch: 42 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5))))
(pop) ; 6
(push) ; 6
; [else-branch: 42 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5)))
; [eval] !($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] $struct_loc($self$1, 4)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5)))))
(pop) ; 4
(push) ; 4
; [else-branch: 41 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 2)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 4)): Bool) &&
;   !($struct_get($struct_loc($self$1, 5)): Bool)
(declare-const $t@110@01 $Snap)
(assert (= $t@110@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool) ==> ($struct_get($struct_loc($self$1, 4)): Bool) && !($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool)
; [eval] $struct_loc($self$1, 2)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)) | live]
; [else-branch: 43 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 43 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))
; [eval] ($struct_get($struct_loc($self$1, 4)): Bool) && !($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] $struct_loc($self$1, 4)
(push) ; 5
; [then-branch: 44 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 4))) | live]
; [else-branch: 44 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 4)) | live]
(push) ; 6
; [then-branch: 44 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4))))
(pop) ; 6
(push) ; 6
; [else-branch: 44 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4)))
; [eval] !($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] $struct_loc($self$1, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4)))))
(pop) ; 4
(push) ; 4
; [else-branch: 43 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4)))))))
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert ($struct_get($struct_loc($self$1, 2)): Bool) ||
;   ($struct_get($struct_loc($self$1, 3)): Bool) &&
;   !(($struct_get($struct_loc($self$1, 2)): Bool) &&
;   ($struct_get($struct_loc($self$1, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool) || ($struct_get($struct_loc($self$1, 3)): Bool) && !(($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool)
; [eval] $struct_loc($self$1, 2)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 45 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)) | live]
; [else-branch: 45 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))) | live]
(push) ; 4
; [then-branch: 45 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))
(pop) ; 4
(push) ; 4
; [else-branch: 45 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool) && !(($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] $struct_loc($self$1, 3)
(push) ; 5
; [then-branch: 46 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3))) | live]
; [else-branch: 46 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3)) | live]
(push) ; 6
; [then-branch: 46 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 46 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))
; [eval] !(($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool))
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool) && ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool)
; [eval] $struct_loc($self$1, 2)
(push) ; 7
; [then-branch: 47 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))) | live]
; [else-branch: 47 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)) | live]
(push) ; 8
; [then-branch: 47 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)))]
(pop) ; 8
(push) ; 8
; [else-branch: 47 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] $struct_loc($self$1, 3)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc($self$1, 3)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 5)): Bool) &&
;   !($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool) ==> ($struct_get($struct_loc($self$1, 5)): Bool) && !($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 3)): Bool)
; [eval] $struct_loc($self$1, 3)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3)) | live]
; [else-branch: 48 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 48 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3)))
; [eval] ($struct_get($struct_loc($self$1, 5)): Bool) && !($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] $struct_loc($self$1, 5)
(push) ; 5
; [then-branch: 49 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 5))) | live]
; [else-branch: 49 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 5)) | live]
(push) ; 6
; [then-branch: 49 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5))))
(pop) ; 6
(push) ; 6
; [else-branch: 49 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5)))
; [eval] !($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] $struct_loc($self$1, 4)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 5)))))
(pop) ; 4
(push) ; 4
; [else-branch: 48 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 3))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc($self$1, 2)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 4)): Bool) &&
;   !($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool) ==> ($struct_get($struct_loc($self$1, 4)): Bool) && !($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 2)): Bool)
; [eval] $struct_loc($self$1, 2)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 50 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)) | live]
; [else-branch: 50 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 50 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2)))
; [eval] ($struct_get($struct_loc($self$1, 4)): Bool) && !($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 4)): Bool)
; [eval] $struct_loc($self$1, 4)
(push) ; 5
; [then-branch: 51 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 4))) | live]
; [else-branch: 51 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 4)) | live]
(push) ; 6
; [then-branch: 51 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4))))
(pop) ; 6
(push) ; 6
; [else-branch: 51 | $struct_get[Bool]($struct_loc[Int]($self$1@70@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4)))
; [eval] !($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 5)): Bool)
; [eval] $struct_loc($self$1, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 4)))))
(pop) ; 4
(push) ; 4
; [else-branch: 50 | !($struct_get[Bool]($struct_loc[Int]($self$1@70@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@70@01 2))))
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
(declare-const self@111@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@112@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@113@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@114@01 $Map<Int~_$Struct>)
; [exec]
; var $post: Bool
(declare-const $post@115@01 Bool)
; [exec]
; var $havoc: Int
(declare-const $havoc@116@01 Int)
; [exec]
; var block: $Struct
(declare-const block@117@01 $Struct)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 ($Snap.combine ($Snap.first $t@118@01) ($Snap.second $t@118@01))))
(assert (= ($Snap.first $t@118@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@111@01 0))))
(assert (= ($Snap.second $t@118@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@111@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (= ($Snap.first $t@119@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@111@01 1))))
(assert (= ($Snap.second $t@119@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@111@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 6)): Int) &&
;   ($struct_get($struct_loc(self, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 ($Snap.combine ($Snap.first $t@120@01) ($Snap.second $t@120@01))))
(assert (= ($Snap.first $t@120@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@111@01 6))))
(assert (= ($Snap.second $t@120@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@111@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 7)): Int) &&
;   ($struct_get($struct_loc(self, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 ($Snap.combine ($Snap.first $t@121@01) ($Snap.second $t@121@01))))
(assert (= ($Snap.first $t@121@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@111@01 7))))
(assert (= ($Snap.second $t@121@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@111@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@123@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(push) ; 4
; [then-branch: 52 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@111@01, 9)), $q0@123@01)) | live]
; [else-branch: 52 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@111@01, 9)), $q0@123@01) | live]
(push) ; 5
; [then-branch: 52 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@111@01, 9)), $q0@123@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@123@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 52 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@111@01, 9)), $q0@123@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@123@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@123@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@123@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@123@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@123@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@123@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@718@11@718@345-aux|)))
(assert (forall (($q0@123@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@123@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@123@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@718@11@718@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $q0@125@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@125@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@125@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 9)) $q0@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@719@11@719@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@126@01 $Snap)
(assert (= $t@126@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@127@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(push) ; 4
; [then-branch: 53 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@111@01, 10)), $q1@127@01)) | live]
; [else-branch: 53 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@111@01, 10)), $q1@127@01) | live]
(push) ; 5
; [then-branch: 53 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@111@01, 10)), $q1@127@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@127@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 53 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@111@01, 10)), $q1@127@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@127@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@127@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@127@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@127@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@127@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@127@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@720@11@720@348-aux|)))
(assert (forall (($q1@127@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@127@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@127@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@720@11@720@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $t@128@01 $Snap)
(assert (= $t@128@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $q1@129@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
; [eval] ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@129@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@129@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@111@01 10)) $q1@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@721@11@721@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@111@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 0)): Int) &&
;   ($struct_get($struct_loc($pre_self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@131@01 $Snap)
(assert (= $t@131@01 ($Snap.combine ($Snap.first $t@131@01) ($Snap.second $t@131@01))))
(assert (= ($Snap.first $t@131@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@113@01 0))))
(assert (= ($Snap.second $t@131@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@113@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 1)): Int) &&
;   ($struct_get($struct_loc($pre_self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01))))
(assert (= ($Snap.first $t@132@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@113@01 1))))
(assert (= ($Snap.second $t@132@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@113@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 6)): Int) &&
;   ($struct_get($struct_loc($pre_self, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 ($Snap.combine ($Snap.first $t@133@01) ($Snap.second $t@133@01))))
(assert (= ($Snap.first $t@133@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 6)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 6)): Int)
; [eval] $struct_loc($pre_self, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@113@01 6))))
(assert (= ($Snap.second $t@133@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 6)): Int)
; [eval] $struct_loc($pre_self, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@113@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 7)): Int) &&
;   ($struct_get($struct_loc($pre_self, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 ($Snap.combine ($Snap.first $t@134@01) ($Snap.second $t@134@01))))
(assert (= ($Snap.first $t@134@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 7)): Int)
; [eval] $struct_loc($pre_self, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@113@01 7))))
(assert (= ($Snap.second $t@134@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 7)): Int)
; [eval] $struct_loc($pre_self, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@113@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@135@01 $Snap)
(assert (= $t@135@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@136@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 9)
(push) ; 4
; [then-branch: 54 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@113@01, 9)), $q0@136@01)) | live]
; [else-branch: 54 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@113@01, 9)), $q0@136@01) | live]
(push) ; 5
; [then-branch: 54 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@113@01, 9)), $q0@136@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@136@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 54 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@113@01, 9)), $q0@136@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@136@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@136@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@136@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@136@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@136@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@136@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@727@11@727@360-aux|)))
(assert (forall (($q0@136@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@136@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@136@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@727@11@727@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int])): Int))
(declare-const $t@137@01 $Snap)
(assert (= $t@137@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int])): Int))
(declare-const $q0@138@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 9)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 9)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@138@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@138@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 9)) $q0@138@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@728@11@728@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@139@01 $Snap)
(assert (= $t@139@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@140@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 10)
(push) ; 4
; [then-branch: 55 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@113@01, 10)), $q1@140@01)) | live]
; [else-branch: 55 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@113@01, 10)), $q1@140@01) | live]
(push) ; 5
; [then-branch: 55 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@113@01, 10)), $q1@140@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@140@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 55 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@113@01, 10)), $q1@140@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@140@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 10)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@140@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@140@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@140@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@140@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@140@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@140@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@729@11@729@363-aux|)))
(assert (forall (($q1@140@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@140@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@140@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@140@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@729@11@729@363|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int])): Int))
(declare-const $t@141@01 $Snap)
(assert (= $t@141@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int])): Int))
(declare-const $q1@142@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 10)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 10)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 10)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@142@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@142@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@113@01 10)) $q1@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@730@11@730@271|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($pre_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@143@01 $Snap)
(assert (= $t@143@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int)
; [eval] $struct_loc($pre_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@113@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@144@01 $Snap)
(assert (= $t@144@01 ($Snap.combine ($Snap.first $t@144@01) ($Snap.second $t@144@01))))
(assert (= ($Snap.first $t@144@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@117@01 0))))
(assert (= ($Snap.second $t@144@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@117@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@145@01 $Snap)
(assert (= $t@145@01 ($Snap.combine ($Snap.first $t@145@01) ($Snap.second $t@145@01))))
(assert (= ($Snap.first $t@145@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@117@01 1))))
(assert (= ($Snap.second $t@145@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@117@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@146@01 $Snap)
(assert (= $t@146@01 ($Snap.combine ($Snap.first $t@146@01) ($Snap.second $t@146@01))))
(assert (= ($Snap.first $t@146@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@117@01 2))))
(assert (= ($Snap.second $t@146@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@117@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@147@01 $Snap)
(assert (= $t@147@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@117@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@148@01 $Snap)
(assert (= $t@148@01 ($Snap.combine ($Snap.first $t@148@01) ($Snap.second $t@148@01))))
(assert (= ($Snap.first $t@148@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@117@01 4))))
(assert (= ($Snap.second $t@148@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@117@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@117@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale $havoc >= 0
(declare-const $t@150@01 $Snap)
(assert (= $t@150@01 $Snap.unit))
; [eval] $havoc >= 0
(assert (>= $havoc@116@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $t@151@01 $Snap)
(assert (= $t@151@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $a@152@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
(declare-const $t@153@01 $Snap)
(assert (= $t@153@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 56 | $struct_get[Bool]($struct_loc[Int](self@111@01, 2)) | live]
; [else-branch: 56 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 2))) | live]
(push) ; 4
; [then-branch: 56 | $struct_get[Bool]($struct_loc[Int](self@111@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@111@01 2)))
(pop) ; 4
(push) ; 4
; [else-branch: 56 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 5
; [then-branch: 57 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 3))) | live]
; [else-branch: 57 | $struct_get[Bool]($struct_loc[Int](self@111@01, 3)) | live]
(push) ; 6
; [then-branch: 57 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 57 | $struct_get[Bool]($struct_loc[Int](self@111@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@111@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 7
; [then-branch: 58 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 2))) | live]
; [else-branch: 58 | $struct_get[Bool]($struct_loc[Int](self@111@01, 2)) | live]
(push) ; 8
; [then-branch: 58 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 2)))]
(pop) ; 8
(push) ; 8
; [else-branch: 58 | $struct_get[Bool]($struct_loc[Int](self@111@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@111@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 2)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 3)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@111@01 3)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
(declare-const $t@154@01 $Snap)
(assert (= $t@154@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 3)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | $struct_get[Bool]($struct_loc[Int](self@111@01, 3)) | live]
; [else-branch: 59 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 3))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 59 | $struct_get[Bool]($struct_loc[Int](self@111@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@111@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 5
; [then-branch: 60 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 5))) | live]
; [else-branch: 60 | $struct_get[Bool]($struct_loc[Int](self@111@01, 5)) | live]
(push) ; 6
; [then-branch: 60 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 5))))
(pop) ; 6
(push) ; 6
; [else-branch: 60 | $struct_get[Bool]($struct_loc[Int](self@111@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@111@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 5)))))
(pop) ; 4
(push) ; 4
; [else-branch: 59 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@111@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@111@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 4))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
(declare-const $t@155@01 $Snap)
(assert (= $t@155@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 61 | $struct_get[Bool]($struct_loc[Int](self@111@01, 2)) | live]
; [else-branch: 61 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 2))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 61 | $struct_get[Bool]($struct_loc[Int](self@111@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@111@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 5
; [then-branch: 62 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 4))) | live]
; [else-branch: 62 | $struct_get[Bool]($struct_loc[Int](self@111@01, 4)) | live]
(push) ; 6
; [then-branch: 62 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 4))))
(pop) ; 6
(push) ; 6
; [else-branch: 62 | $struct_get[Bool]($struct_loc[Int](self@111@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@111@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 4)))))
(pop) ; 4
(push) ; 4
; [else-branch: 61 | !($struct_get[Bool]($struct_loc[Int](self@111@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@111@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 4)))))))
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@111@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@111@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@111@01 5))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; $pre_self := self
; [exec]
; $pre_$contracts := $contracts
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   $havoc): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + $havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + $havoc
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@156@01 $Struct)
(assert (=
  self@156@01
  ($struct_set<$Struct> self@111@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@111@01 6))
    $havoc@116@01))))
(pop) ; 2
(pop) ; 1
; ---------- f$__init__ ----------
(declare-const l$_fee@157@01 $Int)
(declare-const $succ@158@01 Bool)
(declare-const l$_fee@159@01 $Int)
(declare-const $succ@160@01 Bool)
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
(declare-const msg@161@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@162@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@163@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@164@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@165@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@166@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@167@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@168@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@169@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@170@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@171@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@172@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@173@01 Bool)
; [exec]
; var $first_public_state: Bool
(declare-const $first_public_state@174@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@175@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@176@01 Bool)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@177@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@178@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@179@01 $Snap)
(assert (= $t@179@01 ($Snap.combine ($Snap.first $t@179@01) ($Snap.second $t@179@01))))
(assert (= ($Snap.first $t@179@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@165@01 0))))
(assert (= ($Snap.second $t@179@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@165@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
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
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@165@01 1))))
(assert (= ($Snap.second $t@180@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@165@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 6)): Int) &&
;   ($struct_get($struct_loc(self, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@181@01 $Snap)
(assert (= $t@181@01 ($Snap.combine ($Snap.first $t@181@01) ($Snap.second $t@181@01))))
(assert (= ($Snap.first $t@181@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@165@01 6))))
(assert (= ($Snap.second $t@181@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@165@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 7)): Int) &&
;   ($struct_get($struct_loc(self, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@182@01 $Snap)
(assert (= $t@182@01 ($Snap.combine ($Snap.first $t@182@01) ($Snap.second $t@182@01))))
(assert (= ($Snap.first $t@182@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@165@01 7))))
(assert (= ($Snap.second $t@182@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@165@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@183@01 $Snap)
(assert (= $t@183@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@184@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(push) ; 4
; [then-branch: 63 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@165@01, 9)), $q0@184@01)) | live]
; [else-branch: 63 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@165@01, 9)), $q0@184@01) | live]
(push) ; 5
; [then-branch: 63 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@165@01, 9)), $q0@184@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@184@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 63 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@165@01, 9)), $q0@184@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@184@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@184@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@184@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@184@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@184@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@184@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@774@11@774@345-aux|)))
(assert (forall (($q0@184@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@184@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@184@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@774@11@774@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $t@185@01 $Snap)
(assert (= $t@185@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $q0@186@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@186@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@186@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 9)) $q0@186@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@775@11@775@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@187@01 $Snap)
(assert (= $t@187@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@188@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(push) ; 4
; [then-branch: 64 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@165@01, 10)), $q1@188@01)) | live]
; [else-branch: 64 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@165@01, 10)), $q1@188@01) | live]
(push) ; 5
; [then-branch: 64 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@165@01, 10)), $q1@188@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@188@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 64 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@165@01, 10)), $q1@188@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@188@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@188@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@188@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@188@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@188@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@188@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@776@11@776@348-aux|)))
(assert (forall (($q1@188@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@188@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@188@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@776@11@776@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $t@189@01 $Snap)
(assert (= $t@189@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $q1@190@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
; [eval] ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@190@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@190@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@165@01 10)) $q1@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@777@11@777@256|)))
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
  ($struct_get<Int> ($struct_loc<Int> self@165@01 (- 0 1)))
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
; inhale 0 <= $unwrap(l$_fee) &&
;   $unwrap(l$_fee) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@193@01 $Snap)
(assert (= $t@193@01 ($Snap.combine ($Snap.first $t@193@01) ($Snap.second $t@193@01))))
(assert (= ($Snap.first $t@193@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$_fee)
; [eval] $unwrap(l$_fee)
(assert (<= 0 ($unwrap<Int> l$_fee@159@01)))
(assert (= ($Snap.second $t@193@01) $Snap.unit))
; [eval] $unwrap(l$_fee) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$_fee)
(assert (<=
  ($unwrap<Int> l$_fee@159@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@194@01 $Snap)
(assert (= $t@194@01 ($Snap.combine ($Snap.first $t@194@01) ($Snap.second $t@194@01))))
(assert (= ($Snap.first $t@194@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@162@01 0))))
(assert (= ($Snap.second $t@194@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@162@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@195@01 $Snap)
(assert (= $t@195@01 ($Snap.combine ($Snap.first $t@195@01) ($Snap.second $t@195@01))))
(assert (= ($Snap.first $t@195@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@162@01 1))))
(assert (= ($Snap.second $t@195@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@162@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@196@01 $Snap)
(assert (= $t@196@01 ($Snap.combine ($Snap.first $t@196@01) ($Snap.second $t@196@01))))
(assert (= ($Snap.first $t@196@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@162@01 2))))
(assert (= ($Snap.second $t@196@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@162@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@197@01 $Snap)
(assert (= $t@197@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@162@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@198@01 $Snap)
(assert (= $t@198@01 ($Snap.combine ($Snap.first $t@198@01) ($Snap.second $t@198@01))))
(assert (= ($Snap.first $t@198@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@162@01 4))))
(assert (= ($Snap.second $t@198@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@162@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@199@01 $Snap)
(assert (= $t@199@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@162@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@200@01 $Snap)
(assert (= $t@200@01 ($Snap.combine ($Snap.first $t@200@01) ($Snap.second $t@200@01))))
(assert (= ($Snap.first $t@200@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@161@01 0))))
(assert (= ($Snap.second $t@200@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@161@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@201@01 $Snap)
(assert (= $t@201@01 ($Snap.combine ($Snap.first $t@201@01) ($Snap.second $t@201@01))))
(assert (= ($Snap.first $t@201@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@161@01 1))))
(assert (= ($Snap.second $t@201@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@161@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@202@01 $Snap)
(assert (= $t@202@01 ($Snap.combine ($Snap.first $t@202@01) ($Snap.second $t@202@01))))
(assert (= ($Snap.first $t@202@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@161@01 2))))
(assert (= ($Snap.second $t@202@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@161@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@203@01 $Snap)
(assert (= $t@203@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@161@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@204@01 $Snap)
(assert (= $t@204@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@161@01 0)) 0)))
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
; self := s$struct$self$init(0, 0, false, false, false, false, 0, 0, false, ($map_init(0): $Map[Int, Int]),
;   ($map_init(0): $Map[Int, Int]), false)
; [eval] s$struct$self$init(0, 0, false, false, false, false, 0, 0, false, ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]), false)
; [eval] ($map_init(0): $Map[Int, Int])
; [eval] ($map_init(0): $Map[Int, Int])
(declare-const self@205@01 $Struct)
(assert (=
  self@205@01
  (s$struct$self$init<$Struct> 0 0 false false false false 0 0 false ($map_init<$Map<Int~_Int>> 0) ($map_init<$Map<Int~_Int>> 0) false)))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@206@01 $Snap)
(assert (= $t@206@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@175@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@207@01 $Struct)
(assert (=
  self@207@01
  ($struct_set<$Struct> self@205@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@205@01 6))
    l$havoc@175@01))))
; [exec]
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@208@01 $Snap)
(assert (= $t@208@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@161@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(msg, 0)): Int)): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(msg, 0)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const self@209@01 $Struct)
(assert (=
  self@209@01
  ($struct_set<$Struct> self@207@01 0 ($struct_get<Int> ($struct_loc<Int> msg@161@01 0)))))
; [exec]
; self := ($struct_set(self, 1, $unwrap(l$_fee)): $Struct)
; [eval] ($struct_set(self, 1, $unwrap(l$_fee)): $Struct)
; [eval] $unwrap(l$_fee)
(declare-const self@210@01 $Struct)
(assert (= self@210@01 ($struct_set<$Struct> self@209@01 1 ($unwrap<Int> l$_fee@159@01))))
; [exec]
; self := ($struct_set(self, 2, true): $Struct)
; [eval] ($struct_set(self, 2, true): $Struct)
(declare-const self@211@01 $Struct)
(assert (= self@211@01 ($struct_set<$Struct> self@210@01 2 true)))
; [exec]
; self := ($struct_set(self, 3, false): $Struct)
; [eval] ($struct_set(self, 3, false): $Struct)
(declare-const self@212@01 $Struct)
(assert (= self@212@01 ($struct_set<$Struct> self@211@01 3 false)))
; [exec]
; self := ($struct_set(self, 4, true): $Struct)
; [eval] ($struct_set(self, 4, true): $Struct)
(declare-const self@213@01 $Struct)
(assert (= self@213@01 ($struct_set<$Struct> self@212@01 4 true)))
; [exec]
; self := ($struct_set(self, 5, false): $Struct)
; [eval] ($struct_set(self, 5, false): $Struct)
(declare-const self@214@01 $Struct)
(assert (= self@214@01 ($struct_set<$Struct> self@213@01 5 false)))
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@176@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@176@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | $out_of_gas@176@01 | live]
; [else-branch: 65 | !($out_of_gas@176@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 65 | $out_of_gas@176@01]
(assert $out_of_gas@176@01)
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
; [then-branch: 66 | True | live]
; [else-branch: 66 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 66 | True]
; [exec]
; $old_self := self
; [then-branch: 67 | False | dead]
; [else-branch: 67 | True | live]
(push) ; 5
; [else-branch: 67 | True]
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
; [then-branch: 68 | True | live]
; [else-branch: 68 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 68 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@215@01 $Snap)
(assert (= $t@215@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@177@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@216@01 $Struct)
(assert (=
  self@216@01
  ($struct_set<$Struct> self@165@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@165@01 6))
    l$havoc$1@177@01))))
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
; [then-branch: 69 | True | live]
; [else-branch: 69 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 69 | True]
; [exec]
; $old_self := self
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] $succ ==> ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
(push) ; 7
; [then-branch: 70 | False | dead]
; [else-branch: 70 | True | live]
(push) ; 8
; [else-branch: 70 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] $succ ==> ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
(push) ; 7
; [then-branch: 71 | False | dead]
; [else-branch: 71 | True | live]
(push) ; 8
; [else-branch: 71 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] $succ ==> ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
(push) ; 7
; [then-branch: 72 | False | dead]
; [else-branch: 72 | True | live]
(push) ; 8
; [else-branch: 72 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 73 | False | dead]
; [else-branch: 73 | True | live]
(push) ; 6
; [else-branch: 73 | True]
(pop) ; 6
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 74 | False | dead]
; [else-branch: 74 | True | live]
(push) ; 4
; [else-branch: 74 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 65 | !($out_of_gas@176@01)]
(assert (not $out_of_gas@176@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@176@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@176@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 75 | !($out_of_gas@176@01) | live]
; [else-branch: 75 | $out_of_gas@176@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 75 | !($out_of_gas@176@01)]
(assert (not $out_of_gas@176@01))
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
; [then-branch: 76 | True | live]
; [else-branch: 76 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 76 | True]
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
; [then-branch: 77 | True | live]
; [else-branch: 77 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 77 | True]
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 6
; [then-branch: 78 | !($struct_get[Bool]($struct_loc[Int](self@214@01, 3))) | live]
; [else-branch: 78 | $struct_get[Bool]($struct_loc[Int](self@214@01, 3)) | live]
(push) ; 7
; [then-branch: 78 | !($struct_get[Bool]($struct_loc[Int](self@214@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@214@01 3))))
(pop) ; 7
(push) ; 7
; [else-branch: 78 | $struct_get[Bool]($struct_loc[Int](self@214@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@214@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@214@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@214@01 3)))))
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@214@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@214@01 3)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | $struct_get[Bool]($struct_loc[Int](self@214@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@214@01, 3))) | dead]
; [else-branch: 79 | !($struct_get[Bool]($struct_loc[Int](self@214@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@214@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 79 | !($struct_get[Bool]($struct_loc[Int](self@214@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@214@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@214@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@214@01 3))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@214@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@214@01 3))))))
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@217@01 $Snap)
(assert (= $t@217@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@177@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@218@01 $Struct)
(assert (=
  self@218@01
  ($struct_set<$Struct> self@214@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@214@01 6))
    l$havoc$1@177@01))))
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
; [then-branch: 80 | True | live]
; [else-branch: 80 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 80 | True]
; [exec]
; $old_self := self
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] $succ ==> ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 81 | True | live]
; [else-branch: 81 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 81 | True]
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
; [then-branch: 82 | $struct_get[Bool]($struct_loc[Int](self@218@01, 2)) | live]
; [else-branch: 82 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 2))) | live]
(push) ; 10
; [then-branch: 82 | $struct_get[Bool]($struct_loc[Int](self@218@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))
(pop) ; 10
(push) ; 10
; [else-branch: 82 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 11
; [then-branch: 83 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 3))) | live]
; [else-branch: 83 | $struct_get[Bool]($struct_loc[Int](self@218@01, 3)) | live]
(push) ; 12
; [then-branch: 83 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))))
(pop) ; 12
(push) ; 12
; [else-branch: 83 | $struct_get[Bool]($struct_loc[Int](self@218@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@218@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 13
; [then-branch: 84 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 2))) | live]
; [else-branch: 84 | $struct_get[Bool]($struct_loc[Int](self@218@01, 2)) | live]
(push) ; 14
; [then-branch: 84 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 2)))]
(pop) ; 14
(push) ; 14
; [else-branch: 84 | $struct_get[Bool]($struct_loc[Int](self@218@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 3)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (and
  (=>
    (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))
    (and
      (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))
      (=>
        ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
        (and
          ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
          (or
            ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
            (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))))))
      (or
        ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
        (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))))))
  (or
    (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))
    ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))))
(push) ; 7
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@218@01 3)))))))
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] $succ ==> ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 85 | True | live]
; [else-branch: 85 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 85 | True]
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 3)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | $struct_get[Bool]($struct_loc[Int](self@218@01, 3)) | dead]
; [else-branch: 86 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 3))) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 86 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 3))))
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] $succ ==> ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 87 | True | live]
; [else-branch: 87 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 87 | True]
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 88 | $struct_get[Bool]($struct_loc[Int](self@218@01, 2)) | live]
; [else-branch: 88 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 2))) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 88 | $struct_get[Bool]($struct_loc[Int](self@218@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 11
; [then-branch: 89 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 4))) | live]
; [else-branch: 89 | $struct_get[Bool]($struct_loc[Int](self@218@01, 4)) | live]
(push) ; 12
; [then-branch: 89 | !($struct_get[Bool]($struct_loc[Int](self@218@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 4))))
(pop) ; 12
(push) ; 12
; [else-branch: 89 | $struct_get[Bool]($struct_loc[Int](self@218@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@218@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 4)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@218@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 4)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@218@01 2)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (and
  (=>
    ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
    (and
      ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
      (or
        ($struct_get<Bool> ($struct_loc<Int> self@218@01 4))
        (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 4))))))
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))))
(push) ; 7
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@218@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 5)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@218@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@218@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@218@01 5))))))
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 90 | False | dead]
; [else-branch: 90 | True | live]
(push) ; 6
; [else-branch: 90 | True]
(pop) ; 6
(pop) ; 5
; [eval] !$succ
; [then-branch: 91 | False | dead]
; [else-branch: 91 | True | live]
(push) ; 5
; [else-branch: 91 | True]
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 92 | False | dead]
; [else-branch: 92 | True | live]
(push) ; 4
; [else-branch: 92 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 75 | $out_of_gas@176@01]
(assert $out_of_gas@176@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$call_elevator ----------
(declare-const l$flr@219@01 $Int)
(declare-const $succ@220@01 Bool)
(declare-const l$flr@221@01 $Int)
(declare-const $succ@222@01 Bool)
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
(declare-const msg@223@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@224@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@225@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@226@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@227@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@228@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@229@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@230@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@231@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@232@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@233@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@234@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@235@01 Bool)
; [exec]
; var l$is_down: Bool
(declare-const l$is_down@236@01 Bool)
; [exec]
; var l$is_up: Bool
(declare-const l$is_up@237@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@238@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@239@01 $Map<Int~_$Struct>)
; [exec]
; var i1$$pre_self: $Struct
(declare-const i1$$pre_self@240@01 $Struct)
; [exec]
; var i1$$pre_$contracts: $Map[Int, $Struct]
(declare-const i1$$pre_$contracts@241@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@242@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@243@01 Bool)
; [exec]
; var i2$$pre_self: $Struct
(declare-const i2$$pre_self@244@01 $Struct)
; [exec]
; var i2$$pre_$contracts: $Map[Int, $Struct]
(declare-const i2$$pre_$contracts@245@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@246@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@247@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@248@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@249@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@250@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@251@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@252@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@253@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@254@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@255@01 $Snap)
(assert (= $t@255@01 ($Snap.combine ($Snap.first $t@255@01) ($Snap.second $t@255@01))))
(assert (= ($Snap.first $t@255@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@227@01 0))))
(assert (= ($Snap.second $t@255@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@227@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@256@01 $Snap)
(assert (= $t@256@01 ($Snap.combine ($Snap.first $t@256@01) ($Snap.second $t@256@01))))
(assert (= ($Snap.first $t@256@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@227@01 1))))
(assert (= ($Snap.second $t@256@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@227@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 6)): Int) &&
;   ($struct_get($struct_loc(self, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@257@01 $Snap)
(assert (= $t@257@01 ($Snap.combine ($Snap.first $t@257@01) ($Snap.second $t@257@01))))
(assert (= ($Snap.first $t@257@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@227@01 6))))
(assert (= ($Snap.second $t@257@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 7)): Int) &&
;   ($struct_get($struct_loc(self, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@258@01 $Snap)
(assert (= $t@258@01 ($Snap.combine ($Snap.first $t@258@01) ($Snap.second $t@258@01))))
(assert (= ($Snap.first $t@258@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@227@01 7))))
(assert (= ($Snap.second $t@258@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@227@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@259@01 $Snap)
(assert (= $t@259@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@260@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(push) ; 4
; [then-branch: 93 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@227@01, 9)), $q0@260@01)) | live]
; [else-branch: 93 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@227@01, 9)), $q0@260@01) | live]
(push) ; 5
; [then-branch: 93 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@227@01, 9)), $q0@260@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@260@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 93 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@227@01, 9)), $q0@260@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@260@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@260@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@260@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@260@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@260@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@260@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@260@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@890@11@890@345-aux|)))
(assert (forall (($q0@260@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@260@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@260@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@260@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@890@11@890@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $t@261@01 $Snap)
(assert (= $t@261@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $q0@262@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@262@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@262@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 9)) $q0@262@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@891@11@891@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@263@01 $Snap)
(assert (= $t@263@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@264@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(push) ; 4
; [then-branch: 94 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@227@01, 10)), $q1@264@01)) | live]
; [else-branch: 94 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@227@01, 10)), $q1@264@01) | live]
(push) ; 5
; [then-branch: 94 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@227@01, 10)), $q1@264@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@264@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 94 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@227@01, 10)), $q1@264@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@264@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@264@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@264@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@264@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@264@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@264@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@892@11@892@348-aux|)))
(assert (forall (($q1@264@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@264@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@264@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@892@11@892@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $q1@266@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
; [eval] ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@266@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@266@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@227@01 10)) $q1@266@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@893@11@893@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@267@01 $Snap)
(assert (= $t@267@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@227@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@268@01 $Snap)
(assert (= $t@268@01 ($Snap.combine ($Snap.first $t@268@01) ($Snap.second $t@268@01))))
(assert (= ($Snap.first $t@268@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@268@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$flr) &&
;   $unwrap(l$flr) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@269@01 $Snap)
(assert (= $t@269@01 ($Snap.combine ($Snap.first $t@269@01) ($Snap.second $t@269@01))))
(assert (= ($Snap.first $t@269@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$flr)
; [eval] $unwrap(l$flr)
(assert (<= 0 ($unwrap<Int> l$flr@221@01)))
(assert (= ($Snap.second $t@269@01) $Snap.unit))
; [eval] $unwrap(l$flr) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$flr)
(assert (<=
  ($unwrap<Int> l$flr@221@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@270@01 $Snap)
(assert (= $t@270@01 ($Snap.combine ($Snap.first $t@270@01) ($Snap.second $t@270@01))))
(assert (= ($Snap.first $t@270@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@224@01 0))))
(assert (= ($Snap.second $t@270@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@224@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@271@01 $Snap)
(assert (= $t@271@01 ($Snap.combine ($Snap.first $t@271@01) ($Snap.second $t@271@01))))
(assert (= ($Snap.first $t@271@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@224@01 1))))
(assert (= ($Snap.second $t@271@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@224@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@272@01 $Snap)
(assert (= $t@272@01 ($Snap.combine ($Snap.first $t@272@01) ($Snap.second $t@272@01))))
(assert (= ($Snap.first $t@272@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@224@01 2))))
(assert (= ($Snap.second $t@272@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@224@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@273@01 $Snap)
(assert (= $t@273@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@224@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@274@01 $Snap)
(assert (= $t@274@01 ($Snap.combine ($Snap.first $t@274@01) ($Snap.second $t@274@01))))
(assert (= ($Snap.first $t@274@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@224@01 4))))
(assert (= ($Snap.second $t@274@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@224@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@275@01 $Snap)
(assert (= $t@275@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@224@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@276@01 $Snap)
(assert (= $t@276@01 ($Snap.combine ($Snap.first $t@276@01) ($Snap.second $t@276@01))))
(assert (= ($Snap.first $t@276@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@223@01 0))))
(assert (= ($Snap.second $t@276@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@223@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 ($Snap.combine ($Snap.first $t@277@01) ($Snap.second $t@277@01))))
(assert (= ($Snap.first $t@277@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
(assert (= ($Snap.second $t@277@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@278@01 $Snap)
(assert (= $t@278@01 ($Snap.combine ($Snap.first $t@278@01) ($Snap.second $t@278@01))))
(assert (= ($Snap.first $t@278@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@223@01 2))))
(assert (= ($Snap.second $t@278@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@223@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@223@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@280@01 $Snap)
(assert (= $t@280@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@223@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $t@281@01 $Snap)
(assert (= $t@281@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $a@282@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
(declare-const $t@283@01 $Snap)
(assert (= $t@283@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 95 | $struct_get[Bool]($struct_loc[Int](self@227@01, 2)) | live]
; [else-branch: 95 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 2))) | live]
(push) ; 4
; [then-branch: 95 | $struct_get[Bool]($struct_loc[Int](self@227@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 2)))
(pop) ; 4
(push) ; 4
; [else-branch: 95 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 5
; [then-branch: 96 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 96 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 6
; [then-branch: 96 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 96 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 7
; [then-branch: 97 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 2))) | live]
; [else-branch: 97 | $struct_get[Bool]($struct_loc[Int](self@227@01, 2)) | live]
(push) ; 8
; [then-branch: 97 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 2)))]
(pop) ; 8
(push) ; 8
; [else-branch: 97 | $struct_get[Bool]($struct_loc[Int](self@227@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 2)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
(declare-const $t@284@01 $Snap)
(assert (= $t@284@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
; [else-branch: 98 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 98 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 5
; [then-branch: 99 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 5))) | live]
; [else-branch: 99 | $struct_get[Bool]($struct_loc[Int](self@227@01, 5)) | live]
(push) ; 6
; [then-branch: 99 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 5))))
(pop) ; 6
(push) ; 6
; [else-branch: 99 | $struct_get[Bool]($struct_loc[Int](self@227@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 5)))))
(pop) ; 4
(push) ; 4
; [else-branch: 98 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@227@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 4))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
(declare-const $t@285@01 $Snap)
(assert (= $t@285@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 100 | $struct_get[Bool]($struct_loc[Int](self@227@01, 2)) | live]
; [else-branch: 100 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 2))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 100 | $struct_get[Bool]($struct_loc[Int](self@227@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 5
; [then-branch: 101 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 4))) | live]
; [else-branch: 101 | $struct_get[Bool]($struct_loc[Int](self@227@01, 4)) | live]
(push) ; 6
; [then-branch: 101 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 4))))
(pop) ; 6
(push) ; 6
; [else-branch: 101 | $struct_get[Bool]($struct_loc[Int](self@227@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 4)))))
(pop) ; 4
(push) ; 4
; [else-branch: 100 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@227@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 4)))))))
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 5))))))
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
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@286@01 $Struct)
(assert (=
  self@286@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))))
; [exec]
; self := ($struct_set(self, 10, ($map_set(($struct_get($struct_loc(self, 10)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   10)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 10, ($map_set(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@287@01 $Struct)
(assert (=
  self@287@01
  ($struct_set<$Struct> self@286@01 10 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@286@01 10)) ($struct_get<Int> ($struct_loc<Int> msg@223@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@286@01 10)) ($struct_get<Int> ($struct_loc<Int> msg@223@01 0)))
    ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))))))
; [eval] !(($struct_get($struct_loc(msg, 1)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))
  ($struct_get<Int> ($struct_loc<Int> self@287@01 1)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))
    ($struct_get<Int> ($struct_loc<Int> self@287@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 102 | $struct_get[Int]($struct_loc[Int](msg@223@01, 1)) != $struct_get[Int]($struct_loc[Int](self@287@01, 1)) | live]
; [else-branch: 102 | $struct_get[Int]($struct_loc[Int](msg@223@01, 1)) == $struct_get[Int]($struct_loc[Int](self@287@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 102 | $struct_get[Int]($struct_loc[Int](msg@223@01, 1)) != $struct_get[Int]($struct_loc[Int](self@287@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))
    ($struct_get<Int> ($struct_loc<Int> self@287@01 1)))))
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
; [then-branch: 103 | False | dead]
; [else-branch: 103 | True | live]
(push) ; 4
; [else-branch: 103 | True]
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
; [then-branch: 104 | True | live]
; [else-branch: 104 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 104 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 5
; [then-branch: 105 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 105 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 6
; [then-branch: 105 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 105 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 106 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 106 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@288@01 $Snap)
(assert (= $t@288@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@289@01 $Struct)
(assert (=
  self@289@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 107 | $struct_get[Bool]($struct_loc[Int](self@289@01, 2)) | live]
; [else-branch: 107 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 2))) | live]
(push) ; 6
; [then-branch: 107 | $struct_get[Bool]($struct_loc[Int](self@289@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@289@01 2)))
(pop) ; 6
(push) ; 6
; [else-branch: 107 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 7
; [then-branch: 108 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 3))) | live]
; [else-branch: 108 | $struct_get[Bool]($struct_loc[Int](self@289@01, 3)) | live]
(push) ; 8
; [then-branch: 108 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))))
(pop) ; 8
(push) ; 8
; [else-branch: 108 | $struct_get[Bool]($struct_loc[Int](self@289@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@289@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
; [then-branch: 109 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 2))) | live]
; [else-branch: 109 | $struct_get[Bool]($struct_loc[Int](self@289@01, 2)) | live]
(push) ; 10
; [then-branch: 109 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 2)))]
(pop) ; 10
(push) ; 10
; [else-branch: 109 | $struct_get[Bool]($struct_loc[Int](self@289@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@289@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 2)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 3)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))))
(push) ; 5
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@289@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 3)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 110 | $struct_get[Bool]($struct_loc[Int](self@289@01, 3)) | live]
; [else-branch: 110 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 3))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 110 | $struct_get[Bool]($struct_loc[Int](self@289@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@289@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 7
; [then-branch: 111 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 5))) | live]
; [else-branch: 111 | $struct_get[Bool]($struct_loc[Int](self@289@01, 5)) | live]
(push) ; 8
; [then-branch: 111 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 5))))
(pop) ; 8
(push) ; 8
; [else-branch: 111 | $struct_get[Bool]($struct_loc[Int](self@289@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@289@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 5)))))
(pop) ; 6
(push) ; 6
; [else-branch: 110 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@289@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))))
(push) ; 5
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@289@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 4)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@289@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 2)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 112 | $struct_get[Bool]($struct_loc[Int](self@289@01, 2)) | live]
; [else-branch: 112 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 2))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 112 | $struct_get[Bool]($struct_loc[Int](self@289@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@289@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 7
; [then-branch: 113 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 4))) | live]
; [else-branch: 113 | $struct_get[Bool]($struct_loc[Int](self@289@01, 4)) | live]
(push) ; 8
; [then-branch: 113 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 4))))
(pop) ; 8
(push) ; 8
; [else-branch: 113 | $struct_get[Bool]($struct_loc[Int](self@289@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@289@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 4)))))
(pop) ; 6
(push) ; 6
; [else-branch: 112 | !($struct_get[Bool]($struct_loc[Int](self@289@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@289@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 4)))))))
; Joined path conditions
(push) ; 5
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@289@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 5)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@289@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@289@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@289@01 5))))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 102 | $struct_get[Int]($struct_loc[Int](msg@223@01, 1)) == $struct_get[Int]($struct_loc[Int](self@287@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))
  ($struct_get<Int> ($struct_loc<Int> self@287@01 1))))
(pop) ; 3
; [eval] !!(($struct_get($struct_loc(msg, 1)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] !(($struct_get($struct_loc(msg, 1)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))
    ($struct_get<Int> ($struct_loc<Int> self@287@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))
  ($struct_get<Int> ($struct_loc<Int> self@287@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | $struct_get[Int]($struct_loc[Int](msg@223@01, 1)) == $struct_get[Int]($struct_loc[Int](self@287@01, 1)) | live]
; [else-branch: 114 | $struct_get[Int]($struct_loc[Int](msg@223@01, 1)) != $struct_get[Int]($struct_loc[Int](self@287@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 114 | $struct_get[Int]($struct_loc[Int](msg@223@01, 1)) == $struct_get[Int]($struct_loc[Int](self@287@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))
  ($struct_get<Int> ($struct_loc<Int> self@287@01 1))))
; [eval] !($unwrap(l$flr) == 0 || $unwrap(l$flr) == 1)
; [eval] $unwrap(l$flr) == 0 || $unwrap(l$flr) == 1
; [eval] $unwrap(l$flr) == 0
; [eval] $unwrap(l$flr)
(push) ; 4
; [then-branch: 115 | $unwrap[Int](l$flr@221@01) == 0 | live]
; [else-branch: 115 | $unwrap[Int](l$flr@221@01) != 0 | live]
(push) ; 5
; [then-branch: 115 | $unwrap[Int](l$flr@221@01) == 0]
(assert (= ($unwrap<Int> l$flr@221@01) 0))
(pop) ; 5
(push) ; 5
; [else-branch: 115 | $unwrap[Int](l$flr@221@01) != 0]
(assert (not (= ($unwrap<Int> l$flr@221@01) 0)))
; [eval] $unwrap(l$flr) == 1
; [eval] $unwrap(l$flr)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (= ($unwrap<Int> l$flr@221@01) 0)) (= ($unwrap<Int> l$flr@221@01) 0)))
(push) ; 4
(set-option :timeout 10)
(assert (not (or (= ($unwrap<Int> l$flr@221@01) 0) (= ($unwrap<Int> l$flr@221@01) 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (or (= ($unwrap<Int> l$flr@221@01) 0) (= ($unwrap<Int> l$flr@221@01) 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 116 | !($unwrap[Int](l$flr@221@01) == 0 || $unwrap[Int](l$flr@221@01) == 1) | live]
; [else-branch: 116 | $unwrap[Int](l$flr@221@01) == 0 || $unwrap[Int](l$flr@221@01) == 1 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 116 | !($unwrap[Int](l$flr@221@01) == 0 || $unwrap[Int](l$flr@221@01) == 1)]
(assert (not (or (= ($unwrap<Int> l$flr@221@01) 0) (= ($unwrap<Int> l$flr@221@01) 1))))
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
; [then-branch: 117 | False | dead]
; [else-branch: 117 | True | live]
(push) ; 5
; [else-branch: 117 | True]
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
; [then-branch: 118 | True | live]
; [else-branch: 118 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 118 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 6
; [then-branch: 119 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 119 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 7
; [then-branch: 119 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 7
(push) ; 7
; [else-branch: 119 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 120 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 120 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 120 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@290@01 $Snap)
(assert (= $t@290@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@291@01 $Struct)
(assert (=
  self@291@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 6
; [then-branch: 121 | $struct_get[Bool]($struct_loc[Int](self@291@01, 2)) | live]
; [else-branch: 121 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 2))) | live]
(push) ; 7
; [then-branch: 121 | $struct_get[Bool]($struct_loc[Int](self@291@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@291@01 2)))
(pop) ; 7
(push) ; 7
; [else-branch: 121 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 8
; [then-branch: 122 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 3))) | live]
; [else-branch: 122 | $struct_get[Bool]($struct_loc[Int](self@291@01, 3)) | live]
(push) ; 9
; [then-branch: 122 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))))
(pop) ; 9
(push) ; 9
; [else-branch: 122 | $struct_get[Bool]($struct_loc[Int](self@291@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@291@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 10
; [then-branch: 123 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 2))) | live]
; [else-branch: 123 | $struct_get[Bool]($struct_loc[Int](self@291@01, 2)) | live]
(push) ; 11
; [then-branch: 123 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 2)))]
(pop) ; 11
(push) ; 11
; [else-branch: 123 | $struct_get[Bool]($struct_loc[Int](self@291@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@291@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 2)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 3)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))))
(push) ; 6
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@291@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 3)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 124 | $struct_get[Bool]($struct_loc[Int](self@291@01, 3)) | live]
; [else-branch: 124 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 3))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 124 | $struct_get[Bool]($struct_loc[Int](self@291@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@291@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 8
; [then-branch: 125 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 5))) | live]
; [else-branch: 125 | $struct_get[Bool]($struct_loc[Int](self@291@01, 5)) | live]
(push) ; 9
; [then-branch: 125 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 5))))
(pop) ; 9
(push) ; 9
; [else-branch: 125 | $struct_get[Bool]($struct_loc[Int](self@291@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@291@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 5)))))
(pop) ; 7
(push) ; 7
; [else-branch: 124 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@291@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))))
(push) ; 6
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@291@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 4)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@291@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 2)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 126 | $struct_get[Bool]($struct_loc[Int](self@291@01, 2)) | live]
; [else-branch: 126 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 2))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 126 | $struct_get[Bool]($struct_loc[Int](self@291@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@291@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 8
; [then-branch: 127 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 4))) | live]
; [else-branch: 127 | $struct_get[Bool]($struct_loc[Int](self@291@01, 4)) | live]
(push) ; 9
; [then-branch: 127 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 4))))
(pop) ; 9
(push) ; 9
; [else-branch: 127 | $struct_get[Bool]($struct_loc[Int](self@291@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@291@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 4)))))
(pop) ; 7
(push) ; 7
; [else-branch: 126 | !($struct_get[Bool]($struct_loc[Int](self@291@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@291@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 4)))))))
; Joined path conditions
(push) ; 6
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@291@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 5)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@291@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@291@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@291@01 5))))))
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 116 | $unwrap[Int](l$flr@221@01) == 0 || $unwrap[Int](l$flr@221@01) == 1]
(assert (or (= ($unwrap<Int> l$flr@221@01) 0) (= ($unwrap<Int> l$flr@221@01) 1)))
(pop) ; 4
; [eval] !!($unwrap(l$flr) == 0 || $unwrap(l$flr) == 1)
; [eval] !($unwrap(l$flr) == 0 || $unwrap(l$flr) == 1)
; [eval] $unwrap(l$flr) == 0 || $unwrap(l$flr) == 1
; [eval] $unwrap(l$flr) == 0
; [eval] $unwrap(l$flr)
(push) ; 4
; [then-branch: 128 | $unwrap[Int](l$flr@221@01) == 0 | live]
; [else-branch: 128 | $unwrap[Int](l$flr@221@01) != 0 | live]
(push) ; 5
; [then-branch: 128 | $unwrap[Int](l$flr@221@01) == 0]
(assert (= ($unwrap<Int> l$flr@221@01) 0))
(pop) ; 5
(push) ; 5
; [else-branch: 128 | $unwrap[Int](l$flr@221@01) != 0]
(assert (not (= ($unwrap<Int> l$flr@221@01) 0)))
; [eval] $unwrap(l$flr) == 1
; [eval] $unwrap(l$flr)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (not (or (= ($unwrap<Int> l$flr@221@01) 0) (= ($unwrap<Int> l$flr@221@01) 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (or (= ($unwrap<Int> l$flr@221@01) 0) (= ($unwrap<Int> l$flr@221@01) 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 129 | $unwrap[Int](l$flr@221@01) == 0 || $unwrap[Int](l$flr@221@01) == 1 | live]
; [else-branch: 129 | !($unwrap[Int](l$flr@221@01) == 0 || $unwrap[Int](l$flr@221@01) == 1) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 129 | $unwrap[Int](l$flr@221@01) == 0 || $unwrap[Int](l$flr@221@01) == 1]
(assert (or (= ($unwrap<Int> l$flr@221@01) 0) (= ($unwrap<Int> l$flr@221@01) 1)))
; [exec]
; l$is_down := ($struct_get($struct_loc(self, 2)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(declare-const l$is_down@292@01 Bool)
(assert (= l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@287@01 2))))
; [exec]
; l$is_up := ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(declare-const l$is_up@293@01 Bool)
(assert (= l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@287@01 3))))
; [eval] $unwrap(l$flr) == 0
; [eval] $unwrap(l$flr)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($unwrap<Int> l$flr@221@01) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($unwrap<Int> l$flr@221@01) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 130 | $unwrap[Int](l$flr@221@01) == 0 | live]
; [else-branch: 130 | $unwrap[Int](l$flr@221@01) != 0 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 130 | $unwrap[Int](l$flr@221@01) == 0]
(assert (= ($unwrap<Int> l$flr@221@01) 0))
; [exec]
; i0$$pre_self := self
; [exec]
; i0$$pre_$contracts := $contracts
; [exec]
; self := ($struct_set(self, 3, false): $Struct)
; [eval] ($struct_set(self, 3, false): $Struct)
(declare-const self@294@01 $Struct)
(assert (= self@294@01 ($struct_set<$Struct> self@287@01 3 false)))
; [exec]
; self := ($struct_set(self, 2, true): $Struct)
; [eval] ($struct_set(self, 2, true): $Struct)
(declare-const self@295@01 $Struct)
(assert (= self@295@01 ($struct_set<$Struct> self@294@01 2 true)))
; [exec]
; self := ($struct_set(self, 4, true): $Struct)
; [eval] ($struct_set(self, 4, true): $Struct)
(declare-const self@296@01 $Struct)
(assert (= self@296@01 ($struct_set<$Struct> self@295@01 4 true)))
; [exec]
; self := ($struct_set(self, 5, false): $Struct)
; [eval] ($struct_set(self, 5, false): $Struct)
(declare-const self@297@01 $Struct)
(assert (= self@297@01 ($struct_set<$Struct> self@296@01 5 false)))
; [exec]
; label i0$return
; [eval] l$is_down && ($struct_get($struct_loc(self, 2)): Bool) || l$is_up && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] l$is_down && ($struct_get($struct_loc(self, 2)): Bool)
(push) ; 6
; [then-branch: 131 | !(l$is_down@292@01) | live]
; [else-branch: 131 | l$is_down@292@01 | live]
(push) ; 7
; [then-branch: 131 | !(l$is_down@292@01)]
(assert (not l$is_down@292@01))
(pop) ; 7
(push) ; 7
; [else-branch: 131 | l$is_down@292@01]
(assert l$is_down@292@01)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or l$is_down@292@01 (not l$is_down@292@01)))
(push) ; 6
; [then-branch: 132 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)) | live]
; [else-branch: 132 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2))) | live]
(push) ; 7
; [then-branch: 132 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2))]
(assert (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2))))
(pop) ; 7
(push) ; 7
; [else-branch: 132 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)))]
(assert (not (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))))
; [eval] l$is_up && ($struct_get($struct_loc(self, 3)): Bool)
(push) ; 8
; [then-branch: 133 | !(l$is_up@293@01) | live]
; [else-branch: 133 | l$is_up@293@01 | live]
(push) ; 9
; [then-branch: 133 | !(l$is_up@293@01)]
(assert (not l$is_up@293@01))
(pop) ; 9
(push) ; 9
; [else-branch: 133 | l$is_up@293@01]
(assert l$is_up@293@01)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or l$is_up@293@01 (not l$is_up@293@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2))))
  (and
    (not
      (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2))))
    (or l$is_up@293@01 (not l$is_up@293@01)))))
(assert (or
  (not
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2))))
  (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))))
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (or
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))
    (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 3)))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (or
  (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))
  (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 3))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 134 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 3)) | live]
; [else-branch: 134 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 3))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 134 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 3))]
(assert (or
  (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))
  (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 3)))))
; [eval] 2 == 0
; [then-branch: 135 | False | dead]
; [else-branch: 135 | True | live]
(push) ; 7
; [else-branch: 135 | True]
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
; [then-branch: 136 | True | live]
; [else-branch: 136 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 136 | True]
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
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 137 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0 | dead]
; [else-branch: 137 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0) | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 137 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
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
  ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
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
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 138 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0) | live]
; [else-branch: 138 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 138 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
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
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 139 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935 | dead]
; [else-branch: 139 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 139 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (>
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
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
  ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
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
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 140 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 140 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935 | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 140 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (>
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
; [eval] ($struct_get($struct_loc(self, 6)): Int) < $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
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
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@297@01 6))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 141 | $struct_get[Int]($struct_loc[Int](self@297@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) | dead]
; [else-branch: 141 | !($struct_get[Int]($struct_loc[Int](self@297@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2)) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 141 | !($struct_get[Int]($struct_loc[Int](self@297@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@297@01 6))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2)))))
(pop) ; 10
; [eval] !(($struct_get($struct_loc(self, 6)): Int) < $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2))
; [eval] ($struct_get($struct_loc(self, 6)): Int) < $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
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
(push) ; 10
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@297@01 6))
  ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
    2)))))
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
    ($struct_get<Int> ($struct_loc<Int> self@297@01 6))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 142 | !($struct_get[Int]($struct_loc[Int](self@297@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2)) | live]
; [else-branch: 142 | $struct_get[Int]($struct_loc[Int](self@297@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 142 | !($struct_get[Int]($struct_loc[Int](self@297@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@297@01 6))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2)))))
; [exec]
; self := ($struct_set(self, 9, ($map_set(($struct_get($struct_loc(self, 9)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg,
;   1)): Int))) \
;   2)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 9, ($map_set(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
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
(declare-const self@298@01 $Struct)
(assert (=
  self@298@01
  ($struct_set<$Struct> self@297@01 9 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@297@01 9)) ($struct_get<Int> ($struct_loc<Int> msg@223@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@297@01 9)) ($struct_get<Int> ($struct_loc<Int> msg@223@01 0)))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2)))))))
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) -
;   $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg,
;   1)): Int))) \
;   2)): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) - $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) - $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
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
(declare-const self@299@01 $Struct)
(assert (=
  self@299@01
  ($struct_set<$Struct> self@298@01 6 (-
    ($struct_get<Int> ($struct_loc<Int> self@298@01 6))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 11
; [then-branch: 143 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3))) | live]
; [else-branch: 143 | $struct_get[Bool]($struct_loc[Int](self@299@01, 3)) | live]
(push) ; 12
; [then-branch: 143 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))))
(pop) ; 12
(push) ; 12
; [else-branch: 143 | $struct_get[Bool]($struct_loc[Int](self@299@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@299@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 3)))))
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 144 | $struct_get[Bool]($struct_loc[Int](self@299@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 144 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 144 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 11
; [then-branch: 145 | $struct_get[Bool]($struct_loc[Int](self@299@01, 2)) | live]
; [else-branch: 145 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 2))) | live]
(push) ; 12
; [then-branch: 145 | $struct_get[Bool]($struct_loc[Int](self@299@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))
(pop) ; 12
(push) ; 12
; [else-branch: 145 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 13
; [then-branch: 146 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3))) | live]
; [else-branch: 146 | $struct_get[Bool]($struct_loc[Int](self@299@01, 3)) | live]
(push) ; 14
; [then-branch: 146 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))))
(pop) ; 14
(push) ; 14
; [else-branch: 146 | $struct_get[Bool]($struct_loc[Int](self@299@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@299@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 15
; [then-branch: 147 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 2))) | live]
; [else-branch: 147 | $struct_get[Bool]($struct_loc[Int](self@299@01, 2)) | live]
(push) ; 16
; [then-branch: 147 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 2)))]
(pop) ; 16
(push) ; 16
; [else-branch: 147 | $struct_get[Bool]($struct_loc[Int](self@299@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))))
(push) ; 11
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@299@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 3)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 148 | $struct_get[Bool]($struct_loc[Int](self@299@01, 3)) | dead]
; [else-branch: 148 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3))) | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 148 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 149 | $struct_get[Bool]($struct_loc[Int](self@299@01, 2)) | live]
; [else-branch: 149 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 2))) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 149 | $struct_get[Bool]($struct_loc[Int](self@299@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 13
; [then-branch: 150 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 4))) | live]
; [else-branch: 150 | $struct_get[Bool]($struct_loc[Int](self@299@01, 4)) | live]
(push) ; 14
; [then-branch: 150 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 4))))
(pop) ; 14
(push) ; 14
; [else-branch: 150 | $struct_get[Bool]($struct_loc[Int](self@299@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@299@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@299@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 4)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@299@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 4)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@299@01 2)))
(push) ; 11
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 5)))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@299@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 5))))))
(push) ; 11
(set-option :timeout 10)
(assert (not (not l$send_fail@243@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not l$send_fail@243@01))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 151 | l$send_fail@243@01 | live]
; [else-branch: 151 | !(l$send_fail@243@01) | live]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 151 | l$send_fail@243@01]
(assert l$send_fail@243@01)
; [exec]
; inhale acc($failed(($struct_get($struct_loc(msg, 0)): Int)), write)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const $t@300@01 $Snap)
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
; [then-branch: 152 | False | dead]
; [else-branch: 152 | True | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 152 | True]
(pop) ; 12
; [eval] !$succ
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 153 | True | live]
; [else-branch: 153 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 153 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 13
; [then-branch: 154 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 154 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 14
; [then-branch: 154 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 14
(push) ; 14
; [else-branch: 154 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 155 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 155 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 14
; [else-branch: 155 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@301@01 $Snap)
(assert (= $t@301@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@302@01 $Struct)
(assert (=
  self@302@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 13
; [then-branch: 156 | $struct_get[Bool]($struct_loc[Int](self@302@01, 2)) | live]
; [else-branch: 156 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 2))) | live]
(push) ; 14
; [then-branch: 156 | $struct_get[Bool]($struct_loc[Int](self@302@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@302@01 2)))
(pop) ; 14
(push) ; 14
; [else-branch: 156 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 15
; [then-branch: 157 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 3))) | live]
; [else-branch: 157 | $struct_get[Bool]($struct_loc[Int](self@302@01, 3)) | live]
(push) ; 16
; [then-branch: 157 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))))
(pop) ; 16
(push) ; 16
; [else-branch: 157 | $struct_get[Bool]($struct_loc[Int](self@302@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@302@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 17
; [then-branch: 158 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 2))) | live]
; [else-branch: 158 | $struct_get[Bool]($struct_loc[Int](self@302@01, 2)) | live]
(push) ; 18
; [then-branch: 158 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 2)))]
(pop) ; 18
(push) ; 18
; [else-branch: 158 | $struct_get[Bool]($struct_loc[Int](self@302@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@302@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 2)))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 3)))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))))
(push) ; 13
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@302@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 3)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 159 | $struct_get[Bool]($struct_loc[Int](self@302@01, 3)) | dead]
; [else-branch: 159 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 3))) | live]
(set-option :timeout 0)
(push) ; 14
; [else-branch: 159 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 3))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 2)))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 160 | $struct_get[Bool]($struct_loc[Int](self@302@01, 2)) | live]
; [else-branch: 160 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 2))) | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 160 | $struct_get[Bool]($struct_loc[Int](self@302@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@302@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 15
; [then-branch: 161 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 4))) | live]
; [else-branch: 161 | $struct_get[Bool]($struct_loc[Int](self@302@01, 4)) | live]
(push) ; 16
; [then-branch: 161 | !($struct_get[Bool]($struct_loc[Int](self@302@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 4))))
(pop) ; 16
(push) ; 16
; [else-branch: 161 | $struct_get[Bool]($struct_loc[Int](self@302@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@302@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@302@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 4)))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@302@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 4)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@302@01 2)))
(push) ; 13
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@302@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 5)))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@302@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@302@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@302@01 5))))))
(pop) ; 12
(pop) ; 11
(push) ; 11
; [else-branch: 151 | !(l$send_fail@243@01)]
(assert (not l$send_fail@243@01))
(pop) ; 11
; [eval] !l$send_fail
(push) ; 11
(set-option :timeout 10)
(assert (not l$send_fail@243@01))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not l$send_fail@243@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 162 | !(l$send_fail@243@01) | live]
; [else-branch: 162 | l$send_fail@243@01 | live]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 162 | !(l$send_fail@243@01)]
(assert (not l$send_fail@243@01))
; [exec]
; $contracts := $old_$contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; i2$$pre_self := self
; [exec]
; i2$$pre_$contracts := $contracts
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
(declare-const $t@303@01 $Snap)
(assert (= $t@303@01 ($Snap.combine ($Snap.first $t@303@01) ($Snap.second $t@303@01))))
(assert (= ($Snap.first $t@303@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 0))))
(assert (= ($Snap.second $t@303@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@304@01 $Snap)
(assert (= $t@304@01 ($Snap.combine ($Snap.first $t@304@01) ($Snap.second $t@304@01))))
(assert (= ($Snap.first $t@304@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 1))))
(assert (= ($Snap.second $t@304@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 6)): Int) &&
;   ($struct_get($struct_loc(self, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@305@01 $Snap)
(assert (= $t@305@01 ($Snap.combine ($Snap.first $t@305@01) ($Snap.second $t@305@01))))
(assert (= ($Snap.first $t@305@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 6))))
(assert (= ($Snap.second $t@305@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 7)): Int) &&
;   ($struct_get($struct_loc(self, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@306@01 $Snap)
(assert (= $t@306@01 ($Snap.combine ($Snap.first $t@306@01) ($Snap.second $t@306@01))))
(assert (= ($Snap.first $t@306@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 7))))
(assert (= ($Snap.second $t@306@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@307@01 $Snap)
(assert (= $t@307@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@308@01 Int)
(set-option :timeout 0)
(push) ; 12
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(push) ; 13
; [then-branch: 163 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 9)), $q0@308@01)) | live]
; [else-branch: 163 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 9)), $q0@308@01) | live]
(push) ; 14
; [then-branch: 163 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 9)), $q0@308@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@308@01))))
(pop) ; 14
(push) ; 14
; [else-branch: 163 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 9)), $q0@308@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@308@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@308@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@308@01)))))
(pop) ; 12
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@308@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@308@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@308@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@308@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1007@13@1007@347-aux|)))
(assert (forall (($q0@308@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@308@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@308@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@308@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1007@13@1007@347|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $t@309@01 $Snap)
(assert (= $t@309@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $q0@310@01 Int)
(set-option :timeout 0)
(push) ; 12
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 12
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@310@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@310@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@310@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1008@13@1008@255|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@311@01 $Snap)
(assert (= $t@311@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@312@01 Int)
(set-option :timeout 0)
(push) ; 12
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(push) ; 13
; [then-branch: 164 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 10)), $q1@312@01)) | live]
; [else-branch: 164 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 10)), $q1@312@01) | live]
(push) ; 14
; [then-branch: 164 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 10)), $q1@312@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@312@01))))
(pop) ; 14
(push) ; 14
; [else-branch: 164 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 10)), $q1@312@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@312@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@312@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@312@01)))))
(pop) ; 12
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@312@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@312@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@312@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@312@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1009@13@1009@350-aux|)))
(assert (forall (($q1@312@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@312@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@312@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@312@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1009@13@1009@350|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $t@313@01 $Snap)
(assert (= $t@313@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $q1@314@01 Int)
(set-option :timeout 0)
(push) ; 12
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
; [eval] ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 12
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@314@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@314@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@314@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1010@13@1010@258|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@315@01 $Snap)
(assert (= $t@315@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $t@316@01 $Snap)
(assert (= $t@316@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $a@317@01 Int)
(set-option :timeout 0)
(push) ; 12
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 9)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 9)
(pop) ; 12
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@317@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $a@317@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@299@01 9)) $a@317@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $a@317@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1013@13@1013@261|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
(declare-const $t@318@01 $Snap)
(assert (= $t@318@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 12
; [then-branch: 165 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)) | live]
; [else-branch: 165 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))) | live]
(push) ; 13
; [then-branch: 165 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
(pop) ; 13
(push) ; 13
; [else-branch: 165 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 14
; [then-branch: 166 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))) | live]
; [else-branch: 166 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) | live]
(push) ; 15
; [then-branch: 166 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))
(pop) ; 15
(push) ; 15
; [else-branch: 166 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 16
; [then-branch: 167 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))) | live]
; [else-branch: 167 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)) | live]
(push) ; 17
; [then-branch: 167 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)))]
(pop) ; 17
(push) ; 17
; [else-branch: 167 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
        ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
(declare-const $t@319@01 $Snap)
(assert (= $t@319@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(set-option :timeout 0)
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 168 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) | live]
; [else-branch: 168 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))) | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 168 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 14
; [then-branch: 169 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 5))) | live]
; [else-branch: 169 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 5)) | live]
(push) ; 15
; [then-branch: 169 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5))))
(pop) ; 15
(push) ; 15
; [else-branch: 169 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5)))))
(pop) ; 13
(push) ; 13
; [else-branch: 168 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
(declare-const $t@320@01 $Snap)
(assert (= $t@320@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 170 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)) | live]
; [else-branch: 170 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))) | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 170 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 14
; [then-branch: 171 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 4))) | live]
; [else-branch: 171 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 4)) | live]
(push) ; 15
; [then-branch: 171 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4))))
(pop) ; 15
(push) ; 15
; [else-branch: 171 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4)))))
(pop) ; 13
(push) ; 13
; [else-branch: 170 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4)))))))
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@249@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not l$no_reentrant_call@249@01))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 172 | l$no_reentrant_call@249@01 | live]
; [else-branch: 172 | !(l$no_reentrant_call@249@01) | live]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 172 | l$no_reentrant_call@249@01]
(assert l$no_reentrant_call@249@01)
; [exec]
; self := $old_self
; [exec]
; $contracts := $old_$contracts
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$4
; [exec]
; $old_$contracts := i2$$pre_$contracts
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$5
; [exec]
; $old_$contracts := i2$$pre_$contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; label return
(push) ; 13
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 173 | $out_of_gas@252@01 | live]
; [else-branch: 173 | !($out_of_gas@252@01) | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 173 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
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
; [then-branch: 174 | False | dead]
; [else-branch: 174 | True | live]
(push) ; 14
; [else-branch: 174 | True]
(pop) ; 14
; [eval] !$succ
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | True | live]
; [else-branch: 175 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 175 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 15
; [then-branch: 176 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 176 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 16
; [then-branch: 176 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 16
(push) ; 16
; [else-branch: 176 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 177 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 177 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 177 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@321@01 $Snap)
(assert (= $t@321@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@322@01 $Struct)
(assert (=
  self@322@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 15
; [then-branch: 178 | $struct_get[Bool]($struct_loc[Int](self@322@01, 2)) | live]
; [else-branch: 178 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 2))) | live]
(push) ; 16
; [then-branch: 178 | $struct_get[Bool]($struct_loc[Int](self@322@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@322@01 2)))
(pop) ; 16
(push) ; 16
; [else-branch: 178 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 17
; [then-branch: 179 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 3))) | live]
; [else-branch: 179 | $struct_get[Bool]($struct_loc[Int](self@322@01, 3)) | live]
(push) ; 18
; [then-branch: 179 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))))
(pop) ; 18
(push) ; 18
; [else-branch: 179 | $struct_get[Bool]($struct_loc[Int](self@322@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@322@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 19
; [then-branch: 180 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 2))) | live]
; [else-branch: 180 | $struct_get[Bool]($struct_loc[Int](self@322@01, 2)) | live]
(push) ; 20
; [then-branch: 180 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 2)))]
(pop) ; 20
(push) ; 20
; [else-branch: 180 | $struct_get[Bool]($struct_loc[Int](self@322@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@322@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 2)))))
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 3)))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))))
(push) ; 15
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@322@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 3)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 181 | $struct_get[Bool]($struct_loc[Int](self@322@01, 3)) | dead]
; [else-branch: 181 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 3))) | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 181 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 3))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 2)))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 182 | $struct_get[Bool]($struct_loc[Int](self@322@01, 2)) | live]
; [else-branch: 182 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 2))) | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 182 | $struct_get[Bool]($struct_loc[Int](self@322@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@322@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 17
; [then-branch: 183 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 4))) | live]
; [else-branch: 183 | $struct_get[Bool]($struct_loc[Int](self@322@01, 4)) | live]
(push) ; 18
; [then-branch: 183 | !($struct_get[Bool]($struct_loc[Int](self@322@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 4))))
(pop) ; 18
(push) ; 18
; [else-branch: 183 | $struct_get[Bool]($struct_loc[Int](self@322@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@322@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@322@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 4)))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@322@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 4)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@322@01 2)))
(push) ; 15
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@322@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 5)))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@322@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@322@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@322@01 5))))))
(pop) ; 14
(pop) ; 13
(push) ; 13
; [else-branch: 173 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
(pop) ; 13
; [eval] !$out_of_gas
(push) ; 13
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 184 | !($out_of_gas@252@01) | live]
; [else-branch: 184 | $out_of_gas@252@01 | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 184 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
; [exec]
; label end
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 185 | True | live]
; [else-branch: 185 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 185 | True]
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 15
; [then-branch: 186 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3))) | live]
; [else-branch: 186 | $struct_get[Bool]($struct_loc[Int](self@299@01, 3)) | live]
(push) ; 16
; [then-branch: 186 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3)))]
(pop) ; 16
(push) ; 16
; [else-branch: 186 | $struct_get[Bool]($struct_loc[Int](self@299@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@299@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 3)))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 187 | $struct_get[Bool]($struct_loc[Int](self@299@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@299@01, 3))) | dead]
; [else-branch: 187 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@299@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 187 | !($struct_get[Bool]($struct_loc[Int](self@299@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@299@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@299@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@323@01 $Snap)
(assert (= $t@323@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@324@01 $Struct)
(assert (=
  self@324@01
  ($struct_set<$Struct> self@299@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@299@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 15
; [then-branch: 188 | $struct_get[Bool]($struct_loc[Int](self@324@01, 2)) | live]
; [else-branch: 188 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 2))) | live]
(push) ; 16
; [then-branch: 188 | $struct_get[Bool]($struct_loc[Int](self@324@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 2)))
(pop) ; 16
(push) ; 16
; [else-branch: 188 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 17
; [then-branch: 189 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 3))) | live]
; [else-branch: 189 | $struct_get[Bool]($struct_loc[Int](self@324@01, 3)) | live]
(push) ; 18
; [then-branch: 189 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))))
(pop) ; 18
(push) ; 18
; [else-branch: 189 | $struct_get[Bool]($struct_loc[Int](self@324@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 19
; [then-branch: 190 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 2))) | live]
; [else-branch: 190 | $struct_get[Bool]($struct_loc[Int](self@324@01, 2)) | live]
(push) ; 20
; [then-branch: 190 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 2)))]
(pop) ; 20
(push) ; 20
; [else-branch: 190 | $struct_get[Bool]($struct_loc[Int](self@324@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 2)))))
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 3)))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))))
(push) ; 15
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@324@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 3)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 191 | $struct_get[Bool]($struct_loc[Int](self@324@01, 3)) | dead]
; [else-branch: 191 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 3))) | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 191 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 3))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 2)))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 192 | $struct_get[Bool]($struct_loc[Int](self@324@01, 2)) | live]
; [else-branch: 192 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 2))) | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 192 | $struct_get[Bool]($struct_loc[Int](self@324@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 17
; [then-branch: 193 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 4))) | live]
; [else-branch: 193 | $struct_get[Bool]($struct_loc[Int](self@324@01, 4)) | live]
(push) ; 18
; [then-branch: 193 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 4))))
(pop) ; 18
(push) ; 18
; [else-branch: 193 | $struct_get[Bool]($struct_loc[Int](self@324@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 4)))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@324@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 4)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 2)))
(push) ; 15
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@324@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 5)))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@324@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 5))))))
(pop) ; 14
; [eval] !$succ
; [then-branch: 194 | False | dead]
; [else-branch: 194 | True | live]
(push) ; 14
; [else-branch: 194 | True]
(pop) ; 14
(pop) ; 13
(push) ; 13
; [else-branch: 184 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
(pop) ; 13
(pop) ; 12
(push) ; 12
; [else-branch: 172 | !(l$no_reentrant_call@249@01)]
(assert (not l$no_reentrant_call@249@01))
(pop) ; 12
; [eval] !l$no_reentrant_call
(push) ; 12
(set-option :timeout 10)
(assert (not l$no_reentrant_call@249@01))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@249@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 195 | !(l$no_reentrant_call@249@01) | live]
; [else-branch: 195 | l$no_reentrant_call@249@01 | live]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 195 | !(l$no_reentrant_call@249@01)]
(assert (not l$no_reentrant_call@249@01))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$4
; [exec]
; $old_$contracts := i2$$pre_$contracts
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$5
; [exec]
; $old_$contracts := i2$$pre_$contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; label return
(push) ; 13
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 196 | $out_of_gas@252@01 | live]
; [else-branch: 196 | !($out_of_gas@252@01) | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 196 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
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
; [then-branch: 197 | False | dead]
; [else-branch: 197 | True | live]
(push) ; 14
; [else-branch: 197 | True]
(pop) ; 14
; [eval] !$succ
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 198 | True | live]
; [else-branch: 198 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 198 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 15
; [then-branch: 199 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 199 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 16
; [then-branch: 199 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 16
(push) ; 16
; [else-branch: 199 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 200 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 200 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 200 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@325@01 $Snap)
(assert (= $t@325@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@326@01 $Struct)
(assert (=
  self@326@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 15
; [then-branch: 201 | $struct_get[Bool]($struct_loc[Int](self@326@01, 2)) | live]
; [else-branch: 201 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 2))) | live]
(push) ; 16
; [then-branch: 201 | $struct_get[Bool]($struct_loc[Int](self@326@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@326@01 2)))
(pop) ; 16
(push) ; 16
; [else-branch: 201 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 17
; [then-branch: 202 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 3))) | live]
; [else-branch: 202 | $struct_get[Bool]($struct_loc[Int](self@326@01, 3)) | live]
(push) ; 18
; [then-branch: 202 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))))
(pop) ; 18
(push) ; 18
; [else-branch: 202 | $struct_get[Bool]($struct_loc[Int](self@326@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@326@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 19
; [then-branch: 203 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 2))) | live]
; [else-branch: 203 | $struct_get[Bool]($struct_loc[Int](self@326@01, 2)) | live]
(push) ; 20
; [then-branch: 203 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 2)))]
(pop) ; 20
(push) ; 20
; [else-branch: 203 | $struct_get[Bool]($struct_loc[Int](self@326@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@326@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 2)))))
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 3)))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))))
(push) ; 15
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@326@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 3)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 204 | $struct_get[Bool]($struct_loc[Int](self@326@01, 3)) | dead]
; [else-branch: 204 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 3))) | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 204 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 3))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 2)))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 205 | $struct_get[Bool]($struct_loc[Int](self@326@01, 2)) | live]
; [else-branch: 205 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 2))) | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 205 | $struct_get[Bool]($struct_loc[Int](self@326@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@326@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 17
; [then-branch: 206 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 4))) | live]
; [else-branch: 206 | $struct_get[Bool]($struct_loc[Int](self@326@01, 4)) | live]
(push) ; 18
; [then-branch: 206 | !($struct_get[Bool]($struct_loc[Int](self@326@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 4))))
(pop) ; 18
(push) ; 18
; [else-branch: 206 | $struct_get[Bool]($struct_loc[Int](self@326@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@326@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@326@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 4)))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@326@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 4)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@326@01 2)))
(push) ; 15
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@326@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 5)))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@326@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@326@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@326@01 5))))))
(pop) ; 14
(pop) ; 13
(push) ; 13
; [else-branch: 196 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
(pop) ; 13
; [eval] !$out_of_gas
(push) ; 13
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 207 | !($out_of_gas@252@01) | live]
; [else-branch: 207 | $out_of_gas@252@01 | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 207 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
; [exec]
; label end
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 208 | True | live]
; [else-branch: 208 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 208 | True]
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 15
; [then-branch: 209 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))) | live]
; [else-branch: 209 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) | live]
(push) ; 16
; [then-branch: 209 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))
(pop) ; 16
(push) ; 16
; [else-branch: 209 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 210 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) && !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))) | dead]
; [else-branch: 210 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) && !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 210 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) && !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@327@01 $Snap)
(assert (= $t@327@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@328@01 $Struct)
(assert (=
  self@328@01
  ($struct_set<$Struct> l$havoc$2@247@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 15
; [then-branch: 211 | $struct_get[Bool]($struct_loc[Int](self@328@01, 2)) | live]
; [else-branch: 211 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 2))) | live]
(push) ; 16
; [then-branch: 211 | $struct_get[Bool]($struct_loc[Int](self@328@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@328@01 2)))
(pop) ; 16
(push) ; 16
; [else-branch: 211 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 17
; [then-branch: 212 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 3))) | live]
; [else-branch: 212 | $struct_get[Bool]($struct_loc[Int](self@328@01, 3)) | live]
(push) ; 18
; [then-branch: 212 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))))
(pop) ; 18
(push) ; 18
; [else-branch: 212 | $struct_get[Bool]($struct_loc[Int](self@328@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@328@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 19
; [then-branch: 213 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 2))) | live]
; [else-branch: 213 | $struct_get[Bool]($struct_loc[Int](self@328@01, 2)) | live]
(push) ; 20
; [then-branch: 213 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 2)))]
(pop) ; 20
(push) ; 20
; [else-branch: 213 | $struct_get[Bool]($struct_loc[Int](self@328@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@328@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 2)))))
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 3)))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))))
(push) ; 15
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@328@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 3)))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 214 | $struct_get[Bool]($struct_loc[Int](self@328@01, 3)) | live]
; [else-branch: 214 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 3))) | live]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 214 | $struct_get[Bool]($struct_loc[Int](self@328@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@328@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 17
; [then-branch: 215 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 5))) | live]
; [else-branch: 215 | $struct_get[Bool]($struct_loc[Int](self@328@01, 5)) | live]
(push) ; 18
; [then-branch: 215 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 5))))
(pop) ; 18
(push) ; 18
; [else-branch: 215 | $struct_get[Bool]($struct_loc[Int](self@328@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@328@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 5)))))
(pop) ; 16
(push) ; 16
; [else-branch: 214 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@328@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))))
(push) ; 15
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@328@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 4)))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@328@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 2)))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 216 | $struct_get[Bool]($struct_loc[Int](self@328@01, 2)) | live]
; [else-branch: 216 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 2))) | live]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 216 | $struct_get[Bool]($struct_loc[Int](self@328@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@328@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 17
; [then-branch: 217 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 4))) | live]
; [else-branch: 217 | $struct_get[Bool]($struct_loc[Int](self@328@01, 4)) | live]
(push) ; 18
; [then-branch: 217 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 4))))
(pop) ; 18
(push) ; 18
; [else-branch: 217 | $struct_get[Bool]($struct_loc[Int](self@328@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@328@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 4)))))
(pop) ; 16
(push) ; 16
; [else-branch: 216 | !($struct_get[Bool]($struct_loc[Int](self@328@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@328@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 4)))))))
; Joined path conditions
(push) ; 15
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@328@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 5)))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@328@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@328@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@328@01 5))))))
(pop) ; 14
; [eval] !$succ
; [then-branch: 218 | False | dead]
; [else-branch: 218 | True | live]
(push) ; 14
; [else-branch: 218 | True]
(pop) ; 14
(pop) ; 13
(push) ; 13
; [else-branch: 207 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
(pop) ; 13
(pop) ; 12
(push) ; 12
; [else-branch: 195 | l$no_reentrant_call@249@01]
(assert l$no_reentrant_call@249@01)
(pop) ; 12
(pop) ; 11
(push) ; 11
; [else-branch: 162 | l$send_fail@243@01]
(assert l$send_fail@243@01)
(pop) ; 11
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 134 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 3)))]
(assert (not
  (or
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))
    (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 3))))))
(pop) ; 6
; [eval] !(l$is_down && ($struct_get($struct_loc(self, 2)): Bool) || l$is_up && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] l$is_down && ($struct_get($struct_loc(self, 2)): Bool) || l$is_up && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] l$is_down && ($struct_get($struct_loc(self, 2)): Bool)
(push) ; 6
; [then-branch: 219 | !(l$is_down@292@01) | live]
; [else-branch: 219 | l$is_down@292@01 | live]
(push) ; 7
; [then-branch: 219 | !(l$is_down@292@01)]
(assert (not l$is_down@292@01))
(pop) ; 7
(push) ; 7
; [else-branch: 219 | l$is_down@292@01]
(assert l$is_down@292@01)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
; [then-branch: 220 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)) | live]
; [else-branch: 220 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2))) | live]
(push) ; 7
; [then-branch: 220 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2))]
(assert (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2))))
(pop) ; 7
(push) ; 7
; [else-branch: 220 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)))]
(assert (not (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))))
; [eval] l$is_up && ($struct_get($struct_loc(self, 3)): Bool)
(push) ; 8
; [then-branch: 221 | !(l$is_up@293@01) | live]
; [else-branch: 221 | l$is_up@293@01 | live]
(push) ; 9
; [then-branch: 221 | !(l$is_up@293@01)]
(assert (not l$is_up@293@01))
(pop) ; 9
(push) ; 9
; [else-branch: 221 | l$is_up@293@01]
(assert l$is_up@293@01)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or l$is_up@293@01 (not l$is_up@293@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not (or
  (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))
  (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 3))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (or
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))
    (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 3)))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 222 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 3))) | live]
; [else-branch: 222 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 3)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 222 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 3)))]
(assert (not
  (or
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))
    (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 3))))))
; [exec]
; label return
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 223 | $out_of_gas@252@01 | live]
; [else-branch: 223 | !($out_of_gas@252@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 223 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
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
; [then-branch: 224 | False | dead]
; [else-branch: 224 | True | live]
(push) ; 8
; [else-branch: 224 | True]
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
; [then-branch: 225 | True | live]
; [else-branch: 225 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 225 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
; [then-branch: 226 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 226 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 10
; [then-branch: 226 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 10
(push) ; 10
; [else-branch: 226 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 227 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 227 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 227 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@329@01 $Snap)
(assert (= $t@329@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@330@01 $Struct)
(assert (=
  self@330@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 228 | $struct_get[Bool]($struct_loc[Int](self@330@01, 2)) | live]
; [else-branch: 228 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 2))) | live]
(push) ; 10
; [then-branch: 228 | $struct_get[Bool]($struct_loc[Int](self@330@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@330@01 2)))
(pop) ; 10
(push) ; 10
; [else-branch: 228 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 11
; [then-branch: 229 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 3))) | live]
; [else-branch: 229 | $struct_get[Bool]($struct_loc[Int](self@330@01, 3)) | live]
(push) ; 12
; [then-branch: 229 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))))
(pop) ; 12
(push) ; 12
; [else-branch: 229 | $struct_get[Bool]($struct_loc[Int](self@330@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@330@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 13
; [then-branch: 230 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 2))) | live]
; [else-branch: 230 | $struct_get[Bool]($struct_loc[Int](self@330@01, 2)) | live]
(push) ; 14
; [then-branch: 230 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 2)))]
(pop) ; 14
(push) ; 14
; [else-branch: 230 | $struct_get[Bool]($struct_loc[Int](self@330@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@330@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 2)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 3)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))))
(push) ; 9
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@330@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 3)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 231 | $struct_get[Bool]($struct_loc[Int](self@330@01, 3)) | live]
; [else-branch: 231 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 3))) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 231 | $struct_get[Bool]($struct_loc[Int](self@330@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@330@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 11
; [then-branch: 232 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 5))) | live]
; [else-branch: 232 | $struct_get[Bool]($struct_loc[Int](self@330@01, 5)) | live]
(push) ; 12
; [then-branch: 232 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 5))))
(pop) ; 12
(push) ; 12
; [else-branch: 232 | $struct_get[Bool]($struct_loc[Int](self@330@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@330@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@330@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 5)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@330@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 5)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@330@01 3)))
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@330@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 4)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@330@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@330@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 2)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 233 | $struct_get[Bool]($struct_loc[Int](self@330@01, 2)) | dead]
; [else-branch: 233 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 2))) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 233 | !($struct_get[Bool]($struct_loc[Int](self@330@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@330@01 2))))
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 223 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 234 | !($out_of_gas@252@01) | live]
; [else-branch: 234 | $out_of_gas@252@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 234 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
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
; [then-branch: 235 | True | live]
; [else-branch: 235 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 235 | True]
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
; [then-branch: 236 | !($struct_get[Bool]($struct_loc[Int](self@297@01, 3))) | live]
; [else-branch: 236 | $struct_get[Bool]($struct_loc[Int](self@297@01, 3)) | live]
(push) ; 10
; [then-branch: 236 | !($struct_get[Bool]($struct_loc[Int](self@297@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@297@01 3))))
(pop) ; 10
(push) ; 10
; [else-branch: 236 | $struct_get[Bool]($struct_loc[Int](self@297@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@297@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@297@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@297@01 3)))))
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@297@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 237 | $struct_get[Bool]($struct_loc[Int](self@297@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 237 | !($struct_get[Bool]($struct_loc[Int](self@297@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 237 | !($struct_get[Bool]($struct_loc[Int](self@297@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@297@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@297@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@331@01 $Snap)
(assert (= $t@331@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@332@01 $Struct)
(assert (=
  self@332@01
  ($struct_set<$Struct> self@297@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@297@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 238 | $struct_get[Bool]($struct_loc[Int](self@332@01, 2)) | live]
; [else-branch: 238 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 2))) | live]
(push) ; 10
; [then-branch: 238 | $struct_get[Bool]($struct_loc[Int](self@332@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@332@01 2)))
(pop) ; 10
(push) ; 10
; [else-branch: 238 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 11
; [then-branch: 239 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 3))) | live]
; [else-branch: 239 | $struct_get[Bool]($struct_loc[Int](self@332@01, 3)) | live]
(push) ; 12
; [then-branch: 239 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))))
(pop) ; 12
(push) ; 12
; [else-branch: 239 | $struct_get[Bool]($struct_loc[Int](self@332@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@332@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 13
; [then-branch: 240 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 2))) | live]
; [else-branch: 240 | $struct_get[Bool]($struct_loc[Int](self@332@01, 2)) | live]
(push) ; 14
; [then-branch: 240 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 2)))]
(pop) ; 14
(push) ; 14
; [else-branch: 240 | $struct_get[Bool]($struct_loc[Int](self@332@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@332@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 2)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 3)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))))
(push) ; 9
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@332@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 3)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 241 | $struct_get[Bool]($struct_loc[Int](self@332@01, 3)) | dead]
; [else-branch: 241 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 3))) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 241 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 3))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 2)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 242 | $struct_get[Bool]($struct_loc[Int](self@332@01, 2)) | live]
; [else-branch: 242 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 2))) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 242 | $struct_get[Bool]($struct_loc[Int](self@332@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@332@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 11
; [then-branch: 243 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 4))) | live]
; [else-branch: 243 | $struct_get[Bool]($struct_loc[Int](self@332@01, 4)) | live]
(push) ; 12
; [then-branch: 243 | !($struct_get[Bool]($struct_loc[Int](self@332@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 4))))
(pop) ; 12
(push) ; 12
; [else-branch: 243 | $struct_get[Bool]($struct_loc[Int](self@332@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@332@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@332@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 4)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@332@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 4)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@332@01 2)))
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@332@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 5)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@332@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@332@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@332@01 5))))))
(pop) ; 8
; [eval] !$succ
; [then-branch: 244 | False | dead]
; [else-branch: 244 | True | live]
(push) ; 8
; [else-branch: 244 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 234 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 222 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@297@01, 3))]
(assert (or
  (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 2)))
  (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@297@01 3)))))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 130 | $unwrap[Int](l$flr@221@01) != 0]
(assert (not (= ($unwrap<Int> l$flr@221@01) 0)))
(pop) ; 5
; [eval] !($unwrap(l$flr) == 0)
; [eval] $unwrap(l$flr) == 0
; [eval] $unwrap(l$flr)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($unwrap<Int> l$flr@221@01) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($unwrap<Int> l$flr@221@01) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 245 | $unwrap[Int](l$flr@221@01) != 0 | live]
; [else-branch: 245 | $unwrap[Int](l$flr@221@01) == 0 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 245 | $unwrap[Int](l$flr@221@01) != 0]
(assert (not (= ($unwrap<Int> l$flr@221@01) 0)))
; [eval] $unwrap(l$flr) == 1
; [eval] $unwrap(l$flr)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= ($unwrap<Int> l$flr@221@01) 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($unwrap<Int> l$flr@221@01) 1)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 246 | $unwrap[Int](l$flr@221@01) == 1 | live]
; [else-branch: 246 | $unwrap[Int](l$flr@221@01) != 1 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 246 | $unwrap[Int](l$flr@221@01) == 1]
(assert (= ($unwrap<Int> l$flr@221@01) 1))
; [exec]
; i1$$pre_self := self
; [exec]
; i1$$pre_$contracts := $contracts
; [exec]
; self := ($struct_set(self, 3, true): $Struct)
; [eval] ($struct_set(self, 3, true): $Struct)
(declare-const self@333@01 $Struct)
(assert (= self@333@01 ($struct_set<$Struct> self@287@01 3 true)))
; [exec]
; self := ($struct_set(self, 2, false): $Struct)
; [eval] ($struct_set(self, 2, false): $Struct)
(declare-const self@334@01 $Struct)
(assert (= self@334@01 ($struct_set<$Struct> self@333@01 2 false)))
; [exec]
; self := ($struct_set(self, 4, false): $Struct)
; [eval] ($struct_set(self, 4, false): $Struct)
(declare-const self@335@01 $Struct)
(assert (= self@335@01 ($struct_set<$Struct> self@334@01 4 false)))
; [exec]
; self := ($struct_set(self, 5, true): $Struct)
; [eval] ($struct_set(self, 5, true): $Struct)
(declare-const self@336@01 $Struct)
(assert (= self@336@01 ($struct_set<$Struct> self@335@01 5 true)))
; [exec]
; label i1$return
; [eval] l$is_down && ($struct_get($struct_loc(self, 2)): Bool) || l$is_up && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] l$is_down && ($struct_get($struct_loc(self, 2)): Bool)
(push) ; 7
; [then-branch: 247 | !(l$is_down@292@01) | live]
; [else-branch: 247 | l$is_down@292@01 | live]
(push) ; 8
; [then-branch: 247 | !(l$is_down@292@01)]
(assert (not l$is_down@292@01))
(pop) ; 8
(push) ; 8
; [else-branch: 247 | l$is_down@292@01]
(assert l$is_down@292@01)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or l$is_down@292@01 (not l$is_down@292@01)))
(push) ; 7
; [then-branch: 248 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)) | live]
; [else-branch: 248 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2))) | live]
(push) ; 8
; [then-branch: 248 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2))]
(assert (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2))))
(pop) ; 8
(push) ; 8
; [else-branch: 248 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)))]
(assert (not (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))))
; [eval] l$is_up && ($struct_get($struct_loc(self, 3)): Bool)
(push) ; 9
; [then-branch: 249 | !(l$is_up@293@01) | live]
; [else-branch: 249 | l$is_up@293@01 | live]
(push) ; 10
; [then-branch: 249 | !(l$is_up@293@01)]
(assert (not l$is_up@293@01))
(pop) ; 10
(push) ; 10
; [else-branch: 249 | l$is_up@293@01]
(assert l$is_up@293@01)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or l$is_up@293@01 (not l$is_up@293@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2))))
  (and
    (not
      (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2))))
    (or l$is_up@293@01 (not l$is_up@293@01)))))
(assert (or
  (not
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2))))
  (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))))
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (or
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))
    (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 3)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (or
  (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))
  (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 250 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 3)) | live]
; [else-branch: 250 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 3))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 250 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 3))]
(assert (or
  (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))
  (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 3)))))
; [eval] 2 == 0
; [then-branch: 251 | False | dead]
; [else-branch: 251 | True | live]
(push) ; 8
; [else-branch: 251 | True]
(pop) ; 8
; [eval] !(2 == 0)
; [eval] 2 == 0
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 252 | True | live]
; [else-branch: 252 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 252 | True]
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
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (<
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    0))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 253 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0 | dead]
; [else-branch: 253 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0) | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 253 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    0)))
(pop) ; 9
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
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
    2))
  0)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (<
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    0))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 254 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0) | live]
; [else-branch: 254 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0 | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 254 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
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
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (>
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 255 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935 | dead]
; [else-branch: 255 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 255 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (>
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 10
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
(push) ; 10
(set-option :timeout 10)
(assert (not (>
  ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
    2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (>
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 256 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 256 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935 | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 256 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (>
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
; [eval] ($struct_get($struct_loc(self, 6)): Int) < $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
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
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@336@01 6))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 257 | $struct_get[Int]($struct_loc[Int](self@336@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) | dead]
; [else-branch: 257 | !($struct_get[Int]($struct_loc[Int](self@336@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2)) | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 257 | !($struct_get[Int]($struct_loc[Int](self@336@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@336@01 6))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2)))))
(pop) ; 11
; [eval] !(($struct_get($struct_loc(self, 6)): Int) < $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2))
; [eval] ($struct_get($struct_loc(self, 6)): Int) < $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
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
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@336@01 6))
  ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
    2)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@336@01 6))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 258 | !($struct_get[Int]($struct_loc[Int](self@336@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2)) | live]
; [else-branch: 258 | $struct_get[Int]($struct_loc[Int](self@336@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 258 | !($struct_get[Int]($struct_loc[Int](self@336@01, 6)) < $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@223@01, 1)))) / 2))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@336@01 6))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2)))))
; [exec]
; self := ($struct_set(self, 9, ($map_set(($struct_get($struct_loc(self, 9)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg,
;   1)): Int))) \
;   2)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 9, ($map_set(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
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
(declare-const self@337@01 $Struct)
(assert (=
  self@337@01
  ($struct_set<$Struct> self@336@01 9 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@336@01 9)) ($struct_get<Int> ($struct_loc<Int> msg@223@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@336@01 9)) ($struct_get<Int> ($struct_loc<Int> msg@223@01 0)))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2)))))))
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) -
;   $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg,
;   1)): Int))) \
;   2)): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) - $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) - $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
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
(declare-const self@338@01 $Struct)
(assert (=
  self@338@01
  ($struct_set<$Struct> self@337@01 6 (-
    ($struct_get<Int> ($struct_loc<Int> self@337@01 6))
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))))
      2))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 12
; [then-branch: 259 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3))) | live]
; [else-branch: 259 | $struct_get[Bool]($struct_loc[Int](self@338@01, 3)) | live]
(push) ; 13
; [then-branch: 259 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))))
(pop) ; 13
(push) ; 13
; [else-branch: 259 | $struct_get[Bool]($struct_loc[Int](self@338@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@338@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 3)))))
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 260 | $struct_get[Bool]($struct_loc[Int](self@338@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 260 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 13
; [else-branch: 260 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 12
; [then-branch: 261 | $struct_get[Bool]($struct_loc[Int](self@338@01, 2)) | live]
; [else-branch: 261 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 2))) | live]
(push) ; 13
; [then-branch: 261 | $struct_get[Bool]($struct_loc[Int](self@338@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@338@01 2)))
(pop) ; 13
(push) ; 13
; [else-branch: 261 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 14
; [then-branch: 262 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3))) | live]
; [else-branch: 262 | $struct_get[Bool]($struct_loc[Int](self@338@01, 3)) | live]
(push) ; 15
; [then-branch: 262 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))))
(pop) ; 15
(push) ; 15
; [else-branch: 262 | $struct_get[Bool]($struct_loc[Int](self@338@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@338@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 16
; [then-branch: 263 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 2))) | live]
; [else-branch: 263 | $struct_get[Bool]($struct_loc[Int](self@338@01, 2)) | live]
(push) ; 17
; [then-branch: 263 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 2)))]
(pop) ; 17
(push) ; 17
; [else-branch: 263 | $struct_get[Bool]($struct_loc[Int](self@338@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@338@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 2)))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 2)))))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 2)))))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))))
(push) ; 12
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@338@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 3)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 264 | $struct_get[Bool]($struct_loc[Int](self@338@01, 3)) | live]
; [else-branch: 264 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3))) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 264 | $struct_get[Bool]($struct_loc[Int](self@338@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@338@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 14
; [then-branch: 265 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 5))) | live]
; [else-branch: 265 | $struct_get[Bool]($struct_loc[Int](self@338@01, 5)) | live]
(push) ; 15
; [then-branch: 265 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 5))))
(pop) ; 15
(push) ; 15
; [else-branch: 265 | $struct_get[Bool]($struct_loc[Int](self@338@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@338@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@338@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 5)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@338@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 5)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@338@01 3)))
(push) ; 12
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 4)))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 2)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 266 | $struct_get[Bool]($struct_loc[Int](self@338@01, 2)) | dead]
; [else-branch: 266 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 2))) | live]
(set-option :timeout 0)
(push) ; 13
; [else-branch: 266 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 2))))
(push) ; 12
(set-option :timeout 10)
(assert (not (not l$send_fail@243@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not l$send_fail@243@01))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 267 | l$send_fail@243@01 | live]
; [else-branch: 267 | !(l$send_fail@243@01) | live]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 267 | l$send_fail@243@01]
(assert l$send_fail@243@01)
; [exec]
; inhale acc($failed(($struct_get($struct_loc(msg, 0)): Int)), write)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const $t@339@01 $Snap)
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
; [then-branch: 268 | False | dead]
; [else-branch: 268 | True | live]
(set-option :timeout 0)
(push) ; 13
; [else-branch: 268 | True]
(pop) ; 13
; [eval] !$succ
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 269 | True | live]
; [else-branch: 269 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 269 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 14
; [then-branch: 270 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 270 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 15
; [then-branch: 270 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 15
(push) ; 15
; [else-branch: 270 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 271 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 271 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 15
; [else-branch: 271 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@340@01 $Snap)
(assert (= $t@340@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@341@01 $Struct)
(assert (=
  self@341@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 14
; [then-branch: 272 | $struct_get[Bool]($struct_loc[Int](self@341@01, 2)) | live]
; [else-branch: 272 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 2))) | live]
(push) ; 15
; [then-branch: 272 | $struct_get[Bool]($struct_loc[Int](self@341@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@341@01 2)))
(pop) ; 15
(push) ; 15
; [else-branch: 272 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 16
; [then-branch: 273 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 3))) | live]
; [else-branch: 273 | $struct_get[Bool]($struct_loc[Int](self@341@01, 3)) | live]
(push) ; 17
; [then-branch: 273 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))))
(pop) ; 17
(push) ; 17
; [else-branch: 273 | $struct_get[Bool]($struct_loc[Int](self@341@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@341@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 18
; [then-branch: 274 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 2))) | live]
; [else-branch: 274 | $struct_get[Bool]($struct_loc[Int](self@341@01, 2)) | live]
(push) ; 19
; [then-branch: 274 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 2)))]
(pop) ; 19
(push) ; 19
; [else-branch: 274 | $struct_get[Bool]($struct_loc[Int](self@341@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@341@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 2)))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 3)))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))))
(push) ; 14
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))))))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@341@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 3)))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 275 | $struct_get[Bool]($struct_loc[Int](self@341@01, 3)) | live]
; [else-branch: 275 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 3))) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 275 | $struct_get[Bool]($struct_loc[Int](self@341@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@341@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 16
; [then-branch: 276 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 5))) | live]
; [else-branch: 276 | $struct_get[Bool]($struct_loc[Int](self@341@01, 5)) | live]
(push) ; 17
; [then-branch: 276 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 5))))
(pop) ; 17
(push) ; 17
; [else-branch: 276 | $struct_get[Bool]($struct_loc[Int](self@341@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@341@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@341@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 5)))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@341@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 5)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@341@01 3)))
(push) ; 14
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@341@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 4)))))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@341@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@341@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 2)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 277 | $struct_get[Bool]($struct_loc[Int](self@341@01, 2)) | dead]
; [else-branch: 277 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 2))) | live]
(set-option :timeout 0)
(push) ; 15
; [else-branch: 277 | !($struct_get[Bool]($struct_loc[Int](self@341@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@341@01 2))))
(pop) ; 13
(pop) ; 12
(push) ; 12
; [else-branch: 267 | !(l$send_fail@243@01)]
(assert (not l$send_fail@243@01))
(pop) ; 12
; [eval] !l$send_fail
(push) ; 12
(set-option :timeout 10)
(assert (not l$send_fail@243@01))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (not l$send_fail@243@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 278 | !(l$send_fail@243@01) | live]
; [else-branch: 278 | l$send_fail@243@01 | live]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 278 | !(l$send_fail@243@01)]
(assert (not l$send_fail@243@01))
; [exec]
; $contracts := $old_$contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; i2$$pre_self := self
; [exec]
; i2$$pre_$contracts := $contracts
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
(declare-const $t@342@01 $Snap)
(assert (= $t@342@01 ($Snap.combine ($Snap.first $t@342@01) ($Snap.second $t@342@01))))
(assert (= ($Snap.first $t@342@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 0))))
(assert (= ($Snap.second $t@342@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@343@01 $Snap)
(assert (= $t@343@01 ($Snap.combine ($Snap.first $t@343@01) ($Snap.second $t@343@01))))
(assert (= ($Snap.first $t@343@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 1))))
(assert (= ($Snap.second $t@343@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 6)): Int) &&
;   ($struct_get($struct_loc(self, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@344@01 $Snap)
(assert (= $t@344@01 ($Snap.combine ($Snap.first $t@344@01) ($Snap.second $t@344@01))))
(assert (= ($Snap.first $t@344@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 6))))
(assert (= ($Snap.second $t@344@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 7)): Int) &&
;   ($struct_get($struct_loc(self, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@345@01 $Snap)
(assert (= $t@345@01 ($Snap.combine ($Snap.first $t@345@01) ($Snap.second $t@345@01))))
(assert (= ($Snap.first $t@345@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 7))))
(assert (= ($Snap.second $t@345@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@346@01 $Snap)
(assert (= $t@346@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@347@01 Int)
(set-option :timeout 0)
(push) ; 13
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(push) ; 14
; [then-branch: 279 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 9)), $q0@347@01)) | live]
; [else-branch: 279 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 9)), $q0@347@01) | live]
(push) ; 15
; [then-branch: 279 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 9)), $q0@347@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@347@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 279 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 9)), $q0@347@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@347@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@347@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@347@01)))))
(pop) ; 13
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@347@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@347@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@347@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@347@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1007@13@1007@347-aux|)))
(assert (forall (($q0@347@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@347@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@347@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@347@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1007@13@1007@347|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $t@348@01 $Snap)
(assert (= $t@348@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $q0@349@01 Int)
(set-option :timeout 0)
(push) ; 13
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 13
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@349@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@349@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $q0@349@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1008@13@1008@255|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@350@01 $Snap)
(assert (= $t@350@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@351@01 Int)
(set-option :timeout 0)
(push) ; 13
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(push) ; 14
; [then-branch: 280 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 10)), $q1@351@01)) | live]
; [else-branch: 280 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 10)), $q1@351@01) | live]
(push) ; 15
; [then-branch: 280 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 10)), $q1@351@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@351@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 280 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@247@01, 10)), $q1@351@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@351@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@351@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@351@01)))))
(pop) ; 13
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@351@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@351@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@351@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@351@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1009@13@1009@350-aux|)))
(assert (forall (($q1@351@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@351@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@351@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@351@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1009@13@1009@350|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $t@352@01 $Snap)
(assert (= $t@352@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $q1@353@01 Int)
(set-option :timeout 0)
(push) ; 13
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
; [eval] ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 13
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@353@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@353@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 10)) $q1@353@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1010@13@1010@258|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@354@01 $Snap)
(assert (= $t@354@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $t@355@01 $Snap)
(assert (= $t@355@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $a@356@01 Int)
(set-option :timeout 0)
(push) ; 13
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 9)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 9)
(pop) ; 13
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@356@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $a@356@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@338@01 9)) $a@356@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@247@01 9)) $a@356@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1013@13@1013@261|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
(declare-const $t@357@01 $Snap)
(assert (= $t@357@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 13
; [then-branch: 281 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)) | live]
; [else-branch: 281 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))) | live]
(push) ; 14
; [then-branch: 281 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
(pop) ; 14
(push) ; 14
; [else-branch: 281 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 15
; [then-branch: 282 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))) | live]
; [else-branch: 282 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) | live]
(push) ; 16
; [then-branch: 282 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))
(pop) ; 16
(push) ; 16
; [else-branch: 282 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 17
; [then-branch: 283 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))) | live]
; [else-branch: 283 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)) | live]
(push) ; 18
; [then-branch: 283 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)))]
(pop) ; 18
(push) ; 18
; [else-branch: 283 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
        ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
(declare-const $t@358@01 $Snap)
(assert (= $t@358@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(set-option :timeout 0)
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 284 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) | live]
; [else-branch: 284 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 284 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 15
; [then-branch: 285 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 5))) | live]
; [else-branch: 285 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 5)) | live]
(push) ; 16
; [then-branch: 285 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5))))
(pop) ; 16
(push) ; 16
; [else-branch: 285 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5)))))
(pop) ; 14
(push) ; 14
; [else-branch: 284 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
(declare-const $t@359@01 $Snap)
(assert (= $t@359@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 286 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)) | live]
; [else-branch: 286 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 286 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 15
; [then-branch: 287 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 4))) | live]
; [else-branch: 287 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 4)) | live]
(push) ; 16
; [then-branch: 287 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4))))
(pop) ; 16
(push) ; 16
; [else-branch: 287 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4)))))
(pop) ; 14
(push) ; 14
; [else-branch: 286 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4)))))))
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 5))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@249@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not l$no_reentrant_call@249@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 288 | l$no_reentrant_call@249@01 | live]
; [else-branch: 288 | !(l$no_reentrant_call@249@01) | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 288 | l$no_reentrant_call@249@01]
(assert l$no_reentrant_call@249@01)
; [exec]
; self := $old_self
; [exec]
; $contracts := $old_$contracts
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$4
; [exec]
; $old_$contracts := i2$$pre_$contracts
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$5
; [exec]
; $old_$contracts := i2$$pre_$contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; label return
(push) ; 14
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 289 | $out_of_gas@252@01 | live]
; [else-branch: 289 | !($out_of_gas@252@01) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 289 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
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
; [then-branch: 290 | False | dead]
; [else-branch: 290 | True | live]
(push) ; 15
; [else-branch: 290 | True]
(pop) ; 15
; [eval] !$succ
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 291 | True | live]
; [else-branch: 291 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 291 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 16
; [then-branch: 292 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 292 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 17
; [then-branch: 292 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 17
(push) ; 17
; [else-branch: 292 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 293 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 293 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 293 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@360@01 $Snap)
(assert (= $t@360@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@361@01 $Struct)
(assert (=
  self@361@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 16
; [then-branch: 294 | $struct_get[Bool]($struct_loc[Int](self@361@01, 2)) | live]
; [else-branch: 294 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 2))) | live]
(push) ; 17
; [then-branch: 294 | $struct_get[Bool]($struct_loc[Int](self@361@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@361@01 2)))
(pop) ; 17
(push) ; 17
; [else-branch: 294 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 18
; [then-branch: 295 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 3))) | live]
; [else-branch: 295 | $struct_get[Bool]($struct_loc[Int](self@361@01, 3)) | live]
(push) ; 19
; [then-branch: 295 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))))
(pop) ; 19
(push) ; 19
; [else-branch: 295 | $struct_get[Bool]($struct_loc[Int](self@361@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@361@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 20
; [then-branch: 296 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 2))) | live]
; [else-branch: 296 | $struct_get[Bool]($struct_loc[Int](self@361@01, 2)) | live]
(push) ; 21
; [then-branch: 296 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 2)))]
(pop) ; 21
(push) ; 21
; [else-branch: 296 | $struct_get[Bool]($struct_loc[Int](self@361@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@361@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 2)))))
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 3)))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))))
(push) ; 16
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@361@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 3)))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 297 | $struct_get[Bool]($struct_loc[Int](self@361@01, 3)) | live]
; [else-branch: 297 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 3))) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 297 | $struct_get[Bool]($struct_loc[Int](self@361@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@361@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 18
; [then-branch: 298 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 5))) | live]
; [else-branch: 298 | $struct_get[Bool]($struct_loc[Int](self@361@01, 5)) | live]
(push) ; 19
; [then-branch: 298 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 5))))
(pop) ; 19
(push) ; 19
; [else-branch: 298 | $struct_get[Bool]($struct_loc[Int](self@361@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@361@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@361@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 5)))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@361@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 5)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@361@01 3)))
(push) ; 16
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@361@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 4)))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@361@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@361@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 2)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 299 | $struct_get[Bool]($struct_loc[Int](self@361@01, 2)) | dead]
; [else-branch: 299 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 2))) | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 299 | !($struct_get[Bool]($struct_loc[Int](self@361@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@361@01 2))))
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 289 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
(pop) ; 14
; [eval] !$out_of_gas
(push) ; 14
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 300 | !($out_of_gas@252@01) | live]
; [else-branch: 300 | $out_of_gas@252@01 | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 300 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
; [exec]
; label end
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 301 | True | live]
; [else-branch: 301 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 301 | True]
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 16
; [then-branch: 302 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3))) | live]
; [else-branch: 302 | $struct_get[Bool]($struct_loc[Int](self@338@01, 3)) | live]
(push) ; 17
; [then-branch: 302 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))))
(pop) ; 17
(push) ; 17
; [else-branch: 302 | $struct_get[Bool]($struct_loc[Int](self@338@01, 3))]
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 3)))))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 303 | $struct_get[Bool]($struct_loc[Int](self@338@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@338@01, 3))) | dead]
; [else-branch: 303 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@338@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 303 | !($struct_get[Bool]($struct_loc[Int](self@338@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@338@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@338@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@362@01 $Snap)
(assert (= $t@362@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@363@01 $Struct)
(assert (=
  self@363@01
  ($struct_set<$Struct> self@338@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@338@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 16
; [then-branch: 304 | $struct_get[Bool]($struct_loc[Int](self@363@01, 2)) | live]
; [else-branch: 304 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 2))) | live]
(push) ; 17
; [then-branch: 304 | $struct_get[Bool]($struct_loc[Int](self@363@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@363@01 2)))
(pop) ; 17
(push) ; 17
; [else-branch: 304 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 18
; [then-branch: 305 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 3))) | live]
; [else-branch: 305 | $struct_get[Bool]($struct_loc[Int](self@363@01, 3)) | live]
(push) ; 19
; [then-branch: 305 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))))
(pop) ; 19
(push) ; 19
; [else-branch: 305 | $struct_get[Bool]($struct_loc[Int](self@363@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@363@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 20
; [then-branch: 306 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 2))) | live]
; [else-branch: 306 | $struct_get[Bool]($struct_loc[Int](self@363@01, 2)) | live]
(push) ; 21
; [then-branch: 306 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 2)))]
(pop) ; 21
(push) ; 21
; [else-branch: 306 | $struct_get[Bool]($struct_loc[Int](self@363@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@363@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 2)))))
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 3)))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))))
(push) ; 16
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@363@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 3)))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 307 | $struct_get[Bool]($struct_loc[Int](self@363@01, 3)) | live]
; [else-branch: 307 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 3))) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 307 | $struct_get[Bool]($struct_loc[Int](self@363@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@363@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 18
; [then-branch: 308 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 5))) | live]
; [else-branch: 308 | $struct_get[Bool]($struct_loc[Int](self@363@01, 5)) | live]
(push) ; 19
; [then-branch: 308 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 5))))
(pop) ; 19
(push) ; 19
; [else-branch: 308 | $struct_get[Bool]($struct_loc[Int](self@363@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@363@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@363@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 5)))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@363@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 5)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@363@01 3)))
(push) ; 16
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@363@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 4)))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@363@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@363@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 2)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 309 | $struct_get[Bool]($struct_loc[Int](self@363@01, 2)) | dead]
; [else-branch: 309 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 2))) | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 309 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 2))))
(pop) ; 15
; [eval] !$succ
; [then-branch: 310 | False | dead]
; [else-branch: 310 | True | live]
(push) ; 15
; [else-branch: 310 | True]
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 300 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
(pop) ; 14
(pop) ; 13
(push) ; 13
; [else-branch: 288 | !(l$no_reentrant_call@249@01)]
(assert (not l$no_reentrant_call@249@01))
(pop) ; 13
; [eval] !l$no_reentrant_call
(push) ; 13
(set-option :timeout 10)
(assert (not l$no_reentrant_call@249@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@249@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 311 | !(l$no_reentrant_call@249@01) | live]
; [else-branch: 311 | l$no_reentrant_call@249@01 | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 311 | !(l$no_reentrant_call@249@01)]
(assert (not l$no_reentrant_call@249@01))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$4
; [exec]
; $old_$contracts := i2$$pre_$contracts
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$5
; [exec]
; $old_$contracts := i2$$pre_$contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; label return
(push) ; 14
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 312 | $out_of_gas@252@01 | live]
; [else-branch: 312 | !($out_of_gas@252@01) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 312 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
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
; [then-branch: 313 | False | dead]
; [else-branch: 313 | True | live]
(push) ; 15
; [else-branch: 313 | True]
(pop) ; 15
; [eval] !$succ
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 314 | True | live]
; [else-branch: 314 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 314 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 16
; [then-branch: 315 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 315 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 17
; [then-branch: 315 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 17
(push) ; 17
; [else-branch: 315 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 316 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 316 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 316 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@364@01 $Snap)
(assert (= $t@364@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@365@01 $Struct)
(assert (=
  self@365@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 16
; [then-branch: 317 | $struct_get[Bool]($struct_loc[Int](self@365@01, 2)) | live]
; [else-branch: 317 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 2))) | live]
(push) ; 17
; [then-branch: 317 | $struct_get[Bool]($struct_loc[Int](self@365@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@365@01 2)))
(pop) ; 17
(push) ; 17
; [else-branch: 317 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 18
; [then-branch: 318 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 3))) | live]
; [else-branch: 318 | $struct_get[Bool]($struct_loc[Int](self@365@01, 3)) | live]
(push) ; 19
; [then-branch: 318 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))))
(pop) ; 19
(push) ; 19
; [else-branch: 318 | $struct_get[Bool]($struct_loc[Int](self@365@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@365@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 20
; [then-branch: 319 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 2))) | live]
; [else-branch: 319 | $struct_get[Bool]($struct_loc[Int](self@365@01, 2)) | live]
(push) ; 21
; [then-branch: 319 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 2)))]
(pop) ; 21
(push) ; 21
; [else-branch: 319 | $struct_get[Bool]($struct_loc[Int](self@365@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@365@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 2)))))
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 3)))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))))
(push) ; 16
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@365@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 3)))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 320 | $struct_get[Bool]($struct_loc[Int](self@365@01, 3)) | live]
; [else-branch: 320 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 3))) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 320 | $struct_get[Bool]($struct_loc[Int](self@365@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@365@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 18
; [then-branch: 321 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 5))) | live]
; [else-branch: 321 | $struct_get[Bool]($struct_loc[Int](self@365@01, 5)) | live]
(push) ; 19
; [then-branch: 321 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 5))))
(pop) ; 19
(push) ; 19
; [else-branch: 321 | $struct_get[Bool]($struct_loc[Int](self@365@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@365@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@365@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 5)))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@365@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 5)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@365@01 3)))
(push) ; 16
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@365@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 4)))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@365@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@365@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 2)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 322 | $struct_get[Bool]($struct_loc[Int](self@365@01, 2)) | dead]
; [else-branch: 322 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 2))) | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 322 | !($struct_get[Bool]($struct_loc[Int](self@365@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@365@01 2))))
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 312 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
(pop) ; 14
; [eval] !$out_of_gas
(push) ; 14
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 323 | !($out_of_gas@252@01) | live]
; [else-branch: 323 | $out_of_gas@252@01 | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 323 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
; [exec]
; label end
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 324 | True | live]
; [else-branch: 324 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 324 | True]
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 16
; [then-branch: 325 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))) | live]
; [else-branch: 325 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) | live]
(push) ; 17
; [then-branch: 325 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))
(pop) ; 17
(push) ; 17
; [else-branch: 325 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3)))))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 326 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) && !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))) | dead]
; [else-branch: 326 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) && !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 326 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3)) && !($struct_get[Bool]($struct_loc[Int](l$havoc$2@247@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@247@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@366@01 $Snap)
(assert (= $t@366@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@367@01 $Struct)
(assert (=
  self@367@01
  ($struct_set<$Struct> l$havoc$2@247@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@247@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 16
; [then-branch: 327 | $struct_get[Bool]($struct_loc[Int](self@367@01, 2)) | live]
; [else-branch: 327 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 2))) | live]
(push) ; 17
; [then-branch: 327 | $struct_get[Bool]($struct_loc[Int](self@367@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@367@01 2)))
(pop) ; 17
(push) ; 17
; [else-branch: 327 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 18
; [then-branch: 328 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 3))) | live]
; [else-branch: 328 | $struct_get[Bool]($struct_loc[Int](self@367@01, 3)) | live]
(push) ; 19
; [then-branch: 328 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))))
(pop) ; 19
(push) ; 19
; [else-branch: 328 | $struct_get[Bool]($struct_loc[Int](self@367@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@367@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 20
; [then-branch: 329 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 2))) | live]
; [else-branch: 329 | $struct_get[Bool]($struct_loc[Int](self@367@01, 2)) | live]
(push) ; 21
; [then-branch: 329 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 2)))]
(pop) ; 21
(push) ; 21
; [else-branch: 329 | $struct_get[Bool]($struct_loc[Int](self@367@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@367@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 2)))))
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 3)))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))))
(push) ; 16
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@367@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 3)))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 330 | $struct_get[Bool]($struct_loc[Int](self@367@01, 3)) | live]
; [else-branch: 330 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 3))) | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 330 | $struct_get[Bool]($struct_loc[Int](self@367@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@367@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 18
; [then-branch: 331 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 5))) | live]
; [else-branch: 331 | $struct_get[Bool]($struct_loc[Int](self@367@01, 5)) | live]
(push) ; 19
; [then-branch: 331 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 5))))
(pop) ; 19
(push) ; 19
; [else-branch: 331 | $struct_get[Bool]($struct_loc[Int](self@367@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@367@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 5)))))
(pop) ; 17
(push) ; 17
; [else-branch: 330 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@367@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))))
(push) ; 16
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@367@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 4)))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@367@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 2)))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 332 | $struct_get[Bool]($struct_loc[Int](self@367@01, 2)) | live]
; [else-branch: 332 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 2))) | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 332 | $struct_get[Bool]($struct_loc[Int](self@367@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@367@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 18
; [then-branch: 333 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 4))) | live]
; [else-branch: 333 | $struct_get[Bool]($struct_loc[Int](self@367@01, 4)) | live]
(push) ; 19
; [then-branch: 333 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 4))))
(pop) ; 19
(push) ; 19
; [else-branch: 333 | $struct_get[Bool]($struct_loc[Int](self@367@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@367@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 4)))))
(pop) ; 17
(push) ; 17
; [else-branch: 332 | !($struct_get[Bool]($struct_loc[Int](self@367@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@367@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 4)))))))
; Joined path conditions
(push) ; 16
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@367@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 5)))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@367@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@367@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@367@01 5))))))
(pop) ; 15
; [eval] !$succ
; [then-branch: 334 | False | dead]
; [else-branch: 334 | True | live]
(push) ; 15
; [else-branch: 334 | True]
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 323 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
(pop) ; 14
(pop) ; 13
(push) ; 13
; [else-branch: 311 | l$no_reentrant_call@249@01]
(assert l$no_reentrant_call@249@01)
(pop) ; 13
(pop) ; 12
(push) ; 12
; [else-branch: 278 | l$send_fail@243@01]
(assert l$send_fail@243@01)
(pop) ; 12
(pop) ; 11
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 250 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 3)))]
(assert (not
  (or
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))
    (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))))))
(pop) ; 7
; [eval] !(l$is_down && ($struct_get($struct_loc(self, 2)): Bool) || l$is_up && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] l$is_down && ($struct_get($struct_loc(self, 2)): Bool) || l$is_up && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] l$is_down && ($struct_get($struct_loc(self, 2)): Bool)
(push) ; 7
; [then-branch: 335 | !(l$is_down@292@01) | live]
; [else-branch: 335 | l$is_down@292@01 | live]
(push) ; 8
; [then-branch: 335 | !(l$is_down@292@01)]
(assert (not l$is_down@292@01))
(pop) ; 8
(push) ; 8
; [else-branch: 335 | l$is_down@292@01]
(assert l$is_down@292@01)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
; [then-branch: 336 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)) | live]
; [else-branch: 336 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2))) | live]
(push) ; 8
; [then-branch: 336 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2))]
(assert (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2))))
(pop) ; 8
(push) ; 8
; [else-branch: 336 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)))]
(assert (not (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))))
; [eval] l$is_up && ($struct_get($struct_loc(self, 3)): Bool)
(push) ; 9
; [then-branch: 337 | !(l$is_up@293@01) | live]
; [else-branch: 337 | l$is_up@293@01 | live]
(push) ; 10
; [then-branch: 337 | !(l$is_up@293@01)]
(assert (not l$is_up@293@01))
(pop) ; 10
(push) ; 10
; [else-branch: 337 | l$is_up@293@01]
(assert l$is_up@293@01)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or l$is_up@293@01 (not l$is_up@293@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not (or
  (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))
  (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))))))
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
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))
    (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 3)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 338 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 3))) | live]
; [else-branch: 338 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 3)) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 338 | !(l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 3)))]
(assert (not
  (or
    (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))
    (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))))))
; [exec]
; label return
(push) ; 8
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 339 | $out_of_gas@252@01 | live]
; [else-branch: 339 | !($out_of_gas@252@01) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 339 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
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
; [then-branch: 340 | False | dead]
; [else-branch: 340 | True | live]
(push) ; 9
; [else-branch: 340 | True]
(pop) ; 9
; [eval] !$succ
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 341 | True | live]
; [else-branch: 341 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 341 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 10
; [then-branch: 342 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 342 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) | live]
(push) ; 11
; [then-branch: 342 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
(pop) ; 11
(push) ; 11
; [else-branch: 342 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 343 | $struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | dead]
; [else-branch: 343 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 343 | !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@368@01 $Snap)
(assert (= $t@368@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@369@01 $Struct)
(assert (=
  self@369@01
  ($struct_set<$Struct> self@227@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 10
; [then-branch: 344 | $struct_get[Bool]($struct_loc[Int](self@369@01, 2)) | live]
; [else-branch: 344 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 2))) | live]
(push) ; 11
; [then-branch: 344 | $struct_get[Bool]($struct_loc[Int](self@369@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@369@01 2)))
(pop) ; 11
(push) ; 11
; [else-branch: 344 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 12
; [then-branch: 345 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 3))) | live]
; [else-branch: 345 | $struct_get[Bool]($struct_loc[Int](self@369@01, 3)) | live]
(push) ; 13
; [then-branch: 345 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))))
(pop) ; 13
(push) ; 13
; [else-branch: 345 | $struct_get[Bool]($struct_loc[Int](self@369@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@369@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 14
; [then-branch: 346 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 2))) | live]
; [else-branch: 346 | $struct_get[Bool]($struct_loc[Int](self@369@01, 2)) | live]
(push) ; 15
; [then-branch: 346 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 2)))]
(pop) ; 15
(push) ; 15
; [else-branch: 346 | $struct_get[Bool]($struct_loc[Int](self@369@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@369@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 2)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 3)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))))
(push) ; 10
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@369@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 3)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 347 | $struct_get[Bool]($struct_loc[Int](self@369@01, 3)) | dead]
; [else-branch: 347 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 3))) | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 347 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 3))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 2)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 348 | $struct_get[Bool]($struct_loc[Int](self@369@01, 2)) | live]
; [else-branch: 348 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 2))) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 348 | $struct_get[Bool]($struct_loc[Int](self@369@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@369@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 12
; [then-branch: 349 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 4))) | live]
; [else-branch: 349 | $struct_get[Bool]($struct_loc[Int](self@369@01, 4)) | live]
(push) ; 13
; [then-branch: 349 | !($struct_get[Bool]($struct_loc[Int](self@369@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 4))))
(pop) ; 13
(push) ; 13
; [else-branch: 349 | $struct_get[Bool]($struct_loc[Int](self@369@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@369@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@369@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 4)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@369@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 4)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@369@01 2)))
(push) ; 10
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@369@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 5)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@369@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@369@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@369@01 5))))))
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 339 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
(pop) ; 8
; [eval] !$out_of_gas
(push) ; 8
(set-option :timeout 10)
(assert (not $out_of_gas@252@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not $out_of_gas@252@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 350 | !($out_of_gas@252@01) | live]
; [else-branch: 350 | $out_of_gas@252@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 350 | !($out_of_gas@252@01)]
(assert (not $out_of_gas@252@01))
; [exec]
; label end
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 351 | True | live]
; [else-branch: 351 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 351 | True]
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 10
; [then-branch: 352 | !($struct_get[Bool]($struct_loc[Int](self@336@01, 3))) | live]
; [else-branch: 352 | $struct_get[Bool]($struct_loc[Int](self@336@01, 3)) | live]
(push) ; 11
; [then-branch: 352 | !($struct_get[Bool]($struct_loc[Int](self@336@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))))
(pop) ; 11
(push) ; 11
; [else-branch: 352 | $struct_get[Bool]($struct_loc[Int](self@336@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@336@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@336@01 3)))))
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 353 | $struct_get[Bool]($struct_loc[Int](self@336@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3))) | live]
; [else-branch: 353 | !($struct_get[Bool]($struct_loc[Int](self@336@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 353 | $struct_get[Bool]($struct_loc[Int](self@336@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@227@01, 3)))]
(assert (and
  ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
; [eval] ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
; [eval] ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): Int)
; [eval] $struct_loc($old_self, 6)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (and
  ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3)))))
(push) ; 10
(assert (not (=>
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@336@01 6))
    (+
      ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
      ($struct_get<Int> ($struct_loc<Int> self@336@01 1)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@336@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@227@01 3))))
  (=
    ($struct_get<Int> ($struct_loc<Int> self@336@01 6))
    (+
      ($struct_get<Int> ($struct_loc<Int> self@227@01 6))
      ($struct_get<Int> ($struct_loc<Int> self@336@01 1))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@370@01 $Snap)
(assert (= $t@370@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@253@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@371@01 $Struct)
(assert (=
  self@371@01
  ($struct_set<$Struct> self@336@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@336@01 6))
    l$havoc$6@253@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 10
; [then-branch: 354 | $struct_get[Bool]($struct_loc[Int](self@371@01, 2)) | live]
; [else-branch: 354 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 2))) | live]
(push) ; 11
; [then-branch: 354 | $struct_get[Bool]($struct_loc[Int](self@371@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@371@01 2)))
(pop) ; 11
(push) ; 11
; [else-branch: 354 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 12
; [then-branch: 355 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 3))) | live]
; [else-branch: 355 | $struct_get[Bool]($struct_loc[Int](self@371@01, 3)) | live]
(push) ; 13
; [then-branch: 355 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))))
(pop) ; 13
(push) ; 13
; [else-branch: 355 | $struct_get[Bool]($struct_loc[Int](self@371@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@371@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 14
; [then-branch: 356 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 2))) | live]
; [else-branch: 356 | $struct_get[Bool]($struct_loc[Int](self@371@01, 2)) | live]
(push) ; 15
; [then-branch: 356 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 2)))]
(pop) ; 15
(push) ; 15
; [else-branch: 356 | $struct_get[Bool]($struct_loc[Int](self@371@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@371@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 2)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 3)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))))
(push) ; 10
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@371@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 3)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 357 | $struct_get[Bool]($struct_loc[Int](self@371@01, 3)) | live]
; [else-branch: 357 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 3))) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 357 | $struct_get[Bool]($struct_loc[Int](self@371@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@371@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 12
; [then-branch: 358 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 5))) | live]
; [else-branch: 358 | $struct_get[Bool]($struct_loc[Int](self@371@01, 5)) | live]
(push) ; 13
; [then-branch: 358 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 5))))
(pop) ; 13
(push) ; 13
; [else-branch: 358 | $struct_get[Bool]($struct_loc[Int](self@371@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@371@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@371@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 5)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@371@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 5)))))))
(assert ($struct_get<Bool> ($struct_loc<Int> self@371@01 3)))
(push) ; 10
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@371@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 4)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@371@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@371@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 2)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 359 | $struct_get[Bool]($struct_loc[Int](self@371@01, 2)) | dead]
; [else-branch: 359 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 2))) | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 359 | !($struct_get[Bool]($struct_loc[Int](self@371@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@371@01 2))))
(pop) ; 9
; [eval] !$succ
; [then-branch: 360 | False | dead]
; [else-branch: 360 | True | live]
(push) ; 9
; [else-branch: 360 | True]
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 350 | $out_of_gas@252@01]
(assert $out_of_gas@252@01)
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 338 | l$is_down@292@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 2)) || l$is_up@293@01 && $struct_get[Bool]($struct_loc[Int](self@336@01, 3))]
(assert (or
  (and l$is_down@292@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 2)))
  (and l$is_up@293@01 ($struct_get<Bool> ($struct_loc<Int> self@336@01 3)))))
(pop) ; 7
(pop) ; 6
; [eval] !($unwrap(l$flr) == 1)
; [eval] $unwrap(l$flr) == 1
; [eval] $unwrap(l$flr)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($unwrap<Int> l$flr@221@01) 1)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 361 | $unwrap[Int](l$flr@221@01) != 1 | dead]
; [else-branch: 361 | $unwrap[Int](l$flr@221@01) == 1 | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 361 | $unwrap[Int](l$flr@221@01) == 1]
(assert (= ($unwrap<Int> l$flr@221@01) 1))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 245 | $unwrap[Int](l$flr@221@01) == 0]
(assert (= ($unwrap<Int> l$flr@221@01) 0))
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 129 | !($unwrap[Int](l$flr@221@01) == 0 || $unwrap[Int](l$flr@221@01) == 1)]
(assert (not (or (= ($unwrap<Int> l$flr@221@01) 0) (= ($unwrap<Int> l$flr@221@01) 1))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 114 | $struct_get[Int]($struct_loc[Int](msg@223@01, 1)) != $struct_get[Int]($struct_loc[Int](self@287@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@223@01 1))
    ($struct_get<Int> ($struct_loc<Int> self@287@01 1)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$collect_fees ----------
(declare-const $succ@372@01 Bool)
(declare-const $succ@373@01 Bool)
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
(declare-const msg@374@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@375@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@376@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@377@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@378@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@379@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@380@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@381@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@382@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@383@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@384@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@385@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@386@01 Bool)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@387@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@388@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@389@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@390@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@391@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@392@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@393@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@394@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@395@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@396@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@397@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@398@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@399@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@400@01 $Snap)
(assert (= $t@400@01 ($Snap.combine ($Snap.first $t@400@01) ($Snap.second $t@400@01))))
(assert (= ($Snap.first $t@400@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@378@01 0))))
(assert (= ($Snap.second $t@400@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@378@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@401@01 $Snap)
(assert (= $t@401@01 ($Snap.combine ($Snap.first $t@401@01) ($Snap.second $t@401@01))))
(assert (= ($Snap.first $t@401@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@378@01 1))))
(assert (= ($Snap.second $t@401@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@378@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 6)): Int) &&
;   ($struct_get($struct_loc(self, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@402@01 $Snap)
(assert (= $t@402@01 ($Snap.combine ($Snap.first $t@402@01) ($Snap.second $t@402@01))))
(assert (= ($Snap.first $t@402@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@378@01 6))))
(assert (= ($Snap.second $t@402@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@378@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 7)): Int) &&
;   ($struct_get($struct_loc(self, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@403@01 $Snap)
(assert (= $t@403@01 ($Snap.combine ($Snap.first $t@403@01) ($Snap.second $t@403@01))))
(assert (= ($Snap.first $t@403@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@378@01 7))))
(assert (= ($Snap.second $t@403@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@378@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@404@01 $Snap)
(assert (= $t@404@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@405@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(push) ; 4
; [then-branch: 362 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@378@01, 9)), $q0@405@01)) | live]
; [else-branch: 362 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@378@01, 9)), $q0@405@01) | live]
(push) ; 5
; [then-branch: 362 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@378@01, 9)), $q0@405@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@405@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 362 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@378@01, 9)), $q0@405@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@405@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@405@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@405@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@405@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@405@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@405@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@405@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1101@11@1101@345-aux|)))
(assert (forall (($q0@405@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@405@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@405@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@405@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1101@11@1101@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $t@406@01 $Snap)
(assert (= $t@406@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $q0@407@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@407@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@407@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) $q0@407@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1102@11@1102@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@408@01 $Snap)
(assert (= $t@408@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@409@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(push) ; 4
; [then-branch: 363 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@378@01, 10)), $q1@409@01)) | live]
; [else-branch: 363 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@378@01, 10)), $q1@409@01) | live]
(push) ; 5
; [then-branch: 363 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@378@01, 10)), $q1@409@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@409@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 363 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@378@01, 10)), $q1@409@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@409@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@409@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@409@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@409@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@409@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@409@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@409@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1103@11@1103@348-aux|)))
(assert (forall (($q1@409@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@409@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@409@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@409@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1103@11@1103@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $t@410@01 $Snap)
(assert (= $t@410@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $q1@411@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
; [eval] ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@411@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@411@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 10)) $q1@411@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1104@11@1104@256|)))
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
  ($struct_get<Int> ($struct_loc<Int> self@378@01 (- 0 1)))
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
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@414@01 $Snap)
(assert (= $t@414@01 ($Snap.combine ($Snap.first $t@414@01) ($Snap.second $t@414@01))))
(assert (= ($Snap.first $t@414@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@375@01 0))))
(assert (= ($Snap.second $t@414@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@375@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@415@01 $Snap)
(assert (= $t@415@01 ($Snap.combine ($Snap.first $t@415@01) ($Snap.second $t@415@01))))
(assert (= ($Snap.first $t@415@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@375@01 1))))
(assert (= ($Snap.second $t@415@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@375@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@416@01 $Snap)
(assert (= $t@416@01 ($Snap.combine ($Snap.first $t@416@01) ($Snap.second $t@416@01))))
(assert (= ($Snap.first $t@416@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@375@01 2))))
(assert (= ($Snap.second $t@416@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@375@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@417@01 $Snap)
(assert (= $t@417@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@375@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@418@01 $Snap)
(assert (= $t@418@01 ($Snap.combine ($Snap.first $t@418@01) ($Snap.second $t@418@01))))
(assert (= ($Snap.first $t@418@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@375@01 4))))
(assert (= ($Snap.second $t@418@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@375@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@419@01 $Snap)
(assert (= $t@419@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@375@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@420@01 $Snap)
(assert (= $t@420@01 ($Snap.combine ($Snap.first $t@420@01) ($Snap.second $t@420@01))))
(assert (= ($Snap.first $t@420@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@374@01 0))))
(assert (= ($Snap.second $t@420@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@374@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@421@01 $Snap)
(assert (= $t@421@01 ($Snap.combine ($Snap.first $t@421@01) ($Snap.second $t@421@01))))
(assert (= ($Snap.first $t@421@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@374@01 1))))
(assert (= ($Snap.second $t@421@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@374@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@422@01 $Snap)
(assert (= $t@422@01 ($Snap.combine ($Snap.first $t@422@01) ($Snap.second $t@422@01))))
(assert (= ($Snap.first $t@422@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@374@01 2))))
(assert (= ($Snap.second $t@422@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@374@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@423@01 $Snap)
(assert (= $t@423@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@374@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@424@01 $Snap)
(assert (= $t@424@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@374@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $t@425@01 $Snap)
(assert (= $t@425@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $a@426@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
(declare-const $t@427@01 $Snap)
(assert (= $t@427@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 364 | $struct_get[Bool]($struct_loc[Int](self@378@01, 2)) | live]
; [else-branch: 364 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 2))) | live]
(push) ; 4
; [then-branch: 364 | $struct_get[Bool]($struct_loc[Int](self@378@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 2)))
(pop) ; 4
(push) ; 4
; [else-branch: 364 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 5
; [then-branch: 365 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | live]
; [else-branch: 365 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3)) | live]
(push) ; 6
; [then-branch: 365 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 365 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 7
; [then-branch: 366 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 2))) | live]
; [else-branch: 366 | $struct_get[Bool]($struct_loc[Int](self@378@01, 2)) | live]
(push) ; 8
; [then-branch: 366 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 2)))]
(pop) ; 8
(push) ; 8
; [else-branch: 366 | $struct_get[Bool]($struct_loc[Int](self@378@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 2)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
(declare-const $t@428@01 $Snap)
(assert (= $t@428@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 367 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3)) | live]
; [else-branch: 367 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 367 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 5
; [then-branch: 368 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 5))) | live]
; [else-branch: 368 | $struct_get[Bool]($struct_loc[Int](self@378@01, 5)) | live]
(push) ; 6
; [then-branch: 368 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 5))))
(pop) ; 6
(push) ; 6
; [else-branch: 368 | $struct_get[Bool]($struct_loc[Int](self@378@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 5)))))
(pop) ; 4
(push) ; 4
; [else-branch: 367 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@378@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 4))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
(declare-const $t@429@01 $Snap)
(assert (= $t@429@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 369 | $struct_get[Bool]($struct_loc[Int](self@378@01, 2)) | live]
; [else-branch: 369 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 2))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 369 | $struct_get[Bool]($struct_loc[Int](self@378@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 5
; [then-branch: 370 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 4))) | live]
; [else-branch: 370 | $struct_get[Bool]($struct_loc[Int](self@378@01, 4)) | live]
(push) ; 6
; [then-branch: 370 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 4))))
(pop) ; 6
(push) ; 6
; [else-branch: 370 | $struct_get[Bool]($struct_loc[Int](self@378@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 4)))))
(pop) ; 4
(push) ; 4
; [else-branch: 369 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@378@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 4)))))))
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 5))))))
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
(declare-const $t@430@01 $Snap)
(assert (= $t@430@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@374@01 1)) 0))
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
  ($struct_get<Int> ($struct_loc<Int> msg@374@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@378@01 0)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@374@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@378@01 0))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 371 | $struct_get[Int]($struct_loc[Int](msg@374@01, 0)) != $struct_get[Int]($struct_loc[Int](self@378@01, 0)) | live]
; [else-branch: 371 | $struct_get[Int]($struct_loc[Int](msg@374@01, 0)) == $struct_get[Int]($struct_loc[Int](self@378@01, 0)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 371 | $struct_get[Int]($struct_loc[Int](msg@374@01, 0)) != $struct_get[Int]($struct_loc[Int](self@378@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@374@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@378@01 0)))))
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
; [then-branch: 372 | False | dead]
; [else-branch: 372 | True | live]
(push) ; 4
; [else-branch: 372 | True]
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
; [then-branch: 373 | True | live]
; [else-branch: 373 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 373 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 5
; [then-branch: 374 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | live]
; [else-branch: 374 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3)) | live]
(push) ; 6
; [then-branch: 374 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 374 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 375 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | dead]
; [else-branch: 375 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 375 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@431@01 $Snap)
(assert (= $t@431@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@398@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@432@01 $Struct)
(assert (=
  self@432@01
  ($struct_set<$Struct> self@378@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@378@01 6))
    l$havoc$6@398@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 376 | $struct_get[Bool]($struct_loc[Int](self@432@01, 2)) | live]
; [else-branch: 376 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 2))) | live]
(push) ; 6
; [then-branch: 376 | $struct_get[Bool]($struct_loc[Int](self@432@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@432@01 2)))
(pop) ; 6
(push) ; 6
; [else-branch: 376 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 7
; [then-branch: 377 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 3))) | live]
; [else-branch: 377 | $struct_get[Bool]($struct_loc[Int](self@432@01, 3)) | live]
(push) ; 8
; [then-branch: 377 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))))
(pop) ; 8
(push) ; 8
; [else-branch: 377 | $struct_get[Bool]($struct_loc[Int](self@432@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@432@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
; [then-branch: 378 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 2))) | live]
; [else-branch: 378 | $struct_get[Bool]($struct_loc[Int](self@432@01, 2)) | live]
(push) ; 10
; [then-branch: 378 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 2)))]
(pop) ; 10
(push) ; 10
; [else-branch: 378 | $struct_get[Bool]($struct_loc[Int](self@432@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@432@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 2)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 3)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))))
(push) ; 5
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@432@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 3)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 379 | $struct_get[Bool]($struct_loc[Int](self@432@01, 3)) | live]
; [else-branch: 379 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 3))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 379 | $struct_get[Bool]($struct_loc[Int](self@432@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@432@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 7
; [then-branch: 380 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 5))) | live]
; [else-branch: 380 | $struct_get[Bool]($struct_loc[Int](self@432@01, 5)) | live]
(push) ; 8
; [then-branch: 380 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 5))))
(pop) ; 8
(push) ; 8
; [else-branch: 380 | $struct_get[Bool]($struct_loc[Int](self@432@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@432@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 5)))))
(pop) ; 6
(push) ; 6
; [else-branch: 379 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@432@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))))
(push) ; 5
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@432@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 4)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@432@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 2)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 381 | $struct_get[Bool]($struct_loc[Int](self@432@01, 2)) | live]
; [else-branch: 381 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 2))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 381 | $struct_get[Bool]($struct_loc[Int](self@432@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@432@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 7
; [then-branch: 382 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 4))) | live]
; [else-branch: 382 | $struct_get[Bool]($struct_loc[Int](self@432@01, 4)) | live]
(push) ; 8
; [then-branch: 382 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 4))))
(pop) ; 8
(push) ; 8
; [else-branch: 382 | $struct_get[Bool]($struct_loc[Int](self@432@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@432@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 4)))))
(pop) ; 6
(push) ; 6
; [else-branch: 381 | !($struct_get[Bool]($struct_loc[Int](self@432@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@432@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 4)))))))
; Joined path conditions
(push) ; 5
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@432@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 5)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@432@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@432@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@432@01 5))))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 371 | $struct_get[Int]($struct_loc[Int](msg@374@01, 0)) == $struct_get[Int]($struct_loc[Int](self@378@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@374@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@378@01 0))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@374@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@378@01 0))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@374@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@378@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 383 | $struct_get[Int]($struct_loc[Int](msg@374@01, 0)) == $struct_get[Int]($struct_loc[Int](self@378@01, 0)) | live]
; [else-branch: 383 | $struct_get[Int]($struct_loc[Int](msg@374@01, 0)) != $struct_get[Int]($struct_loc[Int](self@378@01, 0)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 383 | $struct_get[Int]($struct_loc[Int](msg@374@01, 0)) == $struct_get[Int]($struct_loc[Int](self@378@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@374@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@378@01 0))))
; [eval] ($struct_get($struct_loc(self, 6)): Int) < ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
; [then-branch: 384 | False | dead]
; [else-branch: 384 | True | live]
(push) ; 4
; [else-branch: 384 | True]
(pop) ; 4
; [eval] !(($struct_get($struct_loc(self, 6)): Int) < ($struct_get($struct_loc(self, 6)): Int))
; [eval] ($struct_get($struct_loc(self, 6)): Int) < ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 385 | True | live]
; [else-branch: 385 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 385 | True]
; [exec]
; self := ($struct_set(self, 9, ($map_set(($struct_get($struct_loc(self, 9)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(self, 6)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 9, ($map_set(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 6)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 6)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@433@01 $Struct)
(assert (=
  self@433@01
  ($struct_set<$Struct> self@378@01 9 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) ($struct_get<Int> ($struct_loc<Int> msg@374@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@378@01 9)) ($struct_get<Int> ($struct_loc<Int> msg@374@01 0)))
    ($struct_get<Int> ($struct_loc<Int> self@378@01 6)))))))
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) -
;   ($struct_get($struct_loc(self, 6)): Int)): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) - ($struct_get($struct_loc(self, 6)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) - ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@434@01 $Struct)
(assert (= self@434@01 ($struct_set<$Struct> self@433@01 6 0)))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 5
; [then-branch: 386 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3))) | live]
; [else-branch: 386 | $struct_get[Bool]($struct_loc[Int](self@434@01, 3)) | live]
(push) ; 6
; [then-branch: 386 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))))
(pop) ; 6
(push) ; 6
; [else-branch: 386 | $struct_get[Bool]($struct_loc[Int](self@434@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@434@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3)))))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 387 | $struct_get[Bool]($struct_loc[Int](self@434@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | dead]
; [else-branch: 387 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 387 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 5
; [then-branch: 388 | $struct_get[Bool]($struct_loc[Int](self@434@01, 2)) | live]
; [else-branch: 388 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 2))) | live]
(push) ; 6
; [then-branch: 388 | $struct_get[Bool]($struct_loc[Int](self@434@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@434@01 2)))
(pop) ; 6
(push) ; 6
; [else-branch: 388 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 7
; [then-branch: 389 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3))) | live]
; [else-branch: 389 | $struct_get[Bool]($struct_loc[Int](self@434@01, 3)) | live]
(push) ; 8
; [then-branch: 389 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))))
(pop) ; 8
(push) ; 8
; [else-branch: 389 | $struct_get[Bool]($struct_loc[Int](self@434@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@434@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
; [then-branch: 390 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 2))) | live]
; [else-branch: 390 | $struct_get[Bool]($struct_loc[Int](self@434@01, 2)) | live]
(push) ; 10
; [then-branch: 390 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 2)))]
(pop) ; 10
(push) ; 10
; [else-branch: 390 | $struct_get[Bool]($struct_loc[Int](self@434@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@434@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 2)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 2)))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 2)))))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))))
(push) ; 5
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@434@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 391 | $struct_get[Bool]($struct_loc[Int](self@434@01, 3)) | live]
; [else-branch: 391 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 391 | $struct_get[Bool]($struct_loc[Int](self@434@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@434@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 7
; [then-branch: 392 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 5))) | live]
; [else-branch: 392 | $struct_get[Bool]($struct_loc[Int](self@434@01, 5)) | live]
(push) ; 8
; [then-branch: 392 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 5))))
(pop) ; 8
(push) ; 8
; [else-branch: 392 | $struct_get[Bool]($struct_loc[Int](self@434@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@434@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 5)))))
(pop) ; 6
(push) ; 6
; [else-branch: 391 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@434@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))))
(push) ; 5
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 4)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 2)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 393 | $struct_get[Bool]($struct_loc[Int](self@434@01, 2)) | live]
; [else-branch: 393 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 2))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 393 | $struct_get[Bool]($struct_loc[Int](self@434@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@434@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 7
; [then-branch: 394 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 4))) | live]
; [else-branch: 394 | $struct_get[Bool]($struct_loc[Int](self@434@01, 4)) | live]
(push) ; 8
; [then-branch: 394 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 4))))
(pop) ; 8
(push) ; 8
; [else-branch: 394 | $struct_get[Bool]($struct_loc[Int](self@434@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@434@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 4)))))
(pop) ; 6
(push) ; 6
; [else-branch: 393 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@434@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 4)))))))
; Joined path conditions
(push) ; 5
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 5)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@434@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 5))))))
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$send_fail@388@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not l$send_fail@388@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 395 | l$send_fail@388@01 | live]
; [else-branch: 395 | !(l$send_fail@388@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 395 | l$send_fail@388@01]
(assert l$send_fail@388@01)
; [exec]
; inhale acc($failed(($struct_get($struct_loc(msg, 0)): Int)), write)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const $t@435@01 $Snap)
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
; [then-branch: 396 | False | dead]
; [else-branch: 396 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 396 | True]
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
; [then-branch: 397 | True | live]
; [else-branch: 397 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 397 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 7
; [then-branch: 398 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | live]
; [else-branch: 398 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3)) | live]
(push) ; 8
; [then-branch: 398 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))
(pop) ; 8
(push) ; 8
; [else-branch: 398 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 399 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | dead]
; [else-branch: 399 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 399 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@436@01 $Snap)
(assert (= $t@436@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@398@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@437@01 $Struct)
(assert (=
  self@437@01
  ($struct_set<$Struct> self@378@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@378@01 6))
    l$havoc$6@398@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 7
; [then-branch: 400 | $struct_get[Bool]($struct_loc[Int](self@437@01, 2)) | live]
; [else-branch: 400 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 2))) | live]
(push) ; 8
; [then-branch: 400 | $struct_get[Bool]($struct_loc[Int](self@437@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@437@01 2)))
(pop) ; 8
(push) ; 8
; [else-branch: 400 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
; [then-branch: 401 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 3))) | live]
; [else-branch: 401 | $struct_get[Bool]($struct_loc[Int](self@437@01, 3)) | live]
(push) ; 10
; [then-branch: 401 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))))
(pop) ; 10
(push) ; 10
; [else-branch: 401 | $struct_get[Bool]($struct_loc[Int](self@437@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@437@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 11
; [then-branch: 402 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 2))) | live]
; [else-branch: 402 | $struct_get[Bool]($struct_loc[Int](self@437@01, 2)) | live]
(push) ; 12
; [then-branch: 402 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 2)))]
(pop) ; 12
(push) ; 12
; [else-branch: 402 | $struct_get[Bool]($struct_loc[Int](self@437@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@437@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 2)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 3)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))))
(push) ; 7
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@437@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 3)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 403 | $struct_get[Bool]($struct_loc[Int](self@437@01, 3)) | live]
; [else-branch: 403 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 3))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 403 | $struct_get[Bool]($struct_loc[Int](self@437@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@437@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 9
; [then-branch: 404 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 5))) | live]
; [else-branch: 404 | $struct_get[Bool]($struct_loc[Int](self@437@01, 5)) | live]
(push) ; 10
; [then-branch: 404 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 5))))
(pop) ; 10
(push) ; 10
; [else-branch: 404 | $struct_get[Bool]($struct_loc[Int](self@437@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@437@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 5)))))
(pop) ; 8
(push) ; 8
; [else-branch: 403 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@437@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))))
(push) ; 7
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@437@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 4)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@437@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 2)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 405 | $struct_get[Bool]($struct_loc[Int](self@437@01, 2)) | live]
; [else-branch: 405 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 2))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 405 | $struct_get[Bool]($struct_loc[Int](self@437@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@437@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 9
; [then-branch: 406 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 4))) | live]
; [else-branch: 406 | $struct_get[Bool]($struct_loc[Int](self@437@01, 4)) | live]
(push) ; 10
; [then-branch: 406 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 4))))
(pop) ; 10
(push) ; 10
; [else-branch: 406 | $struct_get[Bool]($struct_loc[Int](self@437@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@437@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 4)))))
(pop) ; 8
(push) ; 8
; [else-branch: 405 | !($struct_get[Bool]($struct_loc[Int](self@437@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@437@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 4)))))))
; Joined path conditions
(push) ; 7
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@437@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 5)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@437@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@437@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@437@01 5))))))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 395 | !(l$send_fail@388@01)]
(assert (not l$send_fail@388@01))
(pop) ; 5
; [eval] !l$send_fail
(push) ; 5
(set-option :timeout 10)
(assert (not l$send_fail@388@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$send_fail@388@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 407 | !(l$send_fail@388@01) | live]
; [else-branch: 407 | l$send_fail@388@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 407 | !(l$send_fail@388@01)]
(assert (not l$send_fail@388@01))
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
(declare-const $t@438@01 $Snap)
(assert (= $t@438@01 ($Snap.combine ($Snap.first $t@438@01) ($Snap.second $t@438@01))))
(assert (= ($Snap.first $t@438@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@392@01 0))))
(assert (= ($Snap.second $t@438@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@392@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@439@01 $Snap)
(assert (= $t@439@01 ($Snap.combine ($Snap.first $t@439@01) ($Snap.second $t@439@01))))
(assert (= ($Snap.first $t@439@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@392@01 1))))
(assert (= ($Snap.second $t@439@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@392@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 6)): Int) &&
;   ($struct_get($struct_loc(self, 6)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@440@01 $Snap)
(assert (= $t@440@01 ($Snap.combine ($Snap.first $t@440@01) ($Snap.second $t@440@01))))
(assert (= ($Snap.first $t@440@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 6)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@392@01 6))))
(assert (= ($Snap.second $t@440@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 6)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@392@01 6))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 7)): Int) &&
;   ($struct_get($struct_loc(self, 7)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@441@01 $Snap)
(assert (= $t@441@01 ($Snap.combine ($Snap.first $t@441@01) ($Snap.second $t@441@01))))
(assert (= ($Snap.first $t@441@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 7)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@392@01 7))))
(assert (= ($Snap.second $t@441@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 7)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 7)): Int)
; [eval] $struct_loc(self, 7)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@392@01 7))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@442@01 $Snap)
(assert (= $t@442@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@443@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(push) ; 7
; [then-branch: 408 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@392@01, 9)), $q0@443@01)) | live]
; [else-branch: 408 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@392@01, 9)), $q0@443@01) | live]
(push) ; 8
; [then-branch: 408 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@392@01, 9)), $q0@443@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@443@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 408 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@392@01, 9)), $q0@443@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@443@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@443@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@443@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@443@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@443@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@443@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@443@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1178@11@1178@345-aux|)))
(assert (forall (($q0@443@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@443@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@443@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@443@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1178@11@1178@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $t@444@01 $Snap)
(assert (= $t@444@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int))
(declare-const $q0@445@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_sum(($struct_get($struct_loc(self, 9)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@445@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@445@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $q0@445@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1179@11@1179@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@446@01 $Snap)
(assert (= $t@446@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@447@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(push) ; 7
; [then-branch: 409 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@392@01, 10)), $q1@447@01)) | live]
; [else-branch: 409 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@392@01, 10)), $q1@447@01) | live]
(push) ; 8
; [then-branch: 409 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@392@01, 10)), $q1@447@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@447@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 409 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@392@01, 10)), $q1@447@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@447@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@447@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@447@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@447@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@447@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@447@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@447@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1180@11@1180@348-aux|)))
(assert (forall (($q1@447@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@447@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@447@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@447@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1180@11@1180@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $t@448@01 $Snap)
(assert (= $t@448@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int))
(declare-const $q1@449@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 10)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
; [eval] ($map_sum(($struct_get($struct_loc(self, 10)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 10)): $Map[Int, Int])
; [eval] $struct_loc(self, 10)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@449@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@449@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 10)) $q1@449@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1181@11@1181@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@450@01 $Snap)
(assert (= $t@450@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@392@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $t@451@01 $Snap)
(assert (= $t@451@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int))
(declare-const $a@452@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 9)): $Map[Int, Int])
; [eval] $struct_loc(self, 9)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 9)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 9)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 9)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@452@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $a@452@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@434@01 9)) $a@452@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@392@01 9)) $a@452@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstate_machine.vy.vpr@1184@11@1184@259|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
(declare-const $t@453@01 $Snap)
(assert (= $t@453@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 6
; [then-branch: 410 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2)) | live]
; [else-branch: 410 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2))) | live]
(push) ; 7
; [then-branch: 410 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2)))
(pop) ; 7
(push) ; 7
; [else-branch: 410 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 8
; [then-branch: 411 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3))) | live]
; [else-branch: 411 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3)) | live]
(push) ; 9
; [then-branch: 411 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))))
(pop) ; 9
(push) ; 9
; [else-branch: 411 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 10
; [then-branch: 412 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2))) | live]
; [else-branch: 412 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2)) | live]
(push) ; 11
; [then-branch: 412 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2)))]
(pop) ; 11
(push) ; 11
; [else-branch: 412 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))
        ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
(declare-const $t@454@01 $Snap)
(assert (= $t@454@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 413 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3)) | live]
; [else-branch: 413 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 413 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 8
; [then-branch: 414 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 5))) | live]
; [else-branch: 414 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 5)) | live]
(push) ; 9
; [then-branch: 414 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 5))))
(pop) ; 9
(push) ; 9
; [else-branch: 414 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 5)))))
(pop) ; 7
(push) ; 7
; [else-branch: 413 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 4))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
(declare-const $t@455@01 $Snap)
(assert (= $t@455@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 415 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2)) | live]
; [else-branch: 415 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 415 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 8
; [then-branch: 416 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 4))) | live]
; [else-branch: 416 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 4)) | live]
(push) ; 9
; [then-branch: 416 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 4))))
(pop) ; 9
(push) ; 9
; [else-branch: 416 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 4)))))
(pop) ; 7
(push) ; 7
; [else-branch: 415 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 4)))))))
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 5))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@394@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not l$no_reentrant_call@394@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 417 | l$no_reentrant_call@394@01 | live]
; [else-branch: 417 | !(l$no_reentrant_call@394@01) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 417 | l$no_reentrant_call@394@01]
(assert l$no_reentrant_call@394@01)
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
(assert (not (not $out_of_gas@397@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@397@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 418 | $out_of_gas@397@01 | live]
; [else-branch: 418 | !($out_of_gas@397@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 418 | $out_of_gas@397@01]
(assert $out_of_gas@397@01)
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
; [then-branch: 419 | False | dead]
; [else-branch: 419 | True | live]
(push) ; 8
; [else-branch: 419 | True]
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
; [then-branch: 420 | True | live]
; [else-branch: 420 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 420 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
; [then-branch: 421 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | live]
; [else-branch: 421 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3)) | live]
(push) ; 10
; [then-branch: 421 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))
(pop) ; 10
(push) ; 10
; [else-branch: 421 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 422 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | dead]
; [else-branch: 422 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 422 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@456@01 $Snap)
(assert (= $t@456@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@398@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@457@01 $Struct)
(assert (=
  self@457@01
  ($struct_set<$Struct> self@378@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@378@01 6))
    l$havoc$6@398@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 423 | $struct_get[Bool]($struct_loc[Int](self@457@01, 2)) | live]
; [else-branch: 423 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 2))) | live]
(push) ; 10
; [then-branch: 423 | $struct_get[Bool]($struct_loc[Int](self@457@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@457@01 2)))
(pop) ; 10
(push) ; 10
; [else-branch: 423 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 11
; [then-branch: 424 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 3))) | live]
; [else-branch: 424 | $struct_get[Bool]($struct_loc[Int](self@457@01, 3)) | live]
(push) ; 12
; [then-branch: 424 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))))
(pop) ; 12
(push) ; 12
; [else-branch: 424 | $struct_get[Bool]($struct_loc[Int](self@457@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@457@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 13
; [then-branch: 425 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 2))) | live]
; [else-branch: 425 | $struct_get[Bool]($struct_loc[Int](self@457@01, 2)) | live]
(push) ; 14
; [then-branch: 425 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 2)))]
(pop) ; 14
(push) ; 14
; [else-branch: 425 | $struct_get[Bool]($struct_loc[Int](self@457@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@457@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 2)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 3)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))))
(push) ; 9
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@457@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 3)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 426 | $struct_get[Bool]($struct_loc[Int](self@457@01, 3)) | live]
; [else-branch: 426 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 3))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 426 | $struct_get[Bool]($struct_loc[Int](self@457@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@457@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 11
; [then-branch: 427 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 5))) | live]
; [else-branch: 427 | $struct_get[Bool]($struct_loc[Int](self@457@01, 5)) | live]
(push) ; 12
; [then-branch: 427 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 5))))
(pop) ; 12
(push) ; 12
; [else-branch: 427 | $struct_get[Bool]($struct_loc[Int](self@457@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@457@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 5)))))
(pop) ; 10
(push) ; 10
; [else-branch: 426 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@457@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))))
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@457@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 4)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@457@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 2)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 428 | $struct_get[Bool]($struct_loc[Int](self@457@01, 2)) | live]
; [else-branch: 428 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 2))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 428 | $struct_get[Bool]($struct_loc[Int](self@457@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@457@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 11
; [then-branch: 429 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 4))) | live]
; [else-branch: 429 | $struct_get[Bool]($struct_loc[Int](self@457@01, 4)) | live]
(push) ; 12
; [then-branch: 429 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 4))))
(pop) ; 12
(push) ; 12
; [else-branch: 429 | $struct_get[Bool]($struct_loc[Int](self@457@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@457@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 4)))))
(pop) ; 10
(push) ; 10
; [else-branch: 428 | !($struct_get[Bool]($struct_loc[Int](self@457@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@457@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 4)))))))
; Joined path conditions
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@457@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 5)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@457@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@457@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@457@01 5))))))
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 418 | !($out_of_gas@397@01)]
(assert (not $out_of_gas@397@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@397@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@397@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 430 | !($out_of_gas@397@01) | live]
; [else-branch: 430 | $out_of_gas@397@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 430 | !($out_of_gas@397@01)]
(assert (not $out_of_gas@397@01))
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
; [then-branch: 431 | True | live]
; [else-branch: 431 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 431 | True]
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
; [then-branch: 432 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3))) | live]
; [else-branch: 432 | $struct_get[Bool]($struct_loc[Int](self@434@01, 3)) | live]
(push) ; 10
; [then-branch: 432 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))))
(pop) ; 10
(push) ; 10
; [else-branch: 432 | $struct_get[Bool]($struct_loc[Int](self@434@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@434@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 433 | $struct_get[Bool]($struct_loc[Int](self@434@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@434@01, 3))) | dead]
; [else-branch: 433 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@434@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 433 | !($struct_get[Bool]($struct_loc[Int](self@434@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@434@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@434@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@458@01 $Snap)
(assert (= $t@458@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@398@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@459@01 $Struct)
(assert (=
  self@459@01
  ($struct_set<$Struct> self@434@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@434@01 6))
    l$havoc$6@398@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 434 | $struct_get[Bool]($struct_loc[Int](self@459@01, 2)) | live]
; [else-branch: 434 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 2))) | live]
(push) ; 10
; [then-branch: 434 | $struct_get[Bool]($struct_loc[Int](self@459@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@459@01 2)))
(pop) ; 10
(push) ; 10
; [else-branch: 434 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 11
; [then-branch: 435 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 3))) | live]
; [else-branch: 435 | $struct_get[Bool]($struct_loc[Int](self@459@01, 3)) | live]
(push) ; 12
; [then-branch: 435 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))))
(pop) ; 12
(push) ; 12
; [else-branch: 435 | $struct_get[Bool]($struct_loc[Int](self@459@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@459@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 13
; [then-branch: 436 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 2))) | live]
; [else-branch: 436 | $struct_get[Bool]($struct_loc[Int](self@459@01, 2)) | live]
(push) ; 14
; [then-branch: 436 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 2)))]
(pop) ; 14
(push) ; 14
; [else-branch: 436 | $struct_get[Bool]($struct_loc[Int](self@459@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@459@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 2)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 3)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))))
(push) ; 9
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@459@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 3)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 437 | $struct_get[Bool]($struct_loc[Int](self@459@01, 3)) | live]
; [else-branch: 437 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 3))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 437 | $struct_get[Bool]($struct_loc[Int](self@459@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@459@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 11
; [then-branch: 438 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 5))) | live]
; [else-branch: 438 | $struct_get[Bool]($struct_loc[Int](self@459@01, 5)) | live]
(push) ; 12
; [then-branch: 438 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 5))))
(pop) ; 12
(push) ; 12
; [else-branch: 438 | $struct_get[Bool]($struct_loc[Int](self@459@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@459@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 5)))))
(pop) ; 10
(push) ; 10
; [else-branch: 437 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@459@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))))
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@459@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 4)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@459@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 2)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 439 | $struct_get[Bool]($struct_loc[Int](self@459@01, 2)) | live]
; [else-branch: 439 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 2))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 439 | $struct_get[Bool]($struct_loc[Int](self@459@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@459@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 11
; [then-branch: 440 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 4))) | live]
; [else-branch: 440 | $struct_get[Bool]($struct_loc[Int](self@459@01, 4)) | live]
(push) ; 12
; [then-branch: 440 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 4))))
(pop) ; 12
(push) ; 12
; [else-branch: 440 | $struct_get[Bool]($struct_loc[Int](self@459@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@459@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 4)))))
(pop) ; 10
(push) ; 10
; [else-branch: 439 | !($struct_get[Bool]($struct_loc[Int](self@459@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@459@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 4)))))))
; Joined path conditions
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@459@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 5)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@459@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@459@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@459@01 5))))))
(pop) ; 8
; [eval] !$succ
; [then-branch: 441 | False | dead]
; [else-branch: 441 | True | live]
(push) ; 8
; [else-branch: 441 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 430 | $out_of_gas@397@01]
(assert $out_of_gas@397@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 417 | !(l$no_reentrant_call@394@01)]
(assert (not l$no_reentrant_call@394@01))
(pop) ; 6
; [eval] !l$no_reentrant_call
(push) ; 6
(set-option :timeout 10)
(assert (not l$no_reentrant_call@394@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@394@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 442 | !(l$no_reentrant_call@394@01) | live]
; [else-branch: 442 | l$no_reentrant_call@394@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 442 | !(l$no_reentrant_call@394@01)]
(assert (not l$no_reentrant_call@394@01))
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
(assert (not (not $out_of_gas@397@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@397@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 443 | $out_of_gas@397@01 | live]
; [else-branch: 443 | !($out_of_gas@397@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 443 | $out_of_gas@397@01]
(assert $out_of_gas@397@01)
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
; [then-branch: 444 | False | dead]
; [else-branch: 444 | True | live]
(push) ; 8
; [else-branch: 444 | True]
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
; [then-branch: 445 | True | live]
; [else-branch: 445 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 445 | True]
; [exec]
; assert old(($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int))
; [eval] old(($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
; [then-branch: 446 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | live]
; [else-branch: 446 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3)) | live]
(push) ; 10
; [then-branch: 446 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))
(pop) ; 10
(push) ; 10
; [else-branch: 446 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 447 | $struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))) | dead]
; [else-branch: 447 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 447 | !($struct_get[Bool]($struct_loc[Int](self@378@01, 3)) && !($struct_get[Bool]($struct_loc[Int](self@378@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> self@378@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@460@01 $Snap)
(assert (= $t@460@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@398@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@461@01 $Struct)
(assert (=
  self@461@01
  ($struct_set<$Struct> self@378@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> self@378@01 6))
    l$havoc$6@398@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 448 | $struct_get[Bool]($struct_loc[Int](self@461@01, 2)) | live]
; [else-branch: 448 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 2))) | live]
(push) ; 10
; [then-branch: 448 | $struct_get[Bool]($struct_loc[Int](self@461@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@461@01 2)))
(pop) ; 10
(push) ; 10
; [else-branch: 448 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 11
; [then-branch: 449 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 3))) | live]
; [else-branch: 449 | $struct_get[Bool]($struct_loc[Int](self@461@01, 3)) | live]
(push) ; 12
; [then-branch: 449 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))))
(pop) ; 12
(push) ; 12
; [else-branch: 449 | $struct_get[Bool]($struct_loc[Int](self@461@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@461@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 13
; [then-branch: 450 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 2))) | live]
; [else-branch: 450 | $struct_get[Bool]($struct_loc[Int](self@461@01, 2)) | live]
(push) ; 14
; [then-branch: 450 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 2)))]
(pop) ; 14
(push) ; 14
; [else-branch: 450 | $struct_get[Bool]($struct_loc[Int](self@461@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@461@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 2)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 3)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))))
(push) ; 9
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@461@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 3)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 451 | $struct_get[Bool]($struct_loc[Int](self@461@01, 3)) | live]
; [else-branch: 451 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 3))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 451 | $struct_get[Bool]($struct_loc[Int](self@461@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@461@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 11
; [then-branch: 452 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 5))) | live]
; [else-branch: 452 | $struct_get[Bool]($struct_loc[Int](self@461@01, 5)) | live]
(push) ; 12
; [then-branch: 452 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 5))))
(pop) ; 12
(push) ; 12
; [else-branch: 452 | $struct_get[Bool]($struct_loc[Int](self@461@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@461@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 5)))))
(pop) ; 10
(push) ; 10
; [else-branch: 451 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@461@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))))
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@461@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 4)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@461@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 2)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 453 | $struct_get[Bool]($struct_loc[Int](self@461@01, 2)) | live]
; [else-branch: 453 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 2))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 453 | $struct_get[Bool]($struct_loc[Int](self@461@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@461@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 11
; [then-branch: 454 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 4))) | live]
; [else-branch: 454 | $struct_get[Bool]($struct_loc[Int](self@461@01, 4)) | live]
(push) ; 12
; [then-branch: 454 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 4))))
(pop) ; 12
(push) ; 12
; [else-branch: 454 | $struct_get[Bool]($struct_loc[Int](self@461@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@461@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 4)))))
(pop) ; 10
(push) ; 10
; [else-branch: 453 | !($struct_get[Bool]($struct_loc[Int](self@461@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@461@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 4)))))))
; Joined path conditions
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@461@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 5)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@461@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@461@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@461@01 5))))))
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 443 | !($out_of_gas@397@01)]
(assert (not $out_of_gas@397@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@397@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@397@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 455 | !($out_of_gas@397@01) | live]
; [else-branch: 455 | $out_of_gas@397@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 455 | !($out_of_gas@397@01)]
(assert (not $out_of_gas@397@01))
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
; [then-branch: 456 | True | live]
; [else-branch: 456 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 456 | True]
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) &&
;   !($struct_get($struct_loc($old_self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 6)): Int) ==
;   ($struct_get($struct_loc($old_self, 6)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool) ==> ($struct_get($struct_loc(self, 6)): Int) == ($struct_get($struct_loc($old_self, 6)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
; [then-branch: 457 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3))) | live]
; [else-branch: 457 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3)) | live]
(push) ; 10
; [then-branch: 457 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))))
(pop) ; 10
(push) ; 10
; [else-branch: 457 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3)))
; [eval] !($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 3)): Bool)
; [eval] $struct_loc($old_self, 3)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3)))))
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 458 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3)) && !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3))) | dead]
; [else-branch: 458 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3)) && !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3)))) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 458 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3)) && !($struct_get[Bool]($struct_loc[Int](l$havoc$2@392@01, 3))))]
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not
  (and
    ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))
    (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@392@01 3))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@462@01 $Snap)
(assert (= $t@462@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@398@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 6, ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 6)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 6)): Int)
; [eval] $struct_loc(self, 6)
(declare-const self@463@01 $Struct)
(assert (=
  self@463@01
  ($struct_set<$Struct> l$havoc$2@392@01 6 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@392@01 6))
    l$havoc$6@398@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ||
;   ($struct_get($struct_loc(self, 3)): Bool) &&
;   !(($struct_get($struct_loc(self, 2)): Bool) &&
;   ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) || ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 459 | $struct_get[Bool]($struct_loc[Int](self@463@01, 2)) | live]
; [else-branch: 459 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 2))) | live]
(push) ; 10
; [then-branch: 459 | $struct_get[Bool]($struct_loc[Int](self@463@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@463@01 2)))
(pop) ; 10
(push) ; 10
; [else-branch: 459 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))))
; [eval] ($struct_get($struct_loc(self, 3)): Bool) && !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 11
; [then-branch: 460 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 3))) | live]
; [else-branch: 460 | $struct_get[Bool]($struct_loc[Int](self@463@01, 3)) | live]
(push) ; 12
; [then-branch: 460 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))))
(pop) ; 12
(push) ; 12
; [else-branch: 460 | $struct_get[Bool]($struct_loc[Int](self@463@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@463@01 3)))
; [eval] !(($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool))
; [eval] ($struct_get($struct_loc(self, 2)): Bool) && ($struct_get($struct_loc(self, 3)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 13
; [then-branch: 461 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 2))) | live]
; [else-branch: 461 | $struct_get[Bool]($struct_loc[Int](self@463@01, 2)) | live]
(push) ; 14
; [then-branch: 461 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 2)))]
(pop) ; 14
(push) ; 14
; [else-branch: 461 | $struct_get[Bool]($struct_loc[Int](self@463@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@463@01 2)))
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
  (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 2)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
      (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 2)))))))
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
  (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 3)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 2)))
  (and
    (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 2)))
    (=>
      ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
        (or
          ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
          (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))))))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
      (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 3)))))))
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 2)))
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))))
(push) ; 9
(assert (not (or
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
    (not
      (and
        ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
        ($struct_get<Bool> ($struct_loc<Int> self@463@01 3)))))))
; [exec]
; assert ($struct_get($struct_loc(self, 3)): Bool) ==>
;   ($struct_get($struct_loc(self, 5)): Bool) &&
;   !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool) ==> ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 3)): Bool)
; [eval] $struct_loc(self, 3)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 3)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 462 | $struct_get[Bool]($struct_loc[Int](self@463@01, 3)) | live]
; [else-branch: 462 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 3))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 462 | $struct_get[Bool]($struct_loc[Int](self@463@01, 3))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@463@01 3)))
; [eval] ($struct_get($struct_loc(self, 5)): Bool) && !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(push) ; 11
; [then-branch: 463 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 5))) | live]
; [else-branch: 463 | $struct_get[Bool]($struct_loc[Int](self@463@01, 5)) | live]
(push) ; 12
; [then-branch: 463 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 5)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 5))))
(pop) ; 12
(push) ; 12
; [else-branch: 463 | $struct_get[Bool]($struct_loc[Int](self@463@01, 5))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@463@01 5)))
; [eval] !($struct_get($struct_loc(self, 4)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 5))
  (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 5)))))
(pop) ; 10
(push) ; 10
; [else-branch: 462 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 3)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@463@01 5))
      (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 5)))))))
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 3)))
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))))
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@463@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 4)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 3))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@463@01 5))
    (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 4))))))
; [exec]
; assert ($struct_get($struct_loc(self, 2)): Bool) ==>
;   ($struct_get($struct_loc(self, 4)): Bool) &&
;   !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool) ==> ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 2)): Bool)
; [eval] $struct_loc(self, 2)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 2)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 464 | $struct_get[Bool]($struct_loc[Int](self@463@01, 2)) | live]
; [else-branch: 464 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 2))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 464 | $struct_get[Bool]($struct_loc[Int](self@463@01, 2))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@463@01 2)))
; [eval] ($struct_get($struct_loc(self, 4)): Bool) && !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 4)): Bool)
; [eval] $struct_loc(self, 4)
(push) ; 11
; [then-branch: 465 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 4))) | live]
; [else-branch: 465 | $struct_get[Bool]($struct_loc[Int](self@463@01, 4)) | live]
(push) ; 12
; [then-branch: 465 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 4)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 4))))
(pop) ; 12
(push) ; 12
; [else-branch: 465 | $struct_get[Bool]($struct_loc[Int](self@463@01, 4))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@463@01 4)))
; [eval] !($struct_get($struct_loc(self, 5)): Bool)
; [eval] ($struct_get($struct_loc(self, 5)): Bool)
; [eval] $struct_loc(self, 5)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 4))
  (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 4)))))
(pop) ; 10
(push) ; 10
; [else-branch: 464 | !($struct_get[Bool]($struct_loc[Int](self@463@01, 2)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@463@01 4))
      (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 4)))))))
; Joined path conditions
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@463@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 5)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@463@01 2))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@463@01 4))
    (not ($struct_get<Bool> ($struct_loc<Int> self@463@01 5))))))
(pop) ; 8
; [eval] !$succ
; [then-branch: 466 | False | dead]
; [else-branch: 466 | True | live]
(push) ; 8
; [else-branch: 466 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 455 | $out_of_gas@397@01]
(assert $out_of_gas@397@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 442 | l$no_reentrant_call@394@01]
(assert l$no_reentrant_call@394@01)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 407 | l$send_fail@388@01]
(assert l$send_fail@388@01)
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 383 | $struct_get[Int]($struct_loc[Int](msg@374@01, 0)) != $struct_get[Int]($struct_loc[Int](self@378@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@374@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@378@01 0)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
