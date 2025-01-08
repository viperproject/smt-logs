(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:09:17
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
(declare-fun $accessible$update_time%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$update_time_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$update_number%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$update_number_0%trigger ($Snap Int Int Int) Bool)
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
  :qid |quant-u-882|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-883|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-888|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-889|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-884|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-885|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-890|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-891|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-886|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-887|)))
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
  :qid |quant-u-892|)))
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
  :qid |quant-u-893|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@610@11@610@354-aux|)))
(assert (forall (($q0@13@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@610@11@610@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@611@11@611@262|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@612@11@612@354-aux|)))
(assert (forall (($q1@17@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@612@11@612@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@613@11@613@262|)))
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
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(assert (= ($Snap.first $t@21@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0))))
(assert (= ($Snap.second $t@21@01) $Snap.unit))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@619@11@619@354-aux|)))
(assert (forall (($q0@26@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@619@11@619@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@620@11@620@262|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@621@11@621@354-aux|)))
(assert (forall (($q1@30@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@621@11@621@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@622@11@622@262|)))
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
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0))))
(assert (= ($Snap.second $t@34@01) $Snap.unit))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@628@11@628@354-aux|)))
(assert (forall (($q0@39@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@628@11@628@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@629@11@629@262|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@630@11@630@354-aux|)))
(assert (forall (($q1@43@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@630@11@630@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@631@11@631@262|)))
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
; inhale ($struct_get($struct_loc($self$0, 0)): Int) >= 0
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (>= ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 0)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 1)): Int) >= 0
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (>= ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1)) 0))
; State saturation: after inhale
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@642@11@642@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 0)): Int) >= 0
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (>= ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 1)): Int) >= 0
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (>= ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@62@01 Int)
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
(assert (forall (($a@62@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $a@62@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $a@62@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $a@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@645@11@645@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, 0)): Int) >= 0
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
(assert (>= ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, 1)): Int) >= 0
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (>= ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; assert ($struct_get($struct_loc($self$2, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$2, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
; [exec]
; assert ($struct_get($struct_loc($self$2, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$2, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
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
(declare-const $self$0@65@01 $Struct)
; [exec]
; var $$contracts$0: $Map[Int, $Struct]
(declare-const $$contracts$0@66@01 $Map<Int~_$Struct>)
; [exec]
; var $self$1: $Struct
(declare-const $self$1@67@01 $Struct)
; [exec]
; var $$contracts$1: $Map[Int, $Struct]
(declare-const $$contracts$1@68@01 $Map<Int~_$Struct>)
; [exec]
; var block: $Struct
(declare-const block@69@01 $Struct)
; [exec]
; var $post: Bool
(declare-const $post@70@01 Bool)
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 0)): Int) &&
;   ($struct_get($struct_loc($self$0, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@71@01 $Snap)
(assert (= $t@71@01 ($Snap.combine ($Snap.first $t@71@01) ($Snap.second $t@71@01))))
(assert (= ($Snap.first $t@71@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@65@01 0))))
(assert (= ($Snap.second $t@71@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@65@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 ($Snap.combine ($Snap.first $t@72@01) ($Snap.second $t@72@01))))
(assert (= ($Snap.first $t@72@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@65@01 1))))
(assert (= ($Snap.second $t@72@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@65@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 ($Snap.combine ($Snap.first $t@73@01) ($Snap.second $t@73@01))))
(assert (= ($Snap.first $t@73@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@65@01 2))))
(assert (= ($Snap.second $t@73@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@65@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 3)): Int) &&
;   ($struct_get($struct_loc($self$0, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 ($Snap.combine ($Snap.first $t@74@01) ($Snap.second $t@74@01))))
(assert (= ($Snap.first $t@74@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@65@01 3))))
(assert (= ($Snap.second $t@74@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@65@01 3))
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
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@76@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(push) ; 4
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@65@01, 5)), $q0@76@01)) | live]
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@65@01, 5)), $q0@76@01) | live]
(push) ; 5
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@65@01, 5)), $q0@76@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@76@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@65@01, 5)), $q0@76@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@76@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@76@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@76@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@76@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@76@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@76@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@664@11@664@354-aux|)))
(assert (forall (($q0@76@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@76@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@76@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@664@11@664@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $q0@78@01 Int)
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
(assert (forall (($q0@78@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@78@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $q0@78@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@665@11@665@262|)))
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
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@80@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(push) ; 4
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@65@01, 6)), $q1@80@01)) | live]
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@65@01, 6)), $q1@80@01) | live]
(push) ; 5
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@65@01, 6)), $q1@80@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@80@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@65@01, 6)), $q1@80@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@80@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@80@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@80@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@80@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@80@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@80@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@666@11@666@354-aux|)))
(assert (forall (($q1@80@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@80@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@80@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@666@11@666@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $q1@82@01 Int)
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
(assert (forall (($q1@82@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@82@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 6)) $q1@82@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@667@11@667@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@83@01 $Snap)
(assert (= $t@83@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$0, -1)): Int)
; [eval] $struct_loc($self$0, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$0@65@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 ($Snap.combine ($Snap.first $t@84@01) ($Snap.second $t@84@01))))
(assert (= ($Snap.first $t@84@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 0))))
(assert (= ($Snap.second $t@84@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@85@01 $Snap)
(assert (= $t@85@01 ($Snap.combine ($Snap.first $t@85@01) ($Snap.second $t@85@01))))
(assert (= ($Snap.first $t@85@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 1))))
(assert (= ($Snap.second $t@85@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 ($Snap.combine ($Snap.first $t@86@01) ($Snap.second $t@86@01))))
(assert (= ($Snap.first $t@86@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 2))))
(assert (= ($Snap.second $t@86@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 3)): Int) &&
;   ($struct_get($struct_loc($self$1, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 ($Snap.combine ($Snap.first $t@87@01) ($Snap.second $t@87@01))))
(assert (= ($Snap.first $t@87@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 3))))
(assert (= ($Snap.second $t@87@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 3))
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
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@89@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(push) ; 4
; [then-branch: 8 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@67@01, 5)), $q0@89@01)) | live]
; [else-branch: 8 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@67@01, 5)), $q0@89@01) | live]
(push) ; 5
; [then-branch: 8 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@67@01, 5)), $q0@89@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@89@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 8 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@67@01, 5)), $q0@89@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@89@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@89@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@89@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@89@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@89@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@89@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@89@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@673@11@673@354-aux|)))
(assert (forall (($q0@89@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@89@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@89@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@89@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@673@11@673@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $q0@91@01 Int)
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
(assert (forall (($q0@91@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@91@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $q0@91@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@674@11@674@262|)))
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
(declare-const $t@92@01 $Snap)
(assert (= $t@92@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@93@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(push) ; 4
; [then-branch: 9 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@67@01, 6)), $q1@93@01)) | live]
; [else-branch: 9 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@67@01, 6)), $q1@93@01) | live]
(push) ; 5
; [then-branch: 9 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@67@01, 6)), $q1@93@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@93@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@67@01, 6)), $q1@93@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@93@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@93@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@93@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@93@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@93@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@93@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@93@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@675@11@675@354-aux|)))
(assert (forall (($q1@93@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@93@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@93@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@93@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@675@11@675@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $q1@95@01 Int)
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
(assert (forall (($q1@95@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@95@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 6)) $q1@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@676@11@676@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$1, -1)): Int)
; [eval] $struct_loc($self$1, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 ($Snap.combine ($Snap.first $t@97@01) ($Snap.second $t@97@01))))
(assert (= ($Snap.first $t@97@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@69@01 0))))
(assert (= ($Snap.second $t@97@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@69@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 ($Snap.combine ($Snap.first $t@98@01) ($Snap.second $t@98@01))))
(assert (= ($Snap.first $t@98@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@69@01 1))))
(assert (= ($Snap.second $t@98@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@69@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 ($Snap.combine ($Snap.first $t@99@01) ($Snap.second $t@99@01))))
(assert (= ($Snap.first $t@99@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@69@01 2))))
(assert (= ($Snap.second $t@99@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@69@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@69@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 ($Snap.combine ($Snap.first $t@101@01) ($Snap.second $t@101@01))))
(assert (= ($Snap.first $t@101@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@69@01 4))))
(assert (= ($Snap.second $t@101@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@69@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@69@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@104@01 Int)
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
(assert (forall (($a@104@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $a@104@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@65@01 5)) $a@104@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@67@01 5)) $a@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@684@11@684@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 0)): Int) >= 0
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (>= ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 0)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 1)): Int) >= 0
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (>= ($struct_get<Int> ($struct_loc<Int> $self$1@67@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; assert ($struct_get($struct_loc($self$1, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
; [exec]
; assert ($struct_get($struct_loc($self$1, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
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
(declare-const self@107@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@108@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@109@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@110@01 $Map<Int~_$Struct>)
; [exec]
; var $post: Bool
(declare-const $post@111@01 Bool)
; [exec]
; var $havoc: Int
(declare-const $havoc@112@01 Int)
; [exec]
; var block: $Struct
(declare-const block@113@01 $Struct)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@114@01 $Snap)
(assert (= $t@114@01 ($Snap.combine ($Snap.first $t@114@01) ($Snap.second $t@114@01))))
(assert (= ($Snap.first $t@114@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@107@01 0))))
(assert (= ($Snap.second $t@114@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@107@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@115@01 $Snap)
(assert (= $t@115@01 ($Snap.combine ($Snap.first $t@115@01) ($Snap.second $t@115@01))))
(assert (= ($Snap.first $t@115@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@107@01 1))))
(assert (= ($Snap.second $t@115@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@107@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 ($Snap.combine ($Snap.first $t@116@01) ($Snap.second $t@116@01))))
(assert (= ($Snap.first $t@116@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@107@01 2))))
(assert (= ($Snap.second $t@116@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@107@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@117@01 $Snap)
(assert (= $t@117@01 ($Snap.combine ($Snap.first $t@117@01) ($Snap.second $t@117@01))))
(assert (= ($Snap.first $t@117@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@107@01 3))))
(assert (= ($Snap.second $t@117@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@107@01 3))
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
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@119@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@107@01, 5)), $q0@119@01)) | live]
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@107@01, 5)), $q0@119@01) | live]
(push) ; 5
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@107@01, 5)), $q0@119@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@119@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@107@01, 5)), $q0@119@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@119@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@119@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@119@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@119@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@119@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@119@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@119@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@704@11@704@345-aux|)))
(assert (forall (($q0@119@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@119@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@119@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@119@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@704@11@704@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@121@01 Int)
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
(assert (forall (($q0@121@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@121@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 5)) $q0@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@705@11@705@253|)))
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
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@123@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@107@01, 6)), $q1@123@01)) | live]
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@107@01, 6)), $q1@123@01) | live]
(push) ; 5
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@107@01, 6)), $q1@123@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@123@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@107@01, 6)), $q1@123@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@123@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@123@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@123@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@123@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@123@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@123@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@706@11@706@345-aux|)))
(assert (forall (($q1@123@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@123@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@123@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@706@11@706@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@125@01 Int)
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
(assert (forall (($q1@125@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@125@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@107@01 6)) $q1@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@707@11@707@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@126@01 $Snap)
(assert (= $t@126@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@107@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 0)): Int) &&
;   ($struct_get($struct_loc($pre_self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@127@01 $Snap)
(assert (= $t@127@01 ($Snap.combine ($Snap.first $t@127@01) ($Snap.second $t@127@01))))
(assert (= ($Snap.first $t@127@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@109@01 0))))
(assert (= ($Snap.second $t@127@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@109@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 1)): Int) &&
;   ($struct_get($struct_loc($pre_self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@128@01 $Snap)
(assert (= $t@128@01 ($Snap.combine ($Snap.first $t@128@01) ($Snap.second $t@128@01))))
(assert (= ($Snap.first $t@128@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@109@01 1))))
(assert (= ($Snap.second $t@128@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@109@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 2)): Int) &&
;   ($struct_get($struct_loc($pre_self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@129@01 $Snap)
(assert (= $t@129@01 ($Snap.combine ($Snap.first $t@129@01) ($Snap.second $t@129@01))))
(assert (= ($Snap.first $t@129@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@109@01 2))))
(assert (= ($Snap.second $t@129@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@109@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 3)): Int) &&
;   ($struct_get($struct_loc($pre_self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 ($Snap.combine ($Snap.first $t@130@01) ($Snap.second $t@130@01))))
(assert (= ($Snap.first $t@130@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] $struct_loc($pre_self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@109@01 3))))
(assert (= ($Snap.second $t@130@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] $struct_loc($pre_self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@109@01 3))
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
(declare-const $t@131@01 $Snap)
(assert (= $t@131@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@132@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
(push) ; 4
; [then-branch: 12 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@109@01, 5)), $q0@132@01)) | live]
; [else-branch: 12 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@109@01, 5)), $q0@132@01) | live]
(push) ; 5
; [then-branch: 12 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@109@01, 5)), $q0@132@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@132@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@109@01, 5)), $q0@132@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@132@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@132@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@132@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@132@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@132@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@132@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@132@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@713@11@713@360-aux|)))
(assert (forall (($q0@132@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@132@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@132@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@132@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@713@11@713@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int))
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@134@01 Int)
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
(assert (forall (($q0@134@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@134@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 5)) $q0@134@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@714@11@714@268|)))
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
(declare-const $t@135@01 $Snap)
(assert (= $t@135@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@136@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 6)
(push) ; 4
; [then-branch: 13 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@109@01, 6)), $q1@136@01)) | live]
; [else-branch: 13 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@109@01, 6)), $q1@136@01) | live]
(push) ; 5
; [then-branch: 13 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@109@01, 6)), $q1@136@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@136@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@109@01, 6)), $q1@136@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@136@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@136@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@136@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@136@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@136@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@136@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@715@11@715@360-aux|)))
(assert (forall (($q1@136@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@136@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@136@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@715@11@715@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])): Int))
(declare-const $t@137@01 $Snap)
(assert (= $t@137@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@138@01 Int)
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
(assert (forall (($q1@138@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@138@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@109@01 6)) $q1@138@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@716@11@716@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($pre_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@139@01 $Snap)
(assert (= $t@139@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int)
; [eval] $struct_loc($pre_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@109@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@140@01 $Snap)
(assert (= $t@140@01 ($Snap.combine ($Snap.first $t@140@01) ($Snap.second $t@140@01))))
(assert (= ($Snap.first $t@140@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@113@01 0))))
(assert (= ($Snap.second $t@140@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@113@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@141@01 $Snap)
(assert (= $t@141@01 ($Snap.combine ($Snap.first $t@141@01) ($Snap.second $t@141@01))))
(assert (= ($Snap.first $t@141@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@113@01 1))))
(assert (= ($Snap.second $t@141@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@113@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@142@01 $Snap)
(assert (= $t@142@01 ($Snap.combine ($Snap.first $t@142@01) ($Snap.second $t@142@01))))
(assert (= ($Snap.first $t@142@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@113@01 2))))
(assert (= ($Snap.second $t@142@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@113@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@143@01 $Snap)
(assert (= $t@143@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@113@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@144@01 $Snap)
(assert (= $t@144@01 ($Snap.combine ($Snap.first $t@144@01) ($Snap.second $t@144@01))))
(assert (= ($Snap.first $t@144@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@113@01 4))))
(assert (= ($Snap.second $t@144@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@113@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@145@01 $Snap)
(assert (= $t@145@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@113@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale $havoc >= 0
(declare-const $t@146@01 $Snap)
(assert (= $t@146@01 $Snap.unit))
; [eval] $havoc >= 0
(assert (>= $havoc@112@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@147@01 $Snap)
(assert (= $t@147@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@148@01 Int)
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
; inhale ($struct_get($struct_loc(self, 0)): Int) >= 0
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@107@01 0)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 1)): Int) >= 0
(declare-const $t@150@01 $Snap)
(assert (= $t@150@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@107@01 1)) 0))
; State saturation: after inhale
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
(declare-const self@151@01 $Struct)
(assert (=
  self@151@01
  ($struct_set<$Struct> self@107@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@107@01 2))
    $havoc@112@01))))
(pop) ; 2
(pop) ; 1
; ---------- f$__init__ ----------
(declare-const $succ@152@01 Bool)
(declare-const $succ@153@01 Bool)
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
(declare-const msg@154@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@155@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@156@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@157@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@158@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@159@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@160@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@161@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@162@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@163@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@164@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@165@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@166@01 Bool)
; [exec]
; var $first_public_state: Bool
(declare-const $first_public_state@167@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@168@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@169@01 Bool)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@170@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@171@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@172@01 $Snap)
(assert (= $t@172@01 ($Snap.combine ($Snap.first $t@172@01) ($Snap.second $t@172@01))))
(assert (= ($Snap.first $t@172@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@158@01 0))))
(assert (= ($Snap.second $t@172@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@158@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@173@01 $Snap)
(assert (= $t@173@01 ($Snap.combine ($Snap.first $t@173@01) ($Snap.second $t@173@01))))
(assert (= ($Snap.first $t@173@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@158@01 1))))
(assert (= ($Snap.second $t@173@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@158@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@174@01 $Snap)
(assert (= $t@174@01 ($Snap.combine ($Snap.first $t@174@01) ($Snap.second $t@174@01))))
(assert (= ($Snap.first $t@174@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@158@01 2))))
(assert (= ($Snap.second $t@174@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@158@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@175@01 $Snap)
(assert (= $t@175@01 ($Snap.combine ($Snap.first $t@175@01) ($Snap.second $t@175@01))))
(assert (= ($Snap.first $t@175@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@158@01 3))))
(assert (= ($Snap.second $t@175@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@158@01 3))
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
(declare-const $t@176@01 $Snap)
(assert (= $t@176@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@177@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@158@01, 5)), $q0@177@01)) | live]
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@158@01, 5)), $q0@177@01) | live]
(push) ; 5
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@158@01, 5)), $q0@177@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@177@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@158@01, 5)), $q0@177@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@177@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@177@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@177@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@177@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@177@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@177@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@759@11@759@345-aux|)))
(assert (forall (($q0@177@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@177@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@177@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@759@11@759@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@179@01 Int)
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
(assert (forall (($q0@179@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@179@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 5)) $q0@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@760@11@760@253|)))
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
(declare-const $t@180@01 $Snap)
(assert (= $t@180@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@181@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@158@01, 6)), $q1@181@01)) | live]
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@158@01, 6)), $q1@181@01) | live]
(push) ; 5
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@158@01, 6)), $q1@181@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@181@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@158@01, 6)), $q1@181@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@181@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@181@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@181@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@181@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@181@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@181@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@761@11@761@345-aux|)))
(assert (forall (($q1@181@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@181@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@181@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@761@11@761@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@182@01 $Snap)
(assert (= $t@182@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@183@01 Int)
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
(assert (forall (($q1@183@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@183@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@158@01 6)) $q1@183@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@762@11@762@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@184@01 $Snap)
(assert (= $t@184@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@158@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@185@01 $Snap)
(assert (= $t@185@01 ($Snap.combine ($Snap.first $t@185@01) ($Snap.second $t@185@01))))
(assert (= ($Snap.first $t@185@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@185@01) $Snap.unit))
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
(declare-const $t@186@01 $Snap)
(assert (= $t@186@01 ($Snap.combine ($Snap.first $t@186@01) ($Snap.second $t@186@01))))
(assert (= ($Snap.first $t@186@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@155@01 0))))
(assert (= ($Snap.second $t@186@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@155@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@187@01 $Snap)
(assert (= $t@187@01 ($Snap.combine ($Snap.first $t@187@01) ($Snap.second $t@187@01))))
(assert (= ($Snap.first $t@187@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@155@01 1))))
(assert (= ($Snap.second $t@187@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@155@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@188@01 $Snap)
(assert (= $t@188@01 ($Snap.combine ($Snap.first $t@188@01) ($Snap.second $t@188@01))))
(assert (= ($Snap.first $t@188@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@155@01 2))))
(assert (= ($Snap.second $t@188@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@155@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@189@01 $Snap)
(assert (= $t@189@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@155@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@190@01 $Snap)
(assert (= $t@190@01 ($Snap.combine ($Snap.first $t@190@01) ($Snap.second $t@190@01))))
(assert (= ($Snap.first $t@190@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@155@01 4))))
(assert (= ($Snap.second $t@190@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@155@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@191@01 $Snap)
(assert (= $t@191@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@155@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@192@01 $Snap)
(assert (= $t@192@01 ($Snap.combine ($Snap.first $t@192@01) ($Snap.second $t@192@01))))
(assert (= ($Snap.first $t@192@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@154@01 0))))
(assert (= ($Snap.second $t@192@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@154@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@193@01 $Snap)
(assert (= $t@193@01 ($Snap.combine ($Snap.first $t@193@01) ($Snap.second $t@193@01))))
(assert (= ($Snap.first $t@193@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@154@01 1))))
(assert (= ($Snap.second $t@193@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@154@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@194@01 $Snap)
(assert (= $t@194@01 ($Snap.combine ($Snap.first $t@194@01) ($Snap.second $t@194@01))))
(assert (= ($Snap.first $t@194@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@154@01 2))))
(assert (= ($Snap.second $t@194@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@154@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@195@01 $Snap)
(assert (= $t@195@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@154@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@196@01 $Snap)
(assert (= $t@196@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@154@01 0)) 0)))
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
(declare-const self@197@01 $Struct)
(assert (=
  self@197@01
  (s$struct$self$init<$Struct> 0 0 0 0 false ($map_init<$Map<Int~_Int>> 0) ($map_init<$Map<Int~_Int>> 0) false)))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@198@01 $Snap)
(assert (= $t@198@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@168@01 0))
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
(declare-const self@199@01 $Struct)
(assert (=
  self@199@01
  ($struct_set<$Struct> self@197@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@197@01 2))
    l$havoc@168@01))))
; [exec]
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@200@01 $Snap)
(assert (= $t@200@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@154@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, $unwrap($wrap(($struct_get($struct_loc(block,
;   4)): Int)))): $Struct)
; [eval] ($struct_set(self, 0, $unwrap($wrap(($struct_get($struct_loc(block, 4)): Int)))): $Struct)
; [eval] $unwrap($wrap(($struct_get($struct_loc(block, 4)): Int)))
; [eval] $wrap(($struct_get($struct_loc(block, 4)): Int))
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(declare-const self@201@01 $Struct)
(assert (=
  self@201@01
  ($struct_set<$Struct> self@199@01 0 ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> block@155@01 4)))))))
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@169@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@169@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | $out_of_gas@169@01 | live]
; [else-branch: 16 | !($out_of_gas@169@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 16 | $out_of_gas@169@01]
(assert $out_of_gas@169@01)
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
; [eval] !$succ
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | True | live]
; [else-branch: 18 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 18 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@202@01 $Snap)
(assert (= $t@202@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@170@01 0))
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
(declare-const self@203@01 $Struct)
(assert (=
  self@203@01
  ($struct_set<$Struct> self@158@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@158@01 2))
    l$havoc$1@170@01))))
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
; [then-branch: 19 | True | live]
; [else-branch: 19 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 19 | True]
; [exec]
; $old_self := self
; [exec]
; assert $succ ==> ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] $succ ==> ($struct_get($struct_loc(self, 0)): Int) >= 0
(push) ; 7
; [then-branch: 20 | False | dead]
; [else-branch: 20 | True | live]
(push) ; 8
; [else-branch: 20 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [exec]
; assert $succ ==> ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] $succ ==> ($struct_get($struct_loc(self, 1)): Int) >= 0
(push) ; 7
; [then-branch: 21 | False | dead]
; [else-branch: 21 | True | live]
(push) ; 8
; [else-branch: 21 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 22 | False | dead]
; [else-branch: 22 | True | live]
(push) ; 6
; [else-branch: 22 | True]
(pop) ; 6
(pop) ; 5
; [then-branch: 23 | False | dead]
; [else-branch: 23 | True | live]
(push) ; 5
; [else-branch: 23 | True]
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 24 | False | dead]
; [else-branch: 24 | True | live]
(push) ; 4
; [else-branch: 24 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 16 | !($out_of_gas@169@01)]
(assert (not $out_of_gas@169@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@169@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@169@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | !($out_of_gas@169@01) | live]
; [else-branch: 25 | $out_of_gas@169@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 25 | !($out_of_gas@169@01)]
(assert (not $out_of_gas@169@01))
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
; [then-branch: 26 | True | live]
; [else-branch: 26 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 26 | True]
; [exec]
; $old_self := self
; [eval] !$succ
; [then-branch: 27 | False | dead]
; [else-branch: 27 | True | live]
(push) ; 5
; [else-branch: 27 | True]
(pop) ; 5
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | True | live]
; [else-branch: 28 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 28 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@204@01 $Snap)
(assert (= $t@204@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@170@01 0))
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
(declare-const self@205@01 $Struct)
(assert (=
  self@205@01
  ($struct_set<$Struct> self@201@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@201@01 2))
    l$havoc$1@170@01))))
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
; [then-branch: 29 | True | live]
; [else-branch: 29 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 29 | True]
; [exec]
; $old_self := self
; [exec]
; assert $succ ==> ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] $succ ==> ($struct_get($struct_loc(self, 0)): Int) >= 0
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | True | live]
; [else-branch: 30 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 30 | True]
; [eval] ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(pop) ; 8
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (>= ($struct_get<Int> ($struct_loc<Int> self@205@01 0)) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@205@01 0)) 0))
; [exec]
; assert $succ ==> ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] $succ ==> ($struct_get($struct_loc(self, 1)): Int) >= 0
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | True | live]
; [else-branch: 31 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 31 | True]
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 8
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (>= ($struct_get<Int> ($struct_loc<Int> self@205@01 1)) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@205@01 1)) 0))
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 32 | False | dead]
; [else-branch: 32 | True | live]
(push) ; 6
; [else-branch: 32 | True]
(pop) ; 6
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 33 | False | dead]
; [else-branch: 33 | True | live]
(push) ; 4
; [else-branch: 33 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 25 | $out_of_gas@169@01]
(assert $out_of_gas@169@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$update_time ----------
(declare-const $succ@206@01 Bool)
(declare-const $succ@207@01 Bool)
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
(declare-const msg@208@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@209@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@210@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@211@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@212@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@213@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@214@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@215@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@216@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@217@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@218@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@219@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@220@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@221@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@222@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@223@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@224@01 $Snap)
(assert (= $t@224@01 ($Snap.combine ($Snap.first $t@224@01) ($Snap.second $t@224@01))))
(assert (= ($Snap.first $t@224@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@212@01 0))))
(assert (= ($Snap.second $t@224@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@212@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 ($Snap.combine ($Snap.first $t@225@01) ($Snap.second $t@225@01))))
(assert (= ($Snap.first $t@225@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@212@01 1))))
(assert (= ($Snap.second $t@225@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@212@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@226@01 $Snap)
(assert (= $t@226@01 ($Snap.combine ($Snap.first $t@226@01) ($Snap.second $t@226@01))))
(assert (= ($Snap.first $t@226@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@212@01 2))))
(assert (= ($Snap.second $t@226@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@212@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@227@01 $Snap)
(assert (= $t@227@01 ($Snap.combine ($Snap.first $t@227@01) ($Snap.second $t@227@01))))
(assert (= ($Snap.first $t@227@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@212@01 3))))
(assert (= ($Snap.second $t@227@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@212@01 3))
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
(declare-const $t@228@01 $Snap)
(assert (= $t@228@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@229@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 34 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@212@01, 5)), $q0@229@01)) | live]
; [else-branch: 34 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@212@01, 5)), $q0@229@01) | live]
(push) ; 5
; [then-branch: 34 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@212@01, 5)), $q0@229@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@229@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 34 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@212@01, 5)), $q0@229@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@229@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@229@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@229@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@229@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@229@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@229@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@229@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@851@11@851@345-aux|)))
(assert (forall (($q0@229@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@229@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@229@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@229@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@851@11@851@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@230@01 $Snap)
(assert (= $t@230@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@231@01 Int)
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
(assert (forall (($q0@231@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@231@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 5)) $q0@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@852@11@852@253|)))
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
(declare-const $t@232@01 $Snap)
(assert (= $t@232@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@233@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 35 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@212@01, 6)), $q1@233@01)) | live]
; [else-branch: 35 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@212@01, 6)), $q1@233@01) | live]
(push) ; 5
; [then-branch: 35 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@212@01, 6)), $q1@233@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@233@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 35 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@212@01, 6)), $q1@233@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@233@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@233@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@233@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@233@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@233@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@233@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@233@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@853@11@853@345-aux|)))
(assert (forall (($q1@233@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@233@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@233@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@233@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@853@11@853@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@234@01 $Snap)
(assert (= $t@234@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@235@01 Int)
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
(assert (forall (($q1@235@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@235@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@212@01 6)) $q1@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@854@11@854@253|)))
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
  ($struct_get<Int> ($struct_loc<Int> self@212@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@237@01 $Snap)
(assert (= $t@237@01 ($Snap.combine ($Snap.first $t@237@01) ($Snap.second $t@237@01))))
(assert (= ($Snap.first $t@237@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@237@01) $Snap.unit))
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
(declare-const $t@238@01 $Snap)
(assert (= $t@238@01 ($Snap.combine ($Snap.first $t@238@01) ($Snap.second $t@238@01))))
(assert (= ($Snap.first $t@238@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@209@01 0))))
(assert (= ($Snap.second $t@238@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@209@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@239@01 $Snap)
(assert (= $t@239@01 ($Snap.combine ($Snap.first $t@239@01) ($Snap.second $t@239@01))))
(assert (= ($Snap.first $t@239@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@209@01 1))))
(assert (= ($Snap.second $t@239@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@209@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@240@01 $Snap)
(assert (= $t@240@01 ($Snap.combine ($Snap.first $t@240@01) ($Snap.second $t@240@01))))
(assert (= ($Snap.first $t@240@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@209@01 2))))
(assert (= ($Snap.second $t@240@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@209@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@241@01 $Snap)
(assert (= $t@241@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@209@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@242@01 $Snap)
(assert (= $t@242@01 ($Snap.combine ($Snap.first $t@242@01) ($Snap.second $t@242@01))))
(assert (= ($Snap.first $t@242@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@209@01 4))))
(assert (= ($Snap.second $t@242@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@209@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@243@01 $Snap)
(assert (= $t@243@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@209@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@244@01 $Snap)
(assert (= $t@244@01 ($Snap.combine ($Snap.first $t@244@01) ($Snap.second $t@244@01))))
(assert (= ($Snap.first $t@244@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@208@01 0))))
(assert (= ($Snap.second $t@244@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@208@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@245@01 $Snap)
(assert (= $t@245@01 ($Snap.combine ($Snap.first $t@245@01) ($Snap.second $t@245@01))))
(assert (= ($Snap.first $t@245@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@208@01 1))))
(assert (= ($Snap.second $t@245@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@208@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@246@01 $Snap)
(assert (= $t@246@01 ($Snap.combine ($Snap.first $t@246@01) ($Snap.second $t@246@01))))
(assert (= ($Snap.first $t@246@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@208@01 2))))
(assert (= ($Snap.second $t@246@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@208@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@247@01 $Snap)
(assert (= $t@247@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@208@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@248@01 $Snap)
(assert (= $t@248@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@208@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@249@01 $Snap)
(assert (= $t@249@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@250@01 Int)
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
; inhale ($struct_get($struct_loc(self, 0)): Int) >= 0
(declare-const $t@251@01 $Snap)
(assert (= $t@251@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@212@01 0)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 1)): Int) >= 0
(declare-const $t@252@01 $Snap)
(assert (= $t@252@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@212@01 1)) 0))
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
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@253@01 $Snap)
(assert (= $t@253@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@208@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, $unwrap($wrap(($struct_get($struct_loc(block,
;   4)): Int)))): $Struct)
; [eval] ($struct_set(self, 0, $unwrap($wrap(($struct_get($struct_loc(block, 4)): Int)))): $Struct)
; [eval] $unwrap($wrap(($struct_get($struct_loc(block, 4)): Int)))
; [eval] $wrap(($struct_get($struct_loc(block, 4)): Int))
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(declare-const self@254@01 $Struct)
(assert (=
  self@254@01
  ($struct_set<$Struct> self@212@01 0 ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> block@209@01 4)))))))
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@221@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@221@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | $out_of_gas@221@01 | live]
; [else-branch: 36 | !($out_of_gas@221@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 36 | $out_of_gas@221@01]
(assert $out_of_gas@221@01)
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
; [then-branch: 37 | True | live]
; [else-branch: 37 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 37 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@255@01 $Snap)
(assert (= $t@255@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@222@01 0))
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
(declare-const self@256@01 $Struct)
(assert (=
  self@256@01
  ($struct_set<$Struct> self@212@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@212@01 2))
    l$havoc@222@01))))
; [exec]
; $contracts := l$havoc$1
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= ($struct_get<Int> ($struct_loc<Int> self@256@01 0)) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@256@01 0)) 0))
; [exec]
; assert ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(assert (not (>= ($struct_get<Int> ($struct_loc<Int> self@256@01 1)) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@256@01 1)) 0))
(pop) ; 4
; [then-branch: 38 | False | dead]
; [else-branch: 38 | True | live]
(push) ; 4
; [else-branch: 38 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 36 | !($out_of_gas@221@01)]
(assert (not $out_of_gas@221@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@221@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@221@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | !($out_of_gas@221@01) | live]
; [else-branch: 39 | $out_of_gas@221@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 39 | !($out_of_gas@221@01)]
(assert (not $out_of_gas@221@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 40 | False | dead]
; [else-branch: 40 | True | live]
(push) ; 4
; [else-branch: 40 | True]
(pop) ; 4
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | True | live]
; [else-branch: 41 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 41 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@257@01 $Snap)
(assert (= $t@257@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@222@01 0))
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
(declare-const self@258@01 $Struct)
(assert (=
  self@258@01
  ($struct_set<$Struct> self@254@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@254@01 2))
    l$havoc@222@01))))
