(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:26:52
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
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
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
(declare-sort $PSF<$accessible$withdraw> 0)
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
(declare-fun $SortWrappers.Set<$Ref>To$Snap (Set<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Ref> ($Snap) Set<$Ref>)
(assert (forall ((x Set<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSet<$Ref>($SortWrappers.Set<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Set<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSet<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Ref>To$Snap($SortWrappers.$SnapToSet<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSet<$Ref> x))
    :qid |$Snap.Set<$Ref>To$SnapToSet<$Ref>|
    )))
(declare-fun $SortWrappers.Set<$Snap>To$Snap (Set<$Snap>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Snap> ($Snap) Set<$Snap>)
(assert (forall ((x Set<$Snap>)) (!
    (= x ($SortWrappers.$SnapToSet<$Snap>($SortWrappers.Set<$Snap>To$Snap x)))
    :pattern (($SortWrappers.Set<$Snap>To$Snap x))
    :qid |$Snap.$SnapToSet<$Snap>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Snap>To$Snap($SortWrappers.$SnapToSet<$Snap> x)))
    :pattern (($SortWrappers.$SnapToSet<$Snap> x))
    :qid |$Snap.Set<$Snap>To$SnapToSet<$Snap>|
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
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<$accessible$withdraw>To$Snap ($PSF<$accessible$withdraw>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap) $PSF<$accessible$withdraw>)
(assert (forall ((x $PSF<$accessible$withdraw>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<$accessible$withdraw>($SortWrappers.$PSF<$accessible$withdraw>To$Snap x)))
    :pattern (($SortWrappers.$PSF<$accessible$withdraw>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<$accessible$withdraw>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<$accessible$withdraw>To$Snap($SortWrappers.$SnapTo$PSF<$accessible$withdraw> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<$accessible$withdraw> x))
    :qid |$Snap.$PSF<$accessible$withdraw>To$SnapTo$PSF<$accessible$withdraw>|
    )))
; ////////// Symbols
(declare-fun Set_card (Set<$Ref>) Int)
(declare-const Set_empty Set<$Ref>)
(declare-fun Set_in ($Ref Set<$Ref>) Bool)
(declare-fun Set_singleton ($Ref) Set<$Ref>)
(declare-fun Set_unionone (Set<$Ref> $Ref) Set<$Ref>)
(declare-fun Set_union (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_intersection (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_difference (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_subset (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_equal (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_skolem_diff (Set<$Ref> Set<$Ref>) $Ref)
(declare-fun Set_card (Set<$Snap>) Int)
(declare-const Set_empty Set<$Snap>)
(declare-fun Set_in ($Snap Set<$Snap>) Bool)
(declare-fun Set_singleton ($Snap) Set<$Snap>)
(declare-fun Set_unionone (Set<$Snap> $Snap) Set<$Snap>)
(declare-fun Set_union (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_intersection (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_difference (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_subset (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_equal (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_skolem_diff (Set<$Snap> Set<$Snap>) $Snap)
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
(declare-fun $struct_get<$Struct> (Int) $Struct)
(declare-fun $struct_set<$Struct> ($Struct Int $Struct) $Struct)
(declare-fun $range<Seq<Int>> (Int Int) Seq<Int>)
(declare-fun s$struct$self$init<$Struct> (Int Int Int Bool $Map<Int~_Int> $Map<Int~_Int> Bool) $Struct)
(declare-fun s$struct$self$eq<Bool> ($Struct $Struct) Bool)
(declare-fun $struct_get<Bool> (Int) Bool)
(declare-fun $struct_set<$Struct> ($Struct Int Bool) $Struct)
(declare-fun $struct_get<$Map<Int~_Int>> (Int) $Map<Int~_Int>)
(declare-fun $struct_set<$Struct> ($Struct Int $Map<Int~_Int>) $Struct)
(declare-fun $struct_get<Seq<Int>> (Int) Seq<Int>)
(declare-fun $struct_set<$Struct> ($Struct Int Seq<Int>) $Struct)
(declare-fun s$resource$$creator$init<$Struct> ($Struct) $Struct)
(declare-fun s$resource$$creator$eq<Bool> ($Struct $Struct) Bool)
(declare-fun $map_sum<Int> ($Map<Int~_Int>) Int)
; /predicate_snap_functions_declarations.smt2 [$accessible$withdraw: Snap]
(declare-fun $PSF.domain_$accessible$withdraw ($PSF<$accessible$withdraw>) Set<$Snap>)
(declare-fun $PSF.lookup_$accessible$withdraw ($PSF<$accessible$withdraw> $Snap) $Snap)
(declare-fun $PSF.after_$accessible$withdraw ($PSF<$accessible$withdraw> $PSF<$accessible$withdraw>) Bool)
(declare-fun $PSF.loc_$accessible$withdraw ($Snap $Snap) Bool)
(declare-fun $PSF.perm_$accessible$withdraw ($PPM $Snap) $Perm)
(declare-const $psfTOP_$accessible$withdraw $PSF<$accessible$withdraw>)
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
(declare-fun $accessible$__default__%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$__default___0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$withdraw%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$withdraw_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$withdraw_none%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$withdraw_none_0%trigger ($Snap Int Int Int) Bool)
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
(assert (forall ((s Set<$Ref>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Ref)) (!
  (not (Set_in o (as Set_empty  Set<$Ref>)))
  :pattern ((Set_in o (as Set_empty  Set<$Ref>)))
  )))
(assert (forall ((s Set<$Ref>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Ref>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Ref))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Ref)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Ref) (o $Ref)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Ref)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (o $Ref)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Ref)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Snap)) (!
  (not (Set_in o (as Set_empty  Set<$Snap>)))
  :pattern ((Set_in o (as Set_empty  Set<$Snap>)))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Snap>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Snap))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Snap)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Snap) (o $Snap)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Snap)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (o $Snap)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Snap)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
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
(assert (forall (($arg_0 Int) ($arg_1 Int) ($arg_2 Int) ($arg_3 Bool) ($arg_4 $Map<Int~_Int>) ($arg_5 $Map<Int~_Int>) ($arg_6 Bool)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6) (- 0 1)))
      9122519725869122497593506884710)
    (and
      (=
        ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6) 0))
        $arg_0)
      (and
        (=
          ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6) 1))
          $arg_1)
        (and
          (=
            ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6) 2))
            $arg_2)
          (and
            (=
              ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6) 3))
              $arg_3)
            (and
              (=
                ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6) 4))
                $arg_4)
              (and
                (=
                  ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6) 5))
                  $arg_5)
                (=
                  ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6) 6))
                  $arg_6))))))))
  :pattern ((s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6))
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
                  ($struct_get<Bool> ($struct_loc<Int> $l 3))
                  ($struct_get<Bool> ($struct_loc<Int> $r 3)))
                (and
                  ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 4)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 4)))
                  (and
                    ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 5)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 5)))
                    (=
                      ($struct_get<Bool> ($struct_loc<Int> $l 6))
                      ($struct_get<Bool> ($struct_loc<Int> $r 6))))))))))))
  :pattern ((s$struct$self$eq<Bool> $l $r))
  :qid |prog.s$struct$self$eq$ax|)))
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
; /predicate_snap_functions_axioms.smt2 [$accessible$withdraw: Snap]
(assert (forall ((vs $PSF<$accessible$withdraw>) (ws $PSF<$accessible$withdraw>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_$accessible$withdraw vs) ($PSF.domain_$accessible$withdraw ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_$accessible$withdraw vs))
            (= ($PSF.lookup_$accessible$withdraw vs x) ($PSF.lookup_$accessible$withdraw ws x)))
          :pattern (($PSF.lookup_$accessible$withdraw vs x) ($PSF.lookup_$accessible$withdraw ws x))
          :qid |qp.$PSF<$accessible$withdraw>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<$accessible$withdraw>To$Snap vs)
              ($SortWrappers.$PSF<$accessible$withdraw>To$Snap ws)
              )
    :qid |qp.$PSF<$accessible$withdraw>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_$accessible$withdraw pm s))
    :pattern (($PSF.perm_$accessible$withdraw pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_$accessible$withdraw f s) true)
    :pattern (($PSF.loc_$accessible$withdraw f s)))))
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
  :qid |quant-u-1274|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-1275|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1280|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1281|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1276|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-1277|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1282|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1283|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1278|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1279|)))
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
  :qid |quant-u-1284|)))
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
  :qid |quant-u-1285|)))
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
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2))))
(assert (= ($Snap.second $t@10@01) $Snap.unit))
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
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@12@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(push) ; 4
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 4)), $q0@12@01)) | live]
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 4)), $q0@12@01) | live]
(push) ; 5
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 4)), $q0@12@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 4)), $q0@12@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@12@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@613@11@613@354-aux|)))
(assert (forall (($q0@12@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@613@11@613@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int))
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int))
(declare-const $q0@14@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@14@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@14@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@614@11@614@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@15@01 $Snap)
(assert (= $t@15@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@16@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(push) ; 4
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q1@16@01)) | live]
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q1@16@01) | live]
(push) ; 5
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q1@16@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q1@16@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@16@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@615@11@615@354-aux|)))
(assert (forall (($q1@16@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@615@11@615@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $q1@18@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@18@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@18@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@616@11@616@262|)))
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
; inhale 0 <= ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 ($Snap.combine ($Snap.first $t@20@01) ($Snap.second $t@20@01))))
(assert (= ($Snap.first $t@20@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0))))
(assert (= ($Snap.second $t@20@01) $Snap.unit))
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
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(assert (= ($Snap.first $t@21@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))
(assert (= ($Snap.second $t@21@01) $Snap.unit))
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
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 ($Snap.combine ($Snap.first $t@22@01) ($Snap.second $t@22@01))))
(assert (= ($Snap.first $t@22@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2))))
(assert (= ($Snap.second $t@22@01) $Snap.unit))
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
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@24@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(push) ; 4
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 4)), $q0@24@01)) | live]
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 4)), $q0@24@01) | live]
(push) ; 5
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 4)), $q0@24@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 4)), $q0@24@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@24@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@621@11@621@354-aux|)))
(assert (forall (($q0@24@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@621@11@621@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int))
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int))
(declare-const $q0@26@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@26@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@26@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@622@11@622@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@28@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(push) ; 4
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q1@28@01)) | live]
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q1@28@01) | live]
(push) ; 5
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q1@28@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q1@28@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@28@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@623@11@623@354-aux|)))
(assert (forall (($q1@28@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@623@11@623@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $q1@30@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@30@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@30@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@624@11@624@262|)))
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
; inhale 0 <= ($struct_get($struct_loc($self$2, 0)): Int) &&
;   ($struct_get($struct_loc($self$2, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 ($Snap.combine ($Snap.first $t@32@01) ($Snap.second $t@32@01))))
(assert (= ($Snap.first $t@32@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0))))
(assert (= ($Snap.second $t@32@01) $Snap.unit))
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
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 ($Snap.combine ($Snap.first $t@33@01) ($Snap.second $t@33@01))))
(assert (= ($Snap.first $t@33@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))
(assert (= ($Snap.second $t@33@01) $Snap.unit))
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
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$2, 2)): Int) &&
;   ($struct_get($struct_loc($self$2, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))))
(assert (= ($Snap.second $t@34@01) $Snap.unit))
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
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@36@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 4)
(push) ; 4
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 4)), $q0@36@01)) | live]
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 4)), $q0@36@01) | live]
(push) ; 5
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 4)), $q0@36@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 4)), $q0@36@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@36@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@629@11@629@354-aux|)))
(assert (forall (($q0@36@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@629@11@629@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])): Int))
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])): Int))
(declare-const $q0@38@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 4)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@38@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@38@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@38@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@630@11@630@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@40@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
(push) ; 4
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q1@40@01)) | live]
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q1@40@01) | live]
(push) ; 5
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q1@40@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q1@40@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@40@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@631@11@631@354-aux|)))
(assert (forall (($q1@40@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@631@11@631@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int))
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int))
(declare-const $q1@42@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@42@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@42@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@42@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@632@11@632@262|)))
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
;     { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@51@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true &&
;   (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935 &&
;     q$v <= ($struct_get($struct_loc($self$0, 1)): Int))) ==>
;     acc($accessible$withdraw(0, q$a, q$v, q$v), write))
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 ($Snap.combine ($Snap.first $t@52@01) ($Snap.second $t@52@01))))
(assert (= ($Snap.first $t@52@01) $Snap.unit))
(declare-const q$a@53@01 Int)
(declare-const q$v@54@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 && q$v <= ($struct_get($struct_loc($self$0, 1)): Int)))
; [eval] 0 <= q$a
(push) ; 4
; [then-branch: 6 | !(0 <= q$a@53@01) | live]
; [else-branch: 6 | 0 <= q$a@53@01 | live]
(push) ; 5
; [then-branch: 6 | !(0 <= q$a@53@01)]
(assert (not (<= 0 q$a@53@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= q$a@53@01]
(assert (<= 0 q$a@53@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 6
; [then-branch: 7 | !(q$a@53@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 7 | q$a@53@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 7
; [then-branch: 7 | !(q$a@53@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@53@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 7
(push) ; 7
; [else-branch: 7 | q$a@53@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@53@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 8
; [then-branch: 8 | !(0 <= q$v@54@01) | live]
; [else-branch: 8 | 0 <= q$v@54@01 | live]
(push) ; 9
; [then-branch: 8 | !(0 <= q$v@54@01)]
(assert (not (<= 0 q$v@54@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 8 | 0 <= q$v@54@01]
(assert (<= 0 q$v@54@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(push) ; 10
; [then-branch: 9 | !(q$v@54@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 9 | q$v@54@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
(push) ; 11
; [then-branch: 9 | !(q$v@54@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (<=
    q$v@54@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 11
(push) ; 11
; [else-branch: 9 | q$v@54@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (<=
  q$v@54@01
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] q$v <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    q$v@54@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)
  (not
    (<=
      q$v@54@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$v@54@01)
  (and
    (<= 0 q$v@54@01)
    (or
      (<=
        q$v@54@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)
      (not
        (<=
          q$v@54@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(assert (or (<= 0 q$v@54@01) (not (<= 0 q$v@54@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
    (=>
      (<= 0 q$v@54@01)
      (and
        (<= 0 q$v@54@01)
        (or
          (<=
            q$v@54@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)
          (not
            (<=
              q$v@54@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
    (or (<= 0 q$v@54@01) (not (<= 0 q$v@54@01))))))
(assert (or
  (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@53@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@53@01)
  (and
    (<= 0 q$a@53@01)
    (=>
      (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
        (=>
          (<= 0 q$v@54@01)
          (and
            (<= 0 q$v@54@01)
            (or
              (<=
                q$v@54@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (not
                (<=
                  q$v@54@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
        (or (<= 0 q$v@54@01) (not (<= 0 q$v@54@01)))))
    (or
      (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@53@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@53@01) (not (<= 0 q$a@53@01))))
(assert (and
  (<= 0 q$a@53@01)
  (and
    (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@54@01)
      (and
        (<=
          q$v@54@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (<= q$v@54@01 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))))))
(declare-const sm@55@01 $PSF<$accessible$withdraw>)
(declare-const s@56@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@57@01 (Int Int Int Int) Int)
(declare-fun img@58@01 (Int Int Int Int) Bool)
(declare-fun inv@59@01 (Int Int Int Int) Int)
(declare-fun img@60@01 (Int Int Int Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((q$a@53@01 Int) (q$v@54@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@53@01)
      (and
        (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@54@01)
          (and
            (<=
              q$v@54@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@54@01 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1)))))))
    (and
      (=>
        (<= 0 q$a@53@01)
        (and
          (<= 0 q$a@53@01)
          (=>
            (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
              (=>
                (<= 0 q$v@54@01)
                (and
                  (<= 0 q$v@54@01)
                  (or
                    (<=
                      q$v@54@01
                      115792089237316195423570985008687907853269984665640564039457584007913129639935)
                    (not
                      (<=
                        q$v@54@01
                        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
              (or (<= 0 q$v@54@01) (not (<= 0 q$v@54@01)))))
          (or
            (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
            (not
              (<= q$a@53@01 1461501637330902918203684832716283019655932542975)))))
      (or (<= 0 q$a@53@01) (not (<= 0 q$a@53@01)))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@53@01))
      ($SortWrappers.IntTo$Snap q$v@54@01))
    ($SortWrappers.IntTo$Snap q$v@54@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@53@01))
      ($SortWrappers.IntTo$Snap q$v@54@01))
    ($SortWrappers.IntTo$Snap q$v@54@01))))
  :qid |$accessible$withdraw-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q$a1@53@01 Int) (q$v1@54@01 Int) (q$a2@53@01 Int) (q$v2@54@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 q$a1@53@01)
        (and
          (<= q$a1@53@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v1@54@01)
            (and
              (<=
                q$v1@54@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v1@54@01
                ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1)))))))
      (and
        (<= 0 q$a2@53@01)
        (and
          (<= q$a2@53@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v2@54@01)
            (and
              (<=
                q$v2@54@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v2@54@01
                ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1)))))))
      (and
        (and (= q$a1@53@01 q$a2@53@01) (= q$v1@54@01 q$v2@54@01))
        (= q$v1@54@01 q$v2@54@01)))
    (and (= q$a1@53@01 q$a2@53@01) (= q$v1@54@01 q$v2@54@01)))
  
  :qid |$accessible$withdraw-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q$a@53@01 Int) (q$v@54@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@53@01)
      (and
        (<= q$a@53@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@54@01)
          (and
            (<=
              q$v@54@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@54@01 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1)))))))
    (and
      (and
        (= (inv@57@01 0 q$a@53@01 q$v@54@01 q$v@54@01) q$a@53@01)
        (= (inv@59@01 0 q$a@53@01 q$v@54@01 q$v@54@01) q$v@54@01))
      (and
        (img@58@01 0 q$a@53@01 q$v@54@01 q$v@54@01)
        (img@60@01 0 q$a@53@01 q$v@54@01 q$v@54@01))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@53@01))
      ($SortWrappers.IntTo$Snap q$v@54@01))
    ($SortWrappers.IntTo$Snap q$v@54@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@53@01))
      ($SortWrappers.IntTo$Snap q$v@54@01))
    ($SortWrappers.IntTo$Snap q$v@54@01))))
  :qid |quant-u-1287|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and (img@58@01 $tag $to $amount $arg0) (img@60@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@57@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@57@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@59@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@59@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@59@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))))))
    (and
      (= 0 $tag)
      (= (inv@57@01 $tag $to $amount $arg0) $to)
      (= (inv@59@01 $tag $to $amount $arg0) $amount)
      (= (inv@59@01 $tag $to $amount $arg0) $arg0)))
  :pattern ((inv@57@01 $tag $to $amount $arg0))
  :pattern ((inv@59@01 $tag $to $amount $arg0))
  :qid |$accessible$withdraw-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@61@01 $PSF<$accessible$withdraw>)
(declare-const s@62@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@62@01 $Snap)) (!
  (=>
    (and
      (and
        (img@58@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@62@01))) ($SortWrappers.$SnapToInt ($Snap.second s@62@01)))
        (img@60@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@62@01))) ($SortWrappers.$SnapToInt ($Snap.second s@62@01))))
      (and
        (<=
          0
          (inv@57@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@62@01))) ($SortWrappers.$SnapToInt ($Snap.second s@62@01))))
        (and
          (<=
            (inv@57@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@62@01))) ($SortWrappers.$SnapToInt ($Snap.second s@62@01)))
            1461501637330902918203684832716283019655932542975)
          (and
            (<=
              0
              (inv@59@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@62@01))) ($SortWrappers.$SnapToInt ($Snap.second s@62@01))))
            (and
              (<=
                (inv@59@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@62@01))) ($SortWrappers.$SnapToInt ($Snap.second s@62@01)))
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@59@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@62@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@62@01))) ($SortWrappers.$SnapToInt ($Snap.second s@62@01)))
                ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))))))
    (and
      (not (= s@62@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@61@01  $PSF<$accessible$withdraw>) s@62@01)
        ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) s@62@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@61@01  $PSF<$accessible$withdraw>) s@62@01))
  :pattern (($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) s@62@01))
  :qid |qp.psmValDef1|)))
(assert (forall ((s@62@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) s@62@01) s@62@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@61@01  $PSF<$accessible$withdraw>) s@62@01))
  :qid |qp.psmResTrgDef2|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (<= 0 (inv@57@01 $tag $to $amount $arg0))
      (and
        (<=
          (inv@57@01 $tag $to $amount $arg0)
          1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 (inv@59@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@59@01 $tag $to $amount $arg0)
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<=
              (inv@59@01 $tag $to $amount $arg0)
              ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1)))))))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@61@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern ((inv@57@01 $tag $to $amount $arg0) (inv@59@01 $tag $to $amount $arg0))
  :qid |quant-u-1288|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@64@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@64@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $a@64@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $a@64@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $a@64@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@642@11@642@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true &&
;   (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935 &&
;     q$v <= ($struct_get($struct_loc($self$1, 1)): Int))) ==>
;     acc($accessible$withdraw(0, q$a, q$v, q$v), write))
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 ($Snap.combine ($Snap.first $t@65@01) ($Snap.second $t@65@01))))
(assert (= ($Snap.first $t@65@01) $Snap.unit))
(declare-const q$a@66@01 Int)
(declare-const q$v@67@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 && q$v <= ($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] 0 <= q$a
(push) ; 4
; [then-branch: 10 | !(0 <= q$a@66@01) | live]
; [else-branch: 10 | 0 <= q$a@66@01 | live]
(push) ; 5
; [then-branch: 10 | !(0 <= q$a@66@01)]
(assert (not (<= 0 q$a@66@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | 0 <= q$a@66@01]
(assert (<= 0 q$a@66@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 6
; [then-branch: 11 | !(q$a@66@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 11 | q$a@66@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 7
; [then-branch: 11 | !(q$a@66@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@66@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 7
(push) ; 7
; [else-branch: 11 | q$a@66@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@66@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 8
; [then-branch: 12 | !(0 <= q$v@67@01) | live]
; [else-branch: 12 | 0 <= q$v@67@01 | live]
(push) ; 9
; [then-branch: 12 | !(0 <= q$v@67@01)]
(assert (not (<= 0 q$v@67@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 12 | 0 <= q$v@67@01]
(assert (<= 0 q$v@67@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(push) ; 10
; [then-branch: 13 | !(q$v@67@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 13 | q$v@67@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
(push) ; 11
; [then-branch: 13 | !(q$v@67@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (<=
    q$v@67@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 11
(push) ; 11
; [else-branch: 13 | q$v@67@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (<=
  q$v@67@01
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] q$v <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    q$v@67@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)
  (not
    (<=
      q$v@67@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$v@67@01)
  (and
    (<= 0 q$v@67@01)
    (or
      (<=
        q$v@67@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)
      (not
        (<=
          q$v@67@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(assert (or (<= 0 q$v@67@01) (not (<= 0 q$v@67@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
    (=>
      (<= 0 q$v@67@01)
      (and
        (<= 0 q$v@67@01)
        (or
          (<=
            q$v@67@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)
          (not
            (<=
              q$v@67@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
    (or (<= 0 q$v@67@01) (not (<= 0 q$v@67@01))))))
(assert (or
  (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@66@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@66@01)
  (and
    (<= 0 q$a@66@01)
    (=>
      (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
        (=>
          (<= 0 q$v@67@01)
          (and
            (<= 0 q$v@67@01)
            (or
              (<=
                q$v@67@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (not
                (<=
                  q$v@67@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
        (or (<= 0 q$v@67@01) (not (<= 0 q$v@67@01)))))
    (or
      (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@66@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@66@01) (not (<= 0 q$a@66@01))))
(assert (and
  (<= 0 q$a@66@01)
  (and
    (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@67@01)
      (and
        (<=
          q$v@67@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (<= q$v@67@01 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))))))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@68@01 (Int Int Int Int) Int)
(declare-fun img@69@01 (Int Int Int Int) Bool)
(declare-fun inv@70@01 (Int Int Int Int) Int)
(declare-fun img@71@01 (Int Int Int Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((q$a@66@01 Int) (q$v@67@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@66@01)
      (and
        (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@67@01)
          (and
            (<=
              q$v@67@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@67@01 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1)))))))
    (and
      (=>
        (<= 0 q$a@66@01)
        (and
          (<= 0 q$a@66@01)
          (=>
            (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
              (=>
                (<= 0 q$v@67@01)
                (and
                  (<= 0 q$v@67@01)
                  (or
                    (<=
                      q$v@67@01
                      115792089237316195423570985008687907853269984665640564039457584007913129639935)
                    (not
                      (<=
                        q$v@67@01
                        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
              (or (<= 0 q$v@67@01) (not (<= 0 q$v@67@01)))))
          (or
            (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
            (not
              (<= q$a@66@01 1461501637330902918203684832716283019655932542975)))))
      (or (<= 0 q$a@66@01) (not (<= 0 q$a@66@01)))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@65@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@66@01))
      ($SortWrappers.IntTo$Snap q$v@67@01))
    ($SortWrappers.IntTo$Snap q$v@67@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@66@01))
      ($SortWrappers.IntTo$Snap q$v@67@01))
    ($SortWrappers.IntTo$Snap q$v@67@01))))
  :qid |$accessible$withdraw-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q$a1@66@01 Int) (q$v1@67@01 Int) (q$a2@66@01 Int) (q$v2@67@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 q$a1@66@01)
        (and
          (<= q$a1@66@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v1@67@01)
            (and
              (<=
                q$v1@67@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v1@67@01
                ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1)))))))
      (and
        (<= 0 q$a2@66@01)
        (and
          (<= q$a2@66@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v2@67@01)
            (and
              (<=
                q$v2@67@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v2@67@01
                ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1)))))))
      (and
        (and (= q$a1@66@01 q$a2@66@01) (= q$v1@67@01 q$v2@67@01))
        (= q$v1@67@01 q$v2@67@01)))
    (and (= q$a1@66@01 q$a2@66@01) (= q$v1@67@01 q$v2@67@01)))
  
  :qid |$accessible$withdraw-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q$a@66@01 Int) (q$v@67@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@66@01)
      (and
        (<= q$a@66@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@67@01)
          (and
            (<=
              q$v@67@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@67@01 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1)))))))
    (and
      (and
        (= (inv@68@01 0 q$a@66@01 q$v@67@01 q$v@67@01) q$a@66@01)
        (= (inv@70@01 0 q$a@66@01 q$v@67@01 q$v@67@01) q$v@67@01))
      (and
        (img@69@01 0 q$a@66@01 q$v@67@01 q$v@67@01)
        (img@71@01 0 q$a@66@01 q$v@67@01 q$v@67@01))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@65@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@66@01))
      ($SortWrappers.IntTo$Snap q$v@67@01))
    ($SortWrappers.IntTo$Snap q$v@67@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@66@01))
      ($SortWrappers.IntTo$Snap q$v@67@01))
    ($SortWrappers.IntTo$Snap q$v@67@01))))
  :qid |quant-u-1290|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and (img@69@01 $tag $to $amount $arg0) (img@71@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@68@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@68@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@70@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@70@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@70@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))))))
    (and
      (= 0 $tag)
      (= (inv@68@01 $tag $to $amount $arg0) $to)
      (= (inv@70@01 $tag $to $amount $arg0) $amount)
      (= (inv@70@01 $tag $to $amount $arg0) $arg0)))
  :pattern ((inv@68@01 $tag $to $amount $arg0))
  :pattern ((inv@70@01 $tag $to $amount $arg0))
  :qid |$accessible$withdraw-fctOfInv|)))
; Permissions are non-negative
(push) ; 3
(set-option :timeout 10)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    (and
      (and (img@69@01 $tag $to $amount $arg0) (img@71@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@68@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@68@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@70@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@70@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@70@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))))))
    (and
      (and (img@58@01 $tag $to $amount $arg0) (img@60@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@57@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@57@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@59@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@59@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@59@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1)))))))))
  
  :qid |quant-u-1291|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@72@01 $PSF<$accessible$withdraw>)
(declare-const s@73@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@73@01 $Snap)) (!
  (=>
    (and
      (and
        (img@58@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01)))
        (img@60@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01))))
      (and
        (<=
          0
          (inv@57@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01))))
        (and
          (<=
            (inv@57@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01)))
            1461501637330902918203684832716283019655932542975)
          (and
            (<=
              0
              (inv@59@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01))))
            (and
              (<=
                (inv@59@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01)))
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@59@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01)))
                ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))))))
    (and
      (not (= s@73@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@72@01  $PSF<$accessible$withdraw>) s@73@01)
        ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) s@73@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@72@01  $PSF<$accessible$withdraw>) s@73@01))
  :pattern (($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) s@73@01))
  :qid |qp.psmValDef3|)))
(assert (forall ((s@73@01 $Snap)) (!
  (=>
    (and
      (and
        (img@69@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01)))
        (img@71@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01))))
      (and
        (<=
          0
          (inv@68@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01))))
        (and
          (<=
            (inv@68@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01)))
            1461501637330902918203684832716283019655932542975)
          (and
            (<=
              0
              (inv@70@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01))))
            (and
              (<=
                (inv@70@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01)))
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@70@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@73@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@73@01))) ($SortWrappers.$SnapToInt ($Snap.second s@73@01)))
                ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))))))
    (and
      (not (= s@73@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@72@01  $PSF<$accessible$withdraw>) s@73@01)
        ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@65@01)) s@73@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@72@01  $PSF<$accessible$withdraw>) s@73@01))
  :pattern (($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@65@01)) s@73@01))
  :qid |qp.psmValDef4|)))
