(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:24:55
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
  :qid |quant-u-753|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-754|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-759|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-760|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-755|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-756|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-761|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-762|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-757|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-758|)))
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
  :qid |quant-u-763|)))
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
  :qid |quant-u-764|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@609@11@609@354-aux|)))
(assert (forall (($q0@12@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q0@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@609@11@609@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@610@11@610@262|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@611@11@611@354-aux|)))
(assert (forall (($q1@16@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q1@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@611@11@611@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@612@11@612@262|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@617@11@617@354-aux|)))
(assert (forall (($q0@24@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q0@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@617@11@617@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@618@11@618@262|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@619@11@619@354-aux|)))
(assert (forall (($q1@28@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q1@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@619@11@619@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@620@11@620@262|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@625@11@625@354-aux|)))
(assert (forall (($q0@36@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q0@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@625@11@625@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@626@11@626@262|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@627@11@627@354-aux|)))
(assert (forall (($q1@40@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q1@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@627@11@627@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@628@11@628@262|)))
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
; inhale acc($accessible$withdraw(0, ($struct_get($struct_loc($self$0, 0)): Int),
;   ($struct_get($struct_loc($self$0, 1)): Int)), write)
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(declare-const $t@52@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@54@01 Int)
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
(assert (forall (($a@54@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $a@54@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $a@54@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $a@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@638@11@638@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc($accessible$withdraw(0, ($struct_get($struct_loc($self$1, 0)): Int),
;   ($struct_get($struct_loc($self$1, 1)): Int)), write)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(declare-const $t@55@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (=
    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 0))
    ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0)))
  (=
    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))
    ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@57@01 Int)
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
(assert (forall (($a@57@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $a@57@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $a@57@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $a@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@640@11@640@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc($accessible$withdraw(0, ($struct_get($struct_loc($self$2, 0)): Int),
;   ($struct_get($struct_loc($self$2, 1)): Int)), write)
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(declare-const $t@58@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (=
    ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0))
    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0)))
  (=
    ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))
    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (=
    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 0))
    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0)))
  (=
    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))
    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert acc($accessible$withdraw(0, ($struct_get($struct_loc($self$2, 0)): Int),
;   ($struct_get($struct_loc($self$2, 1)): Int)), write)
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
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
; inhale 0 <= ($struct_get($struct_loc($self$0, 0)): Int) &&
;   ($struct_get($struct_loc($self$0, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 ($Snap.combine ($Snap.first $t@65@01) ($Snap.second $t@65@01))))
(assert (= ($Snap.first $t@65@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 0))))
(assert (= ($Snap.second $t@65@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 ($Snap.combine ($Snap.first $t@66@01) ($Snap.second $t@66@01))))
(assert (= ($Snap.first $t@66@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 1))))
(assert (= ($Snap.second $t@66@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 ($Snap.combine ($Snap.first $t@67@01) ($Snap.second $t@67@01))))
(assert (= ($Snap.first $t@67@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 2))))
(assert (= ($Snap.second $t@67@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@59@01 2))
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
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@69@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(push) ; 4
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 4)), $q0@69@01)) | live]
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 4)), $q0@69@01) | live]
(push) ; 5
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 4)), $q0@69@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@69@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 4)), $q0@69@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@69@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@69@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@69@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@69@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@69@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@69@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@656@11@656@354-aux|)))
(assert (forall (($q0@69@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@69@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@69@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@656@11@656@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int))
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int))
(declare-const $q0@71@01 Int)
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
(assert (forall (($q0@71@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@71@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $q0@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@657@11@657@262|)))
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
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@73@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(push) ; 4
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 5)), $q1@73@01)) | live]
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 5)), $q1@73@01) | live]
(push) ; 5
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 5)), $q1@73@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@73@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@59@01, 5)), $q1@73@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@73@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@73@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@73@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@73@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@73@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@73@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@658@11@658@354-aux|)))
(assert (forall (($q1@73@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@73@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@73@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@658@11@658@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $q1@75@01 Int)
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
(assert (forall (($q1@75@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@75@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 5)) $q1@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@659@11@659@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@76@01 $Snap)
(assert (= $t@76@01 $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 ($Snap.combine ($Snap.first $t@77@01) ($Snap.second $t@77@01))))
(assert (= ($Snap.first $t@77@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 0))))
(assert (= ($Snap.second $t@77@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 ($Snap.combine ($Snap.first $t@78@01) ($Snap.second $t@78@01))))
(assert (= ($Snap.first $t@78@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 1))))
(assert (= ($Snap.second $t@78@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01))))
(assert (= ($Snap.first $t@79@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 2))))
(assert (= ($Snap.second $t@79@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@61@01 2))
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
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@81@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(push) ; 4
; [then-branch: 8 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 4)), $q0@81@01)) | live]
; [else-branch: 8 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 4)), $q0@81@01) | live]
(push) ; 5
; [then-branch: 8 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 4)), $q0@81@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@81@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 8 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 4)), $q0@81@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@81@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@81@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@81@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@81@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@81@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@81@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@664@11@664@354-aux|)))
(assert (forall (($q0@81@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@81@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@81@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@664@11@664@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int))
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int))
(declare-const $q0@83@01 Int)
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
(assert (forall (($q0@83@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@83@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $q0@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@665@11@665@262|)))
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
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@85@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(push) ; 4
; [then-branch: 9 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 5)), $q1@85@01)) | live]
; [else-branch: 9 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 5)), $q1@85@01) | live]
(push) ; 5
; [then-branch: 9 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 5)), $q1@85@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@85@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@61@01, 5)), $q1@85@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@85@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@85@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@85@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@85@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@85@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@85@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@666@11@666@354-aux|)))
(assert (forall (($q1@85@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@85@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@85@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@666@11@666@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $q1@87@01 Int)
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
(assert (forall (($q1@87@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@87@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 5)) $q1@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@667@11@667@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 $Snap.unit))
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
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 ($Snap.combine ($Snap.first $t@89@01) ($Snap.second $t@89@01))))
(assert (= ($Snap.first $t@89@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@63@01 0))))
(assert (= ($Snap.second $t@89@01) $Snap.unit))
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
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 ($Snap.combine ($Snap.first $t@90@01) ($Snap.second $t@90@01))))
(assert (= ($Snap.first $t@90@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@63@01 1))))
(assert (= ($Snap.second $t@90@01) $Snap.unit))
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
(declare-const $t@91@01 $Snap)
(assert (= $t@91@01 ($Snap.combine ($Snap.first $t@91@01) ($Snap.second $t@91@01))))
(assert (= ($Snap.first $t@91@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@63@01 2))))
(assert (= ($Snap.second $t@91@01) $Snap.unit))
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
(declare-const $t@92@01 $Snap)
(assert (= $t@92@01 $Snap.unit))
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
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 ($Snap.combine ($Snap.first $t@93@01) ($Snap.second $t@93@01))))
(assert (= ($Snap.first $t@93@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@63@01 4))))
(assert (= ($Snap.second $t@93@01) $Snap.unit))
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
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 $Snap.unit))
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
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@96@01 Int)
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
(assert (forall (($a@96@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $a@96@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@59@01 4)) $a@96@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@61@01 4)) $a@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@675@11@675@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc($accessible$withdraw(0, ($struct_get($struct_loc($self$1, 0)): Int),
;   ($struct_get($struct_loc($self$1, 1)): Int)), write)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(declare-const $t@97@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; assert acc($accessible$withdraw(0, ($struct_get($struct_loc($self$1, 0)): Int),
;   ($struct_get($struct_loc($self$1, 1)): Int)), write)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
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
(declare-const self@98@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@99@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@100@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@101@01 $Map<Int~_$Struct>)
; [exec]
; var $post: Bool
(declare-const $post@102@01 Bool)
; [exec]
; var $havoc: Int
(declare-const $havoc@103@01 Int)
; [exec]
; var block: $Struct
(declare-const block@104@01 $Struct)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 ($Snap.combine ($Snap.first $t@105@01) ($Snap.second $t@105@01))))
(assert (= ($Snap.first $t@105@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@98@01 0))))
(assert (= ($Snap.second $t@105@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@98@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 ($Snap.combine ($Snap.first $t@106@01) ($Snap.second $t@106@01))))
(assert (= ($Snap.first $t@106@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@98@01 1))))
(assert (= ($Snap.second $t@106@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@98@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (= ($Snap.first $t@107@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@98@01 2))))
(assert (= ($Snap.second $t@107@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@98@01 2))
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
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@109@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@98@01, 4)), $q0@109@01)) | live]
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@98@01, 4)), $q0@109@01) | live]
(push) ; 5
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@98@01, 4)), $q0@109@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@109@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@98@01, 4)), $q0@109@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@109@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@109@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@109@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@109@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@109@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@109@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@692@11@692@345-aux|)))
(assert (forall (($q0@109@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@109@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@109@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@692@11@692@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@110@01 $Snap)
(assert (= $t@110@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@111@01 Int)
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
(assert (forall (($q0@111@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@111@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 4)) $q0@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@693@11@693@253|)))
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
(declare-const $t@112@01 $Snap)
(assert (= $t@112@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@113@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@98@01, 5)), $q1@113@01)) | live]
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@98@01, 5)), $q1@113@01) | live]
(push) ; 5
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@98@01, 5)), $q1@113@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@113@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@98@01, 5)), $q1@113@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@113@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@113@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@113@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@113@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@113@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@113@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@694@11@694@345-aux|)))
(assert (forall (($q1@113@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@113@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@113@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@694@11@694@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@114@01 $Snap)
(assert (= $t@114@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@115@01 Int)
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
(assert (forall (($q1@115@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@115@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@98@01 5)) $q1@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@695@11@695@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@98@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 0)): Int) &&
;   ($struct_get($struct_loc($pre_self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@117@01 $Snap)
(assert (= $t@117@01 ($Snap.combine ($Snap.first $t@117@01) ($Snap.second $t@117@01))))
(assert (= ($Snap.first $t@117@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@100@01 0))))
(assert (= ($Snap.second $t@117@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@100@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 1)): Int) &&
;   ($struct_get($struct_loc($pre_self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 ($Snap.combine ($Snap.first $t@118@01) ($Snap.second $t@118@01))))
(assert (= ($Snap.first $t@118@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@100@01 1))))
(assert (= ($Snap.second $t@118@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@100@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 2)): Int) &&
;   ($struct_get($struct_loc($pre_self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (= ($Snap.first $t@119@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@100@01 2))))
(assert (= ($Snap.second $t@119@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@100@01 2))
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
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@121@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
(push) ; 4
; [then-branch: 12 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@100@01, 4)), $q0@121@01)) | live]
; [else-branch: 12 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@100@01, 4)), $q0@121@01) | live]
(push) ; 5
; [then-branch: 12 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@100@01, 4)), $q0@121@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@121@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@100@01, 4)), $q0@121@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@121@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@121@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@121@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@121@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@121@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@121@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@700@11@700@360-aux|)))
(assert (forall (($q0@121@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@121@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@121@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@700@11@700@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])): Int))
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@123@01 Int)
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
(assert (forall (($q0@123@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@123@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 4)) $q0@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@701@11@701@268|)))
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
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@125@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
(push) ; 4
; [then-branch: 13 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@100@01, 5)), $q1@125@01)) | live]
; [else-branch: 13 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@100@01, 5)), $q1@125@01) | live]
(push) ; 5
; [then-branch: 13 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@100@01, 5)), $q1@125@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@125@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@100@01, 5)), $q1@125@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@125@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@125@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@125@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@125@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@125@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@125@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@702@11@702@360-aux|)))
(assert (forall (($q1@125@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@125@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@125@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@702@11@702@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int))
(declare-const $t@126@01 $Snap)
(assert (= $t@126@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@127@01 Int)
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
(assert (forall (($q1@127@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@127@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@100@01 5)) $q1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@703@11@703@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($pre_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@128@01 $Snap)
(assert (= $t@128@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int)
; [eval] $struct_loc($pre_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@100@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@129@01 $Snap)
(assert (= $t@129@01 ($Snap.combine ($Snap.first $t@129@01) ($Snap.second $t@129@01))))
(assert (= ($Snap.first $t@129@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@104@01 0))))
(assert (= ($Snap.second $t@129@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@104@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 ($Snap.combine ($Snap.first $t@130@01) ($Snap.second $t@130@01))))
(assert (= ($Snap.first $t@130@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@104@01 1))))
(assert (= ($Snap.second $t@130@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@104@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@131@01 $Snap)
(assert (= $t@131@01 ($Snap.combine ($Snap.first $t@131@01) ($Snap.second $t@131@01))))
(assert (= ($Snap.first $t@131@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@104@01 2))))
(assert (= ($Snap.second $t@131@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@104@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@104@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 ($Snap.combine ($Snap.first $t@133@01) ($Snap.second $t@133@01))))
(assert (= ($Snap.first $t@133@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@104@01 4))))
(assert (= ($Snap.second $t@133@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@104@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@104@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale $havoc >= 0
(declare-const $t@135@01 $Snap)
(assert (= $t@135@01 $Snap.unit))
; [eval] $havoc >= 0
(assert (>= $havoc@103@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@136@01 $Snap)
(assert (= $t@136@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@137@01 Int)
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
; inhale acc($accessible$withdraw(0, ($struct_get($struct_loc(self, 0)): Int),
;   ($struct_get($struct_loc(self, 1)): Int)), write)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const $t@138@01 $Snap)
; State saturation: after inhale
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
(declare-const self@139@01 $Struct)
(assert (=
  self@139@01
  ($struct_set<$Struct> self@98@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@98@01 1))
    $havoc@103@01))))
(pop) ; 2
(pop) ; 1
; ---------- f$__init__ ----------
(declare-const $succ@140@01 Bool)
(declare-const $succ@141@01 Bool)
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
(declare-const msg@142@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@143@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@144@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@145@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@146@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@147@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@148@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@149@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@150@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@151@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@152@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@153@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@154@01 Bool)
; [exec]
; var $first_public_state: Bool
(declare-const $first_public_state@155@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@156@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@157@01 Bool)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@158@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@159@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@160@01 $Snap)
(assert (= $t@160@01 ($Snap.combine ($Snap.first $t@160@01) ($Snap.second $t@160@01))))
(assert (= ($Snap.first $t@160@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@146@01 0))))
(assert (= ($Snap.second $t@160@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@146@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@161@01 $Snap)
(assert (= $t@161@01 ($Snap.combine ($Snap.first $t@161@01) ($Snap.second $t@161@01))))
(assert (= ($Snap.first $t@161@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@146@01 1))))
(assert (= ($Snap.second $t@161@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@146@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 ($Snap.combine ($Snap.first $t@162@01) ($Snap.second $t@162@01))))
(assert (= ($Snap.first $t@162@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@146@01 2))))
(assert (= ($Snap.second $t@162@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@146@01 2))
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
(declare-const $t@163@01 $Snap)
(assert (= $t@163@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@164@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@146@01, 4)), $q0@164@01)) | live]
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@146@01, 4)), $q0@164@01) | live]
(push) ; 5
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@146@01, 4)), $q0@164@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@164@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@146@01, 4)), $q0@164@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@164@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@164@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@164@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@164@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@164@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@164@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@164@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@744@11@744@345-aux|)))
(assert (forall (($q0@164@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@164@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@164@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@164@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@744@11@744@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@165@01 $Snap)
(assert (= $t@165@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@166@01 Int)
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
(assert (forall (($q0@166@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@166@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 4)) $q0@166@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@745@11@745@253|)))
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
(declare-const $t@167@01 $Snap)
(assert (= $t@167@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@168@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@146@01, 5)), $q1@168@01)) | live]
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@146@01, 5)), $q1@168@01) | live]
(push) ; 5
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@146@01, 5)), $q1@168@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@168@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@146@01, 5)), $q1@168@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@168@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@168@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@168@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@168@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@168@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@168@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@746@11@746@345-aux|)))
(assert (forall (($q1@168@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@168@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@168@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@746@11@746@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@169@01 $Snap)
(assert (= $t@169@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@170@01 Int)
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
(assert (forall (($q1@170@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@170@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@146@01 5)) $q1@170@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@747@11@747@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@171@01 $Snap)
(assert (= $t@171@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@146@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@172@01 $Snap)
(assert (= $t@172@01 ($Snap.combine ($Snap.first $t@172@01) ($Snap.second $t@172@01))))
(assert (= ($Snap.first $t@172@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@172@01) $Snap.unit))
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
(declare-const $t@173@01 $Snap)
(assert (= $t@173@01 ($Snap.combine ($Snap.first $t@173@01) ($Snap.second $t@173@01))))
(assert (= ($Snap.first $t@173@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@143@01 0))))
(assert (= ($Snap.second $t@173@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@143@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@174@01 $Snap)
(assert (= $t@174@01 ($Snap.combine ($Snap.first $t@174@01) ($Snap.second $t@174@01))))
(assert (= ($Snap.first $t@174@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@143@01 1))))
(assert (= ($Snap.second $t@174@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@143@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@175@01 $Snap)
(assert (= $t@175@01 ($Snap.combine ($Snap.first $t@175@01) ($Snap.second $t@175@01))))
(assert (= ($Snap.first $t@175@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@143@01 2))))
(assert (= ($Snap.second $t@175@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@143@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@176@01 $Snap)
(assert (= $t@176@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@143@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@177@01 $Snap)
(assert (= $t@177@01 ($Snap.combine ($Snap.first $t@177@01) ($Snap.second $t@177@01))))
(assert (= ($Snap.first $t@177@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@143@01 4))))
(assert (= ($Snap.second $t@177@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@143@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@143@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@179@01 $Snap)
(assert (= $t@179@01 ($Snap.combine ($Snap.first $t@179@01) ($Snap.second $t@179@01))))
(assert (= ($Snap.first $t@179@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@142@01 0))))
(assert (= ($Snap.second $t@179@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@142@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@180@01 $Snap)
(assert (= $t@180@01 ($Snap.combine ($Snap.first $t@180@01) ($Snap.second $t@180@01))))
(assert (= ($Snap.first $t@180@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@142@01 1))))
(assert (= ($Snap.second $t@180@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@142@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@181@01 $Snap)
(assert (= $t@181@01 ($Snap.combine ($Snap.first $t@181@01) ($Snap.second $t@181@01))))
(assert (= ($Snap.first $t@181@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@142@01 2))))
(assert (= ($Snap.second $t@181@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@142@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@182@01 $Snap)
(assert (= $t@182@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@142@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@183@01 $Snap)
(assert (= $t@183@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@142@01 0)) 0)))
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
(declare-const self@184@01 $Struct)
(assert (=
  self@184@01
  (s$struct$self$init<$Struct> 0 0 0 false ($map_init<$Map<Int~_Int>> 0) ($map_init<$Map<Int~_Int>> 0) false)))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@185@01 $Snap)
(assert (= $t@185@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@156@01 0))
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
(declare-const self@186@01 $Struct)
(assert (=
  self@186@01
  ($struct_set<$Struct> self@184@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@184@01 1))
    l$havoc@156@01))))
; [exec]
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@187@01 $Snap)
(assert (= $t@187@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@142@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(msg, 0)): Int)): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(msg, 0)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const self@188@01 $Struct)
(assert (=
  self@188@01
  ($struct_set<$Struct> self@186@01 0 ($struct_get<Int> ($struct_loc<Int> msg@142@01 0)))))
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@157@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@157@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | $out_of_gas@157@01 | live]
; [else-branch: 16 | !($out_of_gas@157@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 16 | $out_of_gas@157@01]
(assert $out_of_gas@157@01)
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
(declare-const $t@189@01 $Snap)
(assert (= $t@189@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@158@01 0))
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
(declare-const self@190@01 $Struct)
(assert (=
  self@190@01
  ($struct_set<$Struct> self@146@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@146@01 1))
    l$havoc$1@158@01))))
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
; [exec]
; assert $succ ==> true
; [eval] $succ ==> true
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
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 23 | False | dead]
; [else-branch: 23 | True | live]
(push) ; 4
; [else-branch: 23 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 16 | !($out_of_gas@157@01)]
(assert (not $out_of_gas@157@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@157@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@157@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | !($out_of_gas@157@01) | live]
; [else-branch: 24 | $out_of_gas@157@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 24 | !($out_of_gas@157@01)]
(assert (not $out_of_gas@157@01))
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
; [then-branch: 25 | True | live]
; [else-branch: 25 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | True]
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
; [then-branch: 26 | True | live]
; [else-branch: 26 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 26 | True]
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 0)): Int) ==>
;   ($struct_get($struct_loc(self, 1)): Int) >=
;   ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@142@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@188@01 0)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | $struct_get[Int]($struct_loc[Int](msg@142@01, 0)) != $struct_get[Int]($struct_loc[Int](self@188@01, 0)) | dead]
; [else-branch: 27 | $struct_get[Int]($struct_loc[Int](msg@142@01, 0)) == $struct_get[Int]($struct_loc[Int](self@188@01, 0)) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 27 | $struct_get[Int]($struct_loc[Int](msg@142@01, 0)) == $struct_get[Int]($struct_loc[Int](self@188@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@142@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@188@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@142@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@188@01 0))))
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@191@01 $Snap)
(assert (= $t@191@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@158@01 0))
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
(declare-const self@192@01 $Struct)
(assert (=
  self@192@01
  ($struct_set<$Struct> self@188@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@188@01 1))
    l$havoc$1@158@01))))
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
; [exec]
; assert $succ ==> true
; [eval] $succ ==> true
(push) ; 7
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
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 30 | False | dead]
; [else-branch: 30 | True | live]
(push) ; 6
; [else-branch: 30 | True]
(pop) ; 6
(pop) ; 5
; [eval] !$succ
; [then-branch: 31 | False | dead]
; [else-branch: 31 | True | live]
(push) ; 5
; [else-branch: 31 | True]
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 32 | False | dead]
; [else-branch: 32 | True | live]
(push) ; 4
; [else-branch: 32 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 24 | $out_of_gas@157@01]
(assert $out_of_gas@157@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$__default__ ----------
(declare-const $succ@193@01 Bool)
(declare-const $succ@194@01 Bool)
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
(declare-const msg@195@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@196@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@197@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@198@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@199@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@200@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@201@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@202@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@203@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@204@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@205@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@206@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@207@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@208@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@209@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@210@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@211@01 $Snap)
(assert (= $t@211@01 ($Snap.combine ($Snap.first $t@211@01) ($Snap.second $t@211@01))))
(assert (= ($Snap.first $t@211@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@199@01 0))))
(assert (= ($Snap.second $t@211@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@199@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@212@01 $Snap)
(assert (= $t@212@01 ($Snap.combine ($Snap.first $t@212@01) ($Snap.second $t@212@01))))
(assert (= ($Snap.first $t@212@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@199@01 1))))
(assert (= ($Snap.second $t@212@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@199@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 ($Snap.combine ($Snap.first $t@213@01) ($Snap.second $t@213@01))))
(assert (= ($Snap.first $t@213@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@199@01 2))))
(assert (= ($Snap.second $t@213@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@199@01 2))
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
(declare-const $t@214@01 $Snap)
(assert (= $t@214@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@215@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 33 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@199@01, 4)), $q0@215@01)) | live]
; [else-branch: 33 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@199@01, 4)), $q0@215@01) | live]
(push) ; 5
; [then-branch: 33 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@199@01, 4)), $q0@215@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@215@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 33 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@199@01, 4)), $q0@215@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@215@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@215@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@215@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@215@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@215@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@215@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@834@11@834@345-aux|)))
(assert (forall (($q0@215@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@215@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@215@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@834@11@834@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@216@01 $Snap)
(assert (= $t@216@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@217@01 Int)
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
(assert (forall (($q0@217@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@217@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 4)) $q0@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@835@11@835@253|)))
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
(declare-const $t@218@01 $Snap)
(assert (= $t@218@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@219@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 34 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@199@01, 5)), $q1@219@01)) | live]
; [else-branch: 34 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@199@01, 5)), $q1@219@01) | live]
(push) ; 5
; [then-branch: 34 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@199@01, 5)), $q1@219@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@219@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 34 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@199@01, 5)), $q1@219@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@219@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@219@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@219@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@219@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@219@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@219@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@219@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@836@11@836@345-aux|)))
(assert (forall (($q1@219@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@219@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@219@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@219@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@836@11@836@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@220@01 $Snap)
(assert (= $t@220@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@221@01 Int)
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
(assert (forall (($q1@221@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@221@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@199@01 5)) $q1@221@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@837@11@837@253|)))
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
  ($struct_get<Int> ($struct_loc<Int> self@199@01 (- 0 1)))
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
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@224@01 $Snap)
(assert (= $t@224@01 ($Snap.combine ($Snap.first $t@224@01) ($Snap.second $t@224@01))))
(assert (= ($Snap.first $t@224@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@196@01 0))))
(assert (= ($Snap.second $t@224@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@196@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 ($Snap.combine ($Snap.first $t@225@01) ($Snap.second $t@225@01))))
(assert (= ($Snap.first $t@225@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@196@01 1))))
(assert (= ($Snap.second $t@225@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@196@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@226@01 $Snap)
(assert (= $t@226@01 ($Snap.combine ($Snap.first $t@226@01) ($Snap.second $t@226@01))))
(assert (= ($Snap.first $t@226@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@196@01 2))))
(assert (= ($Snap.second $t@226@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@196@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@227@01 $Snap)
(assert (= $t@227@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@196@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@228@01 $Snap)
(assert (= $t@228@01 ($Snap.combine ($Snap.first $t@228@01) ($Snap.second $t@228@01))))
(assert (= ($Snap.first $t@228@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@196@01 4))))
(assert (= ($Snap.second $t@228@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@196@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@229@01 $Snap)
(assert (= $t@229@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@196@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@230@01 $Snap)
(assert (= $t@230@01 ($Snap.combine ($Snap.first $t@230@01) ($Snap.second $t@230@01))))
(assert (= ($Snap.first $t@230@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))))
(assert (= ($Snap.second $t@230@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@231@01 $Snap)
(assert (= $t@231@01 ($Snap.combine ($Snap.first $t@231@01) ($Snap.second $t@231@01))))
(assert (= ($Snap.first $t@231@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@195@01 1))))
(assert (= ($Snap.second $t@231@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@195@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@232@01 $Snap)
(assert (= $t@232@01 ($Snap.combine ($Snap.first $t@232@01) ($Snap.second $t@232@01))))
(assert (= ($Snap.first $t@232@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@195@01 2))))
(assert (= ($Snap.second $t@232@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@195@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@233@01 $Snap)
(assert (= $t@233@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@195@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@234@01 $Snap)
(assert (= $t@234@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@195@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@235@01 $Snap)
(assert (= $t@235@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@236@01 Int)
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
; inhale true
(declare-const $t@237@01 $Snap)
(assert (= $t@237@01 $Snap.unit))
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
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) +
;   ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) + ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@238@01 $Struct)
(assert (=
  self@238@01
  ($struct_set<$Struct> self@199@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@199@01 1))
    ($struct_get<Int> ($struct_loc<Int> msg@195@01 1))))))
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
(declare-const self@239@01 $Struct)
(assert (=
  self@239@01
  ($struct_set<$Struct> self@238@01 5 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@238@01 5)) ($struct_get<Int> ($struct_loc<Int> msg@195@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@238@01 5)) ($struct_get<Int> ($struct_loc<Int> msg@195@01 0)))
    ($struct_get<Int> ($struct_loc<Int> msg@195@01 1)))))))
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@208@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@208@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | $out_of_gas@208@01 | live]
; [else-branch: 35 | !($out_of_gas@208@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 35 | $out_of_gas@208@01]
(assert $out_of_gas@208@01)
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
; [then-branch: 36 | False | dead]
; [else-branch: 36 | True | live]
(push) ; 4
; [else-branch: 36 | True]
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
; [then-branch: 37 | True | live]
; [else-branch: 37 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 37 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 0)): Int) ==>
;   ($struct_get($struct_loc(self, 1)): Int) >=
;   ($struct_get($struct_loc($old_self, 1)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@199@01 0)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@199@01 0))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | $struct_get[Int]($struct_loc[Int](msg@195@01, 0)) != $struct_get[Int]($struct_loc[Int](self@199@01, 0)) | live]
; [else-branch: 38 | $struct_get[Int]($struct_loc[Int](msg@195@01, 0)) == $struct_get[Int]($struct_loc[Int](self@199@01, 0)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 38 | $struct_get[Int]($struct_loc[Int](msg@195@01, 0)) != $struct_get[Int]($struct_loc[Int](self@199@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@199@01 0)))))
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] $struct_loc($old_self, 1)
(pop) ; 6
(push) ; 6
; [else-branch: 38 | $struct_get[Int]($struct_loc[Int](msg@195@01, 0)) == $struct_get[Int]($struct_loc[Int](self@199@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@199@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@199@01 0)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@199@01 0))))))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@240@01 $Snap)
(assert (= $t@240@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@209@01 0))
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
(declare-const self@241@01 $Struct)
(assert (=
  self@241@01
  ($struct_set<$Struct> self@199@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@199@01 1))
    l$havoc@209@01))))