; [exec]
; $contracts := l$havoc$1
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= ($struct_get<Int> ($struct_loc<Int> self@258@01 0)) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@258@01 0)) 0))
; [exec]
; assert ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(assert (not (>= ($struct_get<Int> ($struct_loc<Int> self@258@01 1)) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@258@01 1)) 0))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 39 | $out_of_gas@221@01]
(assert $out_of_gas@221@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$update_number ----------
(declare-const $succ@259@01 Bool)
(declare-const $succ@260@01 Bool)
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
(declare-const msg@261@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@262@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@263@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@264@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@265@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@266@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@267@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@268@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@269@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@270@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@271@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@272@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@273@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@274@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@275@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@276@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 ($Snap.combine ($Snap.first $t@277@01) ($Snap.second $t@277@01))))
(assert (= ($Snap.first $t@277@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@265@01 0))))
(assert (= ($Snap.second $t@277@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@265@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@278@01 $Snap)
(assert (= $t@278@01 ($Snap.combine ($Snap.first $t@278@01) ($Snap.second $t@278@01))))
(assert (= ($Snap.first $t@278@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@265@01 1))))
(assert (= ($Snap.second $t@278@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@265@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 ($Snap.combine ($Snap.first $t@279@01) ($Snap.second $t@279@01))))
(assert (= ($Snap.first $t@279@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@265@01 2))))
(assert (= ($Snap.second $t@279@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@265@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@280@01 $Snap)
(assert (= $t@280@01 ($Snap.combine ($Snap.first $t@280@01) ($Snap.second $t@280@01))))
(assert (= ($Snap.first $t@280@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@265@01 3))))
(assert (= ($Snap.second $t@280@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@265@01 3))
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
(declare-const $t@281@01 $Snap)
(assert (= $t@281@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@282@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 42 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 5)), $q0@282@01)) | live]
; [else-branch: 42 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 5)), $q0@282@01) | live]
(push) ; 5
; [then-branch: 42 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 5)), $q0@282@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@282@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 42 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 5)), $q0@282@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@282@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@282@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@282@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@282@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@282@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@282@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@937@11@937@345-aux|)))
(assert (forall (($q0@282@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@282@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@282@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@937@11@937@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@283@01 $Snap)
(assert (= $t@283@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@284@01 Int)
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
(assert (forall (($q0@284@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@284@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q0@284@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@938@11@938@253|)))
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
(declare-const $t@285@01 $Snap)
(assert (= $t@285@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@286@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 43 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 6)), $q1@286@01)) | live]
; [else-branch: 43 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 6)), $q1@286@01) | live]
(push) ; 5
; [then-branch: 43 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 6)), $q1@286@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@286@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 43 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 6)), $q1@286@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@286@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@286@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@286@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@286@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@286@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@286@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@286@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@939@11@939@345-aux|)))
(assert (forall (($q1@286@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@286@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@286@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@286@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@939@11@939@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@287@01 $Snap)
(assert (= $t@287@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@288@01 Int)
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
(assert (forall (($q1@288@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@288@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 6)) $q1@288@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageblock.vy.vpr@940@11@940@253|)))
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
  ($struct_get<Int> ($struct_loc<Int> self@265@01 (- 0 1)))
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
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@262@01 0))))
(assert (= ($Snap.second $t@291@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@262@01 0))
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
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@262@01 1))))
(assert (= ($Snap.second $t@292@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@262@01 1))
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
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@262@01 2))))
(assert (= ($Snap.second $t@293@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@262@01 2))
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
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@262@01 3))) 32))
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
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@262@01 4))))
(assert (= ($Snap.second $t@295@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@262@01 4))
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
  ($struct_get<Int> ($struct_loc<Int> block@262@01 (- 0 1)))
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
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@261@01 0))))
(assert (= ($Snap.second $t@297@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@261@01 0))
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
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@261@01 1))))
(assert (= ($Snap.second $t@298@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@261@01 1))
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
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@261@01 2))))
(assert (= ($Snap.second $t@299@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@261@01 2))
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
  ($struct_get<Int> ($struct_loc<Int> msg@261@01 (- 0 1)))
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
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@261@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@302@01 $Snap)
(assert (= $t@302@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@303@01 Int)
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
; inhale ($struct_get($struct_loc(self, 0)): Int) >= 0
(declare-const $t@304@01 $Snap)
(assert (= $t@304@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@265@01 0)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 1)): Int) >= 0
(declare-const $t@305@01 $Snap)
(assert (= $t@305@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@265@01 1)) 0))
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
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@306@01 $Snap)
(assert (= $t@306@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@261@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, $unwrap($wrap(($struct_get($struct_loc(block,
;   2)): Int)))): $Struct)
; [eval] ($struct_set(self, 1, $unwrap($wrap(($struct_get($struct_loc(block, 2)): Int)))): $Struct)
; [eval] $unwrap($wrap(($struct_get($struct_loc(block, 2)): Int)))
; [eval] $wrap(($struct_get($struct_loc(block, 2)): Int))
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(declare-const self@307@01 $Struct)
(assert (=
  self@307@01
  ($struct_set<$Struct> self@265@01 1 ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> block@262@01 2)))))))
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@274@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@274@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | $out_of_gas@274@01 | live]
; [else-branch: 44 | !($out_of_gas@274@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 44 | $out_of_gas@274@01]
(assert $out_of_gas@274@01)
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
; [then-branch: 45 | True | live]
; [else-branch: 45 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 45 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@308@01 $Snap)
(assert (= $t@308@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@275@01 0))
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
(declare-const self@309@01 $Struct)
(assert (=
  self@309@01
  ($struct_set<$Struct> self@265@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@265@01 2))
    l$havoc@275@01))))