(assert (forall ((s@73@01 $Snap)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) s@73@01) s@73@01)
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@65@01)) s@73@01) s@73@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@72@01  $PSF<$accessible$withdraw>) s@73@01))
  :qid |qp.psmResTrgDef5|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (<= 0 (inv@68@01 $tag $to $amount $arg0))
      (and
        (<=
          (inv@68@01 $tag $to $amount $arg0)
          1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 (inv@70@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@70@01 $tag $to $amount $arg0)
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<=
              (inv@70@01 $tag $to $amount $arg0)
              ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1)))))))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@72@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern ((inv@68@01 $tag $to $amount $arg0) (inv@70@01 $tag $to $amount $arg0))
  :qid |quant-u-1292|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@75@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 4)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@75@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $a@75@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $a@75@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $a@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@644@11@644@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true &&
;   (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935 &&
;     q$v <= ($struct_get($struct_loc($self$2, 1)): Int))) ==>
;     acc($accessible$withdraw(0, q$a, q$v, q$v), write))
(declare-const $t@76@01 $Snap)
(assert (= $t@76@01 ($Snap.combine ($Snap.first $t@76@01) ($Snap.second $t@76@01))))
(assert (= ($Snap.first $t@76@01) $Snap.unit))
(declare-const q$a@77@01 Int)
(declare-const q$v@78@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 && q$v <= ($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] 0 <= q$a
(push) ; 4
; [then-branch: 14 | !(0 <= q$a@77@01) | live]
; [else-branch: 14 | 0 <= q$a@77@01 | live]
(push) ; 5
; [then-branch: 14 | !(0 <= q$a@77@01)]
(assert (not (<= 0 q$a@77@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | 0 <= q$a@77@01]
(assert (<= 0 q$a@77@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 6
; [then-branch: 15 | !(q$a@77@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 15 | q$a@77@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 7
; [then-branch: 15 | !(q$a@77@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@77@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 7
(push) ; 7
; [else-branch: 15 | q$a@77@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@77@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 8
; [then-branch: 16 | !(0 <= q$v@78@01) | live]
; [else-branch: 16 | 0 <= q$v@78@01 | live]
(push) ; 9
; [then-branch: 16 | !(0 <= q$v@78@01)]
(assert (not (<= 0 q$v@78@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 16 | 0 <= q$v@78@01]
(assert (<= 0 q$v@78@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(push) ; 10
; [then-branch: 17 | !(q$v@78@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 17 | q$v@78@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
(push) ; 11
; [then-branch: 17 | !(q$v@78@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (<=
    q$v@78@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 11
(push) ; 11
; [else-branch: 17 | q$v@78@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (<=
  q$v@78@01
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] q$v <= ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    q$v@78@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)
  (not
    (<=
      q$v@78@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$v@78@01)
  (and
    (<= 0 q$v@78@01)
    (or
      (<=
        q$v@78@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)
      (not
        (<=
          q$v@78@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(assert (or (<= 0 q$v@78@01) (not (<= 0 q$v@78@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
    (=>
      (<= 0 q$v@78@01)
      (and
        (<= 0 q$v@78@01)
        (or
          (<=
            q$v@78@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)
          (not
            (<=
              q$v@78@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
    (or (<= 0 q$v@78@01) (not (<= 0 q$v@78@01))))))
(assert (or
  (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@77@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@77@01)
  (and
    (<= 0 q$a@77@01)
    (=>
      (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
        (=>
          (<= 0 q$v@78@01)
          (and
            (<= 0 q$v@78@01)
            (or
              (<=
                q$v@78@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (not
                (<=
                  q$v@78@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
        (or (<= 0 q$v@78@01) (not (<= 0 q$v@78@01)))))
    (or
      (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@77@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@77@01) (not (<= 0 q$a@77@01))))
(assert (and
  (<= 0 q$a@77@01)
  (and
    (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@78@01)
      (and
        (<=
          q$v@78@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (<= q$v@78@01 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@79@01 (Int Int Int Int) Int)
(declare-fun img@80@01 (Int Int Int Int) Bool)
(declare-fun inv@81@01 (Int Int Int Int) Int)
(declare-fun img@82@01 (Int Int Int Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((q$a@77@01 Int) (q$v@78@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@77@01)
      (and
        (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@78@01)
          (and
            (<=
              q$v@78@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@78@01 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
    (and
      (=>
        (<= 0 q$a@77@01)
        (and
          (<= 0 q$a@77@01)
          (=>
            (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
              (=>
                (<= 0 q$v@78@01)
                (and
                  (<= 0 q$v@78@01)
                  (or
                    (<=
                      q$v@78@01
                      115792089237316195423570985008687907853269984665640564039457584007913129639935)
                    (not
                      (<=
                        q$v@78@01
                        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
              (or (<= 0 q$v@78@01) (not (<= 0 q$v@78@01)))))
          (or
            (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
            (not
              (<= q$a@77@01 1461501637330902918203684832716283019655932542975)))))
      (or (<= 0 q$a@77@01) (not (<= 0 q$a@77@01)))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@76@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@77@01))
      ($SortWrappers.IntTo$Snap q$v@78@01))
    ($SortWrappers.IntTo$Snap q$v@78@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@77@01))
      ($SortWrappers.IntTo$Snap q$v@78@01))
    ($SortWrappers.IntTo$Snap q$v@78@01))))
  :qid |$accessible$withdraw-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q$a1@77@01 Int) (q$v1@78@01 Int) (q$a2@77@01 Int) (q$v2@78@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 q$a1@77@01)
        (and
          (<= q$a1@77@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v1@78@01)
            (and
              (<=
                q$v1@78@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v1@78@01
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
      (and
        (<= 0 q$a2@77@01)
        (and
          (<= q$a2@77@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v2@78@01)
            (and
              (<=
                q$v2@78@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v2@78@01
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
      (and
        (and (= q$a1@77@01 q$a2@77@01) (= q$v1@78@01 q$v2@78@01))
        (= q$v1@78@01 q$v2@78@01)))
    (and (= q$a1@77@01 q$a2@77@01) (= q$v1@78@01 q$v2@78@01)))
  
  :qid |$accessible$withdraw-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q$a@77@01 Int) (q$v@78@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@77@01)
      (and
        (<= q$a@77@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@78@01)
          (and
            (<=
              q$v@78@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@78@01 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
    (and
      (and
        (= (inv@79@01 0 q$a@77@01 q$v@78@01 q$v@78@01) q$a@77@01)
        (= (inv@81@01 0 q$a@77@01 q$v@78@01 q$v@78@01) q$v@78@01))
      (and
        (img@80@01 0 q$a@77@01 q$v@78@01 q$v@78@01)
        (img@82@01 0 q$a@77@01 q$v@78@01 q$v@78@01))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@76@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@77@01))
      ($SortWrappers.IntTo$Snap q$v@78@01))
    ($SortWrappers.IntTo$Snap q$v@78@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@77@01))
      ($SortWrappers.IntTo$Snap q$v@78@01))
    ($SortWrappers.IntTo$Snap q$v@78@01))))
  :qid |quant-u-1294|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and (img@80@01 $tag $to $amount $arg0) (img@82@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@79@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@79@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@81@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@81@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@81@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))))
    (and
      (= 0 $tag)
      (= (inv@79@01 $tag $to $amount $arg0) $to)
      (= (inv@81@01 $tag $to $amount $arg0) $amount)
      (= (inv@81@01 $tag $to $amount $arg0) $arg0)))
  :pattern ((inv@79@01 $tag $to $amount $arg0))
  :pattern ((inv@81@01 $tag $to $amount $arg0))
  :qid |$accessible$withdraw-fctOfInv|)))
; Permissions are non-negative
(push) ; 3
(set-option :timeout 10)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    (and
      (and (img@80@01 $tag $to $amount $arg0) (img@82@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@79@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@79@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@81@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@81@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@81@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))))
    (and
      (and (img@69@01 $tag $to $amount $arg0) (img@71@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@68@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@68@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@70@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@70@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@70@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1)))))))))
  
  :qid |quant-u-1295|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    (and
      (and (img@80@01 $tag $to $amount $arg0) (img@82@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@79@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@79@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@81@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@81@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@81@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))))
    (and
      (and (img@58@01 $tag $to $amount $arg0) (img@60@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@57@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@57@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@59@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@59@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@59@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1)))))))))
  
  :qid |quant-u-1296|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@83@01 $PSF<$accessible$withdraw>)
(declare-const s@84@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@84@01 $Snap)) (!
  (=>
    (and
      (and
        (img@58@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
        (img@60@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01))))
      (and
        (<=
          0
          (inv@57@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01))))
        (and
          (<=
            (inv@57@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
            1461501637330902918203684832716283019655932542975)
          (and
            (<=
              0
              (inv@59@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01))))
            (and
              (<=
                (inv@59@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@59@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
                ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))))))
    (and
      (not (= s@84@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) s@84@01)
        ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) s@84@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) s@84@01))
  :pattern (($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) s@84@01))
  :qid |qp.psmValDef6|)))
(assert (forall ((s@84@01 $Snap)) (!
  (=>
    (and
      (and
        (img@69@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
        (img@71@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01))))
      (and
        (<=
          0
          (inv@68@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01))))
        (and
          (<=
            (inv@68@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
            1461501637330902918203684832716283019655932542975)
          (and
            (<=
              0
              (inv@70@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01))))
            (and
              (<=
                (inv@70@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@70@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
                ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))))))
    (and
      (not (= s@84@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) s@84@01)
        ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@65@01)) s@84@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) s@84@01))
  :pattern (($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@65@01)) s@84@01))
  :qid |qp.psmValDef7|)))
(assert (forall ((s@84@01 $Snap)) (!
  (=>
    (and
      (and
        (img@80@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
        (img@82@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01))))
      (and
        (<=
          0
          (inv@79@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01))))
        (and
          (<=
            (inv@79@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
            1461501637330902918203684832716283019655932542975)
          (and
            (<=
              0
              (inv@81@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01))))
            (and
              (<=
                (inv@81@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@81@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@84@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@84@01))) ($SortWrappers.$SnapToInt ($Snap.second s@84@01)))
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))))
    (and
      (not (= s@84@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) s@84@01)
        ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@76@01)) s@84@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) s@84@01))
  :pattern (($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@76@01)) s@84@01))
  :qid |qp.psmValDef8|)))
(assert (forall ((s@84@01 $Snap)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@52@01)) s@84@01) s@84@01)
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@65@01)) s@84@01) s@84@01)
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@76@01)) s@84@01) s@84@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) s@84@01))
  :qid |qp.psmResTrgDef9|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (<= 0 (inv@79@01 $tag $to $amount $arg0))
      (and
        (<=
          (inv@79@01 $tag $to $amount $arg0)
          1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 (inv@81@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@81@01 $tag $to $amount $arg0)
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<=
              (inv@81@01 $tag $to $amount $arg0)
              ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern ((inv@79@01 $tag $to $amount $arg0) (inv@81@01 $tag $to $amount $arg0))
  :qid |quant-u-1297|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert true &&
;   (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935 &&
;     q$v <= ($struct_get($struct_loc($self$2, 1)): Int))) ==>
;     acc($accessible$withdraw(0, q$a, q$v, q$v), write))
(declare-const q$a@85@01 Int)
(declare-const q$v@86@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 && q$v <= ($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] 0 <= q$a
(push) ; 4
; [then-branch: 18 | !(0 <= q$a@85@01) | live]
; [else-branch: 18 | 0 <= q$a@85@01 | live]
(push) ; 5
; [then-branch: 18 | !(0 <= q$a@85@01)]
(assert (not (<= 0 q$a@85@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | 0 <= q$a@85@01]
(assert (<= 0 q$a@85@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 6
; [then-branch: 19 | !(q$a@85@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 19 | q$a@85@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 7
; [then-branch: 19 | !(q$a@85@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@85@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 7
(push) ; 7
; [else-branch: 19 | q$a@85@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@85@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 8
; [then-branch: 20 | !(0 <= q$v@86@01) | live]
; [else-branch: 20 | 0 <= q$v@86@01 | live]
(push) ; 9
; [then-branch: 20 | !(0 <= q$v@86@01)]
(assert (not (<= 0 q$v@86@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 20 | 0 <= q$v@86@01]
(assert (<= 0 q$v@86@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(push) ; 10
; [then-branch: 21 | !(q$v@86@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 21 | q$v@86@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
(push) ; 11
; [then-branch: 21 | !(q$v@86@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (<=
    q$v@86@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 11
(push) ; 11
; [else-branch: 21 | q$v@86@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (<=
  q$v@86@01
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] q$v <= ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    q$v@86@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)
  (not
    (<=
      q$v@86@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$v@86@01)
  (and
    (<= 0 q$v@86@01)
    (or
      (<=
        q$v@86@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)
      (not
        (<=
          q$v@86@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(assert (or (<= 0 q$v@86@01) (not (<= 0 q$v@86@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
    (=>
      (<= 0 q$v@86@01)
      (and
        (<= 0 q$v@86@01)
        (or
          (<=
            q$v@86@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)
          (not
            (<=
              q$v@86@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
    (or (<= 0 q$v@86@01) (not (<= 0 q$v@86@01))))))
(assert (or
  (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@85@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@85@01)
  (and
    (<= 0 q$a@85@01)
    (=>
      (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
        (=>
          (<= 0 q$v@86@01)
          (and
            (<= 0 q$v@86@01)
            (or
              (<=
                q$v@86@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (not
                (<=
                  q$v@86@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
        (or (<= 0 q$v@86@01) (not (<= 0 q$v@86@01)))))
    (or
      (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@85@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@85@01) (not (<= 0 q$a@85@01))))
(assert (and
  (<= 0 q$a@85@01)
  (and
    (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@86@01)
      (and
        (<=
          q$v@86@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (<= q$v@86@01 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@87@01 (Int Int Int Int) Int)
(declare-fun img@88@01 (Int Int Int Int) Bool)
(declare-fun inv@89@01 (Int Int Int Int) Int)
(declare-fun img@90@01 (Int Int Int Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((q$a@85@01 Int) (q$v@86@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@85@01)
      (and
        (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@86@01)
          (and
            (<=
              q$v@86@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@86@01 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
    (and
      (=>
        (<= 0 q$a@85@01)
        (and
          (<= 0 q$a@85@01)
          (=>
            (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
              (=>
                (<= 0 q$v@86@01)
                (and
                  (<= 0 q$v@86@01)
                  (or
                    (<=
                      q$v@86@01
                      115792089237316195423570985008687907853269984665640564039457584007913129639935)
                    (not
                      (<=
                        q$v@86@01
                        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
              (or (<= 0 q$v@86@01) (not (<= 0 q$v@86@01)))))
          (or
            (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
            (not
              (<= q$a@85@01 1461501637330902918203684832716283019655932542975)))))
      (or (<= 0 q$a@85@01) (not (<= 0 q$a@85@01)))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@85@01))
      ($SortWrappers.IntTo$Snap q$v@86@01))
    ($SortWrappers.IntTo$Snap q$v@86@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@85@01))
      ($SortWrappers.IntTo$Snap q$v@86@01))
    ($SortWrappers.IntTo$Snap q$v@86@01))))
  :qid |$accessible$withdraw-aux|)))
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q$a1@85@01 Int) (q$v1@86@01 Int) (q$a2@85@01 Int) (q$v2@86@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 q$a1@85@01)
          (and
            (<= q$a1@85@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v1@86@01)
              (and
                (<=
                  q$v1@86@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  q$v1@86@01
                  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
        ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap q$a1@85@01))
            ($SortWrappers.IntTo$Snap q$v1@86@01))
          ($SortWrappers.IntTo$Snap q$v1@86@01))) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap q$a1@85@01))
            ($SortWrappers.IntTo$Snap q$v1@86@01))
          ($SortWrappers.IntTo$Snap q$v1@86@01))))
      (and
        (and
          (<= 0 q$a2@85@01)
          (and
            (<= q$a2@85@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v2@86@01)
              (and
                (<=
                  q$v2@86@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  q$v2@86@01
                  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
        ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap q$a2@85@01))
            ($SortWrappers.IntTo$Snap q$v2@86@01))
          ($SortWrappers.IntTo$Snap q$v2@86@01))) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap q$a2@85@01))
            ($SortWrappers.IntTo$Snap q$v2@86@01))
          ($SortWrappers.IntTo$Snap q$v2@86@01))))
      (and
        (and (= q$a1@85@01 q$a2@85@01) (= q$v1@86@01 q$v2@86@01))
        (= q$v1@86@01 q$v2@86@01)))
    (and (= q$a1@85@01 q$a2@85@01) (= q$v1@86@01 q$v2@86@01)))
  
  :qid |$accessible$withdraw-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q$a@85@01 Int) (q$v@86@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@85@01)
      (and
        (<= q$a@85@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@86@01)
          (and
            (<=
              q$v@86@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@86@01 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
    (and
      (and
        (= (inv@87@01 0 q$a@85@01 q$v@86@01 q$v@86@01) q$a@85@01)
        (= (inv@89@01 0 q$a@85@01 q$v@86@01 q$v@86@01) q$v@86@01))
      (and
        (img@88@01 0 q$a@85@01 q$v@86@01 q$v@86@01)
        (img@90@01 0 q$a@85@01 q$v@86@01 q$v@86@01))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@85@01))
      ($SortWrappers.IntTo$Snap q$v@86@01))
    ($SortWrappers.IntTo$Snap q$v@86@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@85@01))
      ($SortWrappers.IntTo$Snap q$v@86@01))
    ($SortWrappers.IntTo$Snap q$v@86@01))))
  :qid |$accessible$withdraw-invOfFct|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and (img@88@01 $tag $to $amount $arg0) (img@90@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@87@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@87@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@89@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))))
    (and
      (= 0 $tag)
      (= (inv@87@01 $tag $to $amount $arg0) $to)
      (= (inv@89@01 $tag $to $amount $arg0) $amount)
      (= (inv@89@01 $tag $to $amount $arg0) $arg0)))
  :pattern ((inv@87@01 $tag $to $amount $arg0))
  :pattern ((inv@89@01 $tag $to $amount $arg0))
  :qid |$accessible$withdraw-fctOfInv|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (<= 0 (inv@87@01 $tag $to $amount $arg0))
      (and
        (<=
          (inv@87@01 $tag $to $amount $arg0)
          1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 (inv@89@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@89@01 $tag $to $amount $arg0)
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<=
              (inv@89@01 $tag $to $amount $arg0)
              ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@83@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern ((inv@87@01 $tag $to $amount $arg0) (inv@89@01 $tag $to $amount $arg0))
  :qid |quant-u-1299|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@91@01 (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@87@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@87@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@89@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
      (and (img@88@01 $tag $to $amount $arg0) (img@90@01 $tag $to $amount $arg0))
      (and
        (= $tag 0)
        (= $to (inv@87@01 $tag $to $amount $arg0))
        (= $amount (inv@89@01 $tag $to $amount $arg0))
        (= $arg0 (inv@89@01 $tag $to $amount $arg0))))
    ($Perm.min
      (ite
        (and
          (and
            (img@58@01 $tag $to $amount $arg0)
            (img@60@01 $tag $to $amount $arg0))
          (and
            (<= 0 (inv@57@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@57@01 $tag $to $amount $arg0)
                1461501637330902918203684832716283019655932542975)
              (and
                (<= 0 (inv@59@01 $tag $to $amount $arg0))
                (and
                  (<=
                    (inv@59@01 $tag $to $amount $arg0)
                    115792089237316195423570985008687907853269984665640564039457584007913129639935)
                  (<=
                    (inv@59@01 $tag $to $amount $arg0)
                    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@92@01 (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@87@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@87@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@89@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
      (and (img@88@01 $tag $to $amount $arg0) (img@90@01 $tag $to $amount $arg0))
      (and
        (= $tag 0)
        (= $to (inv@87@01 $tag $to $amount $arg0))
        (= $amount (inv@89@01 $tag $to $amount $arg0))
        (= $arg0 (inv@89@01 $tag $to $amount $arg0))))
    ($Perm.min
      (ite
        (and
          (and
            (img@69@01 $tag $to $amount $arg0)
            (img@71@01 $tag $to $amount $arg0))
          (and
            (<= 0 (inv@68@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@68@01 $tag $to $amount $arg0)
                1461501637330902918203684832716283019655932542975)
              (and
                (<= 0 (inv@70@01 $tag $to $amount $arg0))
                (and
                  (<=
                    (inv@70@01 $tag $to $amount $arg0)
                    115792089237316195423570985008687907853269984665640564039457584007913129639935)
                  (<=
                    (inv@70@01 $tag $to $amount $arg0)
                    ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))))))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@91@01 $tag $to $amount $arg0)))
    $Perm.No))
(define-fun pTaken@93@01 (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@87@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@87@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@89@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
      (and (img@88@01 $tag $to $amount $arg0) (img@90@01 $tag $to $amount $arg0))
      (and
        (= $tag 0)
        (= $to (inv@87@01 $tag $to $amount $arg0))
        (= $amount (inv@89@01 $tag $to $amount $arg0))
        (= $arg0 (inv@89@01 $tag $to $amount $arg0))))
    ($Perm.min
      (ite
        (and
          (and
            (img@80@01 $tag $to $amount $arg0)
            (img@82@01 $tag $to $amount $arg0))
          (and
            (<= 0 (inv@79@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@79@01 $tag $to $amount $arg0)
                1461501637330902918203684832716283019655932542975)
              (and
                (<= 0 (inv@81@01 $tag $to $amount $arg0))
                (and
                  (<=
                    (inv@81@01 $tag $to $amount $arg0)
                    115792089237316195423570985008687907853269984665640564039457584007913129639935)
                  (<=
                    (inv@81@01 $tag $to $amount $arg0)
                    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))))
        $Perm.Write
        $Perm.No)
      (-
        (- $Perm.Write (pTaken@91@01 $tag $to $amount $arg0))
        (pTaken@92@01 $tag $to $amount $arg0)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    (-
      (ite
        (and
          (and
            (img@58@01 $tag $to $amount $arg0)
            (img@60@01 $tag $to $amount $arg0))
          (and
            (<= 0 (inv@57@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@57@01 $tag $to $amount $arg0)
                1461501637330902918203684832716283019655932542975)
              (and
                (<= 0 (inv@59@01 $tag $to $amount $arg0))
                (and
                  (<=
                    (inv@59@01 $tag $to $amount $arg0)
                    115792089237316195423570985008687907853269984665640564039457584007913129639935)
                  (<=
                    (inv@59@01 $tag $to $amount $arg0)
                    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))))))
        $Perm.Write
        $Perm.No)
      (pTaken@91@01 $tag $to $amount $arg0))
    $Perm.No)
  
  :qid |quant-u-1301|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (= (pTaken@91@01 $tag $to $amount $arg0) $Perm.No)
  
  :qid |quant-u-1302|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and
        (<= 0 (inv@87@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@87@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@89@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
      (and (img@88@01 $tag $to $amount $arg0) (img@90@01 $tag $to $amount $arg0))
      (and
        (= $tag 0)
        (= $to (inv@87@01 $tag $to $amount $arg0))
        (= $amount (inv@89@01 $tag $to $amount $arg0))
        (= $arg0 (inv@89@01 $tag $to $amount $arg0))))
    (= (- $Perm.Write (pTaken@91@01 $tag $to $amount $arg0)) $Perm.No))
  
  :qid |quant-u-1303|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    (-
      (ite
        (and
          (and
            (img@69@01 $tag $to $amount $arg0)
            (img@71@01 $tag $to $amount $arg0))
          (and
            (<= 0 (inv@68@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@68@01 $tag $to $amount $arg0)
                1461501637330902918203684832716283019655932542975)
              (and
                (<= 0 (inv@70@01 $tag $to $amount $arg0))
                (and
                  (<=
                    (inv@70@01 $tag $to $amount $arg0)
                    115792089237316195423570985008687907853269984665640564039457584007913129639935)
                  (<=
                    (inv@70@01 $tag $to $amount $arg0)
                    ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))))))
        $Perm.Write
        $Perm.No)
      (pTaken@92@01 $tag $to $amount $arg0))
    $Perm.No)
  
  :qid |quant-u-1304|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (= (pTaken@92@01 $tag $to $amount $arg0) $Perm.No)
  
  :qid |quant-u-1305|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and
        (<= 0 (inv@87@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@87@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@89@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
      (and (img@88@01 $tag $to $amount $arg0) (img@90@01 $tag $to $amount $arg0))
      (and
        (= $tag 0)
        (= $to (inv@87@01 $tag $to $amount $arg0))
        (= $amount (inv@89@01 $tag $to $amount $arg0))
        (= $arg0 (inv@89@01 $tag $to $amount $arg0))))
    (=
      (-
        (- $Perm.Write (pTaken@91@01 $tag $to $amount $arg0))
        (pTaken@92@01 $tag $to $amount $arg0))
      $Perm.No))
  
  :qid |quant-u-1306|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    (-
      (ite
        (and
          (and
            (img@80@01 $tag $to $amount $arg0)
            (img@82@01 $tag $to $amount $arg0))
          (and
            (<= 0 (inv@79@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@79@01 $tag $to $amount $arg0)
                1461501637330902918203684832716283019655932542975)
              (and
                (<= 0 (inv@81@01 $tag $to $amount $arg0))
                (and
                  (<=
                    (inv@81@01 $tag $to $amount $arg0)
                    115792089237316195423570985008687907853269984665640564039457584007913129639935)
                  (<=
                    (inv@81@01 $tag $to $amount $arg0)
                    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))))
        $Perm.Write
        $Perm.No)
      (pTaken@93@01 $tag $to $amount $arg0))
    $Perm.No)
  
  :qid |quant-u-1307|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (= (pTaken@93@01 $tag $to $amount $arg0) $Perm.No)
  
  :qid |quant-u-1308|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and
        (<= 0 (inv@87@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@87@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@89@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@89@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))))
      (and (img@88@01 $tag $to $amount $arg0) (img@90@01 $tag $to $amount $arg0))
      (and
        (= $tag 0)
        (= $to (inv@87@01 $tag $to $amount $arg0))
        (= $amount (inv@89@01 $tag $to $amount $arg0))
        (= $arg0 (inv@89@01 $tag $to $amount $arg0))))
    (=
      (-
        (-
          (- $Perm.Write (pTaken@91@01 $tag $to $amount $arg0))
          (pTaken@92@01 $tag $to $amount $arg0))
        (pTaken@93@01 $tag $to $amount $arg0))
      $Perm.No))
  
  :qid |quant-u-1309|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
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
(declare-const $self$0@94@01 $Struct)
; [exec]
; var $$contracts$0: $Map[Int, $Struct]
(declare-const $$contracts$0@95@01 $Map<Int~_$Struct>)
; [exec]
; var $self$1: $Struct
(declare-const $self$1@96@01 $Struct)
; [exec]
; var $$contracts$1: $Map[Int, $Struct]
(declare-const $$contracts$1@97@01 $Map<Int~_$Struct>)
; [exec]
; var block: $Struct
(declare-const block@98@01 $Struct)
; [exec]
; var $post: Bool
(declare-const $post@99@01 Bool)
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 0)): Int) &&
;   ($struct_get($struct_loc($self$0, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 ($Snap.combine ($Snap.first $t@100@01) ($Snap.second $t@100@01))))
(assert (= ($Snap.first $t@100@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@94@01 0))))
(assert (= ($Snap.second $t@100@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@94@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 ($Snap.combine ($Snap.first $t@101@01) ($Snap.second $t@101@01))))
(assert (= ($Snap.first $t@101@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@94@01 1))))
(assert (= ($Snap.second $t@101@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@94@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 ($Snap.combine ($Snap.first $t@102@01) ($Snap.second $t@102@01))))
(assert (= ($Snap.first $t@102@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@94@01 2))))
(assert (= ($Snap.second $t@102@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@94@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@104@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(push) ; 4
; [then-branch: 22 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@94@01, 4)), $q0@104@01)) | live]
; [else-branch: 22 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@94@01, 4)), $q0@104@01) | live]
(push) ; 5
; [then-branch: 22 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@94@01, 4)), $q0@104@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@104@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@94@01, 4)), $q0@104@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@104@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@104@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@104@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@104@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@104@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@104@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@660@11@660@354-aux|)))
(assert (forall (($q0@104@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@104@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@104@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@660@11@660@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int))
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int))
(declare-const $q0@106@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@106@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@106@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $q0@106@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@661@11@661@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@108@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(push) ; 4
; [then-branch: 23 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@94@01, 5)), $q1@108@01)) | live]
; [else-branch: 23 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@94@01, 5)), $q1@108@01) | live]
(push) ; 5
; [then-branch: 23 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@94@01, 5)), $q1@108@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@108@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 23 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@94@01, 5)), $q1@108@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@108@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@108@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@108@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@108@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@108@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@108@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@108@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@662@11@662@354-aux|)))
(assert (forall (($q1@108@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@108@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@108@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@108@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@662@11@662@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $q1@110@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@110@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@110@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 5)) $q1@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@663@11@663@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@111@01 $Snap)
(assert (= $t@111@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$0, -1)): Int)
; [eval] $struct_loc($self$0, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$0@94@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@112@01 $Snap)
(assert (= $t@112@01 ($Snap.combine ($Snap.first $t@112@01) ($Snap.second $t@112@01))))
(assert (= ($Snap.first $t@112@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 0))))
(assert (= ($Snap.second $t@112@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@113@01 $Snap)
(assert (= $t@113@01 ($Snap.combine ($Snap.first $t@113@01) ($Snap.second $t@113@01))))
(assert (= ($Snap.first $t@113@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1))))
(assert (= ($Snap.second $t@113@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@114@01 $Snap)
(assert (= $t@114@01 ($Snap.combine ($Snap.first $t@114@01) ($Snap.second $t@114@01))))
(assert (= ($Snap.first $t@114@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 2))))
(assert (= ($Snap.second $t@114@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@115@01 $Snap)
(assert (= $t@115@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@116@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(push) ; 4
; [then-branch: 24 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@96@01, 4)), $q0@116@01)) | live]
; [else-branch: 24 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@96@01, 4)), $q0@116@01) | live]
(push) ; 5
; [then-branch: 24 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@96@01, 4)), $q0@116@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@116@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@96@01, 4)), $q0@116@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@116@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@116@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@116@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@116@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@116@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@116@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@668@11@668@354-aux|)))
(assert (forall (($q0@116@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@116@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@116@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@668@11@668@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int))
(declare-const $t@117@01 $Snap)
(assert (= $t@117@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int))
(declare-const $q0@118@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@118@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@118@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $q0@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@669@11@669@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@120@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(push) ; 4
; [then-branch: 25 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@96@01, 5)), $q1@120@01)) | live]
; [else-branch: 25 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@96@01, 5)), $q1@120@01) | live]
(push) ; 5
; [then-branch: 25 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@96@01, 5)), $q1@120@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@120@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 25 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@96@01, 5)), $q1@120@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@120@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@120@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@120@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@120@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@120@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@120@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@670@11@670@354-aux|)))
(assert (forall (($q1@120@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@120@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@120@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@670@11@670@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $q1@122@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@122@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@122@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 5)) $q1@122@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@671@11@671@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@123@01 $Snap)
(assert (= $t@123@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$1, -1)): Int)
; [eval] $struct_loc($self$1, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 ($Snap.combine ($Snap.first $t@124@01) ($Snap.second $t@124@01))))
(assert (= ($Snap.first $t@124@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@98@01 0))))
(assert (= ($Snap.second $t@124@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@98@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@125@01 $Snap)
(assert (= $t@125@01 ($Snap.combine ($Snap.first $t@125@01) ($Snap.second $t@125@01))))
(assert (= ($Snap.first $t@125@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@98@01 1))))
(assert (= ($Snap.second $t@125@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@98@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@126@01 $Snap)
(assert (= $t@126@01 ($Snap.combine ($Snap.first $t@126@01) ($Snap.second $t@126@01))))
(assert (= ($Snap.first $t@126@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@98@01 2))))
(assert (= ($Snap.second $t@126@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@98@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@127@01 $Snap)
(assert (= $t@127@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@98@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@128@01 $Snap)
(assert (= $t@128@01 ($Snap.combine ($Snap.first $t@128@01) ($Snap.second $t@128@01))))
(assert (= ($Snap.first $t@128@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@98@01 4))))
(assert (= ($Snap.second $t@128@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@98@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@129@01 $Snap)
(assert (= $t@129@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@98@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@131@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@131@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $a@131@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@94@01 4)) $a@131@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@96@01 4)) $a@131@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@679@11@679@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true &&
;   (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935 &&
;     q$v <= ($struct_get($struct_loc($self$1, 1)): Int))) ==>
;     acc($accessible$withdraw(0, q$a, q$v, q$v), write))
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01))))
(assert (= ($Snap.first $t@132@01) $Snap.unit))
(declare-const q$a@133@01 Int)
(declare-const q$v@134@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 && q$v <= ($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] 0 <= q$a
(push) ; 4
; [then-branch: 26 | !(0 <= q$a@133@01) | live]
; [else-branch: 26 | 0 <= q$a@133@01 | live]
(push) ; 5
; [then-branch: 26 | !(0 <= q$a@133@01)]
(assert (not (<= 0 q$a@133@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | 0 <= q$a@133@01]
(assert (<= 0 q$a@133@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 6
; [then-branch: 27 | !(q$a@133@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 27 | q$a@133@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 7
; [then-branch: 27 | !(q$a@133@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@133@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 7
(push) ; 7
; [else-branch: 27 | q$a@133@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@133@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 8
; [then-branch: 28 | !(0 <= q$v@134@01) | live]
; [else-branch: 28 | 0 <= q$v@134@01 | live]
(push) ; 9
; [then-branch: 28 | !(0 <= q$v@134@01)]
(assert (not (<= 0 q$v@134@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 28 | 0 <= q$v@134@01]
(assert (<= 0 q$v@134@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(push) ; 10
; [then-branch: 29 | !(q$v@134@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 29 | q$v@134@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
(push) ; 11
; [then-branch: 29 | !(q$v@134@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (<=
    q$v@134@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 11
(push) ; 11
; [else-branch: 29 | q$v@134@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (<=
  q$v@134@01
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] q$v <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    q$v@134@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)
  (not
    (<=
      q$v@134@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$v@134@01)
  (and
    (<= 0 q$v@134@01)
    (or
      (<=
        q$v@134@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)
      (not
        (<=
          q$v@134@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(assert (or (<= 0 q$v@134@01) (not (<= 0 q$v@134@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
    (=>
      (<= 0 q$v@134@01)
      (and
        (<= 0 q$v@134@01)
        (or
          (<=
            q$v@134@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)
          (not
            (<=
              q$v@134@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
    (or (<= 0 q$v@134@01) (not (<= 0 q$v@134@01))))))
(assert (or
  (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@133@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@133@01)
  (and
    (<= 0 q$a@133@01)
    (=>
      (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
        (=>
          (<= 0 q$v@134@01)
          (and
            (<= 0 q$v@134@01)
            (or
              (<=
                q$v@134@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (not
                (<=
                  q$v@134@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
        (or (<= 0 q$v@134@01) (not (<= 0 q$v@134@01)))))
    (or
      (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@133@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@133@01) (not (<= 0 q$a@133@01))))
(assert (and
  (<= 0 q$a@133@01)
  (and
    (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@134@01)
      (and
        (<=
          q$v@134@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (<= q$v@134@01 ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1))))))))
(declare-const sm@135@01 $PSF<$accessible$withdraw>)
(declare-const s@136@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@137@01 (Int Int Int Int) Int)
(declare-fun img@138@01 (Int Int Int Int) Bool)
(declare-fun inv@139@01 (Int Int Int Int) Int)
(declare-fun img@140@01 (Int Int Int Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((q$a@133@01 Int) (q$v@134@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@133@01)
      (and
        (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@134@01)
          (and
            (<=
              q$v@134@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@134@01 ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
    (and
      (=>
        (<= 0 q$a@133@01)
        (and
          (<= 0 q$a@133@01)
          (=>
            (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
              (=>
                (<= 0 q$v@134@01)
                (and
                  (<= 0 q$v@134@01)
                  (or
                    (<=
                      q$v@134@01
                      115792089237316195423570985008687907853269984665640564039457584007913129639935)
                    (not
                      (<=
                        q$v@134@01
                        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
              (or (<= 0 q$v@134@01) (not (<= 0 q$v@134@01)))))
          (or
            (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
            (not
              (<= q$a@133@01 1461501637330902918203684832716283019655932542975)))))
      (or (<= 0 q$a@133@01) (not (<= 0 q$a@133@01)))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@132@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@133@01))
      ($SortWrappers.IntTo$Snap q$v@134@01))
    ($SortWrappers.IntTo$Snap q$v@134@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@133@01))
      ($SortWrappers.IntTo$Snap q$v@134@01))
    ($SortWrappers.IntTo$Snap q$v@134@01))))
  :qid |$accessible$withdraw-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q$a1@133@01 Int) (q$v1@134@01 Int) (q$a2@133@01 Int) (q$v2@134@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 q$a1@133@01)
        (and
          (<= q$a1@133@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v1@134@01)
            (and
              (<=
                q$v1@134@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v1@134@01
                ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
      (and
        (<= 0 q$a2@133@01)
        (and
          (<= q$a2@133@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v2@134@01)
            (and
              (<=
                q$v2@134@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v2@134@01
                ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
      (and
        (and (= q$a1@133@01 q$a2@133@01) (= q$v1@134@01 q$v2@134@01))
        (= q$v1@134@01 q$v2@134@01)))
    (and (= q$a1@133@01 q$a2@133@01) (= q$v1@134@01 q$v2@134@01)))
  
  :qid |$accessible$withdraw-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q$a@133@01 Int) (q$v@134@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@133@01)
      (and
        (<= q$a@133@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@134@01)
          (and
            (<=
              q$v@134@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@134@01 ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
    (and
      (and
        (= (inv@137@01 0 q$a@133@01 q$v@134@01 q$v@134@01) q$a@133@01)
        (= (inv@139@01 0 q$a@133@01 q$v@134@01 q$v@134@01) q$v@134@01))
      (and
        (img@138@01 0 q$a@133@01 q$v@134@01 q$v@134@01)
        (img@140@01 0 q$a@133@01 q$v@134@01 q$v@134@01))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@132@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@133@01))
      ($SortWrappers.IntTo$Snap q$v@134@01))
    ($SortWrappers.IntTo$Snap q$v@134@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@133@01))
      ($SortWrappers.IntTo$Snap q$v@134@01))
    ($SortWrappers.IntTo$Snap q$v@134@01))))
  :qid |quant-u-1311|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and
        (img@138@01 $tag $to $amount $arg0)
        (img@140@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@137@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@137@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@139@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@139@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@139@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1))))))))
    (and
      (= 0 $tag)
      (= (inv@137@01 $tag $to $amount $arg0) $to)
      (= (inv@139@01 $tag $to $amount $arg0) $amount)
      (= (inv@139@01 $tag $to $amount $arg0) $arg0)))
  :pattern ((inv@137@01 $tag $to $amount $arg0))
  :pattern ((inv@139@01 $tag $to $amount $arg0))
  :qid |$accessible$withdraw-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@141@01 $PSF<$accessible$withdraw>)
(declare-const s@142@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@142@01 $Snap)) (!
  (=>
    (and
      (and
        (img@138@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@142@01))) ($SortWrappers.$SnapToInt ($Snap.second s@142@01)))
        (img@140@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@142@01))) ($SortWrappers.$SnapToInt ($Snap.second s@142@01))))
      (and
        (<=
          0
          (inv@137@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@142@01))) ($SortWrappers.$SnapToInt ($Snap.second s@142@01))))
        (and
          (<=
            (inv@137@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@142@01))) ($SortWrappers.$SnapToInt ($Snap.second s@142@01)))
            1461501637330902918203684832716283019655932542975)
          (and
            (<=
              0
              (inv@139@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@142@01))) ($SortWrappers.$SnapToInt ($Snap.second s@142@01))))
            (and
              (<=
                (inv@139@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@142@01))) ($SortWrappers.$SnapToInt ($Snap.second s@142@01)))
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@139@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@142@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@142@01))) ($SortWrappers.$SnapToInt ($Snap.second s@142@01)))
                ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1))))))))
    (and
      (not (= s@142@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@141@01  $PSF<$accessible$withdraw>) s@142@01)
        ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@132@01)) s@142@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@141@01  $PSF<$accessible$withdraw>) s@142@01))
  :pattern (($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@132@01)) s@142@01))
  :qid |qp.psmValDef11|)))