; [exec]
; $contracts := l$havoc$1
; [exec]
; assert true
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 35 | !($out_of_gas@208@01)]
(assert (not $out_of_gas@208@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@208@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@208@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | !($out_of_gas@208@01) | live]
; [else-branch: 39 | $out_of_gas@208@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 39 | !($out_of_gas@208@01)]
(assert (not $out_of_gas@208@01))
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
; [then-branch: 40 | True | live]
; [else-branch: 40 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 40 | True]
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 0)): Int) ==>
;   ($struct_get($struct_loc(self, 1)): Int) >=
;   ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@239@01 0)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@239@01 0))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | $struct_get[Int]($struct_loc[Int](msg@195@01, 0)) != $struct_get[Int]($struct_loc[Int](self@239@01, 0)) | live]
; [else-branch: 41 | $struct_get[Int]($struct_loc[Int](msg@195@01, 0)) == $struct_get[Int]($struct_loc[Int](self@239@01, 0)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 41 | $struct_get[Int]($struct_loc[Int](msg@195@01, 0)) != $struct_get[Int]($struct_loc[Int](self@239@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@239@01 0)))))
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] $struct_loc($old_self, 1)
(pop) ; 6
(push) ; 6
; [else-branch: 41 | $struct_get[Int]($struct_loc[Int](msg@195@01, 0)) == $struct_get[Int]($struct_loc[Int](self@239@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@239@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@239@01 0)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@239@01 0))))))
(push) ; 5
(assert (not (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@239@01 0))))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@239@01 1))
    ($struct_get<Int> ($struct_loc<Int> self@199@01 1))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@195@01 0))
      ($struct_get<Int> ($struct_loc<Int> self@239@01 0))))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@239@01 1))
    ($struct_get<Int> ($struct_loc<Int> self@199@01 1)))))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@242@01 $Snap)