; [exec]
; $contracts := l$havoc$1
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= ($struct_get<Int> ($struct_loc<Int> self@309@01 0)) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@309@01 0)) 0))
; [exec]
; assert ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(assert (not (>= ($struct_get<Int> ($struct_loc<Int> self@309@01 1)) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@309@01 1)) 0))
(pop) ; 4
; [then-branch: 46 | False | dead]
; [else-branch: 46 | True | live]
(push) ; 4
; [else-branch: 46 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 44 | !($out_of_gas@274@01)]
(assert (not $out_of_gas@274@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@274@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@274@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 47 | !($out_of_gas@274@01) | live]
; [else-branch: 47 | $out_of_gas@274@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 47 | !($out_of_gas@274@01)]
(assert (not $out_of_gas@274@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 48 | False | dead]
; [else-branch: 48 | True | live]
(push) ; 4
; [else-branch: 48 | True]
(pop) ; 4
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 49 | True | live]
; [else-branch: 49 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 49 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@310@01 $Snap)
(assert (= $t@310@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@275@01 0))
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
(declare-const self@311@01 $Struct)
(assert (=
  self@311@01
  ($struct_set<$Struct> self@307@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@307@01 2))
    l$havoc@275@01))))
; [exec]
; $contracts := l$havoc$1
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= ($struct_get<Int> ($struct_loc<Int> self@311@01 0)) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@311@01 0)) 0))
; [exec]
; assert ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= 0
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 5
(assert (not (>= ($struct_get<Int> ($struct_loc<Int> self@311@01 1)) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= ($struct_get<Int> ($struct_loc<Int> self@311@01 1)) 0))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 47 | $out_of_gas@274@01]
(assert $out_of_gas@274@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