(assert (forall ((s@142@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@132@01)) s@142@01) s@142@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@141@01  $PSF<$accessible$withdraw>) s@142@01))
  :qid |qp.psmResTrgDef12|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (<= 0 (inv@137@01 $tag $to $amount $arg0))
      (and
        (<=
          (inv@137@01 $tag $to $amount $arg0)
          1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 (inv@139@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@139@01 $tag $to $amount $arg0)
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<=
              (inv@139@01 $tag $to $amount $arg0)
              ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@141@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern ((inv@137@01 $tag $to $amount $arg0) (inv@139@01 $tag $to $amount $arg0))
  :qid |quant-u-1312|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert true &&
;   (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935 &&
;     q$v <= ($struct_get($struct_loc($self$1, 1)): Int))) ==>
;     acc($accessible$withdraw(0, q$a, q$v, q$v), write))
(declare-const q$a@143@01 Int)
(declare-const q$v@144@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 && q$v <= ($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] 0 <= q$a
(push) ; 4
; [then-branch: 30 | !(0 <= q$a@143@01) | live]
; [else-branch: 30 | 0 <= q$a@143@01 | live]
(push) ; 5
; [then-branch: 30 | !(0 <= q$a@143@01)]
(assert (not (<= 0 q$a@143@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 30 | 0 <= q$a@143@01]
(assert (<= 0 q$a@143@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 6
; [then-branch: 31 | !(q$a@143@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 31 | q$a@143@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 7
; [then-branch: 31 | !(q$a@143@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@143@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 7
(push) ; 7
; [else-branch: 31 | q$a@143@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@143@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 8
; [then-branch: 32 | !(0 <= q$v@144@01) | live]
; [else-branch: 32 | 0 <= q$v@144@01 | live]
(push) ; 9
; [then-branch: 32 | !(0 <= q$v@144@01)]
(assert (not (<= 0 q$v@144@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 32 | 0 <= q$v@144@01]
(assert (<= 0 q$v@144@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(push) ; 10
; [then-branch: 33 | !(q$v@144@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 33 | q$v@144@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
(push) ; 11
; [then-branch: 33 | !(q$v@144@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (<=
    q$v@144@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 11
(push) ; 11
; [else-branch: 33 | q$v@144@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (<=
  q$v@144@01
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] q$v <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    q$v@144@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)
  (not
    (<=
      q$v@144@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$v@144@01)
  (and
    (<= 0 q$v@144@01)
    (or
      (<=
        q$v@144@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)
      (not
        (<=
          q$v@144@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(assert (or (<= 0 q$v@144@01) (not (<= 0 q$v@144@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
    (=>
      (<= 0 q$v@144@01)
      (and
        (<= 0 q$v@144@01)
        (or
          (<=
            q$v@144@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)
          (not
            (<=
              q$v@144@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
    (or (<= 0 q$v@144@01) (not (<= 0 q$v@144@01))))))
(assert (or
  (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@143@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@143@01)
  (and
    (<= 0 q$a@143@01)
    (=>
      (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
        (=>
          (<= 0 q$v@144@01)
          (and
            (<= 0 q$v@144@01)
            (or
              (<=
                q$v@144@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (not
                (<=
                  q$v@144@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
        (or (<= 0 q$v@144@01) (not (<= 0 q$v@144@01)))))
    (or
      (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@143@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@143@01) (not (<= 0 q$a@143@01))))
(assert (and
  (<= 0 q$a@143@01)
  (and
    (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@144@01)
      (and
        (<=
          q$v@144@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (<= q$v@144@01 ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1))))))))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@145@01 (Int Int Int Int) Int)
(declare-fun img@146@01 (Int Int Int Int) Bool)
(declare-fun inv@147@01 (Int Int Int Int) Int)
(declare-fun img@148@01 (Int Int Int Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((q$a@143@01 Int) (q$v@144@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@143@01)
      (and
        (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@144@01)
          (and
            (<=
              q$v@144@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@144@01 ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
    (and
      (=>
        (<= 0 q$a@143@01)
        (and
          (<= 0 q$a@143@01)
          (=>
            (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
              (=>
                (<= 0 q$v@144@01)
                (and
                  (<= 0 q$v@144@01)
                  (or
                    (<=
                      q$v@144@01
                      115792089237316195423570985008687907853269984665640564039457584007913129639935)
                    (not
                      (<=
                        q$v@144@01
                        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
              (or (<= 0 q$v@144@01) (not (<= 0 q$v@144@01)))))
          (or
            (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
            (not
              (<= q$a@143@01 1461501637330902918203684832716283019655932542975)))))
      (or (<= 0 q$a@143@01) (not (<= 0 q$a@143@01)))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@141@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@143@01))
      ($SortWrappers.IntTo$Snap q$v@144@01))
    ($SortWrappers.IntTo$Snap q$v@144@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@143@01))
      ($SortWrappers.IntTo$Snap q$v@144@01))
    ($SortWrappers.IntTo$Snap q$v@144@01))))
  :qid |$accessible$withdraw-aux|)))
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q$a1@143@01 Int) (q$v1@144@01 Int) (q$a2@143@01 Int) (q$v2@144@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 q$a1@143@01)
          (and
            (<= q$a1@143@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v1@144@01)
              (and
                (<=
                  q$v1@144@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  q$v1@144@01
                  ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
        ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@141@01  $PSF<$accessible$withdraw>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap q$a1@143@01))
            ($SortWrappers.IntTo$Snap q$v1@144@01))
          ($SortWrappers.IntTo$Snap q$v1@144@01))) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap q$a1@143@01))
            ($SortWrappers.IntTo$Snap q$v1@144@01))
          ($SortWrappers.IntTo$Snap q$v1@144@01))))
      (and
        (and
          (<= 0 q$a2@143@01)
          (and
            (<= q$a2@143@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v2@144@01)
              (and
                (<=
                  q$v2@144@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  q$v2@144@01
                  ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
        ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@141@01  $PSF<$accessible$withdraw>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap q$a2@143@01))
            ($SortWrappers.IntTo$Snap q$v2@144@01))
          ($SortWrappers.IntTo$Snap q$v2@144@01))) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap q$a2@143@01))
            ($SortWrappers.IntTo$Snap q$v2@144@01))
          ($SortWrappers.IntTo$Snap q$v2@144@01))))
      (and
        (and (= q$a1@143@01 q$a2@143@01) (= q$v1@144@01 q$v2@144@01))
        (= q$v1@144@01 q$v2@144@01)))
    (and (= q$a1@143@01 q$a2@143@01) (= q$v1@144@01 q$v2@144@01)))
  
  :qid |$accessible$withdraw-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q$a@143@01 Int) (q$v@144@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@143@01)
      (and
        (<= q$a@143@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@144@01)
          (and
            (<=
              q$v@144@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@144@01 ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
    (and
      (and
        (= (inv@145@01 0 q$a@143@01 q$v@144@01 q$v@144@01) q$a@143@01)
        (= (inv@147@01 0 q$a@143@01 q$v@144@01 q$v@144@01) q$v@144@01))
      (and
        (img@146@01 0 q$a@143@01 q$v@144@01 q$v@144@01)
        (img@148@01 0 q$a@143@01 q$v@144@01 q$v@144@01))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@141@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@143@01))
      ($SortWrappers.IntTo$Snap q$v@144@01))
    ($SortWrappers.IntTo$Snap q$v@144@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@143@01))
      ($SortWrappers.IntTo$Snap q$v@144@01))
    ($SortWrappers.IntTo$Snap q$v@144@01))))
  :qid |$accessible$withdraw-invOfFct|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and
        (img@146@01 $tag $to $amount $arg0)
        (img@148@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@145@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@145@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@147@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@147@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@147@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1))))))))
    (and
      (= 0 $tag)
      (= (inv@145@01 $tag $to $amount $arg0) $to)
      (= (inv@147@01 $tag $to $amount $arg0) $amount)
      (= (inv@147@01 $tag $to $amount $arg0) $arg0)))
  :pattern ((inv@145@01 $tag $to $amount $arg0))
  :pattern ((inv@147@01 $tag $to $amount $arg0))
  :qid |$accessible$withdraw-fctOfInv|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (<= 0 (inv@145@01 $tag $to $amount $arg0))
      (and
        (<=
          (inv@145@01 $tag $to $amount $arg0)
          1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 (inv@147@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@147@01 $tag $to $amount $arg0)
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<=
              (inv@147@01 $tag $to $amount $arg0)
              ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@141@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern ((inv@145@01 $tag $to $amount $arg0) (inv@147@01 $tag $to $amount $arg0))
  :qid |quant-u-1314|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@149@01 (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@145@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@145@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@147@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@147@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@147@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
      (and
        (img@146@01 $tag $to $amount $arg0)
        (img@148@01 $tag $to $amount $arg0))
      (and
        (= $tag 0)
        (= $to (inv@145@01 $tag $to $amount $arg0))
        (= $amount (inv@147@01 $tag $to $amount $arg0))
        (= $arg0 (inv@147@01 $tag $to $amount $arg0))))
    ($Perm.min
      (ite
        (and
          (and
            (img@138@01 $tag $to $amount $arg0)
            (img@140@01 $tag $to $amount $arg0))
          (and
            (<= 0 (inv@137@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@137@01 $tag $to $amount $arg0)
                1461501637330902918203684832716283019655932542975)
              (and
                (<= 0 (inv@139@01 $tag $to $amount $arg0))
                (and
                  (<=
                    (inv@139@01 $tag $to $amount $arg0)
                    115792089237316195423570985008687907853269984665640564039457584007913129639935)
                  (<=
                    (inv@139@01 $tag $to $amount $arg0)
                    ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1))))))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    (-
      (ite
        (and
          (and
            (img@138@01 $tag $to $amount $arg0)
            (img@140@01 $tag $to $amount $arg0))
          (and
            (<= 0 (inv@137@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@137@01 $tag $to $amount $arg0)
                1461501637330902918203684832716283019655932542975)
              (and
                (<= 0 (inv@139@01 $tag $to $amount $arg0))
                (and
                  (<=
                    (inv@139@01 $tag $to $amount $arg0)
                    115792089237316195423570985008687907853269984665640564039457584007913129639935)
                  (<=
                    (inv@139@01 $tag $to $amount $arg0)
                    ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1))))))))
        $Perm.Write
        $Perm.No)
      (pTaken@149@01 $tag $to $amount $arg0))
    $Perm.No)
  
  :qid |quant-u-1316|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and
        (<= 0 (inv@145@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@145@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@147@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@147@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@147@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> $self$1@96@01 1)))))))
      (and
        (img@146@01 $tag $to $amount $arg0)
        (img@148@01 $tag $to $amount $arg0))
      (and
        (= $tag 0)
        (= $to (inv@145@01 $tag $to $amount $arg0))
        (= $amount (inv@147@01 $tag $to $amount $arg0))
        (= $arg0 (inv@147@01 $tag $to $amount $arg0))))
    (= (- $Perm.Write (pTaken@149@01 $tag $to $amount $arg0)) $Perm.No))
  
  :qid |quant-u-1317|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
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
(declare-const self@150@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@151@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@152@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@153@01 $Map<Int~_$Struct>)
; [exec]
; var $post: Bool
(declare-const $post@154@01 Bool)
; [exec]
; var $havoc: Int
(declare-const $havoc@155@01 Int)
; [exec]
; var block: $Struct
(declare-const block@156@01 $Struct)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@157@01 $Snap)
(assert (= $t@157@01 ($Snap.combine ($Snap.first $t@157@01) ($Snap.second $t@157@01))))
(assert (= ($Snap.first $t@157@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@150@01 0))))
(assert (= ($Snap.second $t@157@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@150@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@158@01 $Snap)
(assert (= $t@158@01 ($Snap.combine ($Snap.first $t@158@01) ($Snap.second $t@158@01))))
(assert (= ($Snap.first $t@158@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@150@01 1))))
(assert (= ($Snap.second $t@158@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@150@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@159@01 $Snap)
(assert (= $t@159@01 ($Snap.combine ($Snap.first $t@159@01) ($Snap.second $t@159@01))))
(assert (= ($Snap.first $t@159@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@150@01 2))))
(assert (= ($Snap.second $t@159@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@150@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@160@01 $Snap)
(assert (= $t@160@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@161@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 34 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@150@01, 4)), $q0@161@01)) | live]
; [else-branch: 34 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@150@01, 4)), $q0@161@01) | live]
(push) ; 5
; [then-branch: 34 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@150@01, 4)), $q0@161@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@161@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 34 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@150@01, 4)), $q0@161@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@161@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@161@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@161@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@161@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@161@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@161@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@696@11@696@345-aux|)))
(assert (forall (($q0@161@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@161@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@161@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@696@11@696@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@163@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@163@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@163@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 4)) $q0@163@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@697@11@697@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@164@01 $Snap)
(assert (= $t@164@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@165@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 35 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@150@01, 5)), $q1@165@01)) | live]
; [else-branch: 35 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@150@01, 5)), $q1@165@01) | live]
(push) ; 5
; [then-branch: 35 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@150@01, 5)), $q1@165@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@165@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 35 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@150@01, 5)), $q1@165@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@165@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@165@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@165@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@165@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@165@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@165@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@165@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@698@11@698@345-aux|)))
(assert (forall (($q1@165@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@165@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@165@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@165@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@698@11@698@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@166@01 $Snap)
(assert (= $t@166@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@167@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@167@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@167@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@150@01 5)) $q1@167@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@699@11@699@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@168@01 $Snap)
(assert (= $t@168@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@150@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 0)): Int) &&
;   ($struct_get($struct_loc($pre_self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@169@01 $Snap)
(assert (= $t@169@01 ($Snap.combine ($Snap.first $t@169@01) ($Snap.second $t@169@01))))
(assert (= ($Snap.first $t@169@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@152@01 0))))
(assert (= ($Snap.second $t@169@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@152@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 1)): Int) &&
;   ($struct_get($struct_loc($pre_self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@170@01 $Snap)
(assert (= $t@170@01 ($Snap.combine ($Snap.first $t@170@01) ($Snap.second $t@170@01))))
(assert (= ($Snap.first $t@170@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@152@01 1))))
(assert (= ($Snap.second $t@170@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@152@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 2)): Int) &&
;   ($struct_get($struct_loc($pre_self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@171@01 $Snap)
(assert (= $t@171@01 ($Snap.combine ($Snap.first $t@171@01) ($Snap.second $t@171@01))))
(assert (= ($Snap.first $t@171@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@152@01 2))))
(assert (= ($Snap.second $t@171@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@152@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@172@01 $Snap)
(assert (= $t@172@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@173@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
(push) ; 4
; [then-branch: 36 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@152@01, 4)), $q0@173@01)) | live]
; [else-branch: 36 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@152@01, 4)), $q0@173@01) | live]
(push) ; 5
; [then-branch: 36 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@152@01, 4)), $q0@173@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@173@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 36 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@152@01, 4)), $q0@173@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@173@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@173@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@173@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@173@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@173@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@173@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@173@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@704@11@704@360-aux|)))
(assert (forall (($q0@173@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@173@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@173@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@173@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@704@11@704@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])): Int))
(declare-const $t@174@01 $Snap)
(assert (= $t@174@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@175@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@175@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@175@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 4)) $q0@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@705@11@705@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@176@01 $Snap)
(assert (= $t@176@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@177@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
(push) ; 4
; [then-branch: 37 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@152@01, 5)), $q1@177@01)) | live]
; [else-branch: 37 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@152@01, 5)), $q1@177@01) | live]
(push) ; 5
; [then-branch: 37 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@152@01, 5)), $q1@177@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@177@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 37 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@152@01, 5)), $q1@177@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@177@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@177@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@177@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@177@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@177@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@177@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@706@11@706@360-aux|)))
(assert (forall (($q1@177@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@177@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@177@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@706@11@706@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int))
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@179@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@179@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@179@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@152@01 5)) $q1@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@707@11@707@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($pre_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@180@01 $Snap)
(assert (= $t@180@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int)
; [eval] $struct_loc($pre_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@152@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@181@01 $Snap)
(assert (= $t@181@01 ($Snap.combine ($Snap.first $t@181@01) ($Snap.second $t@181@01))))
(assert (= ($Snap.first $t@181@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@156@01 0))))
(assert (= ($Snap.second $t@181@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@156@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@182@01 $Snap)
(assert (= $t@182@01 ($Snap.combine ($Snap.first $t@182@01) ($Snap.second $t@182@01))))
(assert (= ($Snap.first $t@182@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@156@01 1))))
(assert (= ($Snap.second $t@182@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@156@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@183@01 $Snap)
(assert (= $t@183@01 ($Snap.combine ($Snap.first $t@183@01) ($Snap.second $t@183@01))))
(assert (= ($Snap.first $t@183@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@156@01 2))))
(assert (= ($Snap.second $t@183@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@156@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@184@01 $Snap)
(assert (= $t@184@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@156@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@185@01 $Snap)
(assert (= $t@185@01 ($Snap.combine ($Snap.first $t@185@01) ($Snap.second $t@185@01))))
(assert (= ($Snap.first $t@185@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@156@01 4))))
(assert (= ($Snap.second $t@185@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@156@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@186@01 $Snap)
(assert (= $t@186@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@156@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale $havoc >= 0
(declare-const $t@187@01 $Snap)
(assert (= $t@187@01 $Snap.unit))
; [eval] $havoc >= 0
(assert (>= $havoc@155@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@188@01 $Snap)
(assert (= $t@188@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@189@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true &&
;   (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935 &&
;     q$v <= ($struct_get($struct_loc(self, 1)): Int))) ==>
;     acc($accessible$withdraw(0, q$a, q$v, q$v), write))
(declare-const $t@190@01 $Snap)
(assert (= $t@190@01 ($Snap.combine ($Snap.first $t@190@01) ($Snap.second $t@190@01))))
(assert (= ($Snap.first $t@190@01) $Snap.unit))
(declare-const q$a@191@01 Int)
(declare-const q$v@192@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 && q$v <= ($struct_get($struct_loc(self, 1)): Int)))
; [eval] 0 <= q$a
(push) ; 4
; [then-branch: 38 | !(0 <= q$a@191@01) | live]
; [else-branch: 38 | 0 <= q$a@191@01 | live]
(push) ; 5
; [then-branch: 38 | !(0 <= q$a@191@01)]
(assert (not (<= 0 q$a@191@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 38 | 0 <= q$a@191@01]
(assert (<= 0 q$a@191@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 6
; [then-branch: 39 | !(q$a@191@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 39 | q$a@191@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 7
; [then-branch: 39 | !(q$a@191@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@191@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 7
(push) ; 7
; [else-branch: 39 | q$a@191@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@191@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 8
; [then-branch: 40 | !(0 <= q$v@192@01) | live]
; [else-branch: 40 | 0 <= q$v@192@01 | live]
(push) ; 9
; [then-branch: 40 | !(0 <= q$v@192@01)]
(assert (not (<= 0 q$v@192@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 40 | 0 <= q$v@192@01]
(assert (<= 0 q$v@192@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(push) ; 10
; [then-branch: 41 | !(q$v@192@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 41 | q$v@192@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
(push) ; 11
; [then-branch: 41 | !(q$v@192@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (<=
    q$v@192@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 11
(push) ; 11
; [else-branch: 41 | q$v@192@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (<=
  q$v@192@01
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    q$v@192@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)
  (not
    (<=
      q$v@192@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$v@192@01)
  (and
    (<= 0 q$v@192@01)
    (or
      (<=
        q$v@192@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)
      (not
        (<=
          q$v@192@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(assert (or (<= 0 q$v@192@01) (not (<= 0 q$v@192@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
    (=>
      (<= 0 q$v@192@01)
      (and
        (<= 0 q$v@192@01)
        (or
          (<=
            q$v@192@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)
          (not
            (<=
              q$v@192@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
    (or (<= 0 q$v@192@01) (not (<= 0 q$v@192@01))))))
(assert (or
  (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@191@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@191@01)
  (and
    (<= 0 q$a@191@01)
    (=>
      (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
        (=>
          (<= 0 q$v@192@01)
          (and
            (<= 0 q$v@192@01)
            (or
              (<=
                q$v@192@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (not
                (<=
                  q$v@192@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
        (or (<= 0 q$v@192@01) (not (<= 0 q$v@192@01)))))
    (or
      (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@191@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@191@01) (not (<= 0 q$a@191@01))))
(assert (and
  (<= 0 q$a@191@01)
  (and
    (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@192@01)
      (and
        (<=
          q$v@192@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (<= q$v@192@01 ($struct_get<Int> ($struct_loc<Int> self@150@01 1))))))))
(declare-const sm@193@01 $PSF<$accessible$withdraw>)
(declare-const s@194@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@195@01 (Int Int Int Int) Int)
(declare-fun img@196@01 (Int Int Int Int) Bool)
(declare-fun inv@197@01 (Int Int Int Int) Int)
(declare-fun img@198@01 (Int Int Int Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((q$a@191@01 Int) (q$v@192@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@191@01)
      (and
        (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@192@01)
          (and
            (<=
              q$v@192@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@192@01 ($struct_get<Int> ($struct_loc<Int> self@150@01 1)))))))
    (and
      (=>
        (<= 0 q$a@191@01)
        (and
          (<= 0 q$a@191@01)
          (=>
            (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
              (=>
                (<= 0 q$v@192@01)
                (and
                  (<= 0 q$v@192@01)
                  (or
                    (<=
                      q$v@192@01
                      115792089237316195423570985008687907853269984665640564039457584007913129639935)
                    (not
                      (<=
                        q$v@192@01
                        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
              (or (<= 0 q$v@192@01) (not (<= 0 q$v@192@01)))))
          (or
            (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
            (not
              (<= q$a@191@01 1461501637330902918203684832716283019655932542975)))))
      (or (<= 0 q$a@191@01) (not (<= 0 q$a@191@01)))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@190@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@191@01))
      ($SortWrappers.IntTo$Snap q$v@192@01))
    ($SortWrappers.IntTo$Snap q$v@192@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@191@01))
      ($SortWrappers.IntTo$Snap q$v@192@01))
    ($SortWrappers.IntTo$Snap q$v@192@01))))
  :qid |$accessible$withdraw-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q$a1@191@01 Int) (q$v1@192@01 Int) (q$a2@191@01 Int) (q$v2@192@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 q$a1@191@01)
        (and
          (<= q$a1@191@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v1@192@01)
            (and
              (<=
                q$v1@192@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v1@192@01
                ($struct_get<Int> ($struct_loc<Int> self@150@01 1)))))))
      (and
        (<= 0 q$a2@191@01)
        (and
          (<= q$a2@191@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v2@192@01)
            (and
              (<=
                q$v2@192@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v2@192@01
                ($struct_get<Int> ($struct_loc<Int> self@150@01 1)))))))
      (and
        (and (= q$a1@191@01 q$a2@191@01) (= q$v1@192@01 q$v2@192@01))
        (= q$v1@192@01 q$v2@192@01)))
    (and (= q$a1@191@01 q$a2@191@01) (= q$v1@192@01 q$v2@192@01)))
  
  :qid |$accessible$withdraw-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q$a@191@01 Int) (q$v@192@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@191@01)
      (and
        (<= q$a@191@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@192@01)
          (and
            (<=
              q$v@192@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@192@01 ($struct_get<Int> ($struct_loc<Int> self@150@01 1)))))))
    (and
      (and
        (= (inv@195@01 0 q$a@191@01 q$v@192@01 q$v@192@01) q$a@191@01)
        (= (inv@197@01 0 q$a@191@01 q$v@192@01 q$v@192@01) q$v@192@01))
      (and
        (img@196@01 0 q$a@191@01 q$v@192@01 q$v@192@01)
        (img@198@01 0 q$a@191@01 q$v@192@01 q$v@192@01))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@190@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@191@01))
      ($SortWrappers.IntTo$Snap q$v@192@01))
    ($SortWrappers.IntTo$Snap q$v@192@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@191@01))
      ($SortWrappers.IntTo$Snap q$v@192@01))
    ($SortWrappers.IntTo$Snap q$v@192@01))))
  :qid |quant-u-1319|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and
        (img@196@01 $tag $to $amount $arg0)
        (img@198@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@195@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@195@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@197@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@197@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@197@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> self@150@01 1))))))))
    (and
      (= 0 $tag)
      (= (inv@195@01 $tag $to $amount $arg0) $to)
      (= (inv@197@01 $tag $to $amount $arg0) $amount)
      (= (inv@197@01 $tag $to $amount $arg0) $arg0)))
  :pattern ((inv@195@01 $tag $to $amount $arg0))
  :pattern ((inv@197@01 $tag $to $amount $arg0))
  :qid |$accessible$withdraw-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@199@01 $PSF<$accessible$withdraw>)
(declare-const s@200@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@200@01 $Snap)) (!
  (=>
    (and
      (and
        (img@196@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@200@01))) ($SortWrappers.$SnapToInt ($Snap.second s@200@01)))
        (img@198@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@200@01))) ($SortWrappers.$SnapToInt ($Snap.second s@200@01))))
      (and
        (<=
          0
          (inv@195@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@200@01))) ($SortWrappers.$SnapToInt ($Snap.second s@200@01))))
        (and
          (<=
            (inv@195@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@200@01))) ($SortWrappers.$SnapToInt ($Snap.second s@200@01)))
            1461501637330902918203684832716283019655932542975)
          (and
            (<=
              0
              (inv@197@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@200@01))) ($SortWrappers.$SnapToInt ($Snap.second s@200@01))))
            (and
              (<=
                (inv@197@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@200@01))) ($SortWrappers.$SnapToInt ($Snap.second s@200@01)))
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@197@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@200@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@200@01))) ($SortWrappers.$SnapToInt ($Snap.second s@200@01)))
                ($struct_get<Int> ($struct_loc<Int> self@150@01 1))))))))
    (and
      (not (= s@200@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@199@01  $PSF<$accessible$withdraw>) s@200@01)
        ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@190@01)) s@200@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@199@01  $PSF<$accessible$withdraw>) s@200@01))
  :pattern (($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@190@01)) s@200@01))
  :qid |qp.psmValDef14|)))