(assert (= $t@242@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@209@01 0))
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
(declare-const self@243@01 $Struct)
(assert (=
  self@243@01
  ($struct_set<$Struct> self@239@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@239@01 1))
    l$havoc@209@01))))
; [exec]
; $contracts := l$havoc$1
; [exec]
; assert true
(pop) ; 4
; [eval] !$succ
; [then-branch: 42 | False | dead]
; [else-branch: 42 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 42 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 39 | $out_of_gas@208@01]
(assert $out_of_gas@208@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$withdraw ----------
(declare-const $succ@244@01 Bool)
(declare-const $succ@245@01 Bool)
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
(declare-const msg@246@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@247@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@248@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@249@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@250@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@251@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@252@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@253@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@254@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@255@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@256@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@257@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@258@01 Bool)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@259@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@260@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@261@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@262@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@263@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@264@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@265@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@266@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@267@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@268@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@269@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@270@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@271@01 $Map<Int~_$Struct>)
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
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))
(assert (= ($Snap.second $t@272@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@250@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@273@01 $Snap)
(assert (= $t@273@01 ($Snap.combine ($Snap.first $t@273@01) ($Snap.second $t@273@01))))
(assert (= ($Snap.first $t@273@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
(assert (= ($Snap.second $t@273@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@250@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@274@01 $Snap)
(assert (= $t@274@01 ($Snap.combine ($Snap.first $t@274@01) ($Snap.second $t@274@01))))
(assert (= ($Snap.first $t@274@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@250@01 2))))
(assert (= ($Snap.second $t@274@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@250@01 2))
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
(declare-const $t@275@01 $Snap)
(assert (= $t@275@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@276@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 43 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@250@01, 4)), $q0@276@01)) | live]
; [else-branch: 43 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@250@01, 4)), $q0@276@01) | live]
(push) ; 5
; [then-branch: 43 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@250@01, 4)), $q0@276@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@276@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 43 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@250@01, 4)), $q0@276@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@276@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@276@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@276@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@276@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@276@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@276@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@928@11@928@345-aux|)))
(assert (forall (($q0@276@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@276@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@276@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@928@11@928@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@278@01 Int)
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
(assert (forall (($q0@278@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@278@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) $q0@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@929@11@929@253|)))
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
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@280@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 44 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@250@01, 5)), $q1@280@01)) | live]
; [else-branch: 44 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@250@01, 5)), $q1@280@01) | live]
(push) ; 5
; [then-branch: 44 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@250@01, 5)), $q1@280@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@280@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 44 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@250@01, 5)), $q1@280@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@280@01)))
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
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@280@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@280@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@280@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@280@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@280@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@280@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@930@11@930@345-aux|)))
(assert (forall (($q1@280@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@280@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@280@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@280@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@930@11@930@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@281@01 $Snap)
(assert (= $t@281@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@282@01 Int)
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
(assert (forall (($q1@282@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@282@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 5)) $q1@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@931@11@931@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@283@01 $Snap)
(assert (= $t@283@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@250@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@284@01 $Snap)
(assert (= $t@284@01 ($Snap.combine ($Snap.first $t@284@01) ($Snap.second $t@284@01))))
(assert (= ($Snap.first $t@284@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@284@01) $Snap.unit))
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
(declare-const $t@285@01 $Snap)
(assert (= $t@285@01 ($Snap.combine ($Snap.first $t@285@01) ($Snap.second $t@285@01))))
(assert (= ($Snap.first $t@285@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@247@01 0))))
(assert (= ($Snap.second $t@285@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@247@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@286@01 $Snap)
(assert (= $t@286@01 ($Snap.combine ($Snap.first $t@286@01) ($Snap.second $t@286@01))))
(assert (= ($Snap.first $t@286@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@247@01 1))))
(assert (= ($Snap.second $t@286@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@247@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@287@01 $Snap)
(assert (= $t@287@01 ($Snap.combine ($Snap.first $t@287@01) ($Snap.second $t@287@01))))
(assert (= ($Snap.first $t@287@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@247@01 2))))
(assert (= ($Snap.second $t@287@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@247@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@288@01 $Snap)
(assert (= $t@288@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@247@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@289@01 $Snap)
(assert (= $t@289@01 ($Snap.combine ($Snap.first $t@289@01) ($Snap.second $t@289@01))))
(assert (= ($Snap.first $t@289@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@247@01 4))))
(assert (= ($Snap.second $t@289@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@247@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@290@01 $Snap)
(assert (= $t@290@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@247@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@291@01 $Snap)
(assert (= $t@291@01 ($Snap.combine ($Snap.first $t@291@01) ($Snap.second $t@291@01))))
(assert (= ($Snap.first $t@291@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
(assert (= ($Snap.second $t@291@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@292@01 $Snap)
(assert (= $t@292@01 ($Snap.combine ($Snap.first $t@292@01) ($Snap.second $t@292@01))))
(assert (= ($Snap.first $t@292@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@246@01 1))))
(assert (= ($Snap.second $t@292@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@293@01 $Snap)
(assert (= $t@293@01 ($Snap.combine ($Snap.first $t@293@01) ($Snap.second $t@293@01))))
(assert (= ($Snap.first $t@293@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@246@01 2))))
(assert (= ($Snap.second $t@293@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@294@01 $Snap)
(assert (= $t@294@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@295@01 $Snap)
(assert (= $t@295@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@296@01 $Snap)
(assert (= $t@296@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@297@01 Int)
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
; inhale acc($accessible$withdraw(0, ($struct_get($struct_loc(self, 0)): Int),
;   ($struct_get($struct_loc(self, 1)): Int)), write)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const $t@298@01 $Snap)
(declare-const sm@299@01 $PSF<$accessible$withdraw>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> self@250@01 1)))))
  $t@298@01))
(assert (<=
  $Perm.No
  (ite
    (and
      (= 0 0)
      (=
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    $Perm.Write
    $Perm.No)))
(declare-const sm@300@01 $PSF<$accessible$withdraw>)
(declare-const s@301@01 $Snap)
; Definitional axioms for snapshot map values
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@300@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))
  ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))
  ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))))
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
(declare-const $t@302@01 $Snap)
(assert (= $t@302@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@246@01 1)) 0))
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
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
; [else-branch: 45 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 45 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))))
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
; exhale ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   !($out_of_gas ||
;   ($out_of_gas ||
;   perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==>
;   $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(push) ; 4
; [then-branch: 46 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
; [else-branch: 46 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
(push) ; 5
; [else-branch: 46 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [exec]
; exhale $succ ==>
;   ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) -
;   ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) >=
;   ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $succ ==> ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= ($struct_get($struct_loc($pre_self, 1)): Int)
(push) ; 4
; [then-branch: 47 | False | dead]
; [else-branch: 47 | True | live]
(push) ; 5
; [else-branch: 47 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [then-branch: 48 | False | dead]
; [else-branch: 48 | True | live]
(push) ; 4
; [else-branch: 48 | True]
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
; [then-branch: 49 | True | live]
; [else-branch: 49 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 49 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 0)): Int) ==>
;   ($struct_get($struct_loc(self, 1)): Int) >=
;   ($struct_get($struct_loc($old_self, 1)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 50 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
; [else-branch: 50 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 50 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] $struct_loc($old_self, 1)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@303@01 $Snap)
(assert (= $t@303@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@270@01 0))
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
(declare-const self@304@01 $Struct)
(assert (=
  self@304@01
  ($struct_set<$Struct> self@250@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@250@01 1))
    l$havoc$6@270@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert true
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) >
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
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@305@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const sm@306@01 $PSF<$accessible$withdraw>)
(declare-const s@307@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@307@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@307@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@307@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@307@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@307@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) s@307@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@307@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) s@307@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@307@01))
  :qid |qp.psmValDef1|)))
(assert (forall ((s@307@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@307@01) s@307@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) s@307@01))
  :qid |qp.psmResTrgDef2|)))
(declare-const pm@308@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef3|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef4|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@305@01))) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@305@01))))
(push) ; 6
; [then-branch: 51 | PredicatePermLookup($accessible$withdraw, pm@308@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@305@01)) > Z | live]
; [else-branch: 51 | !(PredicatePermLookup($accessible$withdraw, pm@308@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@305@01)) > Z) | live]
(push) ; 7
; [then-branch: 51 | PredicatePermLookup($accessible$withdraw, pm@308@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@305@01)) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@305@01)))
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
; [then-branch: 52 | False | live]
; [else-branch: 52 | True | live]
(push) ; 9
; [then-branch: 52 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 52 | True]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | !($out_of_gas@269@01) | dead]
; [else-branch: 53 | $out_of_gas@269@01 | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 53 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert $out_of_gas@269@01)
(push) ; 8
; [then-branch: 54 | False | live]
; [else-branch: 54 | True | live]
(push) ; 9
; [then-branch: 54 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 54 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 10
; [then-branch: 55 | False | dead]
; [else-branch: 55 | True | live]
(push) ; 11
; [else-branch: 55 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(push) ; 7
; [else-branch: 51 | !(PredicatePermLookup($accessible$withdraw, pm@308@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@305@01)) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@305@01)))
    $Perm.No)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (>
    ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@305@01)))
    $Perm.No)
  (and
    (>
      ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@305@01)))
      $Perm.No)
    $out_of_gas@269@01)))
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@305@01)))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@305@01)))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((s@307@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@307@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@307@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@307@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@307@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) s@307@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@307@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) s@307@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@307@01))
  :qid |qp.psmValDef1|)))