(assert (forall ((s@200@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@190@01)) s@200@01) s@200@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@199@01  $PSF<$accessible$withdraw>) s@200@01))
  :qid |qp.psmResTrgDef15|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (<= 0 (inv@195@01 $tag $to $amount $arg0))
      (and
        (<=
          (inv@195@01 $tag $to $amount $arg0)
          1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 (inv@197@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@197@01 $tag $to $amount $arg0)
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<=
              (inv@197@01 $tag $to $amount $arg0)
              ($struct_get<Int> ($struct_loc<Int> self@150@01 1)))))))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@199@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern ((inv@195@01 $tag $to $amount $arg0) (inv@197@01 $tag $to $amount $arg0))
  :qid |quant-u-1320|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; $pre_self := self
; [exec]
; $pre_$contracts := $contracts
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   $havoc): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + $havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + $havoc
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@201@01 $Struct)
(assert (=
  self@201@01
  ($struct_set<$Struct> self@150@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@150@01 1))
    $havoc@155@01))))
(pop) ; 2
(pop) ; 1
; ---------- f$__init__ ----------
(declare-const $succ@202@01 Bool)
(declare-const $succ@203@01 Bool)
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
(declare-const msg@204@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@205@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@206@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@207@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@208@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@209@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@210@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@211@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@212@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@213@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@214@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@215@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@216@01 Bool)
; [exec]
; var $first_public_state: Bool
(declare-const $first_public_state@217@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@218@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@219@01 Bool)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@220@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@221@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@222@01 $Snap)
(assert (= $t@222@01 ($Snap.combine ($Snap.first $t@222@01) ($Snap.second $t@222@01))))
(assert (= ($Snap.first $t@222@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@208@01 0))))
(assert (= ($Snap.second $t@222@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@208@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@223@01 $Snap)
(assert (= $t@223@01 ($Snap.combine ($Snap.first $t@223@01) ($Snap.second $t@223@01))))
(assert (= ($Snap.first $t@223@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@208@01 1))))
(assert (= ($Snap.second $t@223@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@208@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@224@01 $Snap)
(assert (= $t@224@01 ($Snap.combine ($Snap.first $t@224@01) ($Snap.second $t@224@01))))
(assert (= ($Snap.first $t@224@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@208@01 2))))
(assert (= ($Snap.second $t@224@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@208@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@226@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 42 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@208@01, 4)), $q0@226@01)) | live]
; [else-branch: 42 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@208@01, 4)), $q0@226@01) | live]
(push) ; 5
; [then-branch: 42 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@208@01, 4)), $q0@226@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@226@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 42 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@208@01, 4)), $q0@226@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@226@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@226@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@226@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@226@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@226@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@226@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@748@11@748@345-aux|)))
(assert (forall (($q0@226@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@226@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@226@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@748@11@748@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@227@01 $Snap)
(assert (= $t@227@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@228@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@228@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@228@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 4)) $q0@228@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@749@11@749@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@229@01 $Snap)
(assert (= $t@229@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@230@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 43 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@208@01, 5)), $q1@230@01)) | live]
; [else-branch: 43 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@208@01, 5)), $q1@230@01) | live]
(push) ; 5
; [then-branch: 43 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@208@01, 5)), $q1@230@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@230@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 43 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@208@01, 5)), $q1@230@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@230@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@230@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@230@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@230@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@230@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@230@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@230@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@750@11@750@345-aux|)))
(assert (forall (($q1@230@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@230@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@230@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@230@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@750@11@750@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@231@01 $Snap)
(assert (= $t@231@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@232@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@232@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@232@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@208@01 5)) $q1@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@751@11@751@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@233@01 $Snap)
(assert (= $t@233@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@208@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@234@01 $Snap)
(assert (= $t@234@01 ($Snap.combine ($Snap.first $t@234@01) ($Snap.second $t@234@01))))
(assert (= ($Snap.first $t@234@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@234@01) $Snap.unit))
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
(declare-const $t@235@01 $Snap)
(assert (= $t@235@01 ($Snap.combine ($Snap.first $t@235@01) ($Snap.second $t@235@01))))
(assert (= ($Snap.first $t@235@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@205@01 0))))
(assert (= ($Snap.second $t@235@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@205@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@236@01 $Snap)
(assert (= $t@236@01 ($Snap.combine ($Snap.first $t@236@01) ($Snap.second $t@236@01))))
(assert (= ($Snap.first $t@236@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@205@01 1))))
(assert (= ($Snap.second $t@236@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@205@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@237@01 $Snap)
(assert (= $t@237@01 ($Snap.combine ($Snap.first $t@237@01) ($Snap.second $t@237@01))))
(assert (= ($Snap.first $t@237@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@205@01 2))))
(assert (= ($Snap.second $t@237@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@205@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@238@01 $Snap)
(assert (= $t@238@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@205@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@239@01 $Snap)
(assert (= $t@239@01 ($Snap.combine ($Snap.first $t@239@01) ($Snap.second $t@239@01))))
(assert (= ($Snap.first $t@239@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@205@01 4))))
(assert (= ($Snap.second $t@239@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@205@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@240@01 $Snap)
(assert (= $t@240@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@205@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@241@01 $Snap)
(assert (= $t@241@01 ($Snap.combine ($Snap.first $t@241@01) ($Snap.second $t@241@01))))
(assert (= ($Snap.first $t@241@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@204@01 0))))
(assert (= ($Snap.second $t@241@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@204@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@242@01 $Snap)
(assert (= $t@242@01 ($Snap.combine ($Snap.first $t@242@01) ($Snap.second $t@242@01))))
(assert (= ($Snap.first $t@242@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@204@01 1))))
(assert (= ($Snap.second $t@242@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@204@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@243@01 $Snap)
(assert (= $t@243@01 ($Snap.combine ($Snap.first $t@243@01) ($Snap.second $t@243@01))))
(assert (= ($Snap.first $t@243@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@204@01 2))))
(assert (= ($Snap.second $t@243@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@204@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@244@01 $Snap)
(assert (= $t@244@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@204@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@245@01 $Snap)
(assert (= $t@245@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@204@01 0)) 0)))
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
; self := s$struct$self$init(0, 0, 0, false, ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]),
;   false)
; [eval] s$struct$self$init(0, 0, 0, false, ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]), false)
; [eval] ($map_init(0): $Map[Int, Int])
; [eval] ($map_init(0): $Map[Int, Int])
(declare-const self@246@01 $Struct)
(assert (=
  self@246@01
  (s$struct$self$init<$Struct> 0 0 0 false ($map_init<$Map<Int~_Int>> 0) ($map_init<$Map<Int~_Int>> 0) false)))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@247@01 $Snap)
(assert (= $t@247@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@218@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@248@01 $Struct)
(assert (=
  self@248@01
  ($struct_set<$Struct> self@246@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@246@01 1))
    l$havoc@218@01))))
; [exec]
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@249@01 $Snap)
(assert (= $t@249@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@204@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(msg, 0)): Int)): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(msg, 0)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const self@250@01 $Struct)
(assert (=
  self@250@01
  ($struct_set<$Struct> self@248@01 0 ($struct_get<Int> ($struct_loc<Int> msg@204@01 0)))))
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | $out_of_gas@219@01 | live]
; [else-branch: 44 | !($out_of_gas@219@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 44 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
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
; [then-branch: 45 | True | live]
; [else-branch: 45 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 45 | True]
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
; [then-branch: 46 | True | live]
; [else-branch: 46 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 46 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@251@01 $Snap)
(assert (= $t@251@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@220@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@252@01 $Struct)
(assert (=
  self@252@01
  ($struct_set<$Struct> self@208@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@208@01 1))
    l$havoc$1@220@01))))
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
; [then-branch: 47 | True | live]
; [else-branch: 47 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 47 | True]
; [exec]
; $old_self := self
; [exec]
; assert $succ ==>
;   (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] $succ ==> (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(push) ; 7
; [then-branch: 48 | False | dead]
; [else-branch: 48 | True | live]
(push) ; 8
; [else-branch: 48 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 49 | False | dead]
; [else-branch: 49 | True | live]
(push) ; 6
; [else-branch: 49 | True]
(pop) ; 6
(pop) ; 5
; [then-branch: 50 | False | dead]
; [else-branch: 50 | True | live]
(push) ; 5
; [else-branch: 50 | True]
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 51 | False | dead]
; [else-branch: 51 | True | live]
(push) ; 4
; [else-branch: 51 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 44 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 52 | !($out_of_gas@219@01) | live]
; [else-branch: 52 | $out_of_gas@219@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 52 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
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
; [then-branch: 53 | True | live]
; [else-branch: 53 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 53 | True]
; [exec]
; $old_self := self
; [eval] !$succ
; [then-branch: 54 | False | dead]
; [else-branch: 54 | True | live]
(push) ; 5
; [else-branch: 54 | True]
(pop) ; 5
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | True | live]
; [else-branch: 55 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 55 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@253@01 $Snap)
(assert (= $t@253@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@220@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@254@01 $Struct)
(assert (=
  self@254@01
  ($struct_set<$Struct> self@250@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@250@01 1))
    l$havoc$1@220@01))))
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
; [then-branch: 56 | True | live]
; [else-branch: 56 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 56 | True]
; [exec]
; $old_self := self
; [exec]
; assert $succ ==>
;   (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] $succ ==> (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | True | live]
; [else-branch: 57 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 57 | True]
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@255@01 Int)
(declare-const q$v@256@01 Int)
(push) ; 9
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 10
; [then-branch: 58 | !(0 <= q$a@255@01) | live]
; [else-branch: 58 | 0 <= q$a@255@01 | live]
(push) ; 11
; [then-branch: 58 | !(0 <= q$a@255@01)]
(assert (not (<= 0 q$a@255@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 58 | 0 <= q$a@255@01]
(assert (<= 0 q$a@255@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 12
; [then-branch: 59 | !(q$a@255@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 59 | q$a@255@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 13
; [then-branch: 59 | !(q$a@255@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@255@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 13
(push) ; 13
; [else-branch: 59 | q$a@255@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@255@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 14
; [then-branch: 60 | !(0 <= q$v@256@01) | live]
; [else-branch: 60 | 0 <= q$v@256@01 | live]
(push) ; 15
; [then-branch: 60 | !(0 <= q$v@256@01)]
(assert (not (<= 0 q$v@256@01)))
(pop) ; 15
(push) ; 15
; [else-branch: 60 | 0 <= q$v@256@01]
(assert (<= 0 q$v@256@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@256@01) (not (<= 0 q$v@256@01))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@256@01) (not (<= 0 q$v@256@01))))))
(assert (or
  (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@255@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@255@01)
  (and
    (<= 0 q$a@255@01)
    (=>
      (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@256@01) (not (<= 0 q$v@256@01)))))
    (or
      (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@255@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@255@01) (not (<= 0 q$a@255@01))))
(push) ; 10
; [then-branch: 61 | 0 <= q$a@255@01 && q$a@255@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@256@01 && q$v@256@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 61 | !(0 <= q$a@255@01 && q$a@255@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@256@01 && q$v@256@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 11
; [then-branch: 61 | 0 <= q$a@255@01 && q$a@255@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@256@01 && q$v@256@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@255@01)
  (and
    (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@256@01)
      (<=
        q$v@256@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 12
; [then-branch: 62 | q$v@256@01 <= $struct_get[Int]($struct_loc[Int](self@254@01, 1)) | live]
; [else-branch: 62 | !(q$v@256@01 <= $struct_get[Int]($struct_loc[Int](self@254@01, 1))) | live]
(push) ; 13
; [then-branch: 62 | q$v@256@01 <= $struct_get[Int]($struct_loc[Int](self@254@01, 1))]
(assert (<= q$v@256@01 ($struct_get<Int> ($struct_loc<Int> self@254@01 1))))
(pop) ; 13
(push) ; 13
; [else-branch: 62 | !(q$v@256@01 <= $struct_get[Int]($struct_loc[Int](self@254@01, 1)))]
(assert (not (<= q$v@256@01 ($struct_get<Int> ($struct_loc<Int> self@254@01 1)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@256@01 ($struct_get<Int> ($struct_loc<Int> self@254@01 1))))
  (<= q$v@256@01 ($struct_get<Int> ($struct_loc<Int> self@254@01 1)))))
(pop) ; 11
(push) ; 11
; [else-branch: 61 | !(0 <= q$a@255@01 && q$a@255@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@256@01 && q$v@256@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@255@01)
    (and
      (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@256@01)
        (<=
          q$v@256@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@255@01)
    (and
      (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@256@01)
        (<=
          q$v@256@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@255@01)
    (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@256@01)
    (<=
      q$v@256@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@256@01 ($struct_get<Int> ($struct_loc<Int> self@254@01 1))))
      (<= q$v@256@01 ($struct_get<Int> ($struct_loc<Int> self@254@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@255@01)
      (and
        (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@256@01)
          (<=
            q$v@256@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@255@01)
    (and
      (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@256@01)
        (<=
          q$v@256@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(declare-const sm@257@01 $PSF<$accessible$withdraw>)
(declare-const s@258@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@255@01 Int) (q$v@256@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@255@01)
      (and
        (<= 0 q$a@255@01)
        (=>
          (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@256@01) (not (<= 0 q$v@256@01)))))
        (or
          (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@255@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@255@01) (not (<= 0 q$a@255@01)))
    (=>
      (and
        (<= 0 q$a@255@01)
        (and
          (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@256@01)
            (<=
              q$v@256@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@255@01)
        (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@256@01)
        (<=
          q$v@256@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@256@01 ($struct_get<Int> ($struct_loc<Int> self@254@01 1))))
          (<= q$v@256@01 ($struct_get<Int> ($struct_loc<Int> self@254@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@255@01)
          (and
            (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@256@01)
              (<=
                q$v@256@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@255@01)
        (and
          (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@256@01)
            (<=
              q$v@256@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@257@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@255@01))
      ($SortWrappers.IntTo$Snap q$v@256@01))
    ($SortWrappers.IntTo$Snap q$v@256@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@255@01))
      ($SortWrappers.IntTo$Snap q$v@256@01))
    ($SortWrappers.IntTo$Snap q$v@256@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@813@21@813@325-aux|)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((q$a@255@01 Int) (q$v@256@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@255@01)
      (and
        (<= 0 q$a@255@01)
        (=>
          (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@256@01) (not (<= 0 q$v@256@01)))))
        (or
          (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@255@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@255@01) (not (<= 0 q$a@255@01)))
    (=>
      (and
        (<= 0 q$a@255@01)
        (and
          (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@256@01)
            (<=
              q$v@256@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@255@01)
        (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@256@01)
        (<=
          q$v@256@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@256@01 ($struct_get<Int> ($struct_loc<Int> self@254@01 1))))
          (<= q$v@256@01 ($struct_get<Int> ($struct_loc<Int> self@254@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@255@01)
          (and
            (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@256@01)
              (<=
                q$v@256@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@255@01)
        (and
          (<= q$a@255@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@256@01)
            (<=
              q$v@256@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@257@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@255@01))
      ($SortWrappers.IntTo$Snap q$v@256@01))
    ($SortWrappers.IntTo$Snap q$v@256@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@255@01))
      ($SortWrappers.IntTo$Snap q$v@256@01))
    ($SortWrappers.IntTo$Snap q$v@256@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@813@21@813@325-aux|)))
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 63 | False | dead]
; [else-branch: 63 | True | live]
(push) ; 6
; [else-branch: 63 | True]
(pop) ; 6
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 64 | False | dead]
; [else-branch: 64 | True | live]
(push) ; 4
; [else-branch: 64 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 52 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$__default__ ----------
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
;   1461501637330902918203684832716283019655932542975
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 ($Snap.combine ($Snap.first $t@277@01) ($Snap.second $t@277@01))))
(assert (= ($Snap.first $t@277@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@265@01 0))))
(assert (= ($Snap.second $t@277@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@265@01 0))
  1461501637330902918203684832716283019655932542975))
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
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 ($Snap.combine ($Snap.first $t@279@01) ($Snap.second $t@279@01))))
(assert (= ($Snap.first $t@279@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@265@01 2))))
(assert (= ($Snap.second $t@279@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@265@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@280@01 $Snap)
(assert (= $t@280@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@281@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 65 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 4)), $q0@281@01)) | live]
; [else-branch: 65 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 4)), $q0@281@01) | live]
(push) ; 5
; [then-branch: 65 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 4)), $q0@281@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@281@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 65 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 4)), $q0@281@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@281@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@281@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@281@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@281@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@281@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@281@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@281@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@838@11@838@345-aux|)))
(assert (forall (($q0@281@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@281@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@281@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@281@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@838@11@838@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@282@01 $Snap)
(assert (= $t@282@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@283@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@283@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@283@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 4)) $q0@283@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@839@11@839@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@284@01 $Snap)
(assert (= $t@284@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@285@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 66 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 5)), $q1@285@01)) | live]
; [else-branch: 66 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 5)), $q1@285@01) | live]
(push) ; 5
; [then-branch: 66 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 5)), $q1@285@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@285@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 66 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@265@01, 5)), $q1@285@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@285@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@285@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@285@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@285@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@285@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@285@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@285@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@840@11@840@345-aux|)))
(assert (forall (($q1@285@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@285@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@285@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@285@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@840@11@840@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@286@01 $Snap)
(assert (= $t@286@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@287@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@287@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@287@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@265@01 5)) $q1@287@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@841@11@841@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@288@01 $Snap)
(assert (= $t@288@01 $Snap.unit))
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
(declare-const $t@289@01 $Snap)
(assert (= $t@289@01 ($Snap.combine ($Snap.first $t@289@01) ($Snap.second $t@289@01))))
(assert (= ($Snap.first $t@289@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@289@01) $Snap.unit))
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
(declare-const $t@290@01 $Snap)
(assert (= $t@290@01 ($Snap.combine ($Snap.first $t@290@01) ($Snap.second $t@290@01))))
(assert (= ($Snap.first $t@290@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@262@01 0))))
(assert (= ($Snap.second $t@290@01) $Snap.unit))
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
(declare-const $t@291@01 $Snap)
(assert (= $t@291@01 ($Snap.combine ($Snap.first $t@291@01) ($Snap.second $t@291@01))))
(assert (= ($Snap.first $t@291@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@262@01 1))))
(assert (= ($Snap.second $t@291@01) $Snap.unit))
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
(declare-const $t@292@01 $Snap)
(assert (= $t@292@01 ($Snap.combine ($Snap.first $t@292@01) ($Snap.second $t@292@01))))
(assert (= ($Snap.first $t@292@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@262@01 2))))
(assert (= ($Snap.second $t@292@01) $Snap.unit))
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
(declare-const $t@293@01 $Snap)
(assert (= $t@293@01 $Snap.unit))
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
(declare-const $t@294@01 $Snap)
(assert (= $t@294@01 ($Snap.combine ($Snap.first $t@294@01) ($Snap.second $t@294@01))))
(assert (= ($Snap.first $t@294@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@262@01 4))))
(assert (= ($Snap.second $t@294@01) $Snap.unit))
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
(declare-const $t@295@01 $Snap)
(assert (= $t@295@01 $Snap.unit))
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
(declare-const $t@296@01 $Snap)
(assert (= $t@296@01 ($Snap.combine ($Snap.first $t@296@01) ($Snap.second $t@296@01))))
(assert (= ($Snap.first $t@296@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@261@01 0))))
(assert (= ($Snap.second $t@296@01) $Snap.unit))
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
(declare-const $t@297@01 $Snap)
(assert (= $t@297@01 ($Snap.combine ($Snap.first $t@297@01) ($Snap.second $t@297@01))))
(assert (= ($Snap.first $t@297@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@261@01 1))))
(assert (= ($Snap.second $t@297@01) $Snap.unit))
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
(declare-const $t@298@01 $Snap)
(assert (= $t@298@01 ($Snap.combine ($Snap.first $t@298@01) ($Snap.second $t@298@01))))
(assert (= ($Snap.first $t@298@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@261@01 2))))
(assert (= ($Snap.second $t@298@01) $Snap.unit))
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
(declare-const $t@299@01 $Snap)
(assert (= $t@299@01 $Snap.unit))
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
(declare-const $t@300@01 $Snap)
(assert (= $t@300@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@261@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@301@01 $Snap)
(assert (= $t@301@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@302@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const $t@303@01 $Snap)
(assert (= $t@303@01 $Snap.unit))
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@304@01 Int)
(declare-const q$v@305@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 4
; [then-branch: 67 | !(0 <= q$a@304@01) | live]
; [else-branch: 67 | 0 <= q$a@304@01 | live]
(push) ; 5
; [then-branch: 67 | !(0 <= q$a@304@01)]
(assert (not (<= 0 q$a@304@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 67 | 0 <= q$a@304@01]
(assert (<= 0 q$a@304@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 6
; [then-branch: 68 | !(q$a@304@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 68 | q$a@304@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 7
; [then-branch: 68 | !(q$a@304@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@304@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 7
(push) ; 7
; [else-branch: 68 | q$a@304@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@304@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 8
; [then-branch: 69 | !(0 <= q$v@305@01) | live]
; [else-branch: 69 | 0 <= q$v@305@01 | live]
(push) ; 9
; [then-branch: 69 | !(0 <= q$v@305@01)]
(assert (not (<= 0 q$v@305@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 69 | 0 <= q$v@305@01]
(assert (<= 0 q$v@305@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@305@01) (not (<= 0 q$v@305@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@305@01) (not (<= 0 q$v@305@01))))))
(assert (or
  (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@304@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@304@01)
  (and
    (<= 0 q$a@304@01)
    (=>
      (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@305@01) (not (<= 0 q$v@305@01)))))
    (or
      (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@304@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@304@01) (not (<= 0 q$a@304@01))))
(push) ; 4
; [then-branch: 70 | 0 <= q$a@304@01 && q$a@304@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@305@01 && q$v@305@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 70 | !(0 <= q$a@304@01 && q$a@304@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@305@01 && q$v@305@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 5
; [then-branch: 70 | 0 <= q$a@304@01 && q$a@304@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@305@01 && q$v@305@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@304@01)
  (and
    (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@305@01)
      (<=
        q$v@305@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
; [then-branch: 71 | q$v@305@01 <= $struct_get[Int]($struct_loc[Int](self@265@01, 1)) | live]
; [else-branch: 71 | !(q$v@305@01 <= $struct_get[Int]($struct_loc[Int](self@265@01, 1))) | live]
(push) ; 7
; [then-branch: 71 | q$v@305@01 <= $struct_get[Int]($struct_loc[Int](self@265@01, 1))]
(assert (<= q$v@305@01 ($struct_get<Int> ($struct_loc<Int> self@265@01 1))))
(pop) ; 7
(push) ; 7
; [else-branch: 71 | !(q$v@305@01 <= $struct_get[Int]($struct_loc[Int](self@265@01, 1)))]
(assert (not (<= q$v@305@01 ($struct_get<Int> ($struct_loc<Int> self@265@01 1)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@305@01 ($struct_get<Int> ($struct_loc<Int> self@265@01 1))))
  (<= q$v@305@01 ($struct_get<Int> ($struct_loc<Int> self@265@01 1)))))
(pop) ; 5
(push) ; 5
; [else-branch: 70 | !(0 <= q$a@304@01 && q$a@304@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@305@01 && q$v@305@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@304@01)
    (and
      (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@305@01)
        (<=
          q$v@305@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@304@01)
    (and
      (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@305@01)
        (<=
          q$v@305@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@304@01)
    (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@305@01)
    (<=
      q$v@305@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@305@01 ($struct_get<Int> ($struct_loc<Int> self@265@01 1))))
      (<= q$v@305@01 ($struct_get<Int> ($struct_loc<Int> self@265@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@304@01)
      (and
        (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@305@01)
          (<=
            q$v@305@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@304@01)
    (and
      (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@305@01)
        (<=
          q$v@305@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(declare-const sm@306@01 $PSF<$accessible$withdraw>)
(declare-const s@307@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@304@01 Int) (q$v@305@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@304@01)
      (and
        (<= 0 q$a@304@01)
        (=>
          (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@305@01) (not (<= 0 q$v@305@01)))))
        (or
          (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@304@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@304@01) (not (<= 0 q$a@304@01)))
    (=>
      (and
        (<= 0 q$a@304@01)
        (and
          (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@305@01)
            (<=
              q$v@305@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@304@01)
        (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@305@01)
        (<=
          q$v@305@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@305@01 ($struct_get<Int> ($struct_loc<Int> self@265@01 1))))
          (<= q$v@305@01 ($struct_get<Int> ($struct_loc<Int> self@265@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@304@01)
          (and
            (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@305@01)
              (<=
                q$v@305@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@304@01)
        (and
          (<= q$a@304@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@305@01)
            (<=
              q$v@305@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@304@01))
      ($SortWrappers.IntTo$Snap q$v@305@01))
    ($SortWrappers.IntTo$Snap q$v@305@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@304@01))
      ($SortWrappers.IntTo$Snap q$v@305@01))
    ($SortWrappers.IntTo$Snap q$v@305@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@860@11@860@315-aux|)))
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
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@308@01 $Struct)
(assert (=
  self@308@01
  ($struct_set<$Struct> self@265@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@265@01 1))
    ($struct_get<Int> ($struct_loc<Int> msg@261@01 1))))))
; [exec]
; self := ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@309@01 $Struct)
(assert (=
  self@309@01
  ($struct_set<$Struct> self@308@01 5 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@308@01 5)) ($struct_get<Int> ($struct_loc<Int> msg@261@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@308@01 5)) ($struct_get<Int> ($struct_loc<Int> msg@261@01 0)))
    ($struct_get<Int> ($struct_loc<Int> msg@261@01 1)))))))
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
; [then-branch: 72 | $out_of_gas@274@01 | live]
; [else-branch: 72 | !($out_of_gas@274@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 72 | $out_of_gas@274@01]
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
; [then-branch: 73 | True | live]
; [else-branch: 73 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 73 | True]
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
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@311@01 $Struct)
(assert (=
  self@311@01
  ($struct_set<$Struct> self@265@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@265@01 1))
    l$havoc@275@01))))
; [exec]
; $contracts := l$havoc$1
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@312@01 Int)
(declare-const q$v@313@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 6
; [then-branch: 74 | !(0 <= q$a@312@01) | live]
; [else-branch: 74 | 0 <= q$a@312@01 | live]
(push) ; 7
; [then-branch: 74 | !(0 <= q$a@312@01)]
(assert (not (<= 0 q$a@312@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 74 | 0 <= q$a@312@01]
(assert (<= 0 q$a@312@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 8
; [then-branch: 75 | !(q$a@312@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 75 | q$a@312@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 9
; [then-branch: 75 | !(q$a@312@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@312@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 9
(push) ; 9
; [else-branch: 75 | q$a@312@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@312@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 10
; [then-branch: 76 | !(0 <= q$v@313@01) | live]
; [else-branch: 76 | 0 <= q$v@313@01 | live]
(push) ; 11
; [then-branch: 76 | !(0 <= q$v@313@01)]
(assert (not (<= 0 q$v@313@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 76 | 0 <= q$v@313@01]
(assert (<= 0 q$v@313@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@313@01) (not (<= 0 q$v@313@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@313@01) (not (<= 0 q$v@313@01))))))
(assert (or
  (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@312@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@312@01)
  (and
    (<= 0 q$a@312@01)
    (=>
      (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@313@01) (not (<= 0 q$v@313@01)))))
    (or
      (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@312@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@312@01) (not (<= 0 q$a@312@01))))
(push) ; 6
; [then-branch: 77 | 0 <= q$a@312@01 && q$a@312@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@313@01 && q$v@313@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 77 | !(0 <= q$a@312@01 && q$a@312@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@313@01 && q$v@313@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 7
; [then-branch: 77 | 0 <= q$a@312@01 && q$a@312@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@313@01 && q$v@313@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@312@01)
  (and
    (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@313@01)
      (<=
        q$v@313@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 8
; [then-branch: 78 | q$v@313@01 <= $struct_get[Int]($struct_loc[Int](self@311@01, 1)) | live]
; [else-branch: 78 | !(q$v@313@01 <= $struct_get[Int]($struct_loc[Int](self@311@01, 1))) | live]
(push) ; 9
; [then-branch: 78 | q$v@313@01 <= $struct_get[Int]($struct_loc[Int](self@311@01, 1))]
(assert (<= q$v@313@01 ($struct_get<Int> ($struct_loc<Int> self@311@01 1))))
(pop) ; 9
(push) ; 9
; [else-branch: 78 | !(q$v@313@01 <= $struct_get[Int]($struct_loc[Int](self@311@01, 1)))]
(assert (not (<= q$v@313@01 ($struct_get<Int> ($struct_loc<Int> self@311@01 1)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@313@01 ($struct_get<Int> ($struct_loc<Int> self@311@01 1))))
  (<= q$v@313@01 ($struct_get<Int> ($struct_loc<Int> self@311@01 1)))))
(pop) ; 7
(push) ; 7
; [else-branch: 77 | !(0 <= q$a@312@01 && q$a@312@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@313@01 && q$v@313@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@312@01)
    (and
      (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@313@01)
        (<=
          q$v@313@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@312@01)
    (and
      (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@313@01)
        (<=
          q$v@313@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@312@01)
    (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@313@01)
    (<=
      q$v@313@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@313@01 ($struct_get<Int> ($struct_loc<Int> self@311@01 1))))
      (<= q$v@313@01 ($struct_get<Int> ($struct_loc<Int> self@311@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@312@01)
      (and
        (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@313@01)
          (<=
            q$v@313@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@312@01)
    (and
      (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@313@01)
        (<=
          q$v@313@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(declare-const sm@314@01 $PSF<$accessible$withdraw>)
(declare-const s@315@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@312@01 Int) (q$v@313@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@312@01)
      (and
        (<= 0 q$a@312@01)
        (=>
          (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@313@01) (not (<= 0 q$v@313@01)))))
        (or
          (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@312@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@312@01) (not (<= 0 q$a@312@01)))
    (=>
      (and
        (<= 0 q$a@312@01)
        (and
          (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@313@01)
            (<=
              q$v@313@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@312@01)
        (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@313@01)
        (<=
          q$v@313@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@313@01 ($struct_get<Int> ($struct_loc<Int> self@311@01 1))))
          (<= q$v@313@01 ($struct_get<Int> ($struct_loc<Int> self@311@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@312@01)
          (and
            (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@313@01)
              (<=
                q$v@313@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@312@01)
        (and
          (<= q$a@312@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@313@01)
            (<=
              q$v@313@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@314@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@312@01))
      ($SortWrappers.IntTo$Snap q$v@313@01))
    ($SortWrappers.IntTo$Snap q$v@313@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@312@01))
      ($SortWrappers.IntTo$Snap q$v@313@01))
    ($SortWrappers.IntTo$Snap q$v@313@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@895@11@895@315-aux|)))
(pop) ; 4
; [then-branch: 79 | False | dead]
; [else-branch: 79 | True | live]
(push) ; 4
; [else-branch: 79 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 72 | !($out_of_gas@274@01)]
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
; [then-branch: 80 | !($out_of_gas@274@01) | live]
; [else-branch: 80 | $out_of_gas@274@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 80 | !($out_of_gas@274@01)]
(assert (not $out_of_gas@274@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 81 | False | dead]
; [else-branch: 81 | True | live]
(push) ; 4
; [else-branch: 81 | True]
(pop) ; 4
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 82 | True | live]
; [else-branch: 82 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 82 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@316@01 $Snap)
(assert (= $t@316@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@275@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@317@01 $Struct)
(assert (=
  self@317@01
  ($struct_set<$Struct> self@309@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@309@01 1))
    l$havoc@275@01))))
; [exec]
; $contracts := l$havoc$1
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@318@01 Int)
(declare-const q$v@319@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 6
; [then-branch: 83 | !(0 <= q$a@318@01) | live]
; [else-branch: 83 | 0 <= q$a@318@01 | live]
(push) ; 7
; [then-branch: 83 | !(0 <= q$a@318@01)]
(assert (not (<= 0 q$a@318@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 83 | 0 <= q$a@318@01]
(assert (<= 0 q$a@318@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 8
; [then-branch: 84 | !(q$a@318@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 84 | q$a@318@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 9
; [then-branch: 84 | !(q$a@318@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@318@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 9
(push) ; 9
; [else-branch: 84 | q$a@318@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@318@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 10
; [then-branch: 85 | !(0 <= q$v@319@01) | live]
; [else-branch: 85 | 0 <= q$v@319@01 | live]
(push) ; 11
; [then-branch: 85 | !(0 <= q$v@319@01)]
(assert (not (<= 0 q$v@319@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 85 | 0 <= q$v@319@01]
(assert (<= 0 q$v@319@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@319@01) (not (<= 0 q$v@319@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@319@01) (not (<= 0 q$v@319@01))))))
(assert (or
  (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@318@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@318@01)
  (and
    (<= 0 q$a@318@01)
    (=>
      (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@319@01) (not (<= 0 q$v@319@01)))))
    (or
      (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@318@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@318@01) (not (<= 0 q$a@318@01))))
(push) ; 6
; [then-branch: 86 | 0 <= q$a@318@01 && q$a@318@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@319@01 && q$v@319@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 86 | !(0 <= q$a@318@01 && q$a@318@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@319@01 && q$v@319@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 7
; [then-branch: 86 | 0 <= q$a@318@01 && q$a@318@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@319@01 && q$v@319@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@318@01)
  (and
    (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@319@01)
      (<=
        q$v@319@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 8
; [then-branch: 87 | q$v@319@01 <= $struct_get[Int]($struct_loc[Int](self@317@01, 1)) | live]
; [else-branch: 87 | !(q$v@319@01 <= $struct_get[Int]($struct_loc[Int](self@317@01, 1))) | live]
(push) ; 9
; [then-branch: 87 | q$v@319@01 <= $struct_get[Int]($struct_loc[Int](self@317@01, 1))]
(assert (<= q$v@319@01 ($struct_get<Int> ($struct_loc<Int> self@317@01 1))))
(pop) ; 9
(push) ; 9
; [else-branch: 87 | !(q$v@319@01 <= $struct_get[Int]($struct_loc[Int](self@317@01, 1)))]
(assert (not (<= q$v@319@01 ($struct_get<Int> ($struct_loc<Int> self@317@01 1)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@319@01 ($struct_get<Int> ($struct_loc<Int> self@317@01 1))))
  (<= q$v@319@01 ($struct_get<Int> ($struct_loc<Int> self@317@01 1)))))
(pop) ; 7
(push) ; 7
; [else-branch: 86 | !(0 <= q$a@318@01 && q$a@318@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@319@01 && q$v@319@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@318@01)
    (and
      (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@319@01)
        (<=
          q$v@319@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@318@01)
    (and
      (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@319@01)
        (<=
          q$v@319@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@318@01)
    (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@319@01)
    (<=
      q$v@319@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@319@01 ($struct_get<Int> ($struct_loc<Int> self@317@01 1))))
      (<= q$v@319@01 ($struct_get<Int> ($struct_loc<Int> self@317@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@318@01)
      (and
        (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@319@01)
          (<=
            q$v@319@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@318@01)
    (and
      (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@319@01)
        (<=
          q$v@319@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(declare-const sm@320@01 $PSF<$accessible$withdraw>)
(declare-const s@321@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@318@01 Int) (q$v@319@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@318@01)
      (and
        (<= 0 q$a@318@01)
        (=>
          (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@319@01) (not (<= 0 q$v@319@01)))))
        (or
          (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@318@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@318@01) (not (<= 0 q$a@318@01)))
    (=>
      (and
        (<= 0 q$a@318@01)
        (and
          (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@319@01)
            (<=
              q$v@319@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@318@01)
        (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@319@01)
        (<=
          q$v@319@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@319@01 ($struct_get<Int> ($struct_loc<Int> self@317@01 1))))
          (<= q$v@319@01 ($struct_get<Int> ($struct_loc<Int> self@317@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@318@01)
          (and
            (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@319@01)
              (<=
                q$v@319@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@318@01)
        (and
          (<= q$a@318@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@319@01)
            (<=
              q$v@319@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@320@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@318@01))
      ($SortWrappers.IntTo$Snap q$v@319@01))
    ($SortWrappers.IntTo$Snap q$v@319@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@318@01))
      ($SortWrappers.IntTo$Snap q$v@319@01))
    ($SortWrappers.IntTo$Snap q$v@319@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@895@11@895@315-aux|)))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 80 | $out_of_gas@274@01]
(assert $out_of_gas@274@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$withdraw ----------
(declare-const l$amount@322@01 $Int)
(declare-const $succ@323@01 Bool)
(declare-const l$amount@324@01 $Int)
(declare-const $succ@325@01 Bool)
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
(declare-const msg@326@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@327@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@328@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@329@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@330@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@331@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@332@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@333@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@334@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@335@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@336@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@337@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@338@01 Bool)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@339@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@340@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@341@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@342@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@343@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@344@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@345@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@346@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@347@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@348@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@349@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@350@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@351@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@352@01 $Snap)
(assert (= $t@352@01 ($Snap.combine ($Snap.first $t@352@01) ($Snap.second $t@352@01))))
(assert (= ($Snap.first $t@352@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@330@01 0))))
(assert (= ($Snap.second $t@352@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@330@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@353@01 $Snap)
(assert (= $t@353@01 ($Snap.combine ($Snap.first $t@353@01) ($Snap.second $t@353@01))))
(assert (= ($Snap.first $t@353@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))
(assert (= ($Snap.second $t@353@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@354@01 $Snap)
(assert (= $t@354@01 ($Snap.combine ($Snap.first $t@354@01) ($Snap.second $t@354@01))))
(assert (= ($Snap.first $t@354@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@330@01 2))))
(assert (= ($Snap.second $t@354@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@330@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@355@01 $Snap)
(assert (= $t@355@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@356@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 88 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@330@01, 4)), $q0@356@01)) | live]
; [else-branch: 88 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@330@01, 4)), $q0@356@01) | live]
(push) ; 5
; [then-branch: 88 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@330@01, 4)), $q0@356@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@356@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 88 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@330@01, 4)), $q0@356@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@356@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@356@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@356@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@356@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@356@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@356@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@356@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@930@11@930@345-aux|)))
(assert (forall (($q0@356@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@356@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@356@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@356@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@930@11@930@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@357@01 $Snap)
(assert (= $t@357@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@358@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@358@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@358@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) $q0@358@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@931@11@931@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@359@01 $Snap)
(assert (= $t@359@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@360@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 89 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@330@01, 5)), $q1@360@01)) | live]
; [else-branch: 89 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@330@01, 5)), $q1@360@01) | live]
(push) ; 5
; [then-branch: 89 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@330@01, 5)), $q1@360@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@360@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 89 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@330@01, 5)), $q1@360@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@360@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@360@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@360@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@360@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@360@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@360@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@360@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@932@11@932@345-aux|)))
(assert (forall (($q1@360@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@360@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@360@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@360@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@932@11@932@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@361@01 $Snap)
(assert (= $t@361@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@362@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@362@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@362@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 5)) $q1@362@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@933@11@933@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@363@01 $Snap)
(assert (= $t@363@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@330@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@364@01 $Snap)
(assert (= $t@364@01 ($Snap.combine ($Snap.first $t@364@01) ($Snap.second $t@364@01))))
(assert (= ($Snap.first $t@364@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@364@01) $Snap.unit))
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
(declare-const $t@365@01 $Snap)
(assert (= $t@365@01 ($Snap.combine ($Snap.first $t@365@01) ($Snap.second $t@365@01))))
(assert (= ($Snap.first $t@365@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$amount)
; [eval] $unwrap(l$amount)
(assert (<= 0 ($unwrap<Int> l$amount@324@01)))
(assert (= ($Snap.second $t@365@01) $Snap.unit))
; [eval] $unwrap(l$amount) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$amount)
(assert (<=
  ($unwrap<Int> l$amount@324@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@366@01 $Snap)
(assert (= $t@366@01 ($Snap.combine ($Snap.first $t@366@01) ($Snap.second $t@366@01))))
(assert (= ($Snap.first $t@366@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@327@01 0))))
(assert (= ($Snap.second $t@366@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@327@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@367@01 $Snap)
(assert (= $t@367@01 ($Snap.combine ($Snap.first $t@367@01) ($Snap.second $t@367@01))))
(assert (= ($Snap.first $t@367@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@327@01 1))))
(assert (= ($Snap.second $t@367@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@327@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@368@01 $Snap)
(assert (= $t@368@01 ($Snap.combine ($Snap.first $t@368@01) ($Snap.second $t@368@01))))
(assert (= ($Snap.first $t@368@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@327@01 2))))
(assert (= ($Snap.second $t@368@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@327@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@369@01 $Snap)
(assert (= $t@369@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@327@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@370@01 $Snap)
(assert (= $t@370@01 ($Snap.combine ($Snap.first $t@370@01) ($Snap.second $t@370@01))))
(assert (= ($Snap.first $t@370@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@327@01 4))))
(assert (= ($Snap.second $t@370@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@327@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@371@01 $Snap)
(assert (= $t@371@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@327@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@372@01 $Snap)
(assert (= $t@372@01 ($Snap.combine ($Snap.first $t@372@01) ($Snap.second $t@372@01))))
(assert (= ($Snap.first $t@372@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
(assert (= ($Snap.second $t@372@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@373@01 $Snap)
(assert (= $t@373@01 ($Snap.combine ($Snap.first $t@373@01) ($Snap.second $t@373@01))))
(assert (= ($Snap.first $t@373@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@326@01 1))))
(assert (= ($Snap.second $t@373@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@326@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@374@01 $Snap)
(assert (= $t@374@01 ($Snap.combine ($Snap.first $t@374@01) ($Snap.second $t@374@01))))
(assert (= ($Snap.first $t@374@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@326@01 2))))
(assert (= ($Snap.second $t@374@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@326@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@375@01 $Snap)
(assert (= $t@375@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@326@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@376@01 $Snap)
(assert (= $t@376@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@326@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@377@01 $Snap)
(assert (= $t@377@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@378@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true &&
;   (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935 &&
;     q$v <= ($struct_get($struct_loc(self, 1)): Int))) ==>
;     acc($accessible$withdraw(0, q$a, q$v, q$v), write))
(declare-const $t@379@01 $Snap)
(assert (= $t@379@01 ($Snap.combine ($Snap.first $t@379@01) ($Snap.second $t@379@01))))
(assert (= ($Snap.first $t@379@01) $Snap.unit))
(declare-const q$a@380@01 Int)
(declare-const q$v@381@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 && q$v <= ($struct_get($struct_loc(self, 1)): Int)))
; [eval] 0 <= q$a
(push) ; 4
; [then-branch: 90 | !(0 <= q$a@380@01) | live]
; [else-branch: 90 | 0 <= q$a@380@01 | live]
(push) ; 5
; [then-branch: 90 | !(0 <= q$a@380@01)]
(assert (not (<= 0 q$a@380@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 90 | 0 <= q$a@380@01]
(assert (<= 0 q$a@380@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 6
; [then-branch: 91 | !(q$a@380@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 91 | q$a@380@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 7
; [then-branch: 91 | !(q$a@380@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@380@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 7
(push) ; 7
; [else-branch: 91 | q$a@380@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@380@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 8
; [then-branch: 92 | !(0 <= q$v@381@01) | live]
; [else-branch: 92 | 0 <= q$v@381@01 | live]
(push) ; 9
; [then-branch: 92 | !(0 <= q$v@381@01)]
(assert (not (<= 0 q$v@381@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 92 | 0 <= q$v@381@01]
(assert (<= 0 q$v@381@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(push) ; 10
; [then-branch: 93 | !(q$v@381@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 93 | q$v@381@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
(push) ; 11
; [then-branch: 93 | !(q$v@381@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (<=
    q$v@381@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 11
(push) ; 11
; [else-branch: 93 | q$v@381@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (<=
  q$v@381@01
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    q$v@381@01
    115792089237316195423570985008687907853269984665640564039457584007913129639935)
  (not
    (<=
      q$v@381@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$v@381@01)
  (and
    (<= 0 q$v@381@01)
    (or
      (<=
        q$v@381@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)
      (not
        (<=
          q$v@381@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(assert (or (<= 0 q$v@381@01) (not (<= 0 q$v@381@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
    (=>
      (<= 0 q$v@381@01)
      (and
        (<= 0 q$v@381@01)
        (or
          (<=
            q$v@381@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)
          (not
            (<=
              q$v@381@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
    (or (<= 0 q$v@381@01) (not (<= 0 q$v@381@01))))))
(assert (or
  (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@380@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@380@01)
  (and
    (<= 0 q$a@380@01)
    (=>
      (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
        (=>
          (<= 0 q$v@381@01)
          (and
            (<= 0 q$v@381@01)
            (or
              (<=
                q$v@381@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (not
                (<=
                  q$v@381@01
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
        (or (<= 0 q$v@381@01) (not (<= 0 q$v@381@01)))))
    (or
      (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@380@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@380@01) (not (<= 0 q$a@380@01))))
(assert (and
  (<= 0 q$a@380@01)
  (and
    (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@381@01)
      (and
        (<=
          q$v@381@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (<= q$v@381@01 ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
(declare-const sm@382@01 $PSF<$accessible$withdraw>)
(declare-const s@383@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@384@01 (Int Int Int Int) Int)
(declare-fun img@385@01 (Int Int Int Int) Bool)
(declare-fun inv@386@01 (Int Int Int Int) Int)
(declare-fun img@387@01 (Int Int Int Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((q$a@380@01 Int) (q$v@381@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@380@01)
      (and
        (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@381@01)
          (and
            (<=
              q$v@381@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@381@01 ($struct_get<Int> ($struct_loc<Int> self@330@01 1)))))))
    (and
      (=>
        (<= 0 q$a@380@01)
        (and
          (<= 0 q$a@380@01)
          (=>
            (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
              (=>
                (<= 0 q$v@381@01)
                (and
                  (<= 0 q$v@381@01)
                  (or
                    (<=
                      q$v@381@01
                      115792089237316195423570985008687907853269984665640564039457584007913129639935)
                    (not
                      (<=
                        q$v@381@01
                        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
              (or (<= 0 q$v@381@01) (not (<= 0 q$v@381@01)))))
          (or
            (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
            (not
              (<= q$a@380@01 1461501637330902918203684832716283019655932542975)))))
      (or (<= 0 q$a@380@01) (not (<= 0 q$a@380@01)))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@380@01))
      ($SortWrappers.IntTo$Snap q$v@381@01))
    ($SortWrappers.IntTo$Snap q$v@381@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@380@01))
      ($SortWrappers.IntTo$Snap q$v@381@01))
    ($SortWrappers.IntTo$Snap q$v@381@01))))
  :qid |$accessible$withdraw-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q$a1@380@01 Int) (q$v1@381@01 Int) (q$a2@380@01 Int) (q$v2@381@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 q$a1@380@01)
        (and
          (<= q$a1@380@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v1@381@01)
            (and
              (<=
                q$v1@381@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v1@381@01
                ($struct_get<Int> ($struct_loc<Int> self@330@01 1)))))))
      (and
        (<= 0 q$a2@380@01)
        (and
          (<= q$a2@380@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v2@381@01)
            (and
              (<=
                q$v2@381@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                q$v2@381@01
                ($struct_get<Int> ($struct_loc<Int> self@330@01 1)))))))
      (and
        (and (= q$a1@380@01 q$a2@380@01) (= q$v1@381@01 q$v2@381@01))
        (= q$v1@381@01 q$v2@381@01)))
    (and (= q$a1@380@01 q$a2@380@01) (= q$v1@381@01 q$v2@381@01)))
  
  :qid |$accessible$withdraw-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q$a@380@01 Int) (q$v@381@01 Int)) (!
  (=>
    (and
      (<= 0 q$a@380@01)
      (and
        (<= q$a@380@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@381@01)
          (and
            (<=
              q$v@381@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<= q$v@381@01 ($struct_get<Int> ($struct_loc<Int> self@330@01 1)))))))
    (and
      (and
        (= (inv@384@01 0 q$a@380@01 q$v@381@01 q$v@381@01) q$a@380@01)
        (= (inv@386@01 0 q$a@380@01 q$v@381@01 q$v@381@01) q$v@381@01))
      (and
        (img@385@01 0 q$a@380@01 q$v@381@01 q$v@381@01)
        (img@387@01 0 q$a@380@01 q$v@381@01 q$v@381@01))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@380@01))
      ($SortWrappers.IntTo$Snap q$v@381@01))
    ($SortWrappers.IntTo$Snap q$v@381@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@380@01))
      ($SortWrappers.IntTo$Snap q$v@381@01))
    ($SortWrappers.IntTo$Snap q$v@381@01))))
  :qid |quant-u-1322|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (and
        (img@385@01 $tag $to $amount $arg0)
        (img@387@01 $tag $to $amount $arg0))
      (and
        (<= 0 (inv@384@01 $tag $to $amount $arg0))
        (and
          (<=
            (inv@384@01 $tag $to $amount $arg0)
            1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 (inv@386@01 $tag $to $amount $arg0))
            (and
              (<=
                (inv@386@01 $tag $to $amount $arg0)
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@386@01 $tag $to $amount $arg0)
                ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
    (and
      (= 0 $tag)
      (= (inv@384@01 $tag $to $amount $arg0) $to)
      (= (inv@386@01 $tag $to $amount $arg0) $amount)
      (= (inv@386@01 $tag $to $amount $arg0) $arg0)))
  :pattern ((inv@384@01 $tag $to $amount $arg0))
  :pattern ((inv@386@01 $tag $to $amount $arg0))
  :qid |$accessible$withdraw-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@388@01 $PSF<$accessible$withdraw>)
(declare-const s@389@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@389@01 $Snap)) (!
  (=>
    (and
      (and
        (img@385@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@389@01))) ($SortWrappers.$SnapToInt ($Snap.second s@389@01)))
        (img@387@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@389@01))) ($SortWrappers.$SnapToInt ($Snap.second s@389@01))))
      (and
        (<=
          0
          (inv@384@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@389@01))) ($SortWrappers.$SnapToInt ($Snap.second s@389@01))))
        (and
          (<=
            (inv@384@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@389@01))) ($SortWrappers.$SnapToInt ($Snap.second s@389@01)))
            1461501637330902918203684832716283019655932542975)
          (and
            (<=
              0
              (inv@386@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@389@01))) ($SortWrappers.$SnapToInt ($Snap.second s@389@01))))
            (and
              (<=
                (inv@386@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@389@01))) ($SortWrappers.$SnapToInt ($Snap.second s@389@01)))
                115792089237316195423570985008687907853269984665640564039457584007913129639935)
              (<=
                (inv@386@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.first s@389@01)))) ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@389@01))) ($SortWrappers.$SnapToInt ($Snap.second s@389@01)))
                ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
    (and
      (not (= s@389@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) s@389@01)
        ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) s@389@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) s@389@01))
  :pattern (($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) s@389@01))
  :qid |qp.psmValDef21|)))
(assert (forall ((s@389@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) s@389@01) s@389@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) s@389@01))
  :qid |qp.psmResTrgDef22|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=>
    (and
      (<= 0 (inv@384@01 $tag $to $amount $arg0))
      (and
        (<=
          (inv@384@01 $tag $to $amount $arg0)
          1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 (inv@386@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@386@01 $tag $to $amount $arg0)
              115792089237316195423570985008687907853269984665640564039457584007913129639935)
            (<=
              (inv@386@01 $tag $to $amount $arg0)
              ($struct_get<Int> ($struct_loc<Int> self@330@01 1)))))))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern ((inv@384@01 $tag $to $amount $arg0) (inv@386@01 $tag $to $amount $arg0))
  :qid |quant-u-1323|)))
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
(declare-const $t@390@01 $Snap)
(assert (= $t@390@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@326@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 1)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] $unwrap(l$amount)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
    ($unwrap<Int> l$amount@324@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
  ($unwrap<Int> l$amount@324@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 94 | $struct_get[Int]($struct_loc[Int](self@330@01, 1)) < $unwrap[Int](l$amount@324@01) | live]
; [else-branch: 94 | !($struct_get[Int]($struct_loc[Int](self@330@01, 1)) < $unwrap[Int](l$amount@324@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 94 | $struct_get[Int]($struct_loc[Int](self@330@01, 1)) < $unwrap[Int](l$amount@324@01)]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
  ($unwrap<Int> l$amount@324@01)))
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
; [then-branch: 95 | True | live]
; [else-branch: 95 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 95 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@391@01 $Snap)
(assert (= $t@391@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@350@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@392@01 $Struct)
(assert (=
  self@392@01
  ($struct_set<$Struct> self@330@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
    l$havoc$6@350@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@393@01 Int)
(declare-const q$v@394@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 6
; [then-branch: 96 | !(0 <= q$a@393@01) | live]
; [else-branch: 96 | 0 <= q$a@393@01 | live]
(push) ; 7
; [then-branch: 96 | !(0 <= q$a@393@01)]
(assert (not (<= 0 q$a@393@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 96 | 0 <= q$a@393@01]
(assert (<= 0 q$a@393@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 8
; [then-branch: 97 | !(q$a@393@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 97 | q$a@393@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 9
; [then-branch: 97 | !(q$a@393@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@393@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 9
(push) ; 9
; [else-branch: 97 | q$a@393@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@393@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 10
; [then-branch: 98 | !(0 <= q$v@394@01) | live]
; [else-branch: 98 | 0 <= q$v@394@01 | live]
(push) ; 11
; [then-branch: 98 | !(0 <= q$v@394@01)]
(assert (not (<= 0 q$v@394@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 98 | 0 <= q$v@394@01]
(assert (<= 0 q$v@394@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@394@01) (not (<= 0 q$v@394@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@394@01) (not (<= 0 q$v@394@01))))))
(assert (or
  (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@393@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@393@01)
  (and
    (<= 0 q$a@393@01)
    (=>
      (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@394@01) (not (<= 0 q$v@394@01)))))
    (or
      (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@393@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@393@01) (not (<= 0 q$a@393@01))))
(push) ; 6
; [then-branch: 99 | 0 <= q$a@393@01 && q$a@393@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@394@01 && q$v@394@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 99 | !(0 <= q$a@393@01 && q$a@393@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@394@01 && q$v@394@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 7
; [then-branch: 99 | 0 <= q$a@393@01 && q$a@393@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@394@01 && q$v@394@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@393@01)
  (and
    (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@394@01)
      (<=
        q$v@394@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 8
; [then-branch: 100 | q$v@394@01 <= $struct_get[Int]($struct_loc[Int](self@392@01, 1)) | live]
; [else-branch: 100 | !(q$v@394@01 <= $struct_get[Int]($struct_loc[Int](self@392@01, 1))) | live]
(push) ; 9
; [then-branch: 100 | q$v@394@01 <= $struct_get[Int]($struct_loc[Int](self@392@01, 1))]
(assert (<= q$v@394@01 ($struct_get<Int> ($struct_loc<Int> self@392@01 1))))
(pop) ; 9
(push) ; 9
; [else-branch: 100 | !(q$v@394@01 <= $struct_get[Int]($struct_loc[Int](self@392@01, 1)))]
(assert (not (<= q$v@394@01 ($struct_get<Int> ($struct_loc<Int> self@392@01 1)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@394@01 ($struct_get<Int> ($struct_loc<Int> self@392@01 1))))
  (<= q$v@394@01 ($struct_get<Int> ($struct_loc<Int> self@392@01 1)))))
(pop) ; 7
(push) ; 7
; [else-branch: 99 | !(0 <= q$a@393@01 && q$a@393@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@394@01 && q$v@394@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@393@01)
    (and
      (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@394@01)
        (<=
          q$v@394@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@393@01)
    (and
      (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@394@01)
        (<=
          q$v@394@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@393@01)
    (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@394@01)
    (<=
      q$v@394@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@394@01 ($struct_get<Int> ($struct_loc<Int> self@392@01 1))))
      (<= q$v@394@01 ($struct_get<Int> ($struct_loc<Int> self@392@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@393@01)
      (and
        (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@394@01)
          (<=
            q$v@394@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@393@01)
    (and
      (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@394@01)
        (<=
          q$v@394@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
; Definitional axioms for snapshot map values
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@393@01 Int) (q$v@394@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@393@01)
      (and
        (<= 0 q$a@393@01)
        (=>
          (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@394@01) (not (<= 0 q$v@394@01)))))
        (or
          (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@393@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@393@01) (not (<= 0 q$a@393@01)))
    (=>
      (and
        (<= 0 q$a@393@01)
        (and
          (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@394@01)
            (<=
              q$v@394@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@393@01)
        (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@394@01)
        (<=
          q$v@394@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@394@01 ($struct_get<Int> ($struct_loc<Int> self@392@01 1))))
          (<= q$v@394@01 ($struct_get<Int> ($struct_loc<Int> self@392@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@393@01)
          (and
            (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@394@01)
              (<=
                q$v@394@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@393@01)
        (and
          (<= q$a@393@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@394@01)
            (<=
              q$v@394@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@393@01))
      ($SortWrappers.IntTo$Snap q$v@394@01))
    ($SortWrappers.IntTo$Snap q$v@394@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@393@01))
      ($SortWrappers.IntTo$Snap q$v@394@01))
    ($SortWrappers.IntTo$Snap q$v@394@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1051@11@1051@315-aux|)))
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a,
;     $unwrap(l$amount))) >
;     none ==>
;     (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none ||
;     $out_of_gas) ==>
;     $succ) &&
;     ($succ ==>
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) -
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) >=
;     $a))
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@395@01 Int)
(push) ; 5
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
; Definitional axioms for snapshot map values
(declare-const pm@396@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef23|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef24|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@395@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@395@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
(push) ; 6
; [then-branch: 101 | PredicatePermLookup($accessible$withdraw, pm@396@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@395@01, $unwrap[Int](l$amount@324@01))) > Z | live]
; [else-branch: 101 | !(PredicatePermLookup($accessible$withdraw, pm@396@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@395@01, $unwrap[Int](l$amount@324@01))) > Z) | live]
(push) ; 7
; [then-branch: 101 | PredicatePermLookup($accessible$withdraw, pm@396@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@395@01, $unwrap[Int](l$amount@324@01))) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@395@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 8
; [then-branch: 102 | False | live]
; [else-branch: 102 | True | live]
(push) ; 9
; [then-branch: 102 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 102 | True]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not $out_of_gas@349@01))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 103 | !($out_of_gas@349@01) | dead]
; [else-branch: 103 | $out_of_gas@349@01 | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 103 | $out_of_gas@349@01]
(assert $out_of_gas@349@01)
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert $out_of_gas@349@01)
(push) ; 8
; [then-branch: 104 | False | live]
; [else-branch: 104 | True | live]
(push) ; 9
; [then-branch: 104 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 104 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 10
; [then-branch: 105 | False | dead]
; [else-branch: 105 | True | live]
(push) ; 11
; [else-branch: 105 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(push) ; 7
; [else-branch: 101 | !(PredicatePermLookup($accessible$withdraw, pm@396@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@395@01, $unwrap[Int](l$amount@324@01))) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@395@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (>
    ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@395@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)
  (and
    (>
      ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@395@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No)
    $out_of_gas@349@01)))
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@395@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@395@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef23|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef24|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@395@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@395@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@395@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    (=>
      (>
        ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
            ($SortWrappers.IntTo$Snap $a@395@01))
          ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
        $Perm.No)
      (and
        (>
          ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.IntTo$Snap 0)
                ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
              ($SortWrappers.IntTo$Snap $a@395@01))
            ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
          $Perm.No)
        $out_of_gas@349@01))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.IntTo$Snap 0)
                ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
              ($SortWrappers.IntTo$Snap $a@395@01))
            ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@396@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
            ($SortWrappers.IntTo$Snap $a@395@01))
          ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@395@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@395@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1053@11@1053@565-aux|)))
(pop) ; 4
; [then-branch: 106 | False | dead]
; [else-branch: 106 | True | live]
(push) ; 4
; [else-branch: 106 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 94 | !($struct_get[Int]($struct_loc[Int](self@330@01, 1)) < $unwrap[Int](l$amount@324@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
    ($unwrap<Int> l$amount@324@01))))
(pop) ; 3
; [eval] !(($struct_get($struct_loc(self, 1)): Int) < $unwrap(l$amount))
; [eval] ($struct_get($struct_loc(self, 1)): Int) < $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] $unwrap(l$amount)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
  ($unwrap<Int> l$amount@324@01))))
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
    ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
    ($unwrap<Int> l$amount@324@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 107 | !($struct_get[Int]($struct_loc[Int](self@330@01, 1)) < $unwrap[Int](l$amount@324@01)) | live]
; [else-branch: 107 | $struct_get[Int]($struct_loc[Int](self@330@01, 1)) < $unwrap[Int](l$amount@324@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 107 | !($struct_get[Int]($struct_loc[Int](self@330@01, 1)) < $unwrap[Int](l$amount@324@01))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
    ($unwrap<Int> l$amount@324@01))))
; [exec]
; self := ($struct_set(self, 4, ($map_set(($struct_get($struct_loc(self, 4)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 4, ($map_set(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + $unwrap(l$amount)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + $unwrap(l$amount)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + $unwrap(l$amount)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
(declare-const self@397@01 $Struct)
(assert (=
  self@397@01
  ($struct_set<$Struct> self@330@01 4 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@326@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@326@01 0)))
    ($unwrap<Int> l$amount@324@01))))))
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) -
;   $unwrap(l$amount)): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) - $unwrap(l$amount)): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) - $unwrap(l$amount)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] $unwrap(l$amount)
(declare-const self@398@01 $Struct)
(assert (=
  self@398@01
  ($struct_set<$Struct> self@397@01 1 (-
    ($struct_get<Int> ($struct_loc<Int> self@397@01 1))
    ($unwrap<Int> l$amount@324@01)))))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@399@01 Int)
(declare-const q$v@400@01 Int)
(push) ; 4
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 5
; [then-branch: 108 | !(0 <= q$a@399@01) | live]
; [else-branch: 108 | 0 <= q$a@399@01 | live]
(push) ; 6
; [then-branch: 108 | !(0 <= q$a@399@01)]
(assert (not (<= 0 q$a@399@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 108 | 0 <= q$a@399@01]
(assert (<= 0 q$a@399@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 7
; [then-branch: 109 | !(q$a@399@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 109 | q$a@399@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 8
; [then-branch: 109 | !(q$a@399@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@399@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 8
(push) ; 8
; [else-branch: 109 | q$a@399@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@399@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 9
; [then-branch: 110 | !(0 <= q$v@400@01) | live]
; [else-branch: 110 | 0 <= q$v@400@01 | live]
(push) ; 10
; [then-branch: 110 | !(0 <= q$v@400@01)]
(assert (not (<= 0 q$v@400@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 110 | 0 <= q$v@400@01]
(assert (<= 0 q$v@400@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@400@01) (not (<= 0 q$v@400@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@400@01) (not (<= 0 q$v@400@01))))))
(assert (or
  (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@399@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@399@01)
  (and
    (<= 0 q$a@399@01)
    (=>
      (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@400@01) (not (<= 0 q$v@400@01)))))
    (or
      (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@399@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@399@01) (not (<= 0 q$a@399@01))))
(push) ; 5
; [then-branch: 111 | 0 <= q$a@399@01 && q$a@399@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@400@01 && q$v@400@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 111 | !(0 <= q$a@399@01 && q$a@399@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@400@01 && q$v@400@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 6
; [then-branch: 111 | 0 <= q$a@399@01 && q$a@399@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@400@01 && q$v@400@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@399@01)
  (and
    (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@400@01)
      (<=
        q$v@400@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 7
; [then-branch: 112 | q$v@400@01 <= $struct_get[Int]($struct_loc[Int](self@398@01, 1)) | live]
; [else-branch: 112 | !(q$v@400@01 <= $struct_get[Int]($struct_loc[Int](self@398@01, 1))) | live]
(push) ; 8
; [then-branch: 112 | q$v@400@01 <= $struct_get[Int]($struct_loc[Int](self@398@01, 1))]
(assert (<= q$v@400@01 ($struct_get<Int> ($struct_loc<Int> self@398@01 1))))
(pop) ; 8
(push) ; 8
; [else-branch: 112 | !(q$v@400@01 <= $struct_get[Int]($struct_loc[Int](self@398@01, 1)))]
(assert (not (<= q$v@400@01 ($struct_get<Int> ($struct_loc<Int> self@398@01 1)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@400@01 ($struct_get<Int> ($struct_loc<Int> self@398@01 1))))
  (<= q$v@400@01 ($struct_get<Int> ($struct_loc<Int> self@398@01 1)))))
(pop) ; 6
(push) ; 6
; [else-branch: 111 | !(0 <= q$a@399@01 && q$a@399@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@400@01 && q$v@400@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@399@01)
    (and
      (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@400@01)
        (<=
          q$v@400@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@399@01)
    (and
      (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@400@01)
        (<=
          q$v@400@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@399@01)
    (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@400@01)
    (<=
      q$v@400@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@400@01 ($struct_get<Int> ($struct_loc<Int> self@398@01 1))))
      (<= q$v@400@01 ($struct_get<Int> ($struct_loc<Int> self@398@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@399@01)
      (and
        (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@400@01)
          (<=
            q$v@400@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@399@01)
    (and
      (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@400@01)
        (<=
          q$v@400@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
; Definitional axioms for snapshot map values
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@399@01 Int) (q$v@400@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@399@01)
      (and
        (<= 0 q$a@399@01)
        (=>
          (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@400@01) (not (<= 0 q$v@400@01)))))
        (or
          (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@399@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@399@01) (not (<= 0 q$a@399@01)))
    (=>
      (and
        (<= 0 q$a@399@01)
        (and
          (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@400@01)
            (<=
              q$v@400@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@399@01)
        (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@400@01)
        (<=
          q$v@400@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@400@01 ($struct_get<Int> ($struct_loc<Int> self@398@01 1))))
          (<= q$v@400@01 ($struct_get<Int> ($struct_loc<Int> self@398@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@399@01)
          (and
            (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@400@01)
              (<=
                q$v@400@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@399@01)
        (and
          (<= q$a@399@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@400@01)
            (<=
              q$v@400@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@399@01))
      ($SortWrappers.IntTo$Snap q$v@400@01))
    ($SortWrappers.IntTo$Snap q$v@400@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@399@01))
      ($SortWrappers.IntTo$Snap q$v@400@01))
    ($SortWrappers.IntTo$Snap q$v@400@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@976@11@976@315-aux|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (not l$send_fail@340@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not l$send_fail@340@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 113 | l$send_fail@340@01 | live]
; [else-branch: 113 | !(l$send_fail@340@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 113 | l$send_fail@340@01]
(assert l$send_fail@340@01)
; [exec]
; inhale acc($failed(($struct_get($struct_loc(msg, 0)): Int)), write)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const $t@401@01 $Snap)
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
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | True | live]
; [else-branch: 114 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 114 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@402@01 $Snap)
(assert (= $t@402@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@350@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@403@01 $Struct)
(assert (=
  self@403@01
  ($struct_set<$Struct> self@330@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
    l$havoc$6@350@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@404@01 Int)
(declare-const q$v@405@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 7
; [then-branch: 115 | !(0 <= q$a@404@01) | live]
; [else-branch: 115 | 0 <= q$a@404@01 | live]
(push) ; 8
; [then-branch: 115 | !(0 <= q$a@404@01)]
(assert (not (<= 0 q$a@404@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 115 | 0 <= q$a@404@01]
(assert (<= 0 q$a@404@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 9
; [then-branch: 116 | !(q$a@404@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 116 | q$a@404@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 10
; [then-branch: 116 | !(q$a@404@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@404@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 10
(push) ; 10
; [else-branch: 116 | q$a@404@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@404@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 11
; [then-branch: 117 | !(0 <= q$v@405@01) | live]
; [else-branch: 117 | 0 <= q$v@405@01 | live]
(push) ; 12
; [then-branch: 117 | !(0 <= q$v@405@01)]
(assert (not (<= 0 q$v@405@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 117 | 0 <= q$v@405@01]
(assert (<= 0 q$v@405@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@405@01) (not (<= 0 q$v@405@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@405@01) (not (<= 0 q$v@405@01))))))
(assert (or
  (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@404@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@404@01)
  (and
    (<= 0 q$a@404@01)
    (=>
      (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@405@01) (not (<= 0 q$v@405@01)))))
    (or
      (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@404@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@404@01) (not (<= 0 q$a@404@01))))
(push) ; 7
; [then-branch: 118 | 0 <= q$a@404@01 && q$a@404@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@405@01 && q$v@405@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 118 | !(0 <= q$a@404@01 && q$a@404@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@405@01 && q$v@405@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 8
; [then-branch: 118 | 0 <= q$a@404@01 && q$a@404@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@405@01 && q$v@405@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@404@01)
  (and
    (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@405@01)
      (<=
        q$v@405@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 119 | q$v@405@01 <= $struct_get[Int]($struct_loc[Int](self@403@01, 1)) | live]
; [else-branch: 119 | !(q$v@405@01 <= $struct_get[Int]($struct_loc[Int](self@403@01, 1))) | live]
(push) ; 10
; [then-branch: 119 | q$v@405@01 <= $struct_get[Int]($struct_loc[Int](self@403@01, 1))]
(assert (<= q$v@405@01 ($struct_get<Int> ($struct_loc<Int> self@403@01 1))))
(pop) ; 10
(push) ; 10
; [else-branch: 119 | !(q$v@405@01 <= $struct_get[Int]($struct_loc[Int](self@403@01, 1)))]
(assert (not (<= q$v@405@01 ($struct_get<Int> ($struct_loc<Int> self@403@01 1)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@405@01 ($struct_get<Int> ($struct_loc<Int> self@403@01 1))))
  (<= q$v@405@01 ($struct_get<Int> ($struct_loc<Int> self@403@01 1)))))
(pop) ; 8
(push) ; 8
; [else-branch: 118 | !(0 <= q$a@404@01 && q$a@404@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@405@01 && q$v@405@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@404@01)
    (and
      (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@405@01)
        (<=
          q$v@405@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@404@01)
    (and
      (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@405@01)
        (<=
          q$v@405@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@404@01)
    (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@405@01)
    (<=
      q$v@405@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@405@01 ($struct_get<Int> ($struct_loc<Int> self@403@01 1))))
      (<= q$v@405@01 ($struct_get<Int> ($struct_loc<Int> self@403@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@404@01)
      (and
        (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@405@01)
          (<=
            q$v@405@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@404@01)
    (and
      (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@405@01)
        (<=
          q$v@405@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
; Definitional axioms for snapshot map values
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@404@01 Int) (q$v@405@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@404@01)
      (and
        (<= 0 q$a@404@01)
        (=>
          (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@405@01) (not (<= 0 q$v@405@01)))))
        (or
          (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@404@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@404@01) (not (<= 0 q$a@404@01)))
    (=>
      (and
        (<= 0 q$a@404@01)
        (and
          (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@405@01)
            (<=
              q$v@405@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@404@01)
        (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@405@01)
        (<=
          q$v@405@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@405@01 ($struct_get<Int> ($struct_loc<Int> self@403@01 1))))
          (<= q$v@405@01 ($struct_get<Int> ($struct_loc<Int> self@403@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@404@01)
          (and
            (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@405@01)
              (<=
                q$v@405@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@404@01)
        (and
          (<= q$a@404@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@405@01)
            (<=
              q$v@405@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@404@01))
      ($SortWrappers.IntTo$Snap q$v@405@01))
    ($SortWrappers.IntTo$Snap q$v@405@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@404@01))
      ($SortWrappers.IntTo$Snap q$v@405@01))
    ($SortWrappers.IntTo$Snap q$v@405@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1051@11@1051@315-aux|)))
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a,
;     $unwrap(l$amount))) >
;     none ==>
;     (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none ||
;     $out_of_gas) ==>
;     $succ) &&
;     ($succ ==>
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) -
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) >=
;     $a))
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@406@01 Int)
(push) ; 6
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
; Definitional axioms for snapshot map values
(declare-const pm@407@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef25|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef26|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@406@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@406@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
(push) ; 7
; [then-branch: 120 | PredicatePermLookup($accessible$withdraw, pm@407@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@406@01, $unwrap[Int](l$amount@324@01))) > Z | live]
; [else-branch: 120 | !(PredicatePermLookup($accessible$withdraw, pm@407@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@406@01, $unwrap[Int](l$amount@324@01))) > Z) | live]
(push) ; 8
; [then-branch: 120 | PredicatePermLookup($accessible$withdraw, pm@407@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@406@01, $unwrap[Int](l$amount@324@01))) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@406@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 9
; [then-branch: 121 | False | dead]
; [else-branch: 121 | True | live]
(push) ; 10
; [else-branch: 121 | True]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(push) ; 9
; [then-branch: 122 | False | live]
; [else-branch: 122 | True | live]
(push) ; 10
; [then-branch: 122 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 122 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 11
; [then-branch: 123 | False | dead]
; [else-branch: 123 | True | live]
(push) ; 12
; [else-branch: 123 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(push) ; 8
; [else-branch: 120 | !(PredicatePermLookup($accessible$withdraw, pm@407@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@406@01, $unwrap[Int](l$amount@324@01))) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@406@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@406@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@406@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef25|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef26|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@406@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@406@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@406@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.IntTo$Snap 0)
                ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
              ($SortWrappers.IntTo$Snap $a@406@01))
            ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@407@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
            ($SortWrappers.IntTo$Snap $a@406@01))
          ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@406@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@406@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1053@11@1053@565-aux|)))
(pop) ; 5
; [then-branch: 124 | False | dead]
; [else-branch: 124 | True | live]
(push) ; 5
; [else-branch: 124 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 113 | !(l$send_fail@340@01)]
(assert (not l$send_fail@340@01))
(pop) ; 4
; [eval] !l$send_fail
(push) ; 4
(set-option :timeout 10)
(assert (not l$send_fail@340@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not l$send_fail@340@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 125 | !(l$send_fail@340@01) | live]
; [else-branch: 125 | l$send_fail@340@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 125 | !(l$send_fail@340@01)]
(assert (not l$send_fail@340@01))
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
(declare-const $t@408@01 $Snap)
(assert (= $t@408@01 ($Snap.combine ($Snap.first $t@408@01) ($Snap.second $t@408@01))))
(assert (= ($Snap.first $t@408@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 0))))
(assert (= ($Snap.second $t@408@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@409@01 $Snap)
(assert (= $t@409@01 ($Snap.combine ($Snap.first $t@409@01) ($Snap.second $t@409@01))))
(assert (= ($Snap.first $t@409@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1))))
(assert (= ($Snap.second $t@409@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@410@01 $Snap)
(assert (= $t@410@01 ($Snap.combine ($Snap.first $t@410@01) ($Snap.second $t@410@01))))
(assert (= ($Snap.first $t@410@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 2))))
(assert (= ($Snap.second $t@410@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@411@01 $Snap)
(assert (= $t@411@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@412@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 6
; [then-branch: 126 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@344@01, 4)), $q0@412@01)) | live]
; [else-branch: 126 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@344@01, 4)), $q0@412@01) | live]
(push) ; 7
; [then-branch: 126 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@344@01, 4)), $q0@412@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@412@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 126 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@344@01, 4)), $q0@412@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@412@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@412@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@412@01)))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@412@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@412@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@412@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@412@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1000@11@1000@345-aux|)))
(assert (forall (($q0@412@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@412@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@412@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@412@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1000@11@1000@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@413@01 $Snap)
(assert (= $t@413@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@414@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@414@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@414@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $q0@414@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1001@11@1001@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@415@01 $Snap)
(assert (= $t@415@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@416@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 6
; [then-branch: 127 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@344@01, 5)), $q1@416@01)) | live]
; [else-branch: 127 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@344@01, 5)), $q1@416@01) | live]
(push) ; 7
; [then-branch: 127 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@344@01, 5)), $q1@416@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@416@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 127 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@344@01, 5)), $q1@416@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@416@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@416@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@416@01)))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@416@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@416@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@416@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@416@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1002@11@1002@345-aux|)))
(assert (forall (($q1@416@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@416@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@416@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@416@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1002@11@1002@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@417@01 $Snap)
(assert (= $t@417@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@418@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@418@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@418@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 5)) $q1@418@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1003@11@1003@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@419@01 $Snap)
(assert (= $t@419@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@420@01 $Snap)
(assert (= $t@420@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@421@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 4)
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@421@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $a@421@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@398@01 4)) $a@421@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@344@01 4)) $a@421@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1006@11@1006@259|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const $t@422@01 $Snap)
(assert (= $t@422@01 $Snap.unit))
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@423@01 Int)
(declare-const q$v@424@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 6
; [then-branch: 128 | !(0 <= q$a@423@01) | live]
; [else-branch: 128 | 0 <= q$a@423@01 | live]
(push) ; 7
; [then-branch: 128 | !(0 <= q$a@423@01)]
(assert (not (<= 0 q$a@423@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 128 | 0 <= q$a@423@01]
(assert (<= 0 q$a@423@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 8
; [then-branch: 129 | !(q$a@423@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 129 | q$a@423@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 9
; [then-branch: 129 | !(q$a@423@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@423@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 9
(push) ; 9
; [else-branch: 129 | q$a@423@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@423@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 10
; [then-branch: 130 | !(0 <= q$v@424@01) | live]
; [else-branch: 130 | 0 <= q$v@424@01 | live]
(push) ; 11
; [then-branch: 130 | !(0 <= q$v@424@01)]
(assert (not (<= 0 q$v@424@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 130 | 0 <= q$v@424@01]
(assert (<= 0 q$v@424@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@424@01) (not (<= 0 q$v@424@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@424@01) (not (<= 0 q$v@424@01))))))
(assert (or
  (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@423@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@423@01)
  (and
    (<= 0 q$a@423@01)
    (=>
      (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@424@01) (not (<= 0 q$v@424@01)))))
    (or
      (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@423@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@423@01) (not (<= 0 q$a@423@01))))
(push) ; 6
; [then-branch: 131 | 0 <= q$a@423@01 && q$a@423@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@424@01 && q$v@424@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 131 | !(0 <= q$a@423@01 && q$a@423@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@424@01 && q$v@424@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 7
; [then-branch: 131 | 0 <= q$a@423@01 && q$a@423@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@424@01 && q$v@424@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@423@01)
  (and
    (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@424@01)
      (<=
        q$v@424@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 8
; [then-branch: 132 | q$v@424@01 <= $struct_get[Int]($struct_loc[Int](l$havoc$2@344@01, 1)) | live]
; [else-branch: 132 | !(q$v@424@01 <= $struct_get[Int]($struct_loc[Int](l$havoc$2@344@01, 1))) | live]
(push) ; 9
; [then-branch: 132 | q$v@424@01 <= $struct_get[Int]($struct_loc[Int](l$havoc$2@344@01, 1))]
(assert (<= q$v@424@01 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1))))
(pop) ; 9
(push) ; 9
; [else-branch: 132 | !(q$v@424@01 <= $struct_get[Int]($struct_loc[Int](l$havoc$2@344@01, 1)))]
(assert (not (<= q$v@424@01 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@424@01 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1))))
  (<= q$v@424@01 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1)))))
(pop) ; 7
(push) ; 7
; [else-branch: 131 | !(0 <= q$a@423@01 && q$a@423@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@424@01 && q$v@424@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@423@01)
    (and
      (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@424@01)
        (<=
          q$v@424@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@423@01)
    (and
      (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@424@01)
        (<=
          q$v@424@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@423@01)
    (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@424@01)
    (<=
      q$v@424@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not
        (<= q$v@424@01 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1))))
      (<= q$v@424@01 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@423@01)
      (and
        (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@424@01)
          (<=
            q$v@424@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@423@01)
    (and
      (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@424@01)
        (<=
          q$v@424@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
; Definitional axioms for snapshot map values
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@423@01 Int) (q$v@424@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@423@01)
      (and
        (<= 0 q$a@423@01)
        (=>
          (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@424@01) (not (<= 0 q$v@424@01)))))
        (or
          (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@423@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@423@01) (not (<= 0 q$a@423@01)))
    (=>
      (and
        (<= 0 q$a@423@01)
        (and
          (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@424@01)
            (<=
              q$v@424@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@423@01)
        (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@424@01)
        (<=
          q$v@424@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<=
              q$v@424@01
              ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1))))
          (<=
            q$v@424@01
            ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@423@01)
          (and
            (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@424@01)
              (<=
                q$v@424@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@423@01)
        (and
          (<= q$a@423@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@424@01)
            (<=
              q$v@424@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@423@01))
      ($SortWrappers.IntTo$Snap q$v@424@01))
    ($SortWrappers.IntTo$Snap q$v@424@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@423@01))
      ($SortWrappers.IntTo$Snap q$v@424@01))
    ($SortWrappers.IntTo$Snap q$v@424@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1007@11@1007@315-aux|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@346@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not l$no_reentrant_call@346@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 133 | l$no_reentrant_call@346@01 | live]
; [else-branch: 133 | !(l$no_reentrant_call@346@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 133 | l$no_reentrant_call@346@01]
(assert l$no_reentrant_call@346@01)
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
(push) ; 6
(set-option :timeout 10)
(assert (not (not $out_of_gas@349@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not $out_of_gas@349@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 134 | $out_of_gas@349@01 | live]
; [else-branch: 134 | !($out_of_gas@349@01) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 134 | $out_of_gas@349@01]
(assert $out_of_gas@349@01)
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
; [then-branch: 135 | True | live]
; [else-branch: 135 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 135 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@425@01 $Snap)
(assert (= $t@425@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@350@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@426@01 $Struct)
(assert (=
  self@426@01
  ($struct_set<$Struct> self@330@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
    l$havoc$6@350@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@427@01 Int)
(declare-const q$v@428@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 9
; [then-branch: 136 | !(0 <= q$a@427@01) | live]
; [else-branch: 136 | 0 <= q$a@427@01 | live]
(push) ; 10
; [then-branch: 136 | !(0 <= q$a@427@01)]
(assert (not (<= 0 q$a@427@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 136 | 0 <= q$a@427@01]
(assert (<= 0 q$a@427@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 11
; [then-branch: 137 | !(q$a@427@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 137 | q$a@427@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 12
; [then-branch: 137 | !(q$a@427@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@427@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 12
(push) ; 12
; [else-branch: 137 | q$a@427@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@427@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 13
; [then-branch: 138 | !(0 <= q$v@428@01) | live]
; [else-branch: 138 | 0 <= q$v@428@01 | live]
(push) ; 14
; [then-branch: 138 | !(0 <= q$v@428@01)]
(assert (not (<= 0 q$v@428@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 138 | 0 <= q$v@428@01]
(assert (<= 0 q$v@428@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@428@01) (not (<= 0 q$v@428@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@428@01) (not (<= 0 q$v@428@01))))))
(assert (or
  (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@427@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@427@01)
  (and
    (<= 0 q$a@427@01)
    (=>
      (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@428@01) (not (<= 0 q$v@428@01)))))
    (or
      (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@427@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@427@01) (not (<= 0 q$a@427@01))))
(push) ; 9
; [then-branch: 139 | 0 <= q$a@427@01 && q$a@427@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@428@01 && q$v@428@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 139 | !(0 <= q$a@427@01 && q$a@427@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@428@01 && q$v@428@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 10
; [then-branch: 139 | 0 <= q$a@427@01 && q$a@427@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@428@01 && q$v@428@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@427@01)
  (and
    (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@428@01)
      (<=
        q$v@428@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 11
; [then-branch: 140 | q$v@428@01 <= $struct_get[Int]($struct_loc[Int](self@426@01, 1)) | live]
; [else-branch: 140 | !(q$v@428@01 <= $struct_get[Int]($struct_loc[Int](self@426@01, 1))) | live]
(push) ; 12
; [then-branch: 140 | q$v@428@01 <= $struct_get[Int]($struct_loc[Int](self@426@01, 1))]
(assert (<= q$v@428@01 ($struct_get<Int> ($struct_loc<Int> self@426@01 1))))
(pop) ; 12
(push) ; 12
; [else-branch: 140 | !(q$v@428@01 <= $struct_get[Int]($struct_loc[Int](self@426@01, 1)))]
(assert (not (<= q$v@428@01 ($struct_get<Int> ($struct_loc<Int> self@426@01 1)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@428@01 ($struct_get<Int> ($struct_loc<Int> self@426@01 1))))
  (<= q$v@428@01 ($struct_get<Int> ($struct_loc<Int> self@426@01 1)))))
(pop) ; 10
(push) ; 10
; [else-branch: 139 | !(0 <= q$a@427@01 && q$a@427@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@428@01 && q$v@428@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@427@01)
    (and
      (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@428@01)
        (<=
          q$v@428@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@427@01)
    (and
      (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@428@01)
        (<=
          q$v@428@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@427@01)
    (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@428@01)
    (<=
      q$v@428@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@428@01 ($struct_get<Int> ($struct_loc<Int> self@426@01 1))))
      (<= q$v@428@01 ($struct_get<Int> ($struct_loc<Int> self@426@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@427@01)
      (and
        (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@428@01)
          (<=
            q$v@428@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@427@01)
    (and
      (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@428@01)
        (<=
          q$v@428@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
; Definitional axioms for snapshot map values
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@427@01 Int) (q$v@428@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@427@01)
      (and
        (<= 0 q$a@427@01)
        (=>
          (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@428@01) (not (<= 0 q$v@428@01)))))
        (or
          (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@427@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@427@01) (not (<= 0 q$a@427@01)))
    (=>
      (and
        (<= 0 q$a@427@01)
        (and
          (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@428@01)
            (<=
              q$v@428@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@427@01)
        (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@428@01)
        (<=
          q$v@428@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@428@01 ($struct_get<Int> ($struct_loc<Int> self@426@01 1))))
          (<= q$v@428@01 ($struct_get<Int> ($struct_loc<Int> self@426@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@427@01)
          (and
            (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@428@01)
              (<=
                q$v@428@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@427@01)
        (and
          (<= q$a@427@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@428@01)
            (<=
              q$v@428@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@427@01))
      ($SortWrappers.IntTo$Snap q$v@428@01))
    ($SortWrappers.IntTo$Snap q$v@428@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@427@01))
      ($SortWrappers.IntTo$Snap q$v@428@01))
    ($SortWrappers.IntTo$Snap q$v@428@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1051@11@1051@315-aux|)))
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a,
;     $unwrap(l$amount))) >
;     none ==>
;     (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none ||
;     $out_of_gas) ==>
;     $succ) &&
;     ($succ ==>
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) -
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) >=
;     $a))
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@429@01 Int)
(push) ; 8
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
; Definitional axioms for snapshot map values
(declare-const pm@430@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef27|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef28|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@429@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@429@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
(push) ; 9
; [then-branch: 141 | PredicatePermLookup($accessible$withdraw, pm@430@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@429@01, $unwrap[Int](l$amount@324@01))) > Z | live]
; [else-branch: 141 | !(PredicatePermLookup($accessible$withdraw, pm@430@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@429@01, $unwrap[Int](l$amount@324@01))) > Z) | live]
(push) ; 10
; [then-branch: 141 | PredicatePermLookup($accessible$withdraw, pm@430@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@429@01, $unwrap[Int](l$amount@324@01))) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@429@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 11
; [then-branch: 142 | False | live]
; [else-branch: 142 | True | live]
(push) ; 12
; [then-branch: 142 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 142 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
; [then-branch: 143 | !($out_of_gas@349@01) | dead]
; [else-branch: 143 | $out_of_gas@349@01 | live]
(push) ; 12
; [else-branch: 143 | $out_of_gas@349@01]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(push) ; 11
; [then-branch: 144 | False | live]
; [else-branch: 144 | True | live]
(push) ; 12
; [then-branch: 144 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 144 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 13
; [then-branch: 145 | False | dead]
; [else-branch: 145 | True | live]
(push) ; 14
; [else-branch: 145 | True]
(pop) ; 14
(pop) ; 13
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(push) ; 10
; [else-branch: 141 | !(PredicatePermLookup($accessible$withdraw, pm@430@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@429@01, $unwrap[Int](l$amount@324@01))) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@429@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@429@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@429@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef27|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef28|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@429@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@429@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@429@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.IntTo$Snap 0)
                ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
              ($SortWrappers.IntTo$Snap $a@429@01))
            ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@430@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
            ($SortWrappers.IntTo$Snap $a@429@01))
          ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@429@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@429@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1053@11@1053@565-aux|)))
(pop) ; 7
; [then-branch: 146 | False | dead]
; [else-branch: 146 | True | live]
(push) ; 7
; [else-branch: 146 | True]
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 134 | !($out_of_gas@349@01)]
(assert (not $out_of_gas@349@01))
(pop) ; 6
; [eval] !$out_of_gas
(push) ; 6
(set-option :timeout 10)
(assert (not $out_of_gas@349@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not $out_of_gas@349@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 147 | !($out_of_gas@349@01) | live]
; [else-branch: 147 | $out_of_gas@349@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 147 | !($out_of_gas@349@01)]
(assert (not $out_of_gas@349@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 148 | False | dead]
; [else-branch: 148 | True | live]
(push) ; 7
; [else-branch: 148 | True]
(pop) ; 7
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 149 | True | live]
; [else-branch: 149 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 149 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@431@01 $Snap)
(assert (= $t@431@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@350@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@432@01 $Struct)
(assert (=
  self@432@01
  ($struct_set<$Struct> self@398@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@398@01 1))
    l$havoc$6@350@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@433@01 Int)
(declare-const q$v@434@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 9
; [then-branch: 150 | !(0 <= q$a@433@01) | live]
; [else-branch: 150 | 0 <= q$a@433@01 | live]
(push) ; 10
; [then-branch: 150 | !(0 <= q$a@433@01)]
(assert (not (<= 0 q$a@433@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 150 | 0 <= q$a@433@01]
(assert (<= 0 q$a@433@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 11
; [then-branch: 151 | !(q$a@433@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 151 | q$a@433@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 12
; [then-branch: 151 | !(q$a@433@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@433@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 12
(push) ; 12
; [else-branch: 151 | q$a@433@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@433@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 13
; [then-branch: 152 | !(0 <= q$v@434@01) | live]
; [else-branch: 152 | 0 <= q$v@434@01 | live]
(push) ; 14
; [then-branch: 152 | !(0 <= q$v@434@01)]
(assert (not (<= 0 q$v@434@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 152 | 0 <= q$v@434@01]
(assert (<= 0 q$v@434@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@434@01) (not (<= 0 q$v@434@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@434@01) (not (<= 0 q$v@434@01))))))
(assert (or
  (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@433@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@433@01)
  (and
    (<= 0 q$a@433@01)
    (=>
      (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@434@01) (not (<= 0 q$v@434@01)))))
    (or
      (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@433@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@433@01) (not (<= 0 q$a@433@01))))
(push) ; 9
; [then-branch: 153 | 0 <= q$a@433@01 && q$a@433@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@434@01 && q$v@434@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 153 | !(0 <= q$a@433@01 && q$a@433@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@434@01 && q$v@434@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 10
; [then-branch: 153 | 0 <= q$a@433@01 && q$a@433@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@434@01 && q$v@434@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@433@01)
  (and
    (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@434@01)
      (<=
        q$v@434@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 11
; [then-branch: 154 | q$v@434@01 <= $struct_get[Int]($struct_loc[Int](self@432@01, 1)) | live]
; [else-branch: 154 | !(q$v@434@01 <= $struct_get[Int]($struct_loc[Int](self@432@01, 1))) | live]
(push) ; 12
; [then-branch: 154 | q$v@434@01 <= $struct_get[Int]($struct_loc[Int](self@432@01, 1))]
(assert (<= q$v@434@01 ($struct_get<Int> ($struct_loc<Int> self@432@01 1))))
(pop) ; 12
(push) ; 12
; [else-branch: 154 | !(q$v@434@01 <= $struct_get[Int]($struct_loc[Int](self@432@01, 1)))]
(assert (not (<= q$v@434@01 ($struct_get<Int> ($struct_loc<Int> self@432@01 1)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@434@01 ($struct_get<Int> ($struct_loc<Int> self@432@01 1))))
  (<= q$v@434@01 ($struct_get<Int> ($struct_loc<Int> self@432@01 1)))))
(pop) ; 10
(push) ; 10
; [else-branch: 153 | !(0 <= q$a@433@01 && q$a@433@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@434@01 && q$v@434@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@433@01)
    (and
      (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@434@01)
        (<=
          q$v@434@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@433@01)
    (and
      (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@434@01)
        (<=
          q$v@434@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@433@01)
    (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@434@01)
    (<=
      q$v@434@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@434@01 ($struct_get<Int> ($struct_loc<Int> self@432@01 1))))
      (<= q$v@434@01 ($struct_get<Int> ($struct_loc<Int> self@432@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@433@01)
      (and
        (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@434@01)
          (<=
            q$v@434@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@433@01)
    (and
      (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@434@01)
        (<=
          q$v@434@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
; Definitional axioms for snapshot map values
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@433@01 Int) (q$v@434@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@433@01)
      (and
        (<= 0 q$a@433@01)
        (=>
          (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@434@01) (not (<= 0 q$v@434@01)))))
        (or
          (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@433@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@433@01) (not (<= 0 q$a@433@01)))
    (=>
      (and
        (<= 0 q$a@433@01)
        (and
          (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@434@01)
            (<=
              q$v@434@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@433@01)
        (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@434@01)
        (<=
          q$v@434@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@434@01 ($struct_get<Int> ($struct_loc<Int> self@432@01 1))))
          (<= q$v@434@01 ($struct_get<Int> ($struct_loc<Int> self@432@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@433@01)
          (and
            (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@434@01)
              (<=
                q$v@434@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@433@01)
        (and
          (<= q$a@433@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@434@01)
            (<=
              q$v@434@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@433@01))
      ($SortWrappers.IntTo$Snap q$v@434@01))
    ($SortWrappers.IntTo$Snap q$v@434@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@433@01))
      ($SortWrappers.IntTo$Snap q$v@434@01))
    ($SortWrappers.IntTo$Snap q$v@434@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1051@11@1051@315-aux|)))
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a,
;     $unwrap(l$amount))) >
;     none ==>
;     (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none ||
;     $out_of_gas) ==>
;     $succ) &&
;     ($succ ==>
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) -
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) >=
;     $a))
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@435@01 Int)
(push) ; 8
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
; Definitional axioms for snapshot map values
(declare-const pm@436@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef29|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef30|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@435@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@435@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
(push) ; 9
; [then-branch: 155 | PredicatePermLookup($accessible$withdraw, pm@436@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@435@01, $unwrap[Int](l$amount@324@01))) > Z | live]
; [else-branch: 155 | !(PredicatePermLookup($accessible$withdraw, pm@436@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@435@01, $unwrap[Int](l$amount@324@01))) > Z) | live]
(push) ; 10
; [then-branch: 155 | PredicatePermLookup($accessible$withdraw, pm@436@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@435@01, $unwrap[Int](l$amount@324@01))) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@435@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 11
; [then-branch: 156 | False | live]
; [else-branch: 156 | True | live]
(push) ; 12
; [then-branch: 156 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 156 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not $out_of_gas@349@01))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 157 | !($out_of_gas@349@01) | live]
; [else-branch: 157 | $out_of_gas@349@01 | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 157 | !($out_of_gas@349@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(push) ; 11
; [then-branch: 158 | False | live]
; [else-branch: 158 | True | live]
(push) ; 12
; [then-branch: 158 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 158 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 159 | True | live]
; [else-branch: 159 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 159 | True]
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 14
(pop) ; 13
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(push) ; 10
; [else-branch: 155 | !(PredicatePermLookup($accessible$withdraw, pm@436@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@435@01, $unwrap[Int](l$amount@324@01))) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@435@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@435@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@435@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef29|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef30|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@435@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@435@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@435@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.IntTo$Snap 0)
                ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
              ($SortWrappers.IntTo$Snap $a@435@01))
            ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
            ($SortWrappers.IntTo$Snap $a@435@01))
          ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@435@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@435@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1053@11@1053@565-aux|)))
(push) ; 8
(assert (not (forall (($a@435@01 Int)) (!
  (=>
    (>
      ($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@435@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No)
    (>=
      (-
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@432@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@326@01 0)))
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      $a@435@01))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@435@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@435@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1053@11@1053@565|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall (($a@435@01 Int)) (!
  (=>
    (>
      ($PSF.perm_$accessible$withdraw (as pm@436@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@435@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No)
    (>=
      (-
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@432@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@326@01 0)))
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      $a@435@01))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@435@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@435@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1053@11@1053@565|)))
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 147 | $out_of_gas@349@01]
(assert $out_of_gas@349@01)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 133 | !(l$no_reentrant_call@346@01)]
(assert (not l$no_reentrant_call@346@01))
(pop) ; 5
; [eval] !l$no_reentrant_call
(push) ; 5
(set-option :timeout 10)
(assert (not l$no_reentrant_call@346@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@346@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 160 | !(l$no_reentrant_call@346@01) | live]
; [else-branch: 160 | l$no_reentrant_call@346@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 160 | !(l$no_reentrant_call@346@01)]
(assert (not l$no_reentrant_call@346@01))
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
(push) ; 6
(set-option :timeout 10)
(assert (not (not $out_of_gas@349@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not $out_of_gas@349@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 161 | $out_of_gas@349@01 | live]
; [else-branch: 161 | !($out_of_gas@349@01) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 161 | $out_of_gas@349@01]
(assert $out_of_gas@349@01)
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
; [then-branch: 162 | True | live]
; [else-branch: 162 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 162 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@437@01 $Snap)
(assert (= $t@437@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@350@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@438@01 $Struct)
(assert (=
  self@438@01
  ($struct_set<$Struct> self@330@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
    l$havoc$6@350@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@439@01 Int)
(declare-const q$v@440@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 9
; [then-branch: 163 | !(0 <= q$a@439@01) | live]
; [else-branch: 163 | 0 <= q$a@439@01 | live]
(push) ; 10
; [then-branch: 163 | !(0 <= q$a@439@01)]
(assert (not (<= 0 q$a@439@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 163 | 0 <= q$a@439@01]
(assert (<= 0 q$a@439@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 11
; [then-branch: 164 | !(q$a@439@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 164 | q$a@439@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 12
; [then-branch: 164 | !(q$a@439@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@439@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 12
(push) ; 12
; [else-branch: 164 | q$a@439@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@439@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 13
; [then-branch: 165 | !(0 <= q$v@440@01) | live]
; [else-branch: 165 | 0 <= q$v@440@01 | live]
(push) ; 14
; [then-branch: 165 | !(0 <= q$v@440@01)]
(assert (not (<= 0 q$v@440@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 165 | 0 <= q$v@440@01]
(assert (<= 0 q$v@440@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@440@01) (not (<= 0 q$v@440@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@440@01) (not (<= 0 q$v@440@01))))))
(assert (or
  (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@439@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@439@01)
  (and
    (<= 0 q$a@439@01)
    (=>
      (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@440@01) (not (<= 0 q$v@440@01)))))
    (or
      (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@439@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@439@01) (not (<= 0 q$a@439@01))))
(push) ; 9
; [then-branch: 166 | 0 <= q$a@439@01 && q$a@439@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@440@01 && q$v@440@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 166 | !(0 <= q$a@439@01 && q$a@439@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@440@01 && q$v@440@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 10
; [then-branch: 166 | 0 <= q$a@439@01 && q$a@439@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@440@01 && q$v@440@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@439@01)
  (and
    (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@440@01)
      (<=
        q$v@440@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 11
; [then-branch: 167 | q$v@440@01 <= $struct_get[Int]($struct_loc[Int](self@438@01, 1)) | live]
; [else-branch: 167 | !(q$v@440@01 <= $struct_get[Int]($struct_loc[Int](self@438@01, 1))) | live]
(push) ; 12
; [then-branch: 167 | q$v@440@01 <= $struct_get[Int]($struct_loc[Int](self@438@01, 1))]
(assert (<= q$v@440@01 ($struct_get<Int> ($struct_loc<Int> self@438@01 1))))
(pop) ; 12
(push) ; 12
; [else-branch: 167 | !(q$v@440@01 <= $struct_get[Int]($struct_loc[Int](self@438@01, 1)))]
(assert (not (<= q$v@440@01 ($struct_get<Int> ($struct_loc<Int> self@438@01 1)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@440@01 ($struct_get<Int> ($struct_loc<Int> self@438@01 1))))
  (<= q$v@440@01 ($struct_get<Int> ($struct_loc<Int> self@438@01 1)))))
(pop) ; 10
(push) ; 10
; [else-branch: 166 | !(0 <= q$a@439@01 && q$a@439@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@440@01 && q$v@440@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@439@01)
    (and
      (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@440@01)
        (<=
          q$v@440@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@439@01)
    (and
      (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@440@01)
        (<=
          q$v@440@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@439@01)
    (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@440@01)
    (<=
      q$v@440@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@440@01 ($struct_get<Int> ($struct_loc<Int> self@438@01 1))))
      (<= q$v@440@01 ($struct_get<Int> ($struct_loc<Int> self@438@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@439@01)
      (and
        (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@440@01)
          (<=
            q$v@440@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@439@01)
    (and
      (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@440@01)
        (<=
          q$v@440@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
; Definitional axioms for snapshot map values
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@439@01 Int) (q$v@440@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@439@01)
      (and
        (<= 0 q$a@439@01)
        (=>
          (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@440@01) (not (<= 0 q$v@440@01)))))
        (or
          (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@439@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@439@01) (not (<= 0 q$a@439@01)))
    (=>
      (and
        (<= 0 q$a@439@01)
        (and
          (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@440@01)
            (<=
              q$v@440@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@439@01)
        (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@440@01)
        (<=
          q$v@440@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@440@01 ($struct_get<Int> ($struct_loc<Int> self@438@01 1))))
          (<= q$v@440@01 ($struct_get<Int> ($struct_loc<Int> self@438@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@439@01)
          (and
            (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@440@01)
              (<=
                q$v@440@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@439@01)
        (and
          (<= q$a@439@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@440@01)
            (<=
              q$v@440@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@439@01))
      ($SortWrappers.IntTo$Snap q$v@440@01))
    ($SortWrappers.IntTo$Snap q$v@440@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@439@01))
      ($SortWrappers.IntTo$Snap q$v@440@01))
    ($SortWrappers.IntTo$Snap q$v@440@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1051@11@1051@315-aux|)))
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a,
;     $unwrap(l$amount))) >
;     none ==>
;     (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none ||
;     $out_of_gas) ==>
;     $succ) &&
;     ($succ ==>
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) -
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) >=
;     $a))
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@441@01 Int)
(push) ; 8
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
; Definitional axioms for snapshot map values
(declare-const pm@442@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef31|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef32|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@441@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@441@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
(push) ; 9
; [then-branch: 168 | PredicatePermLookup($accessible$withdraw, pm@442@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@441@01, $unwrap[Int](l$amount@324@01))) > Z | live]
; [else-branch: 168 | !(PredicatePermLookup($accessible$withdraw, pm@442@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@441@01, $unwrap[Int](l$amount@324@01))) > Z) | live]
(push) ; 10
; [then-branch: 168 | PredicatePermLookup($accessible$withdraw, pm@442@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@441@01, $unwrap[Int](l$amount@324@01))) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@441@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 11
; [then-branch: 169 | False | live]
; [else-branch: 169 | True | live]
(push) ; 12
; [then-branch: 169 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 169 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
; [then-branch: 170 | !($out_of_gas@349@01) | dead]
; [else-branch: 170 | $out_of_gas@349@01 | live]
(push) ; 12
; [else-branch: 170 | $out_of_gas@349@01]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(push) ; 11
; [then-branch: 171 | False | live]
; [else-branch: 171 | True | live]
(push) ; 12
; [then-branch: 171 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 171 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 13
; [then-branch: 172 | False | dead]
; [else-branch: 172 | True | live]
(push) ; 14
; [else-branch: 172 | True]
(pop) ; 14
(pop) ; 13
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(push) ; 10
; [else-branch: 168 | !(PredicatePermLookup($accessible$withdraw, pm@442@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@441@01, $unwrap[Int](l$amount@324@01))) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@441@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@441@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@441@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef31|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef32|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@441@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@441@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@441@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.IntTo$Snap 0)
                ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
              ($SortWrappers.IntTo$Snap $a@441@01))
            ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@442@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
            ($SortWrappers.IntTo$Snap $a@441@01))
          ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@441@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@441@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1053@11@1053@565-aux|)))
(pop) ; 7
; [then-branch: 173 | False | dead]
; [else-branch: 173 | True | live]
(push) ; 7
; [else-branch: 173 | True]
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 161 | !($out_of_gas@349@01)]
(assert (not $out_of_gas@349@01))
(pop) ; 6
; [eval] !$out_of_gas
(push) ; 6
(set-option :timeout 10)
(assert (not $out_of_gas@349@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not $out_of_gas@349@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 174 | !($out_of_gas@349@01) | live]
; [else-branch: 174 | $out_of_gas@349@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 174 | !($out_of_gas@349@01)]
(assert (not $out_of_gas@349@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 175 | False | dead]
; [else-branch: 175 | True | live]
(push) ; 7
; [else-branch: 175 | True]
(pop) ; 7
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 176 | True | live]
; [else-branch: 176 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 176 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@443@01 $Snap)
(assert (= $t@443@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@350@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@444@01 $Struct)
(assert (=
  self@444@01
  ($struct_set<$Struct> l$havoc$2@344@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@344@01 1))
    l$havoc$6@350@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@445@01 Int)
(declare-const q$v@446@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 9
; [then-branch: 177 | !(0 <= q$a@445@01) | live]
; [else-branch: 177 | 0 <= q$a@445@01 | live]
(push) ; 10
; [then-branch: 177 | !(0 <= q$a@445@01)]
(assert (not (<= 0 q$a@445@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 177 | 0 <= q$a@445@01]
(assert (<= 0 q$a@445@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 11
; [then-branch: 178 | !(q$a@445@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 178 | q$a@445@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 12
; [then-branch: 178 | !(q$a@445@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@445@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 12
(push) ; 12
; [else-branch: 178 | q$a@445@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@445@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 13
; [then-branch: 179 | !(0 <= q$v@446@01) | live]
; [else-branch: 179 | 0 <= q$v@446@01 | live]
(push) ; 14
; [then-branch: 179 | !(0 <= q$v@446@01)]
(assert (not (<= 0 q$v@446@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 179 | 0 <= q$v@446@01]
(assert (<= 0 q$v@446@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@446@01) (not (<= 0 q$v@446@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@446@01) (not (<= 0 q$v@446@01))))))
(assert (or
  (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@445@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@445@01)
  (and
    (<= 0 q$a@445@01)
    (=>
      (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@446@01) (not (<= 0 q$v@446@01)))))
    (or
      (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@445@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@445@01) (not (<= 0 q$a@445@01))))
(push) ; 9
; [then-branch: 180 | 0 <= q$a@445@01 && q$a@445@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@446@01 && q$v@446@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 180 | !(0 <= q$a@445@01 && q$a@445@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@446@01 && q$v@446@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 10
; [then-branch: 180 | 0 <= q$a@445@01 && q$a@445@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@446@01 && q$v@446@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@445@01)
  (and
    (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@446@01)
      (<=
        q$v@446@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 11
; [then-branch: 181 | q$v@446@01 <= $struct_get[Int]($struct_loc[Int](self@444@01, 1)) | live]
; [else-branch: 181 | !(q$v@446@01 <= $struct_get[Int]($struct_loc[Int](self@444@01, 1))) | live]
(push) ; 12
; [then-branch: 181 | q$v@446@01 <= $struct_get[Int]($struct_loc[Int](self@444@01, 1))]
(assert (<= q$v@446@01 ($struct_get<Int> ($struct_loc<Int> self@444@01 1))))
(pop) ; 12
(push) ; 12
; [else-branch: 181 | !(q$v@446@01 <= $struct_get[Int]($struct_loc[Int](self@444@01, 1)))]
(assert (not (<= q$v@446@01 ($struct_get<Int> ($struct_loc<Int> self@444@01 1)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@446@01 ($struct_get<Int> ($struct_loc<Int> self@444@01 1))))
  (<= q$v@446@01 ($struct_get<Int> ($struct_loc<Int> self@444@01 1)))))
(pop) ; 10
(push) ; 10
; [else-branch: 180 | !(0 <= q$a@445@01 && q$a@445@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@446@01 && q$v@446@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@445@01)
    (and
      (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@446@01)
        (<=
          q$v@446@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@445@01)
    (and
      (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@446@01)
        (<=
          q$v@446@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@445@01)
    (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@446@01)
    (<=
      q$v@446@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@446@01 ($struct_get<Int> ($struct_loc<Int> self@444@01 1))))
      (<= q$v@446@01 ($struct_get<Int> ($struct_loc<Int> self@444@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@445@01)
      (and
        (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@446@01)
          (<=
            q$v@446@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@445@01)
    (and
      (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@446@01)
        (<=
          q$v@446@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
; Definitional axioms for snapshot map values
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@445@01 Int) (q$v@446@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@445@01)
      (and
        (<= 0 q$a@445@01)
        (=>
          (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@446@01) (not (<= 0 q$v@446@01)))))
        (or
          (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@445@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@445@01) (not (<= 0 q$a@445@01)))
    (=>
      (and
        (<= 0 q$a@445@01)
        (and
          (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@446@01)
            (<=
              q$v@446@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@445@01)
        (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@446@01)
        (<=
          q$v@446@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@446@01 ($struct_get<Int> ($struct_loc<Int> self@444@01 1))))
          (<= q$v@446@01 ($struct_get<Int> ($struct_loc<Int> self@444@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@445@01)
          (and
            (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@446@01)
              (<=
                q$v@446@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@445@01)
        (and
          (<= q$a@445@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@446@01)
            (<=
              q$v@446@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@445@01))
      ($SortWrappers.IntTo$Snap q$v@446@01))
    ($SortWrappers.IntTo$Snap q$v@446@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@445@01))
      ($SortWrappers.IntTo$Snap q$v@446@01))
    ($SortWrappers.IntTo$Snap q$v@446@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1051@11@1051@315-aux|)))
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a,
;     $unwrap(l$amount))) >
;     none ==>
;     (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none ||
;     $out_of_gas) ==>
;     $succ) &&
;     ($succ ==>
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) -
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;     0)): Int)): Int) >=
;     $a))
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@447@01 Int)
(push) ; 8
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount))) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a, $unwrap(l$amount)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
; Definitional axioms for snapshot map values
(declare-const pm@448@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef33|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef34|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@447@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
    ($SortWrappers.IntTo$Snap $a@447@01))
  ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
(push) ; 9
; [then-branch: 182 | PredicatePermLookup($accessible$withdraw, pm@448@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@447@01, $unwrap[Int](l$amount@324@01))) > Z | live]
; [else-branch: 182 | !(PredicatePermLookup($accessible$withdraw, pm@448@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@447@01, $unwrap[Int](l$amount@324@01))) > Z) | live]
(push) ; 10
; [then-branch: 182 | PredicatePermLookup($accessible$withdraw, pm@448@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@447@01, $unwrap[Int](l$amount@324@01))) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@447@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 11
; [then-branch: 183 | False | live]
; [else-branch: 183 | True | live]
(push) ; 12
; [then-branch: 183 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 183 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not $out_of_gas@349@01))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 184 | !($out_of_gas@349@01) | live]
; [else-branch: 184 | $out_of_gas@349@01 | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 184 | !($out_of_gas@349@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(push) ; 11
; [then-branch: 185 | False | live]
; [else-branch: 185 | True | live]
(push) ; 12
; [then-branch: 185 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 185 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 186 | True | live]
; [else-branch: 186 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 186 | True]
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 14
(pop) ; 13
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(push) ; 10
; [else-branch: 182 | !(PredicatePermLookup($accessible$withdraw, pm@448@01, List(0, $struct_get[Int]($struct_loc[Int](msg@326@01, 0)), $a@447@01, $unwrap[Int](l$amount@324@01))) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@447@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@447@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@447@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] $unwrap(l$amount)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    (ite
      (and
        (and
          (img@385@01 $tag $to $amount $arg0)
          (img@387@01 $tag $to $amount $arg0))
        (and
          (<= 0 (inv@384@01 $tag $to $amount $arg0))
          (and
            (<=
              (inv@384@01 $tag $to $amount $arg0)
              1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 (inv@386@01 $tag $to $amount $arg0))
              (and
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  115792089237316195423570985008687907853269984665640564039457584007913129639935)
                (<=
                  (inv@386@01 $tag $to $amount $arg0)
                  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))))))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resPrmSumDef33|)))
(assert (forall (($tag Int) ($to Int) ($amount Int) ($arg0 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw ($SortWrappers.$SnapTo$PSF<$accessible$withdraw> ($Snap.second $t@379@01)) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap $tag)
          ($SortWrappers.IntTo$Snap $to))
        ($SortWrappers.IntTo$Snap $amount))
      ($SortWrappers.IntTo$Snap $arg0))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))
    ($SortWrappers.IntTo$Snap $arg0))))
  :qid |qp.resTrgDef34|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@447@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@447@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
        ($SortWrappers.IntTo$Snap $a@447@01))
      ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.IntTo$Snap 0)
                ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
              ($SortWrappers.IntTo$Snap $a@447@01))
            ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
            ($SortWrappers.IntTo$Snap $a@447@01))
          ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@447@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@447@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1053@11@1053@565-aux|)))
(push) ; 8
(assert (not (forall (($a@447@01 Int)) (!
  (=>
    (>
      ($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@447@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No)
    (>=
      (-
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@444@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@326@01 0)))
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      $a@447@01))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@447@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@447@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1053@11@1053@565|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall (($a@447@01 Int)) (!
  (=>
    (>
      ($PSF.perm_$accessible$withdraw (as pm@448@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
          ($SortWrappers.IntTo$Snap $a@447@01))
        ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01))))
      $Perm.No)
    (>=
      (-
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@444@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@326@01 0)))
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@330@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      $a@447@01))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@388@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@447@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@326@01 0))))
      ($SortWrappers.IntTo$Snap $a@447@01))
    ($SortWrappers.IntTo$Snap ($unwrap<Int> l$amount@324@01)))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1053@11@1053@565|)))
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 174 | $out_of_gas@349@01]
(assert $out_of_gas@349@01)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 160 | l$no_reentrant_call@346@01]
(assert l$no_reentrant_call@346@01)
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 125 | l$send_fail@340@01]
(assert l$send_fail@340@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 107 | $struct_get[Int]($struct_loc[Int](self@330@01, 1)) < $unwrap[Int](l$amount@324@01)]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@330@01 1))
  ($unwrap<Int> l$amount@324@01)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$withdraw_none ----------
(declare-const $succ@449@01 Bool)
(declare-const $succ@450@01 Bool)
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
(declare-const msg@451@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@452@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@453@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@454@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@455@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@456@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@457@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@458@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@459@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@460@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@461@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@462@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@463@01 Bool)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@464@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@465@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@466@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@467@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@468@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@469@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@470@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@471@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@472@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@473@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@474@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@475@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@476@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@477@01 $Snap)
(assert (= $t@477@01 ($Snap.combine ($Snap.first $t@477@01) ($Snap.second $t@477@01))))
(assert (= ($Snap.first $t@477@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@455@01 0))))
(assert (= ($Snap.second $t@477@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@455@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@478@01 $Snap)
(assert (= $t@478@01 ($Snap.combine ($Snap.first $t@478@01) ($Snap.second $t@478@01))))
(assert (= ($Snap.first $t@478@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@455@01 1))))
(assert (= ($Snap.second $t@478@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@455@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@479@01 $Snap)
(assert (= $t@479@01 ($Snap.combine ($Snap.first $t@479@01) ($Snap.second $t@479@01))))
(assert (= ($Snap.first $t@479@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@455@01 2))))
(assert (= ($Snap.second $t@479@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@455@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@480@01 $Snap)
(assert (= $t@480@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@481@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 187 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@455@01, 4)), $q0@481@01)) | live]
; [else-branch: 187 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@455@01, 4)), $q0@481@01) | live]
(push) ; 5
; [then-branch: 187 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@455@01, 4)), $q0@481@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@481@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 187 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@455@01, 4)), $q0@481@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@481@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@481@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@481@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@481@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@481@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@481@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@481@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1088@11@1088@345-aux|)))
(assert (forall (($q0@481@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@481@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@481@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@481@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1088@11@1088@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@482@01 $Snap)
(assert (= $t@482@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@483@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@483@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@483@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 4)) $q0@483@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1089@11@1089@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@484@01 $Snap)
(assert (= $t@484@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@485@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 188 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@455@01, 5)), $q1@485@01)) | live]
; [else-branch: 188 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@455@01, 5)), $q1@485@01) | live]
(push) ; 5
; [then-branch: 188 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@455@01, 5)), $q1@485@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@485@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 188 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@455@01, 5)), $q1@485@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@485@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@485@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@485@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@485@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@485@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@485@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@485@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1090@11@1090@345-aux|)))
(assert (forall (($q1@485@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@485@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@485@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@485@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1090@11@1090@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@486@01 $Snap)
(assert (= $t@486@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@487@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@487@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@487@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@455@01 5)) $q1@487@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1091@11@1091@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@488@01 $Snap)
(assert (= $t@488@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@455@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@489@01 $Snap)
(assert (= $t@489@01 ($Snap.combine ($Snap.first $t@489@01) ($Snap.second $t@489@01))))
(assert (= ($Snap.first $t@489@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@489@01) $Snap.unit))
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
(declare-const $t@490@01 $Snap)
(assert (= $t@490@01 ($Snap.combine ($Snap.first $t@490@01) ($Snap.second $t@490@01))))
(assert (= ($Snap.first $t@490@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@452@01 0))))
(assert (= ($Snap.second $t@490@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@452@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@491@01 $Snap)
(assert (= $t@491@01 ($Snap.combine ($Snap.first $t@491@01) ($Snap.second $t@491@01))))
(assert (= ($Snap.first $t@491@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@452@01 1))))
(assert (= ($Snap.second $t@491@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@452@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@492@01 $Snap)
(assert (= $t@492@01 ($Snap.combine ($Snap.first $t@492@01) ($Snap.second $t@492@01))))
(assert (= ($Snap.first $t@492@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@452@01 2))))
(assert (= ($Snap.second $t@492@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@452@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@493@01 $Snap)
(assert (= $t@493@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@452@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@494@01 $Snap)
(assert (= $t@494@01 ($Snap.combine ($Snap.first $t@494@01) ($Snap.second $t@494@01))))
(assert (= ($Snap.first $t@494@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@452@01 4))))
(assert (= ($Snap.second $t@494@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@452@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@495@01 $Snap)
(assert (= $t@495@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@452@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@496@01 $Snap)
(assert (= $t@496@01 ($Snap.combine ($Snap.first $t@496@01) ($Snap.second $t@496@01))))
(assert (= ($Snap.first $t@496@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@451@01 0))))
(assert (= ($Snap.second $t@496@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@451@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@497@01 $Snap)
(assert (= $t@497@01 ($Snap.combine ($Snap.first $t@497@01) ($Snap.second $t@497@01))))
(assert (= ($Snap.first $t@497@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@451@01 1))))
(assert (= ($Snap.second $t@497@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@451@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@498@01 $Snap)
(assert (= $t@498@01 ($Snap.combine ($Snap.first $t@498@01) ($Snap.second $t@498@01))))
(assert (= ($Snap.first $t@498@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@451@01 2))))
(assert (= ($Snap.second $t@498@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@451@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@499@01 $Snap)
(assert (= $t@499@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@451@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@500@01 $Snap)
(assert (= $t@500@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@451@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@501@01 $Snap)
(assert (= $t@501@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@502@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const $t@503@01 $Snap)
(assert (= $t@503@01 $Snap.unit))
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@504@01 Int)
(declare-const q$v@505@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 4
; [then-branch: 189 | !(0 <= q$a@504@01) | live]
; [else-branch: 189 | 0 <= q$a@504@01 | live]
(push) ; 5
; [then-branch: 189 | !(0 <= q$a@504@01)]
(assert (not (<= 0 q$a@504@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 189 | 0 <= q$a@504@01]
(assert (<= 0 q$a@504@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 6
; [then-branch: 190 | !(q$a@504@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 190 | q$a@504@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 7
; [then-branch: 190 | !(q$a@504@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@504@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 7
(push) ; 7
; [else-branch: 190 | q$a@504@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@504@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 8
; [then-branch: 191 | !(0 <= q$v@505@01) | live]
; [else-branch: 191 | 0 <= q$v@505@01 | live]
(push) ; 9
; [then-branch: 191 | !(0 <= q$v@505@01)]
(assert (not (<= 0 q$v@505@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 191 | 0 <= q$v@505@01]
(assert (<= 0 q$v@505@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@505@01) (not (<= 0 q$v@505@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@505@01) (not (<= 0 q$v@505@01))))))
(assert (or
  (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@504@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@504@01)
  (and
    (<= 0 q$a@504@01)
    (=>
      (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@505@01) (not (<= 0 q$v@505@01)))))
    (or
      (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@504@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@504@01) (not (<= 0 q$a@504@01))))
(push) ; 4
; [then-branch: 192 | 0 <= q$a@504@01 && q$a@504@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@505@01 && q$v@505@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 192 | !(0 <= q$a@504@01 && q$a@504@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@505@01 && q$v@505@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 5
; [then-branch: 192 | 0 <= q$a@504@01 && q$a@504@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@505@01 && q$v@505@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@504@01)
  (and
    (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@505@01)
      (<=
        q$v@505@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 6
; [then-branch: 193 | q$v@505@01 <= $struct_get[Int]($struct_loc[Int](self@455@01, 1)) | live]
; [else-branch: 193 | !(q$v@505@01 <= $struct_get[Int]($struct_loc[Int](self@455@01, 1))) | live]
(push) ; 7
; [then-branch: 193 | q$v@505@01 <= $struct_get[Int]($struct_loc[Int](self@455@01, 1))]
(assert (<= q$v@505@01 ($struct_get<Int> ($struct_loc<Int> self@455@01 1))))
(pop) ; 7
(push) ; 7
; [else-branch: 193 | !(q$v@505@01 <= $struct_get[Int]($struct_loc[Int](self@455@01, 1)))]
(assert (not (<= q$v@505@01 ($struct_get<Int> ($struct_loc<Int> self@455@01 1)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@505@01 ($struct_get<Int> ($struct_loc<Int> self@455@01 1))))
  (<= q$v@505@01 ($struct_get<Int> ($struct_loc<Int> self@455@01 1)))))
(pop) ; 5
(push) ; 5
; [else-branch: 192 | !(0 <= q$a@504@01 && q$a@504@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@505@01 && q$v@505@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@504@01)
    (and
      (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@505@01)
        (<=
          q$v@505@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@504@01)
    (and
      (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@505@01)
        (<=
          q$v@505@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@504@01)
    (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@505@01)
    (<=
      q$v@505@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@505@01 ($struct_get<Int> ($struct_loc<Int> self@455@01 1))))
      (<= q$v@505@01 ($struct_get<Int> ($struct_loc<Int> self@455@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@504@01)
      (and
        (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@505@01)
          (<=
            q$v@505@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@504@01)
    (and
      (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@505@01)
        (<=
          q$v@505@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(declare-const sm@506@01 $PSF<$accessible$withdraw>)
(declare-const s@507@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@504@01 Int) (q$v@505@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@504@01)
      (and
        (<= 0 q$a@504@01)
        (=>
          (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@505@01) (not (<= 0 q$v@505@01)))))
        (or
          (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@504@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@504@01) (not (<= 0 q$a@504@01)))
    (=>
      (and
        (<= 0 q$a@504@01)
        (and
          (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@505@01)
            (<=
              q$v@505@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@504@01)
        (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@505@01)
        (<=
          q$v@505@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@505@01 ($struct_get<Int> ($struct_loc<Int> self@455@01 1))))
          (<= q$v@505@01 ($struct_get<Int> ($struct_loc<Int> self@455@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@504@01)
          (and
            (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@505@01)
              (<=
                q$v@505@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@504@01)
        (and
          (<= q$a@504@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@505@01)
            (<=
              q$v@505@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@506@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@504@01))
      ($SortWrappers.IntTo$Snap q$v@505@01))
    ($SortWrappers.IntTo$Snap q$v@505@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@504@01))
      ($SortWrappers.IntTo$Snap q$v@505@01))
    ($SortWrappers.IntTo$Snap q$v@505@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1110@11@1110@315-aux|)))
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
(declare-const $t@508@01 $Snap)
(assert (= $t@508@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@451@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [then-branch: 194 | False | dead]
; [else-branch: 194 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 194 | True]
(pop) ; 3
; [eval] !false
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 195 | True | live]
; [else-branch: 195 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 195 | True]
; [exec]
; label return
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@474@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@474@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 196 | $out_of_gas@474@01 | live]
; [else-branch: 196 | !($out_of_gas@474@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 196 | $out_of_gas@474@01]
(assert $out_of_gas@474@01)
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
; [then-branch: 197 | True | live]
; [else-branch: 197 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 197 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@509@01 $Snap)
(assert (= $t@509@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@475@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@510@01 $Struct)
(assert (=
  self@510@01
  ($struct_set<$Struct> self@455@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@455@01 1))
    l$havoc$6@475@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@511@01 Int)
(declare-const q$v@512@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 7
; [then-branch: 198 | !(0 <= q$a@511@01) | live]
; [else-branch: 198 | 0 <= q$a@511@01 | live]
(push) ; 8
; [then-branch: 198 | !(0 <= q$a@511@01)]
(assert (not (<= 0 q$a@511@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 198 | 0 <= q$a@511@01]
(assert (<= 0 q$a@511@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 9
; [then-branch: 199 | !(q$a@511@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 199 | q$a@511@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 10
; [then-branch: 199 | !(q$a@511@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@511@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 10
(push) ; 10
; [else-branch: 199 | q$a@511@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@511@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 11
; [then-branch: 200 | !(0 <= q$v@512@01) | live]
; [else-branch: 200 | 0 <= q$v@512@01 | live]
(push) ; 12
; [then-branch: 200 | !(0 <= q$v@512@01)]
(assert (not (<= 0 q$v@512@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 200 | 0 <= q$v@512@01]
(assert (<= 0 q$v@512@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@512@01) (not (<= 0 q$v@512@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@512@01) (not (<= 0 q$v@512@01))))))
(assert (or
  (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@511@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@511@01)
  (and
    (<= 0 q$a@511@01)
    (=>
      (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@512@01) (not (<= 0 q$v@512@01)))))
    (or
      (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@511@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@511@01) (not (<= 0 q$a@511@01))))
(push) ; 7
; [then-branch: 201 | 0 <= q$a@511@01 && q$a@511@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@512@01 && q$v@512@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 201 | !(0 <= q$a@511@01 && q$a@511@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@512@01 && q$v@512@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 8
; [then-branch: 201 | 0 <= q$a@511@01 && q$a@511@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@512@01 && q$v@512@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@511@01)
  (and
    (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@512@01)
      (<=
        q$v@512@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 202 | q$v@512@01 <= $struct_get[Int]($struct_loc[Int](self@510@01, 1)) | live]
; [else-branch: 202 | !(q$v@512@01 <= $struct_get[Int]($struct_loc[Int](self@510@01, 1))) | live]
(push) ; 10
; [then-branch: 202 | q$v@512@01 <= $struct_get[Int]($struct_loc[Int](self@510@01, 1))]
(assert (<= q$v@512@01 ($struct_get<Int> ($struct_loc<Int> self@510@01 1))))
(pop) ; 10
(push) ; 10
; [else-branch: 202 | !(q$v@512@01 <= $struct_get[Int]($struct_loc[Int](self@510@01, 1)))]
(assert (not (<= q$v@512@01 ($struct_get<Int> ($struct_loc<Int> self@510@01 1)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@512@01 ($struct_get<Int> ($struct_loc<Int> self@510@01 1))))
  (<= q$v@512@01 ($struct_get<Int> ($struct_loc<Int> self@510@01 1)))))
(pop) ; 8
(push) ; 8
; [else-branch: 201 | !(0 <= q$a@511@01 && q$a@511@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@512@01 && q$v@512@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@511@01)
    (and
      (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@512@01)
        (<=
          q$v@512@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@511@01)
    (and
      (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@512@01)
        (<=
          q$v@512@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@511@01)
    (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@512@01)
    (<=
      q$v@512@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@512@01 ($struct_get<Int> ($struct_loc<Int> self@510@01 1))))
      (<= q$v@512@01 ($struct_get<Int> ($struct_loc<Int> self@510@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@511@01)
      (and
        (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@512@01)
          (<=
            q$v@512@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@511@01)
    (and
      (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@512@01)
        (<=
          q$v@512@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(declare-const sm@513@01 $PSF<$accessible$withdraw>)
(declare-const s@514@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@511@01 Int) (q$v@512@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@511@01)
      (and
        (<= 0 q$a@511@01)
        (=>
          (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@512@01) (not (<= 0 q$v@512@01)))))
        (or
          (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@511@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@511@01) (not (<= 0 q$a@511@01)))
    (=>
      (and
        (<= 0 q$a@511@01)
        (and
          (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@512@01)
            (<=
              q$v@512@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@511@01)
        (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@512@01)
        (<=
          q$v@512@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@512@01 ($struct_get<Int> ($struct_loc<Int> self@510@01 1))))
          (<= q$v@512@01 ($struct_get<Int> ($struct_loc<Int> self@510@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@511@01)
          (and
            (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@512@01)
              (<=
                q$v@512@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@511@01)
        (and
          (<= q$a@511@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@512@01)
            (<=
              q$v@512@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@513@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@511@01))
      ($SortWrappers.IntTo$Snap q$v@512@01))
    ($SortWrappers.IntTo$Snap q$v@512@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@511@01))
      ($SortWrappers.IntTo$Snap q$v@512@01))
    ($SortWrappers.IntTo$Snap q$v@512@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1209@11@1209@315-aux|)))
(pop) ; 5
; [then-branch: 203 | False | dead]
; [else-branch: 203 | True | live]
(push) ; 5
; [else-branch: 203 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 196 | !($out_of_gas@474@01)]
(assert (not $out_of_gas@474@01))
(pop) ; 4
; [eval] !$out_of_gas
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@474@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@474@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 204 | !($out_of_gas@474@01) | live]
; [else-branch: 204 | $out_of_gas@474@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 204 | !($out_of_gas@474@01)]
(assert (not $out_of_gas@474@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 205 | False | dead]
; [else-branch: 205 | True | live]
(push) ; 5
; [else-branch: 205 | True]
(pop) ; 5
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 206 | True | live]
; [else-branch: 206 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 206 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@515@01 $Snap)
(assert (= $t@515@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@475@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@516@01 $Struct)
(assert (=
  self@516@01
  ($struct_set<$Struct> self@455@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@455@01 1))
    l$havoc$6@475@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert (forall q$a: Int, q$v: Int ::
;     { $accessible$withdraw(0, q$a, q$v, q$v) }
;     0 <= q$a &&
;     (q$a <= 1461501637330902918203684832716283019655932542975 &&
;     (0 <= q$v &&
;     q$v <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==>
;     q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
; [eval] (forall q$a: Int, q$v: Int :: { $accessible$withdraw(0, q$a, q$v, q$v) } 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true)
(declare-const q$a@517@01 Int)
(declare-const q$v@518@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)) ==> q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] 0 <= q$a && (q$a <= 1461501637330902918203684832716283019655932542975 && (0 <= q$v && q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935))
; [eval] 0 <= q$a
(push) ; 7
; [then-branch: 207 | !(0 <= q$a@517@01) | live]
; [else-branch: 207 | 0 <= q$a@517@01 | live]
(push) ; 8
; [then-branch: 207 | !(0 <= q$a@517@01)]
(assert (not (<= 0 q$a@517@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 207 | 0 <= q$a@517@01]
(assert (<= 0 q$a@517@01))
; [eval] q$a <= 1461501637330902918203684832716283019655932542975
(push) ; 9
; [then-branch: 208 | !(q$a@517@01 <= 1461501637330902918203684832716283019655932542975) | live]
; [else-branch: 208 | q$a@517@01 <= 1461501637330902918203684832716283019655932542975 | live]
(push) ; 10
; [then-branch: 208 | !(q$a@517@01 <= 1461501637330902918203684832716283019655932542975)]
(assert (not (<= q$a@517@01 1461501637330902918203684832716283019655932542975)))
(pop) ; 10
(push) ; 10
; [else-branch: 208 | q$a@517@01 <= 1461501637330902918203684832716283019655932542975]
(assert (<= q$a@517@01 1461501637330902918203684832716283019655932542975))
; [eval] 0 <= q$v
(push) ; 11
; [then-branch: 209 | !(0 <= q$v@518@01) | live]
; [else-branch: 209 | 0 <= q$v@518@01 | live]
(push) ; 12
; [then-branch: 209 | !(0 <= q$v@518@01)]
(assert (not (<= 0 q$v@518@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 209 | 0 <= q$v@518@01]
(assert (<= 0 q$v@518@01))
; [eval] q$v <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 q$v@518@01) (not (<= 0 q$v@518@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
  (and
    (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
    (or (<= 0 q$v@518@01) (not (<= 0 q$v@518@01))))))
(assert (or
  (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
  (not (<= q$a@517@01 1461501637330902918203684832716283019655932542975))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 q$a@517@01)
  (and
    (<= 0 q$a@517@01)
    (=>
      (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
        (or (<= 0 q$v@518@01) (not (<= 0 q$v@518@01)))))
    (or
      (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
      (not (<= q$a@517@01 1461501637330902918203684832716283019655932542975))))))
(assert (or (<= 0 q$a@517@01) (not (<= 0 q$a@517@01))))
(push) ; 7
; [then-branch: 210 | 0 <= q$a@517@01 && q$a@517@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@518@01 && q$v@518@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 210 | !(0 <= q$a@517@01 && q$a@517@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@518@01 && q$v@518@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(push) ; 8
; [then-branch: 210 | 0 <= q$a@517@01 && q$a@517@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@518@01 && q$v@518@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (and
  (<= 0 q$a@517@01)
  (and
    (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
    (and
      (<= 0 q$v@518@01)
      (<=
        q$v@518@01
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int) ==> true
; [eval] q$v <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 9
; [then-branch: 211 | q$v@518@01 <= $struct_get[Int]($struct_loc[Int](self@516@01, 1)) | live]
; [else-branch: 211 | !(q$v@518@01 <= $struct_get[Int]($struct_loc[Int](self@516@01, 1))) | live]
(push) ; 10
; [then-branch: 211 | q$v@518@01 <= $struct_get[Int]($struct_loc[Int](self@516@01, 1))]
(assert (<= q$v@518@01 ($struct_get<Int> ($struct_loc<Int> self@516@01 1))))
(pop) ; 10
(push) ; 10
; [else-branch: 211 | !(q$v@518@01 <= $struct_get[Int]($struct_loc[Int](self@516@01, 1)))]
(assert (not (<= q$v@518@01 ($struct_get<Int> ($struct_loc<Int> self@516@01 1)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not (<= q$v@518@01 ($struct_get<Int> ($struct_loc<Int> self@516@01 1))))
  (<= q$v@518@01 ($struct_get<Int> ($struct_loc<Int> self@516@01 1)))))
(pop) ; 8
(push) ; 8
; [else-branch: 210 | !(0 <= q$a@517@01 && q$a@517@01 <= 1461501637330902918203684832716283019655932542975 && 0 <= q$v@518@01 && q$v@518@01 <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (and
    (<= 0 q$a@517@01)
    (and
      (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@518@01)
        (<=
          q$v@518@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (<= 0 q$a@517@01)
    (and
      (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@518@01)
        (<=
          q$v@518@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))
  (and
    (<= 0 q$a@517@01)
    (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
    (<= 0 q$v@518@01)
    (<=
      q$v@518@01
      115792089237316195423570985008687907853269984665640564039457584007913129639935)
    (or
      (not (<= q$v@518@01 ($struct_get<Int> ($struct_loc<Int> self@516@01 1))))
      (<= q$v@518@01 ($struct_get<Int> ($struct_loc<Int> self@516@01 1)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 q$a@517@01)
      (and
        (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
        (and
          (<= 0 q$v@518@01)
          (<=
            q$v@518@01
            115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
  (and
    (<= 0 q$a@517@01)
    (and
      (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
      (and
        (<= 0 q$v@518@01)
        (<=
          q$v@518@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
(declare-const sm@519@01 $PSF<$accessible$withdraw>)
(declare-const s@520@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$a@517@01 Int) (q$v@518@01 Int)) (!
  (and
    (=>
      (<= 0 q$a@517@01)
      (and
        (<= 0 q$a@517@01)
        (=>
          (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
            (or (<= 0 q$v@518@01) (not (<= 0 q$v@518@01)))))
        (or
          (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
          (not (<= q$a@517@01 1461501637330902918203684832716283019655932542975)))))
    (or (<= 0 q$a@517@01) (not (<= 0 q$a@517@01)))
    (=>
      (and
        (<= 0 q$a@517@01)
        (and
          (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@518@01)
            (<=
              q$v@518@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))
      (and
        (<= 0 q$a@517@01)
        (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
        (<= 0 q$v@518@01)
        (<=
          q$v@518@01
          115792089237316195423570985008687907853269984665640564039457584007913129639935)
        (or
          (not
            (<= q$v@518@01 ($struct_get<Int> ($struct_loc<Int> self@516@01 1))))
          (<= q$v@518@01 ($struct_get<Int> ($struct_loc<Int> self@516@01 1))))))
    (or
      (not
        (and
          (<= 0 q$a@517@01)
          (and
            (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
            (and
              (<= 0 q$v@518@01)
              (<=
                q$v@518@01
                115792089237316195423570985008687907853269984665640564039457584007913129639935)))))
      (and
        (<= 0 q$a@517@01)
        (and
          (<= q$a@517@01 1461501637330902918203684832716283019655932542975)
          (and
            (<= 0 q$v@518@01)
            (<=
              q$v@518@01
              115792089237316195423570985008687907853269984665640564039457584007913129639935))))))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@519@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@517@01))
      ($SortWrappers.IntTo$Snap q$v@518@01))
    ($SortWrappers.IntTo$Snap q$v@518@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap q$a@517@01))
      ($SortWrappers.IntTo$Snap q$v@518@01))
    ($SortWrappers.IntTo$Snap q$v@518@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible_heuristics_argument.vy.vpr@1209@11@1209@315-aux|)))
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 204 | $out_of_gas@474@01]
(assert $out_of_gas@474@01)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