(assert (forall ((s@307@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@307@01) s@307@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) s@307@01))
  :qid |qp.psmResTrgDef2|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef3|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef4|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@305@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@305@01))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@305@01)))
    (=>
      (>
        ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
          ($SortWrappers.IntTo$Snap $a@305@01)))
        $Perm.No)
      (and
        (>
          ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
            ($SortWrappers.IntTo$Snap $a@305@01)))
          $Perm.No)
        $out_of_gas@269@01))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
            ($SortWrappers.IntTo$Snap $a@305@01)))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@308@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
          ($SortWrappers.IntTo$Snap $a@305@01)))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@306@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@305@01))) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@305@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1058@11@1058@527-aux|)))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 45 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
; [else-branch: 56 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 56 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))
; [eval] ($struct_get($struct_loc(self, 1)): Int) < ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [then-branch: 57 | False | dead]
; [else-branch: 57 | True | live]
(push) ; 4
; [else-branch: 57 | True]
(pop) ; 4
; [eval] !(($struct_get($struct_loc(self, 1)): Int) < ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int) < ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
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
; self := ($struct_set(self, 4, ($map_set(($struct_get($struct_loc(self, 4)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 4, ($map_set(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 1)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@309@01 $Struct)
(assert (=
  self@309@01
  ($struct_set<$Struct> self@250@01 4 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 1)))))))
; [exec]
; self := ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) -
;   ($struct_get($struct_loc(self, 1)): Int)): $Struct)
; [eval] ($struct_set(self, 1, ($struct_get($struct_loc(self, 1)): Int) - ($struct_get($struct_loc(self, 1)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 1)): Int) - ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@310@01 $Struct)
(assert (= self@310@01 ($struct_set<$Struct> self@309@01 1 0)))
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 0)): Int) ==>
;   ($struct_get($struct_loc(self, 1)): Int) >=
;   ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@310@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@310@01, 0)) | dead]
; [else-branch: 59 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@310@01, 0)) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 59 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@310@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@310@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@310@01 0))))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
; [exec]
; assert true
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$send_fail@260@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not l$send_fail@260@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 60 | l$send_fail@260@01 | live]
; [else-branch: 60 | !(l$send_fail@260@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 60 | l$send_fail@260@01]
(assert l$send_fail@260@01)
; [exec]
; inhale acc($failed(($struct_get($struct_loc(msg, 0)): Int)), write)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const $t@311@01 $Snap)
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
; [exec]
; exhale ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   !($out_of_gas ||
;   ($out_of_gas ||
;   perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==>
;   $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
; [else-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
; [eval] !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none))
; [eval] $out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)
(push) ; 8
; [then-branch: 62 | $out_of_gas@269@01 | live]
; [else-branch: 62 | !($out_of_gas@269@01) | live]
(push) ; 9
; [then-branch: 62 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
(pop) ; 9
(push) ; 9
; [else-branch: 62 | !($out_of_gas@269@01)]
(assert (not $out_of_gas@269@01))
(push) ; 10
; [then-branch: 63 | $out_of_gas@269@01 | live]
; [else-branch: 63 | !($out_of_gas@269@01) | live]
(push) ; 11
; [then-branch: 63 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
(pop) ; 11
(push) ; 11
; [else-branch: 63 | !($out_of_gas@269@01)]
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not $out_of_gas@269@01) $out_of_gas@269@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (not $out_of_gas@269@01)
  (and (not $out_of_gas@269@01) (or (not $out_of_gas@269@01) $out_of_gas@269@01))))
(assert (or (not $out_of_gas@269@01) $out_of_gas@269@01))
(push) ; 8
; [then-branch: 64 | False | dead]
; [else-branch: 64 | True | live]
(push) ; 9
; [else-branch: 64 | True]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
  (and
    (=>
      (not $out_of_gas@269@01)
      (and
        (not $out_of_gas@269@01)
        (or (not $out_of_gas@269@01) $out_of_gas@269@01)))
    (or (not $out_of_gas@269@01) $out_of_gas@269@01))))
; [exec]
; exhale $succ ==>
;   ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) -
;   ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) >=
;   ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $succ ==> ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= ($struct_get($struct_loc($pre_self, 1)): Int)
(push) ; 6
; [then-branch: 65 | False | dead]
; [else-branch: 65 | True | live]
(push) ; 7
; [else-branch: 65 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [then-branch: 66 | False | dead]
; [else-branch: 66 | True | live]
(push) ; 6
; [else-branch: 66 | True]
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
; [then-branch: 67 | True | live]
; [else-branch: 67 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 67 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 0)): Int) ==>
;   ($struct_get($struct_loc(self, 1)): Int) >=
;   ($struct_get($struct_loc($old_self, 1)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 7
; [then-branch: 68 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
; [else-branch: 68 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
(push) ; 8
; [else-branch: 68 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@312@01 $Snap)
(assert (= $t@312@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@270@01 0))
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
(declare-const self@313@01 $Struct)
(assert (=
  self@313@01
  ($struct_set<$Struct> self@250@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@250@01 1))
    l$havoc$6@270@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert true
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) >
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
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@314@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const sm@315@01 $PSF<$accessible$withdraw>)
(declare-const s@316@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@316@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@316@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@316@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@316@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@316@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) s@316@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@316@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) s@316@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@316@01))
  :qid |qp.psmValDef5|)))
(assert (forall ((s@316@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@316@01) s@316@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) s@316@01))
  :qid |qp.psmResTrgDef6|)))
(declare-const pm@317@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef7|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef8|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@314@01))) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@314@01))))
(push) ; 8
; [then-branch: 69 | PredicatePermLookup($accessible$withdraw, pm@317@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@314@01)) > Z | live]
; [else-branch: 69 | !(PredicatePermLookup($accessible$withdraw, pm@317@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@314@01)) > Z) | live]
(push) ; 9
; [then-branch: 69 | PredicatePermLookup($accessible$withdraw, pm@317@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@314@01)) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@314@01)))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 10
; [then-branch: 70 | False | dead]
; [else-branch: 70 | True | live]
(push) ; 11
; [else-branch: 70 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
(push) ; 10
; [then-branch: 71 | False | live]
; [else-branch: 71 | True | live]
(push) ; 11
; [then-branch: 71 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 71 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 12
; [then-branch: 72 | False | dead]
; [else-branch: 72 | True | live]
(push) ; 13
; [else-branch: 72 | True]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(push) ; 9
; [else-branch: 69 | !(PredicatePermLookup($accessible$withdraw, pm@317@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@314@01)) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@314@01)))
    $Perm.No)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@314@01)))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@314@01)))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((s@316@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@316@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@316@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@316@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@316@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) s@316@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@316@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) s@316@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@316@01))
  :qid |qp.psmValDef5|)))
(assert (forall ((s@316@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@316@01) s@316@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) s@316@01))
  :qid |qp.psmResTrgDef6|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef7|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef8|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@314@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@314@01))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@314@01)))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
            ($SortWrappers.IntTo$Snap $a@314@01)))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@317@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
          ($SortWrappers.IntTo$Snap $a@314@01)))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@315@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@314@01))) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@314@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1058@11@1058@527-aux|)))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 60 | !(l$send_fail@260@01)]
(assert (not l$send_fail@260@01))
(pop) ; 5
; [eval] !l$send_fail
(push) ; 5
(set-option :timeout 10)
(assert (not l$send_fail@260@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$send_fail@260@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 73 | !(l$send_fail@260@01) | live]
; [else-branch: 73 | l$send_fail@260@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 73 | !(l$send_fail@260@01)]
(assert (not l$send_fail@260@01))
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
(declare-const $t@318@01 $Snap)
(assert (= $t@318@01 ($Snap.combine ($Snap.first $t@318@01) ($Snap.second $t@318@01))))
(assert (= ($Snap.first $t@318@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 0))))
(assert (= ($Snap.second $t@318@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@319@01 $Snap)
(assert (= $t@319@01 ($Snap.combine ($Snap.first $t@319@01) ($Snap.second $t@319@01))))
(assert (= ($Snap.first $t@319@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 1))))
(assert (= ($Snap.second $t@319@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@320@01 $Snap)
(assert (= $t@320@01 ($Snap.combine ($Snap.first $t@320@01) ($Snap.second $t@320@01))))
(assert (= ($Snap.first $t@320@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 2))))
(assert (= ($Snap.second $t@320@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 2))
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
(declare-const $t@321@01 $Snap)
(assert (= $t@321@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@322@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 7
; [then-branch: 74 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@264@01, 4)), $q0@322@01)) | live]
; [else-branch: 74 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@264@01, 4)), $q0@322@01) | live]
(push) ; 8
; [then-branch: 74 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@264@01, 4)), $q0@322@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@322@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 74 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@264@01, 4)), $q0@322@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@322@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@322@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@322@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@322@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@322@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@322@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@322@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1000@11@1000@345-aux|)))
(assert (forall (($q0@322@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@322@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@322@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@322@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1000@11@1000@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@323@01 $Snap)
(assert (= $t@323@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q0@324@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@324@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@324@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $q0@324@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1001@11@1001@253|)))
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
(declare-const $t@325@01 $Snap)
(assert (= $t@325@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@326@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 7
; [then-branch: 75 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@264@01, 5)), $q1@326@01)) | live]
; [else-branch: 75 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@264@01, 5)), $q1@326@01) | live]
(push) ; 8
; [then-branch: 75 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@264@01, 5)), $q1@326@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@326@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 75 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@264@01, 5)), $q1@326@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@326@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@326@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@326@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@326@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@326@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@326@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@326@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1002@11@1002@345-aux|)))
(assert (forall (($q1@326@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@326@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@326@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@326@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1002@11@1002@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@327@01 $Snap)
(assert (= $t@327@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q1@328@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@328@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@328@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 5)) $q1@328@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1003@11@1003@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@329@01 $Snap)
(assert (= $t@329@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $t@330@01 $Snap)
(assert (= $t@330@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 4)): $Map[Int, Int]), $a): Int))
(declare-const $a@331@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 4)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 4)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@331@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $a@331@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@310@01 4)) $a@331@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) $a@331@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1006@11@1006@259|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@332@01 $Snap)
(assert (= $t@332@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@266@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not l$no_reentrant_call@266@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 76 | l$no_reentrant_call@266@01 | live]
; [else-branch: 76 | !(l$no_reentrant_call@266@01) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 76 | l$no_reentrant_call@266@01]
(assert l$no_reentrant_call@266@01)
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
(assert (not (not $out_of_gas@269@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 77 | $out_of_gas@269@01 | live]
; [else-branch: 77 | !($out_of_gas@269@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 77 | $out_of_gas@269@01]
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
; [exec]
; exhale ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   !($out_of_gas ||
;   ($out_of_gas ||
;   perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==>
;   $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
; [else-branch: 78 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 78 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
; [eval] !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none))
; [eval] $out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)
(push) ; 10
; [then-branch: 79 | $out_of_gas@269@01 | live]
; [else-branch: 79 | !($out_of_gas@269@01) | live]
(push) ; 11
; [then-branch: 79 | $out_of_gas@269@01]
(pop) ; 11
(push) ; 11
; [else-branch: 79 | !($out_of_gas@269@01)]
(assert (not $out_of_gas@269@01))
(push) ; 12
; [then-branch: 80 | $out_of_gas@269@01 | live]
; [else-branch: 80 | !($out_of_gas@269@01) | live]
(push) ; 13
; [then-branch: 80 | $out_of_gas@269@01]
(pop) ; 13
(push) ; 13
; [else-branch: 80 | !($out_of_gas@269@01)]
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (not $out_of_gas@269@01) $out_of_gas@269@01))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not $out_of_gas@269@01)
  (and (not $out_of_gas@269@01) (or (not $out_of_gas@269@01) $out_of_gas@269@01))))
(assert (or (not $out_of_gas@269@01) $out_of_gas@269@01))
(push) ; 10
; [then-branch: 81 | !($out_of_gas@269@01) | dead]
; [else-branch: 81 | $out_of_gas@269@01 | live]
(push) ; 11
; [else-branch: 81 | $out_of_gas@269@01]
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
  (and
    (=>
      (not $out_of_gas@269@01)
      (and
        (not $out_of_gas@269@01)
        (or (not $out_of_gas@269@01) $out_of_gas@269@01)))
    (or (not $out_of_gas@269@01) $out_of_gas@269@01))))
; [exec]
; exhale $succ ==>
;   ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) -
;   ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) >=
;   ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $succ ==> ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= ($struct_get($struct_loc($pre_self, 1)): Int)
(push) ; 8
; [then-branch: 82 | False | dead]
; [else-branch: 82 | True | live]
(push) ; 9
; [else-branch: 82 | True]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [then-branch: 83 | False | dead]
; [else-branch: 83 | True | live]
(push) ; 8
; [else-branch: 83 | True]
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
; [then-branch: 84 | True | live]
; [else-branch: 84 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 84 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 0)): Int) ==>
;   ($struct_get($struct_loc(self, 1)): Int) >=
;   ($struct_get($struct_loc($old_self, 1)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 9
; [then-branch: 85 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
; [else-branch: 85 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
(push) ; 10
; [else-branch: 85 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@333@01 $Snap)
(assert (= $t@333@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@270@01 0))
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
(declare-const self@334@01 $Struct)
(assert (=
  self@334@01
  ($struct_set<$Struct> self@250@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@250@01 1))
    l$havoc$6@270@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert true
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) >
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
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@335@01 Int)
(set-option :timeout 0)
(push) ; 9
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const sm@336@01 $PSF<$accessible$withdraw>)
(declare-const s@337@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@337@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@337@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@337@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@337@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@337@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) s@337@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@337@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) s@337@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@337@01))
  :qid |qp.psmValDef9|)))
(assert (forall ((s@337@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@337@01) s@337@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) s@337@01))
  :qid |qp.psmResTrgDef10|)))
(declare-const pm@338@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef11|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef12|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@335@01))) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@335@01))))
(push) ; 10
; [then-branch: 86 | PredicatePermLookup($accessible$withdraw, pm@338@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@335@01)) > Z | live]
; [else-branch: 86 | !(PredicatePermLookup($accessible$withdraw, pm@338@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@335@01)) > Z) | live]
(push) ; 11
; [then-branch: 86 | PredicatePermLookup($accessible$withdraw, pm@338@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@335@01)) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@335@01)))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 12
; [then-branch: 87 | False | live]
; [else-branch: 87 | True | live]
(push) ; 13
; [then-branch: 87 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 87 | True]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 88 | !($out_of_gas@269@01) | dead]
; [else-branch: 88 | $out_of_gas@269@01 | live]
(push) ; 13
; [else-branch: 88 | $out_of_gas@269@01]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(push) ; 12
; [then-branch: 89 | False | live]
; [else-branch: 89 | True | live]
(push) ; 13
; [then-branch: 89 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 89 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 14
; [then-branch: 90 | False | dead]
; [else-branch: 90 | True | live]
(push) ; 15
; [else-branch: 90 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(push) ; 11
; [else-branch: 86 | !(PredicatePermLookup($accessible$withdraw, pm@338@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@335@01)) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@335@01)))
    $Perm.No)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@335@01)))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@335@01)))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 9
; Nested auxiliary terms: globals (aux)
(assert (forall ((s@337@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@337@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@337@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@337@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@337@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) s@337@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@337@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) s@337@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@337@01))
  :qid |qp.psmValDef9|)))
(assert (forall ((s@337@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@337@01) s@337@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) s@337@01))
  :qid |qp.psmResTrgDef10|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef11|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef12|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@335@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@335@01))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@335@01)))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
            ($SortWrappers.IntTo$Snap $a@335@01)))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@338@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
          ($SortWrappers.IntTo$Snap $a@335@01)))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@336@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@335@01))) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@335@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1058@11@1058@527-aux|)))
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 77 | !($out_of_gas@269@01)]
(assert (not $out_of_gas@269@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@269@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 91 | !($out_of_gas@269@01) | live]
; [else-branch: 91 | $out_of_gas@269@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 91 | !($out_of_gas@269@01)]
(assert (not $out_of_gas@269@01))
; [exec]
; label end
; [exec]
; exhale ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   !($out_of_gas ||
;   ($out_of_gas ||
;   perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==>
;   $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 92 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
; [else-branch: 92 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 92 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
; [eval] !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none))
; [eval] $out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)
(push) ; 10
; [then-branch: 93 | $out_of_gas@269@01 | live]
; [else-branch: 93 | !($out_of_gas@269@01) | live]
(push) ; 11
; [then-branch: 93 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
(pop) ; 11
(push) ; 11
; [else-branch: 93 | !($out_of_gas@269@01)]
(push) ; 12
; [then-branch: 94 | $out_of_gas@269@01 | live]
; [else-branch: 94 | !($out_of_gas@269@01) | live]
(push) ; 13
; [then-branch: 94 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
(pop) ; 13
(push) ; 13
; [else-branch: 94 | !($out_of_gas@269@01)]
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (not $out_of_gas@269@01) $out_of_gas@269@01))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=> (not $out_of_gas@269@01) (or (not $out_of_gas@269@01) $out_of_gas@269@01)))
(assert (or (not $out_of_gas@269@01) $out_of_gas@269@01))
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 95 | !($out_of_gas@269@01) | live]
; [else-branch: 95 | $out_of_gas@269@01 | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 95 | !($out_of_gas@269@01)]
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
  (and
    (=>
      (not $out_of_gas@269@01)
      (or (not $out_of_gas@269@01) $out_of_gas@269@01))
    (or (not $out_of_gas@269@01) $out_of_gas@269@01))))
; [exec]
; exhale $succ ==>
;   ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) -
;   ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) >=
;   ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $succ ==> ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= ($struct_get($struct_loc($pre_self, 1)): Int)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | True | live]
; [else-branch: 96 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 96 | True]
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 97 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
; [else-branch: 97 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 97 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= ($struct_get($struct_loc($pre_self, 1)): Int)
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
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (=>
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
  (>=
    (-
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@310@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)))
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
  (>=
    (-
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@310@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)))
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 1)))))
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | True | live]
; [else-branch: 98 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 98 | True]
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 0)): Int) ==>
;   ($struct_get($struct_loc(self, 1)): Int) >=
;   ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 9
; [then-branch: 99 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@310@01, 0)) | dead]
; [else-branch: 99 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@310@01, 0)) | live]
(push) ; 10
; [else-branch: 99 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@310@01, 0))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@339@01 $Snap)
(assert (= $t@339@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@270@01 0))
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
(declare-const self@340@01 $Struct)
(assert (=
  self@340@01
  ($struct_set<$Struct> self@310@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@310@01 1))
    l$havoc$6@270@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert true
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) >
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
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@341@01 Int)
(set-option :timeout 0)
(push) ; 9
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const sm@342@01 $PSF<$accessible$withdraw>)
(declare-const s@343@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@343@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@343@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@343@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@343@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@343@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) s@343@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@343@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) s@343@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@343@01))
  :qid |qp.psmValDef13|)))
(assert (forall ((s@343@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@343@01) s@343@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) s@343@01))
  :qid |qp.psmResTrgDef14|)))
(declare-const pm@344@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef15|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef16|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@341@01))) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@341@01))))
(push) ; 10
; [then-branch: 100 | PredicatePermLookup($accessible$withdraw, pm@344@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@341@01)) > Z | live]
; [else-branch: 100 | !(PredicatePermLookup($accessible$withdraw, pm@344@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@341@01)) > Z) | live]
(push) ; 11
; [then-branch: 100 | PredicatePermLookup($accessible$withdraw, pm@344@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@341@01)) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@341@01)))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 12
; [then-branch: 101 | False | live]
; [else-branch: 101 | True | live]
(push) ; 13
; [then-branch: 101 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 101 | True]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 102 | !($out_of_gas@269@01) | live]
; [else-branch: 102 | $out_of_gas@269@01 | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 102 | !($out_of_gas@269@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(push) ; 12
; [then-branch: 103 | False | live]
; [else-branch: 103 | True | live]
(push) ; 13
; [then-branch: 103 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 103 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 104 | True | live]
; [else-branch: 104 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 104 | True]
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
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(push) ; 11
; [else-branch: 100 | !(PredicatePermLookup($accessible$withdraw, pm@344@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@341@01)) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@341@01)))
    $Perm.No)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@341@01)))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@341@01)))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 9
; Nested auxiliary terms: globals (aux)
(assert (forall ((s@343@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@343@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@343@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@343@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@343@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) s@343@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@343@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) s@343@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@343@01))
  :qid |qp.psmValDef13|)))
(assert (forall ((s@343@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@343@01) s@343@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) s@343@01))
  :qid |qp.psmResTrgDef14|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef15|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef16|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@341@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@341@01))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@341@01)))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
            ($SortWrappers.IntTo$Snap $a@341@01)))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
          ($SortWrappers.IntTo$Snap $a@341@01)))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@341@01))) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@341@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1058@11@1058@527-aux|)))
(push) ; 9
(assert (not (forall (($a@341@01 Int)) (!
  (=>
    (>
      ($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@341@01)))
      $Perm.No)
    (>=
      (-
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@340@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)))
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      $a@341@01))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@341@01))) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@341@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1058@11@1058@527|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (forall (($a@341@01 Int)) (!
  (=>
    (>
      ($PSF.perm_$accessible$withdraw (as pm@344@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@341@01)))
      $Perm.No)
    (>=
      (-
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@340@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)))
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      $a@341@01))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@342@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@341@01))) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@341@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1058@11@1058@527|)))
(pop) ; 8
; [eval] !$succ
; [then-branch: 105 | False | dead]
; [else-branch: 105 | True | live]
(push) ; 8
; [else-branch: 105 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 91 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 76 | !(l$no_reentrant_call@266@01)]
(assert (not l$no_reentrant_call@266@01))
(pop) ; 6
; [eval] !l$no_reentrant_call
(push) ; 6
(set-option :timeout 10)
(assert (not l$no_reentrant_call@266@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@266@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | !(l$no_reentrant_call@266@01) | live]
; [else-branch: 106 | l$no_reentrant_call@266@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 106 | !(l$no_reentrant_call@266@01)]
(assert (not l$no_reentrant_call@266@01))
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
(assert (not (not $out_of_gas@269@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 107 | $out_of_gas@269@01 | live]
; [else-branch: 107 | !($out_of_gas@269@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 107 | $out_of_gas@269@01]
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
; [exec]
; exhale ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   !($out_of_gas ||
;   ($out_of_gas ||
;   perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==>
;   $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 108 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
; [else-branch: 108 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 108 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
; [eval] !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none))
; [eval] $out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)
(push) ; 10
; [then-branch: 109 | $out_of_gas@269@01 | live]
; [else-branch: 109 | !($out_of_gas@269@01) | live]
(push) ; 11
; [then-branch: 109 | $out_of_gas@269@01]
(pop) ; 11
(push) ; 11
; [else-branch: 109 | !($out_of_gas@269@01)]
(assert (not $out_of_gas@269@01))
(push) ; 12
; [then-branch: 110 | $out_of_gas@269@01 | live]
; [else-branch: 110 | !($out_of_gas@269@01) | live]
(push) ; 13
; [then-branch: 110 | $out_of_gas@269@01]
(pop) ; 13
(push) ; 13
; [else-branch: 110 | !($out_of_gas@269@01)]
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (not $out_of_gas@269@01) $out_of_gas@269@01))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not $out_of_gas@269@01)
  (and (not $out_of_gas@269@01) (or (not $out_of_gas@269@01) $out_of_gas@269@01))))
(assert (or (not $out_of_gas@269@01) $out_of_gas@269@01))
(push) ; 10
; [then-branch: 111 | !($out_of_gas@269@01) | dead]
; [else-branch: 111 | $out_of_gas@269@01 | live]
(push) ; 11
; [else-branch: 111 | $out_of_gas@269@01]
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
  (and
    (=>
      (not $out_of_gas@269@01)
      (and
        (not $out_of_gas@269@01)
        (or (not $out_of_gas@269@01) $out_of_gas@269@01)))
    (or (not $out_of_gas@269@01) $out_of_gas@269@01))))
; [exec]
; exhale $succ ==>
;   ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) -
;   ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) >=
;   ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $succ ==> ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= ($struct_get($struct_loc($pre_self, 1)): Int)
(push) ; 8
; [then-branch: 112 | False | dead]
; [else-branch: 112 | True | live]
(push) ; 9
; [else-branch: 112 | True]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [then-branch: 113 | False | dead]
; [else-branch: 113 | True | live]
(push) ; 8
; [else-branch: 113 | True]
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
; [then-branch: 114 | True | live]
; [else-branch: 114 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 114 | True]
; [exec]
; assert old(($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 0)): Int) ==>
;   ($struct_get($struct_loc(self, 1)): Int) >=
;   ($struct_get($struct_loc($old_self, 1)): Int))
; [eval] old(($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 9
; [then-branch: 115 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
; [else-branch: 115 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
(push) ; 10
; [else-branch: 115 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@345@01 $Snap)
(assert (= $t@345@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@270@01 0))
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
(declare-const self@346@01 $Struct)
(assert (=
  self@346@01
  ($struct_set<$Struct> self@250@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> self@250@01 1))
    l$havoc$6@270@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert true
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) >
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
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@347@01 Int)
(set-option :timeout 0)
(push) ; 9
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const sm@348@01 $PSF<$accessible$withdraw>)
(declare-const s@349@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@349@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@349@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@349@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@349@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@349@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) s@349@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@349@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) s@349@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@349@01))
  :qid |qp.psmValDef17|)))
(assert (forall ((s@349@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@349@01) s@349@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) s@349@01))
  :qid |qp.psmResTrgDef18|)))
(declare-const pm@350@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef19|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef20|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@347@01))) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@347@01))))
(push) ; 10
; [then-branch: 116 | PredicatePermLookup($accessible$withdraw, pm@350@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@347@01)) > Z | live]
; [else-branch: 116 | !(PredicatePermLookup($accessible$withdraw, pm@350@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@347@01)) > Z) | live]
(push) ; 11
; [then-branch: 116 | PredicatePermLookup($accessible$withdraw, pm@350@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@347@01)) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@347@01)))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 12
; [then-branch: 117 | False | live]
; [else-branch: 117 | True | live]
(push) ; 13
; [then-branch: 117 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 117 | True]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 118 | !($out_of_gas@269@01) | dead]
; [else-branch: 118 | $out_of_gas@269@01 | live]
(push) ; 13
; [else-branch: 118 | $out_of_gas@269@01]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(push) ; 12
; [then-branch: 119 | False | live]
; [else-branch: 119 | True | live]
(push) ; 13
; [then-branch: 119 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 119 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 14
; [then-branch: 120 | False | dead]
; [else-branch: 120 | True | live]
(push) ; 15
; [else-branch: 120 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(push) ; 11
; [else-branch: 116 | !(PredicatePermLookup($accessible$withdraw, pm@350@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@347@01)) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@347@01)))
    $Perm.No)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@347@01)))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@347@01)))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 9
; Nested auxiliary terms: globals (aux)
(assert (forall ((s@349@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@349@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@349@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@349@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@349@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) s@349@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@349@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) s@349@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@349@01))
  :qid |qp.psmValDef17|)))
(assert (forall ((s@349@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@349@01) s@349@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) s@349@01))
  :qid |qp.psmResTrgDef18|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef19|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef20|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@347@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@347@01))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@347@01)))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
            ($SortWrappers.IntTo$Snap $a@347@01)))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@350@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
          ($SortWrappers.IntTo$Snap $a@347@01)))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@348@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@347@01))) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@347@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1058@11@1058@527-aux|)))
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 107 | !($out_of_gas@269@01)]
(assert (not $out_of_gas@269@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@269@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 121 | !($out_of_gas@269@01) | live]
; [else-branch: 121 | $out_of_gas@269@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 121 | !($out_of_gas@269@01)]
(assert (not $out_of_gas@269@01))
; [exec]
; label end
; [exec]
; exhale ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   !($out_of_gas ||
;   ($out_of_gas ||
;   perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==>
;   $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 122 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
; [else-branch: 122 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 122 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
; [eval] !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)) ==> $succ
; [eval] !($out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none))
; [eval] $out_of_gas || ($out_of_gas || perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none)
(push) ; 10
; [then-branch: 123 | $out_of_gas@269@01 | live]
; [else-branch: 123 | !($out_of_gas@269@01) | live]
(push) ; 11
; [then-branch: 123 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
(pop) ; 11
(push) ; 11
; [else-branch: 123 | !($out_of_gas@269@01)]
(push) ; 12
; [then-branch: 124 | $out_of_gas@269@01 | live]
; [else-branch: 124 | !($out_of_gas@269@01) | live]
(push) ; 13
; [then-branch: 124 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
(pop) ; 13
(push) ; 13
; [else-branch: 124 | !($out_of_gas@269@01)]
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (not $out_of_gas@269@01) $out_of_gas@269@01))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=> (not $out_of_gas@269@01) (or (not $out_of_gas@269@01) $out_of_gas@269@01)))
(assert (or (not $out_of_gas@269@01) $out_of_gas@269@01))
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 125 | !($out_of_gas@269@01) | live]
; [else-branch: 125 | $out_of_gas@269@01 | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 125 | !($out_of_gas@269@01)]
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
  (and
    (=>
      (not $out_of_gas@269@01)
      (or (not $out_of_gas@269@01) $out_of_gas@269@01))
    (or (not $out_of_gas@269@01) $out_of_gas@269@01))))
; [exec]
; exhale $succ ==>
;   ($struct_get($struct_loc(msg, 0)): Int) ==
;   ($struct_get($struct_loc($pre_self, 0)): Int) ==>
;   ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) -
;   ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg,
;   0)): Int)): Int) >=
;   ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $succ ==> ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= ($struct_get($struct_loc($pre_self, 1)): Int)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 126 | True | live]
; [else-branch: 126 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 126 | True]
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int) ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 127 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | live]
; [else-branch: 127 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 127 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= ($struct_get($struct_loc($pre_self, 1)): Int)
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
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (=>
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
  (>=
    (-
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)))
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
  (>=
    (-
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@264@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)))
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 1)))))
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 128 | True | live]
; [else-branch: 128 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 128 | True]
; [exec]
; assert ($struct_get($struct_loc(msg, 0)): Int) !=
;   ($struct_get($struct_loc(self, 0)): Int) ==>
;   ($struct_get($struct_loc(self, 1)): Int) >=
;   ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int) ==> ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 0)))))
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
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 0))))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 129 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](l$havoc$2@264@01, 0)) | live]
; [else-branch: 129 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](l$havoc$2@264@01, 0)) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 129 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](l$havoc$2@264@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 0)))))
; [eval] ($struct_get($struct_loc(self, 1)): Int) >= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] $struct_loc($old_self, 1)
(pop) ; 10
(push) ; 10
; [else-branch: 129 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) == $struct_get[Int]($struct_loc[Int](l$havoc$2@264@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 0))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 0)))
  (not
    (=
      ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
      ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 0))))))
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@351@01 $Snap)
(assert (= $t@351@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@270@01 0))
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
(declare-const self@352@01 $Struct)
(assert (=
  self@352@01
  ($struct_set<$Struct> l$havoc$2@264@01 1 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@264@01 1))
    l$havoc$6@270@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert true
; [exec]
; assert (forall $a: Int ::
;     { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) }
;     perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) >
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
; [eval] (forall $a: Int :: { $accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a) } perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a))
(declare-const $a@353@01 Int)
(set-option :timeout 0)
(push) ; 9
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none ==> (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a)) > none
; [eval] perm($accessible$withdraw(0, ($struct_get($struct_loc(msg, 0)): Int), $a))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const sm@354@01 $PSF<$accessible$withdraw>)
(declare-const s@355@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@355@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@355@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@355@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@355@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@355@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) s@355@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@355@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) s@355@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@355@01))
  :qid |qp.psmValDef21|)))
(assert (forall ((s@355@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@355@01) s@355@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) s@355@01))
  :qid |qp.psmResTrgDef22|)))
(declare-const pm@356@01 $PPM)
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef23|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef24|)))
(assert ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@353@01))) ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
  ($SortWrappers.IntTo$Snap $a@353@01))))
(push) ; 10
; [then-branch: 130 | PredicatePermLookup($accessible$withdraw, pm@356@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@353@01)) > Z | live]
; [else-branch: 130 | !(PredicatePermLookup($accessible$withdraw, pm@356@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@353@01)) > Z) | live]
(push) ; 11
; [then-branch: 130 | PredicatePermLookup($accessible$withdraw, pm@356@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@353@01)) > Z]
(assert (>
  ($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@353@01)))
  $Perm.No))
; [eval] (!(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ) && ($succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a)
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas) ==> $succ
; [eval] !(perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas)
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none || $out_of_gas
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int))) > none
; [eval] perm($failed(($struct_get($struct_loc(msg, 0)): Int)))
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(push) ; 12
; [then-branch: 131 | False | live]
; [else-branch: 131 | True | live]
(push) ; 13
; [then-branch: 131 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 131 | True]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 132 | !($out_of_gas@269@01) | live]
; [else-branch: 132 | $out_of_gas@269@01 | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 132 | !($out_of_gas@269@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(push) ; 12
; [then-branch: 133 | False | live]
; [else-branch: 133 | True | live]
(push) ; 13
; [then-branch: 133 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 133 | True]
; [eval] $succ ==> ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) - ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) >= $a
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 134 | True | live]
; [else-branch: 134 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 134 | True]
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
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(push) ; 11
; [else-branch: 130 | !(PredicatePermLookup($accessible$withdraw, pm@356@01, List(0, $struct_get[Int]($struct_loc[Int](msg@246@01, 0)), $a@353@01)) > Z)]
(assert (not
  (>
    ($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@353@01)))
    $Perm.No)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (>
      ($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@353@01)))
      $Perm.No))
  (>
    ($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@353@01)))
    $Perm.No)))
; Definitional axioms for snapshot map values
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(pop) ; 9
; Nested auxiliary terms: globals (aux)
(assert (forall ((s@355@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@355@01))) 0)
      (=
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@355@01)))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
      (=
        ($SortWrappers.$SnapToInt ($Snap.second s@355@01))
        ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
    (and
      (not (= s@355@01 $Snap.unit))
      (=
        ($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) s@355@01)
        ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@355@01))))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) s@355@01))
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@355@01))
  :qid |qp.psmValDef21|)))
(assert (forall ((s@355@01 $Snap)) (!
  ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) s@355@01) s@355@01)
  :pattern (($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) s@355@01))
  :qid |qp.psmResTrgDef22|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (=
    ($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    (ite
      (and
        (= $tag 0)
        (= $to ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))
        (= $amount ($struct_get<Int> ($struct_loc<Int> self@250@01 1))))
      $Perm.Write
      $Perm.No))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resPrmSumDef23|)))
(assert (forall (($tag Int) ($to Int) ($amount Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount)))
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@299@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap $tag)
        ($SortWrappers.IntTo$Snap $to))
      ($SortWrappers.IntTo$Snap $amount))))
  :pattern (($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap $tag)
      ($SortWrappers.IntTo$Snap $to))
    ($SortWrappers.IntTo$Snap $amount))))
  :qid |qp.resTrgDef24|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@353@01 Int)) (!
  (and
    ($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@353@01))) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap 0)
        ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      ($SortWrappers.IntTo$Snap $a@353@01)))
    (or
      (not
        (>
          ($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap 0)
              ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
            ($SortWrappers.IntTo$Snap $a@353@01)))
          $Perm.No))
      (>
        ($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap 0)
            ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
          ($SortWrappers.IntTo$Snap $a@353@01)))
        $Perm.No)))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@353@01))) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@353@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1058@11@1058@527-aux|)))
(push) ; 9
(assert (not (forall (($a@353@01 Int)) (!
  (=>
    (>
      ($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@353@01)))
      $Perm.No)
    (>=
      (-
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@352@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)))
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      $a@353@01))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@353@01))) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@353@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1058@11@1058@527|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (forall (($a@353@01 Int)) (!
  (=>
    (>
      ($PSF.perm_$accessible$withdraw (as pm@356@01  $PPM) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap 0)
          ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
        ($SortWrappers.IntTo$Snap $a@353@01)))
      $Perm.No)
    (>=
      (-
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@352@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0)))
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@250@01 4)) ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
      $a@353@01))
  :pattern (($PSF.loc_$accessible$withdraw ($PSF.lookup_$accessible$withdraw (as sm@354@01  $PSF<$accessible$withdraw>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@353@01))) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($SortWrappers.IntTo$Snap ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))))
    ($SortWrappers.IntTo$Snap $a@353@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageaccessible.vy.vpr@1058@11@1058@527|)))
(pop) ; 8
; [eval] !$succ
; [then-branch: 135 | False | dead]
; [else-branch: 135 | True | live]
(push) ; 8
; [else-branch: 135 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 121 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 106 | l$no_reentrant_call@266@01]
(assert l$no_reentrant_call@266@01)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 73 | l$send_fail@260@01]
(assert l$send_fail@260@01)
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 56 | $struct_get[Int]($struct_loc[Int](msg@246@01, 0)) != $struct_get[Int]($struct_loc[Int](self@250@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@246@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@250@01 0)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
