(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 09:56:31
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
(declare-sort $StructOps<$Map<Int~_$Map<Int~_Int>>> 0)
(declare-sort s$struct$self 0)
(declare-sort $Struct 0)
(declare-sort s$resource$$creator 0)
(declare-sort $Contract 0)
(declare-sort $Convert 0)
(declare-sort $StructOps<Seq<Int>> 0)
(declare-sort $Range 0)
(declare-sort $Int 0)
(declare-sort $StructOps<$Map<Int~_Int>> 0)
(declare-sort $Math 0)
(declare-sort $StructOps<Int> 0)
(declare-sort s$struct$EtherTokenPair 0)
(declare-sort $Map<Int~_$Struct> 0)
(declare-sort $StructOps<Bool> 0)
(declare-sort $Blockchain 0)
(declare-sort $Array<Int> 0)
(declare-sort $MapInt<Int> 0)
(declare-sort $Map<Int~_Int> 0)
(declare-sort $Map<Int~_$Map<Int~_Int>> 0)
(declare-sort $StructOps<$Struct> 0)
(declare-sort $PSF<e$TokenPurchase> 0)
(declare-sort $PSF<e$EthPurchase> 0)
(declare-sort $PSF<e$AddLiquidity> 0)
(declare-sort $PSF<e$RemoveLiquidity> 0)
(declare-sort $PSF<e$Transfer> 0)
(declare-sort $PSF<e$Approval> 0)
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
(declare-fun $SortWrappers.s$struct$EtherTokenPairTo$Snap (s$struct$EtherTokenPair) $Snap)
(declare-fun $SortWrappers.$SnapTos$struct$EtherTokenPair ($Snap) s$struct$EtherTokenPair)
(assert (forall ((x s$struct$EtherTokenPair)) (!
    (= x ($SortWrappers.$SnapTos$struct$EtherTokenPair($SortWrappers.s$struct$EtherTokenPairTo$Snap x)))
    :pattern (($SortWrappers.s$struct$EtherTokenPairTo$Snap x))
    :qid |$Snap.$SnapTos$struct$EtherTokenPairTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.s$struct$EtherTokenPairTo$Snap($SortWrappers.$SnapTos$struct$EtherTokenPair x)))
    :pattern (($SortWrappers.$SnapTos$struct$EtherTokenPair x))
    :qid |$Snap.s$struct$EtherTokenPairTo$SnapTos$struct$EtherTokenPair|
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
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<e$TokenPurchase>To$Snap ($PSF<e$TokenPurchase>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<e$TokenPurchase> ($Snap) $PSF<e$TokenPurchase>)
(assert (forall ((x $PSF<e$TokenPurchase>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<e$TokenPurchase>($SortWrappers.$PSF<e$TokenPurchase>To$Snap x)))
    :pattern (($SortWrappers.$PSF<e$TokenPurchase>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<e$TokenPurchase>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<e$TokenPurchase>To$Snap($SortWrappers.$SnapTo$PSF<e$TokenPurchase> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<e$TokenPurchase> x))
    :qid |$Snap.$PSF<e$TokenPurchase>To$SnapTo$PSF<e$TokenPurchase>|
    )))
(declare-fun $SortWrappers.$PSF<e$EthPurchase>To$Snap ($PSF<e$EthPurchase>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<e$EthPurchase> ($Snap) $PSF<e$EthPurchase>)
(assert (forall ((x $PSF<e$EthPurchase>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<e$EthPurchase>($SortWrappers.$PSF<e$EthPurchase>To$Snap x)))
    :pattern (($SortWrappers.$PSF<e$EthPurchase>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<e$EthPurchase>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<e$EthPurchase>To$Snap($SortWrappers.$SnapTo$PSF<e$EthPurchase> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<e$EthPurchase> x))
    :qid |$Snap.$PSF<e$EthPurchase>To$SnapTo$PSF<e$EthPurchase>|
    )))
(declare-fun $SortWrappers.$PSF<e$AddLiquidity>To$Snap ($PSF<e$AddLiquidity>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<e$AddLiquidity> ($Snap) $PSF<e$AddLiquidity>)
(assert (forall ((x $PSF<e$AddLiquidity>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<e$AddLiquidity>($SortWrappers.$PSF<e$AddLiquidity>To$Snap x)))
    :pattern (($SortWrappers.$PSF<e$AddLiquidity>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<e$AddLiquidity>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<e$AddLiquidity>To$Snap($SortWrappers.$SnapTo$PSF<e$AddLiquidity> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<e$AddLiquidity> x))
    :qid |$Snap.$PSF<e$AddLiquidity>To$SnapTo$PSF<e$AddLiquidity>|
    )))
(declare-fun $SortWrappers.$PSF<e$RemoveLiquidity>To$Snap ($PSF<e$RemoveLiquidity>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<e$RemoveLiquidity> ($Snap) $PSF<e$RemoveLiquidity>)
(assert (forall ((x $PSF<e$RemoveLiquidity>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<e$RemoveLiquidity>($SortWrappers.$PSF<e$RemoveLiquidity>To$Snap x)))
    :pattern (($SortWrappers.$PSF<e$RemoveLiquidity>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<e$RemoveLiquidity>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<e$RemoveLiquidity>To$Snap($SortWrappers.$SnapTo$PSF<e$RemoveLiquidity> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<e$RemoveLiquidity> x))
    :qid |$Snap.$PSF<e$RemoveLiquidity>To$SnapTo$PSF<e$RemoveLiquidity>|
    )))
(declare-fun $SortWrappers.$PSF<e$Transfer>To$Snap ($PSF<e$Transfer>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<e$Transfer> ($Snap) $PSF<e$Transfer>)
(assert (forall ((x $PSF<e$Transfer>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<e$Transfer>($SortWrappers.$PSF<e$Transfer>To$Snap x)))
    :pattern (($SortWrappers.$PSF<e$Transfer>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<e$Transfer>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<e$Transfer>To$Snap($SortWrappers.$SnapTo$PSF<e$Transfer> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<e$Transfer> x))
    :qid |$Snap.$PSF<e$Transfer>To$SnapTo$PSF<e$Transfer>|
    )))
(declare-fun $SortWrappers.$PSF<e$Approval>To$Snap ($PSF<e$Approval>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<e$Approval> ($Snap) $PSF<e$Approval>)
(assert (forall ((x $PSF<e$Approval>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<e$Approval>($SortWrappers.$PSF<e$Approval>To$Snap x)))
    :pattern (($SortWrappers.$PSF<e$Approval>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<e$Approval>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<e$Approval>To$Snap($SortWrappers.$SnapTo$PSF<e$Approval> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<e$Approval> x))
    :qid |$Snap.$PSF<e$Approval>To$SnapTo$PSF<e$Approval>|
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
(declare-fun s$struct$self$init<$Struct> (Seq<Int> Seq<Int> Int Int $Map<Int~_Int> $Map<Int~_$Map<Int~_Int>> Int Int Int Int Bool $Map<Int~_Int> $Map<Int~_Int> Bool) $Struct)
(declare-fun s$struct$self$eq<Bool> ($Struct $Struct) Bool)
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
(declare-fun s$struct$EtherTokenPair$init<$Struct> (Int Int) $Struct)
(declare-fun s$struct$EtherTokenPair$eq<Bool> ($Struct $Struct) Bool)
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
; /predicate_snap_functions_declarations.smt2 [e$TokenPurchase: Snap]
(declare-fun $PSF.domain_e$TokenPurchase ($PSF<e$TokenPurchase>) Set<$Snap>)
(declare-fun $PSF.lookup_e$TokenPurchase ($PSF<e$TokenPurchase> $Snap) $Snap)
(declare-fun $PSF.after_e$TokenPurchase ($PSF<e$TokenPurchase> $PSF<e$TokenPurchase>) Bool)
(declare-fun $PSF.loc_e$TokenPurchase ($Snap $Snap) Bool)
(declare-fun $PSF.perm_e$TokenPurchase ($PPM $Snap) $Perm)
(declare-const $psfTOP_e$TokenPurchase $PSF<e$TokenPurchase>)
; /predicate_snap_functions_declarations.smt2 [e$EthPurchase: Snap]
(declare-fun $PSF.domain_e$EthPurchase ($PSF<e$EthPurchase>) Set<$Snap>)
(declare-fun $PSF.lookup_e$EthPurchase ($PSF<e$EthPurchase> $Snap) $Snap)
(declare-fun $PSF.after_e$EthPurchase ($PSF<e$EthPurchase> $PSF<e$EthPurchase>) Bool)
(declare-fun $PSF.loc_e$EthPurchase ($Snap $Snap) Bool)
(declare-fun $PSF.perm_e$EthPurchase ($PPM $Snap) $Perm)
(declare-const $psfTOP_e$EthPurchase $PSF<e$EthPurchase>)
; /predicate_snap_functions_declarations.smt2 [e$AddLiquidity: Snap]
(declare-fun $PSF.domain_e$AddLiquidity ($PSF<e$AddLiquidity>) Set<$Snap>)
(declare-fun $PSF.lookup_e$AddLiquidity ($PSF<e$AddLiquidity> $Snap) $Snap)
(declare-fun $PSF.after_e$AddLiquidity ($PSF<e$AddLiquidity> $PSF<e$AddLiquidity>) Bool)
(declare-fun $PSF.loc_e$AddLiquidity ($Snap $Snap) Bool)
(declare-fun $PSF.perm_e$AddLiquidity ($PPM $Snap) $Perm)
(declare-const $psfTOP_e$AddLiquidity $PSF<e$AddLiquidity>)
; /predicate_snap_functions_declarations.smt2 [e$RemoveLiquidity: Snap]
(declare-fun $PSF.domain_e$RemoveLiquidity ($PSF<e$RemoveLiquidity>) Set<$Snap>)
(declare-fun $PSF.lookup_e$RemoveLiquidity ($PSF<e$RemoveLiquidity> $Snap) $Snap)
(declare-fun $PSF.after_e$RemoveLiquidity ($PSF<e$RemoveLiquidity> $PSF<e$RemoveLiquidity>) Bool)
(declare-fun $PSF.loc_e$RemoveLiquidity ($Snap $Snap) Bool)
(declare-fun $PSF.perm_e$RemoveLiquidity ($PPM $Snap) $Perm)
(declare-const $psfTOP_e$RemoveLiquidity $PSF<e$RemoveLiquidity>)
; /predicate_snap_functions_declarations.smt2 [e$Transfer: Snap]
(declare-fun $PSF.domain_e$Transfer ($PSF<e$Transfer>) Set<$Snap>)
(declare-fun $PSF.lookup_e$Transfer ($PSF<e$Transfer> $Snap) $Snap)
(declare-fun $PSF.after_e$Transfer ($PSF<e$Transfer> $PSF<e$Transfer>) Bool)
(declare-fun $PSF.loc_e$Transfer ($Snap $Snap) Bool)
(declare-fun $PSF.perm_e$Transfer ($PPM $Snap) $Perm)
(declare-const $psfTOP_e$Transfer $PSF<e$Transfer>)
; /predicate_snap_functions_declarations.smt2 [e$Approval: Snap]
(declare-fun $PSF.domain_e$Approval ($PSF<e$Approval>) Set<$Snap>)
(declare-fun $PSF.lookup_e$Approval ($PSF<e$Approval> $Snap) $Snap)
(declare-fun $PSF.after_e$Approval ($PSF<e$Approval> $PSF<e$Approval>) Bool)
(declare-fun $PSF.loc_e$Approval ($Snap $Snap) Bool)
(declare-fun $PSF.perm_e$Approval ($PPM $Snap) $Perm)
(declare-const $psfTOP_e$Approval $PSF<e$Approval>)
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
(declare-fun e$TokenPurchase%trigger ($Snap Int Int Int) Bool)
(declare-fun e$TokenPurchase_0%trigger ($Snap Int Int Int) Bool)
(declare-fun e$EthPurchase%trigger ($Snap Int Int Int) Bool)
(declare-fun e$EthPurchase_0%trigger ($Snap Int Int Int) Bool)
(declare-fun e$AddLiquidity%trigger ($Snap Int Int Int) Bool)
(declare-fun e$AddLiquidity_0%trigger ($Snap Int Int Int) Bool)
(declare-fun e$RemoveLiquidity%trigger ($Snap Int Int Int) Bool)
(declare-fun e$RemoveLiquidity_0%trigger ($Snap Int Int Int) Bool)
(declare-fun e$Transfer%trigger ($Snap Int Int Int) Bool)
(declare-fun e$Transfer_0%trigger ($Snap Int Int Int) Bool)
(declare-fun e$Approval%trigger ($Snap Int Int Int) Bool)
(declare-fun e$Approval_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$setup%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$setup_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$addLiquidity%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$addLiquidity_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$removeLiquidity%trigger ($Snap Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$removeLiquidity_0%trigger ($Snap Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$getInputPrice%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$getInputPrice_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$getOutputPrice%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$getOutputPrice_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenInput%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenInput_0%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$__default__%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$__default___0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$ethToTokenSwapInput%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenSwapInput_0%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenTransferInput%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenTransferInput_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenOutput%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenOutput_0%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenSwapOutput%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenSwapOutput_0%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenTransferOutput%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$ethToTokenTransferOutput_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthInput%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthInput_0%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthSwapInput%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthSwapInput_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthTransferInput%trigger ($Snap Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthTransferInput_0%trigger ($Snap Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthOutput%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthOutput_0%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthSwapOutput%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthSwapOutput_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthTransferOutput%trigger ($Snap Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToEthTransferOutput_0%trigger ($Snap Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenInput%trigger ($Snap Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenInput_0%trigger ($Snap Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenSwapInput%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenSwapInput_0%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenTransferInput%trigger ($Snap Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenTransferInput_0%trigger ($Snap Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenOutput%trigger ($Snap Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenOutput_0%trigger ($Snap Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenSwapOutput%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenSwapOutput_0%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenTransferOutput%trigger ($Snap Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToTokenTransferOutput_0%trigger ($Snap Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToExchangeSwapInput%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToExchangeSwapInput_0%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToExchangeTransferInput%trigger ($Snap Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToExchangeTransferInput_0%trigger ($Snap Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToExchangeSwapOutput%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToExchangeSwapOutput_0%trigger ($Snap Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToExchangeTransferOutput%trigger ($Snap Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$tokenToExchangeTransferOutput_0%trigger ($Snap Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun $accessible$getEthToTokenInputPrice%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$getEthToTokenInputPrice_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$getEthToTokenOutputPrice%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$getEthToTokenOutputPrice_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$getTokenToEthInputPrice%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$getTokenToEthInputPrice_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$getTokenToEthOutputPrice%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$getTokenToEthOutputPrice_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$tokenAddress%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$tokenAddress_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$factoryAddress%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$factoryAddress_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$balanceOf%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$balanceOf_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$transfer%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$transfer_0%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$transferFrom%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$transferFrom_0%trigger ($Snap Int Int Int Int Int Int) Bool)
(declare-fun $accessible$approve%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$approve_0%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$allowance%trigger ($Snap Int Int Int Int Int) Bool)
(declare-fun $accessible$allowance_0%trigger ($Snap Int Int Int Int Int) Bool)
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
(assert (forall (($arg_0 Seq<Int>) ($arg_1 Seq<Int>) ($arg_2 Int) ($arg_3 Int) ($arg_4 $Map<Int~_Int>) ($arg_5 $Map<Int~_$Map<Int~_Int>>) ($arg_6 Int) ($arg_7 Int) ($arg_8 Int) ($arg_9 Int) ($arg_10 Bool) ($arg_11 $Map<Int~_Int>) ($arg_12 $Map<Int~_Int>) ($arg_13 Bool)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) (- 0 1)))
      9122519725869122497593506884710)
    (and
      (Seq_equal
        ($struct_get<Seq<Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 0))
        $arg_0)
      (and
        (Seq_equal
          ($struct_get<Seq<Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 1))
          $arg_1)
        (and
          (=
            ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 2))
            $arg_2)
          (and
            (=
              ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 3))
              $arg_3)
            (and
              (=
                ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 4))
                $arg_4)
              (and
                (=
                  ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 5))
                  $arg_5)
                (and
                  (=
                    ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 6))
                    $arg_6)
                  (and
                    (=
                      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 7))
                      $arg_7)
                    (and
                      (=
                        ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 8))
                        $arg_8)
                      (and
                        (=
                          ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 9))
                          $arg_9)
                        (and
                          (=
                            ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 10))
                            $arg_10)
                          (and
                            (=
                              ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 11))
                              $arg_11)
                            (and
                              (=
                                ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 12))
                                $arg_12)
                              (=
                                ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13) 13))
                                $arg_13)))))))))))))))
  :pattern ((s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13))
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
            (Seq_equal
              ($struct_get<Seq<Int>> ($struct_loc<Int> $l 1))
              ($struct_get<Seq<Int>> ($struct_loc<Int> $r 1)))
            (and
              (=
                ($struct_get<Int> ($struct_loc<Int> $l 2))
                ($struct_get<Int> ($struct_loc<Int> $r 2)))
              (and
                (=
                  ($struct_get<Int> ($struct_loc<Int> $l 3))
                  ($struct_get<Int> ($struct_loc<Int> $r 3)))
                (and
                  ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 4)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 4)))
                  (and
                    ($map_eq<Bool> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $l 5)) ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $r 5)))
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
                            ($struct_get<Int> ($struct_loc<Int> $l 8))
                            ($struct_get<Int> ($struct_loc<Int> $r 8)))
                          (and
                            (=
                              ($struct_get<Int> ($struct_loc<Int> $l 9))
                              ($struct_get<Int> ($struct_loc<Int> $r 9)))
                            (and
                              (=
                                ($struct_get<Bool> ($struct_loc<Int> $l 10))
                                ($struct_get<Bool> ($struct_loc<Int> $r 10)))
                              (and
                                ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 11)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 11)))
                                (and
                                  ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 12)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 12)))
                                  (=
                                    ($struct_get<Bool> ($struct_loc<Int> $l 13))
                                    ($struct_get<Bool> ($struct_loc<Int> $r 13)))))))))))))))))))
  :pattern ((s$struct$self$eq<Bool> $l $r))
  :qid |prog.s$struct$self$eq$ax|)))
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
(assert (forall (($arg_0 Int) ($arg_1 Int)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$EtherTokenPair$init<$Struct> $arg_0 $arg_1) (- 0 1)))
      11028449636546951172565373718758303580017951889227344242)
    (and
      (=
        ($struct_get<Int> ($struct_loc<Int> (s$struct$EtherTokenPair$init<$Struct> $arg_0 $arg_1) 0))
        $arg_0)
      (=
        ($struct_get<Int> ($struct_loc<Int> (s$struct$EtherTokenPair$init<$Struct> $arg_0 $arg_1) 1))
        $arg_1)))
  :pattern ((s$struct$EtherTokenPair$init<$Struct> $arg_0 $arg_1))
  :qid |prog.s$struct$EtherTokenPair$init$ax|)))
(assert (forall (($l $Struct) ($r $Struct)) (!
  (and
    (= (s$struct$EtherTokenPair$eq<Bool> $l $r) (= $l $r))
    (=
      (s$struct$EtherTokenPair$eq<Bool> $l $r)
      (and
        (=
          ($struct_get<Int> ($struct_loc<Int> $l (- 0 1)))
          ($struct_get<Int> ($struct_loc<Int> $r (- 0 1))))
        (and
          (=
            ($struct_get<Int> ($struct_loc<Int> $l 0))
            ($struct_get<Int> ($struct_loc<Int> $r 0)))
          (=
            ($struct_get<Int> ($struct_loc<Int> $l 1))
            ($struct_get<Int> ($struct_loc<Int> $r 1)))))))
  :pattern ((s$struct$EtherTokenPair$eq<Bool> $l $r))
  :qid |prog.s$struct$EtherTokenPair$eq$ax|)))
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
; /predicate_snap_functions_axioms.smt2 [e$TokenPurchase: Snap]
(assert (forall ((vs $PSF<e$TokenPurchase>) (ws $PSF<e$TokenPurchase>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_e$TokenPurchase vs) ($PSF.domain_e$TokenPurchase ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_e$TokenPurchase vs))
            (= ($PSF.lookup_e$TokenPurchase vs x) ($PSF.lookup_e$TokenPurchase ws x)))
          :pattern (($PSF.lookup_e$TokenPurchase vs x) ($PSF.lookup_e$TokenPurchase ws x))
          :qid |qp.$PSF<e$TokenPurchase>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<e$TokenPurchase>To$Snap vs)
              ($SortWrappers.$PSF<e$TokenPurchase>To$Snap ws)
              )
    :qid |qp.$PSF<e$TokenPurchase>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_e$TokenPurchase pm s))
    :pattern (($PSF.perm_e$TokenPurchase pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_e$TokenPurchase f s) true)
    :pattern (($PSF.loc_e$TokenPurchase f s)))))
; /predicate_snap_functions_axioms.smt2 [e$EthPurchase: Snap]
(assert (forall ((vs $PSF<e$EthPurchase>) (ws $PSF<e$EthPurchase>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_e$EthPurchase vs) ($PSF.domain_e$EthPurchase ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_e$EthPurchase vs))
            (= ($PSF.lookup_e$EthPurchase vs x) ($PSF.lookup_e$EthPurchase ws x)))
          :pattern (($PSF.lookup_e$EthPurchase vs x) ($PSF.lookup_e$EthPurchase ws x))
          :qid |qp.$PSF<e$EthPurchase>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<e$EthPurchase>To$Snap vs)
              ($SortWrappers.$PSF<e$EthPurchase>To$Snap ws)
              )
    :qid |qp.$PSF<e$EthPurchase>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_e$EthPurchase pm s))
    :pattern (($PSF.perm_e$EthPurchase pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_e$EthPurchase f s) true)
    :pattern (($PSF.loc_e$EthPurchase f s)))))
; /predicate_snap_functions_axioms.smt2 [e$AddLiquidity: Snap]
(assert (forall ((vs $PSF<e$AddLiquidity>) (ws $PSF<e$AddLiquidity>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_e$AddLiquidity vs) ($PSF.domain_e$AddLiquidity ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_e$AddLiquidity vs))
            (= ($PSF.lookup_e$AddLiquidity vs x) ($PSF.lookup_e$AddLiquidity ws x)))
          :pattern (($PSF.lookup_e$AddLiquidity vs x) ($PSF.lookup_e$AddLiquidity ws x))
          :qid |qp.$PSF<e$AddLiquidity>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<e$AddLiquidity>To$Snap vs)
              ($SortWrappers.$PSF<e$AddLiquidity>To$Snap ws)
              )
    :qid |qp.$PSF<e$AddLiquidity>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_e$AddLiquidity pm s))
    :pattern (($PSF.perm_e$AddLiquidity pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_e$AddLiquidity f s) true)
    :pattern (($PSF.loc_e$AddLiquidity f s)))))
; /predicate_snap_functions_axioms.smt2 [e$RemoveLiquidity: Snap]
(assert (forall ((vs $PSF<e$RemoveLiquidity>) (ws $PSF<e$RemoveLiquidity>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_e$RemoveLiquidity vs) ($PSF.domain_e$RemoveLiquidity ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_e$RemoveLiquidity vs))
            (= ($PSF.lookup_e$RemoveLiquidity vs x) ($PSF.lookup_e$RemoveLiquidity ws x)))
          :pattern (($PSF.lookup_e$RemoveLiquidity vs x) ($PSF.lookup_e$RemoveLiquidity ws x))
          :qid |qp.$PSF<e$RemoveLiquidity>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<e$RemoveLiquidity>To$Snap vs)
              ($SortWrappers.$PSF<e$RemoveLiquidity>To$Snap ws)
              )
    :qid |qp.$PSF<e$RemoveLiquidity>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_e$RemoveLiquidity pm s))
    :pattern (($PSF.perm_e$RemoveLiquidity pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_e$RemoveLiquidity f s) true)
    :pattern (($PSF.loc_e$RemoveLiquidity f s)))))
; /predicate_snap_functions_axioms.smt2 [e$Transfer: Snap]
(assert (forall ((vs $PSF<e$Transfer>) (ws $PSF<e$Transfer>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_e$Transfer vs) ($PSF.domain_e$Transfer ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_e$Transfer vs))
            (= ($PSF.lookup_e$Transfer vs x) ($PSF.lookup_e$Transfer ws x)))
          :pattern (($PSF.lookup_e$Transfer vs x) ($PSF.lookup_e$Transfer ws x))
          :qid |qp.$PSF<e$Transfer>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<e$Transfer>To$Snap vs)
              ($SortWrappers.$PSF<e$Transfer>To$Snap ws)
              )
    :qid |qp.$PSF<e$Transfer>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_e$Transfer pm s))
    :pattern (($PSF.perm_e$Transfer pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_e$Transfer f s) true)
    :pattern (($PSF.loc_e$Transfer f s)))))
; /predicate_snap_functions_axioms.smt2 [e$Approval: Snap]
(assert (forall ((vs $PSF<e$Approval>) (ws $PSF<e$Approval>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_e$Approval vs) ($PSF.domain_e$Approval ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_e$Approval vs))
            (= ($PSF.lookup_e$Approval vs x) ($PSF.lookup_e$Approval ws x)))
          :pattern (($PSF.lookup_e$Approval vs x) ($PSF.lookup_e$Approval ws x))
          :qid |qp.$PSF<e$Approval>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<e$Approval>To$Snap vs)
              ($SortWrappers.$PSF<e$Approval>To$Snap ws)
              )
    :qid |qp.$PSF<e$Approval>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_e$Approval pm s))
    :pattern (($PSF.perm_e$Approval pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_e$Approval f s) true)
    :pattern (($PSF.loc_e$Approval f s)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION $pure$success_get----------
(declare-fun x@0@00 () $Struct)
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (= ($pure$success_get%limited s@$ x@0@00) ($pure$success_get s@$ x@0@00))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1576|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-1577|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(x, 0)): Bool)
; [eval] $struct_loc(x, 0)
(assert (= result@1@00 ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1582|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1583|)))
; ---------- FUNCTION $pure$return_get----------
(declare-fun x@2@00 () $Struct)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] $pure$success_get(x)
(push) ; 2
(assert ($pure$success_get%precondition $Snap.unit x@2@00))
(pop) ; 2
; Joined path conditions
(assert ($pure$success_get%precondition $Snap.unit x@2@00))
(assert ($pure$success_get $Snap.unit x@2@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1578|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-1579|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert ($pure$success_get%precondition $Snap.unit x@2@00))
(assert ($pure$success_get $Snap.unit x@2@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] $struct_loc(x, 1)
(assert (= result@3@00 ($struct_loc<Int> x@2@00 1)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1584|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1585|)))
; ---------- FUNCTION $range_sum----------
(declare-fun $x@4@00 () Int)
(declare-fun $y@5@00 () Int)
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] $x <= $y
(assert (<= $x@4@00 $y@5@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1580|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1581|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (<= $x@4@00 $y@5@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (let $x_ge_0 == ($x >= 0) in (let $y_ge_0 == ($y >= 0) in (let $x_exclusive == (($x_ge_0 ? ($x - 1) * $x \ 2 : (-$x - 1) * -$x \ 2)) in (let $y_exclusive == (($y_ge_0 ? ($y - 1) * $y \ 2 : (-$y - 1) * -$y \ 2)) in ($x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive : (!$x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive + $x : $y_exclusive - $y - $x_exclusive + $x))))))
; [eval] $x >= 0
(declare-fun letvar@7@00 ($Snap Int Int) Bool)
(assert (= (letvar@7@00 s@$ $x@4@00 $y@5@00) (>= $x@4@00 0)))
; [eval] (let $y_ge_0 == ($y >= 0) in (let $x_exclusive == (($x_ge_0 ? ($x - 1) * $x \ 2 : (-$x - 1) * -$x \ 2)) in (let $y_exclusive == (($y_ge_0 ? ($y - 1) * $y \ 2 : (-$y - 1) * -$y \ 2)) in ($x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive : (!$x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive + $x : $y_exclusive - $y - $x_exclusive + $x)))))
; [eval] $y >= 0
(declare-fun letvar@8@00 ($Snap Int Int) Bool)
(assert (= (letvar@8@00 s@$ $x@4@00 $y@5@00) (>= $y@5@00 0)))
; [eval] (let $x_exclusive == (($x_ge_0 ? ($x - 1) * $x \ 2 : (-$x - 1) * -$x \ 2)) in (let $y_exclusive == (($y_ge_0 ? ($y - 1) * $y \ 2 : (-$y - 1) * -$y \ 2)) in ($x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive : (!$x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive + $x : $y_exclusive - $y - $x_exclusive + $x))))
; [eval] ($x_ge_0 ? ($x - 1) * $x \ 2 : (-$x - 1) * -$x \ 2)
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (>= $x@4@00 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (>= $x@4@00 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | $x@4@00 >= 0 | live]
; [else-branch: 0 | !($x@4@00 >= 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | $x@4@00 >= 0]
(assert (>= $x@4@00 0))
; [eval] ($x - 1) * $x \ 2
; [eval] ($x - 1) * $x
; [eval] $x - 1
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !($x@4@00 >= 0)]
(assert (not (>= $x@4@00 0)))
; [eval] (-$x - 1) * -$x \ 2
; [eval] (-$x - 1) * -$x
; [eval] -$x - 1
; [eval] -$x
; [eval] -$x
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (>= $x@4@00 0)) (>= $x@4@00 0)))
(declare-fun letvar@9@00 ($Snap Int Int) Int)
(assert (=
  (letvar@9@00 s@$ $x@4@00 $y@5@00)
  (ite
    (>= $x@4@00 0)
    (div (* (- $x@4@00 1) $x@4@00) 2)
    (div (* (- (- 0 $x@4@00) 1) (- 0 $x@4@00)) 2))))
; [eval] (let $y_exclusive == (($y_ge_0 ? ($y - 1) * $y \ 2 : (-$y - 1) * -$y \ 2)) in ($x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive : (!$x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive + $x : $y_exclusive - $y - $x_exclusive + $x)))
; [eval] ($y_ge_0 ? ($y - 1) * $y \ 2 : (-$y - 1) * -$y \ 2)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (>= $y@5@00 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (>= $y@5@00 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | $y@5@00 >= 0 | live]
; [else-branch: 1 | !($y@5@00 >= 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | $y@5@00 >= 0]
(assert (>= $y@5@00 0))
; [eval] ($y - 1) * $y \ 2
; [eval] ($y - 1) * $y
; [eval] $y - 1
(pop) ; 3
(push) ; 3
; [else-branch: 1 | !($y@5@00 >= 0)]
(assert (not (>= $y@5@00 0)))
; [eval] (-$y - 1) * -$y \ 2
; [eval] (-$y - 1) * -$y
; [eval] -$y - 1
; [eval] -$y
; [eval] -$y
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (>= $y@5@00 0)) (>= $y@5@00 0)))
(declare-fun letvar@10@00 ($Snap Int Int) Int)
(assert (=
  (letvar@10@00 s@$ $x@4@00 $y@5@00)
  (ite
    (>= $y@5@00 0)
    (div (* (- $y@5@00 1) $y@5@00) 2)
    (div (* (- (- 0 $y@5@00) 1) (- 0 $y@5@00)) 2))))
; [eval] ($x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive : (!$x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive + $x : $y_exclusive - $y - $x_exclusive + $x))
; [eval] $x_ge_0 && $y_ge_0
(push) ; 2
; [then-branch: 2 | !($x@4@00 >= 0) | live]
; [else-branch: 2 | $x@4@00 >= 0 | live]
(push) ; 3
; [then-branch: 2 | !($x@4@00 >= 0)]
(assert (not (>= $x@4@00 0)))
(pop) ; 3
(push) ; 3
; [else-branch: 2 | $x@4@00 >= 0]
(assert (>= $x@4@00 0))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (>= $x@4@00 0) (not (>= $x@4@00 0))))
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and (>= $x@4@00 0) (>= $y@5@00 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and (>= $x@4@00 0) (>= $y@5@00 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | $x@4@00 >= 0 && $y@5@00 >= 0 | live]
; [else-branch: 3 | !($x@4@00 >= 0 && $y@5@00 >= 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | $x@4@00 >= 0 && $y@5@00 >= 0]
(assert (and (>= $x@4@00 0) (>= $y@5@00 0)))
; [eval] $y_exclusive - $x_exclusive
(pop) ; 3
(push) ; 3
; [else-branch: 3 | !($x@4@00 >= 0 && $y@5@00 >= 0)]
(assert (not (and (>= $x@4@00 0) (>= $y@5@00 0))))
; [eval] (!$x_ge_0 && $y_ge_0 ? $y_exclusive - $x_exclusive + $x : $y_exclusive - $y - $x_exclusive + $x)
; [eval] !$x_ge_0 && $y_ge_0
; [eval] !$x_ge_0
(push) ; 4
; [then-branch: 4 | $x@4@00 >= 0 | live]
; [else-branch: 4 | !($x@4@00 >= 0) | live]
(push) ; 5
; [then-branch: 4 | $x@4@00 >= 0]
(assert (>= $x@4@00 0))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !($x@4@00 >= 0)]
(assert (not (>= $x@4@00 0)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (and (not (>= $x@4@00 0)) (>= $y@5@00 0)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and (not (>= $x@4@00 0)) (>= $y@5@00 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | !($x@4@00 >= 0) && $y@5@00 >= 0 | live]
; [else-branch: 5 | !(!($x@4@00 >= 0) && $y@5@00 >= 0) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 5 | !($x@4@00 >= 0) && $y@5@00 >= 0]
(assert (and (not (>= $x@4@00 0)) (>= $y@5@00 0)))
; [eval] $y_exclusive - $x_exclusive + $x
; [eval] $y_exclusive - $x_exclusive
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(!($x@4@00 >= 0) && $y@5@00 >= 0)]
(assert (not (and (not (>= $x@4@00 0)) (>= $y@5@00 0))))
; [eval] $y_exclusive - $y - $x_exclusive + $x
; [eval] $y_exclusive - $y - $x_exclusive
; [eval] $y_exclusive - $y
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (not (>= $x@4@00 0)) (>= $y@5@00 0)))
  (and (not (>= $x@4@00 0)) (>= $y@5@00 0))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (and (>= $x@4@00 0) (>= $y@5@00 0)))
  (and
    (not (and (>= $x@4@00 0) (>= $y@5@00 0)))
    (or
      (not (and (not (>= $x@4@00 0)) (>= $y@5@00 0)))
      (and (not (>= $x@4@00 0)) (>= $y@5@00 0))))))
(assert (or
  (not (and (>= $x@4@00 0) (>= $y@5@00 0)))
  (and (>= $x@4@00 0) (>= $y@5@00 0))))
(assert (=
  result@6@00
  (ite
    (and (>= $x@4@00 0) (>= $y@5@00 0))
    (-
      (ite
        (>= $y@5@00 0)
        (div (* (- $y@5@00 1) $y@5@00) 2)
        (div (* (- (- 0 $y@5@00) 1) (- 0 $y@5@00)) 2))
      (ite
        (>= $x@4@00 0)
        (div (* (- $x@4@00 1) $x@4@00) 2)
        (div (* (- (- 0 $x@4@00) 1) (- 0 $x@4@00)) 2)))
    (ite
      (and (not (>= $x@4@00 0)) (>= $y@5@00 0))
      (+
        (-
          (ite
            (>= $y@5@00 0)
            (div (* (- $y@5@00 1) $y@5@00) 2)
            (div (* (- (- 0 $y@5@00) 1) (- 0 $y@5@00)) 2))
          (ite
            (>= $x@4@00 0)
            (div (* (- $x@4@00 1) $x@4@00) 2)
            (div (* (- (- 0 $x@4@00) 1) (- 0 $x@4@00)) 2)))
        $x@4@00)
      (+
        (-
          (-
            (ite
              (>= $y@5@00 0)
              (div (* (- $y@5@00 1) $y@5@00) 2)
              (div (* (- (- 0 $y@5@00) 1) (- 0 $y@5@00)) 2))
            $y@5@00)
          (ite
            (>= $x@4@00 0)
            (div (* (- $x@4@00 1) $x@4@00) 2)
            (div (* (- (- 0 $x@4@00) 1) (- 0 $x@4@00)) 2)))
        $x@4@00)))))
(pop) ; 1
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
  :qid |quant-u-1586|)))
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
  :qid |quant-u-1587|)))
; ---------- $failed ----------
(declare-const $address@11@00 Int)
; ---------- $failed_0 ----------
(declare-const $address@12@00 Int)
; ---------- $allocation ----------
(declare-const $resource@13@00 $Struct)
(declare-const $address@14@00 Int)
; ---------- $allocation_0 ----------
(declare-const $resource@15@00 $Struct)
(declare-const $address@16@00 Int)
; ---------- $offer ----------
(declare-const $from_resource@17@00 $Struct)
(declare-const $to_resource@18@00 $Struct)
(declare-const $from_amount@19@00 Int)
(declare-const $to_amount@20@00 Int)
(declare-const $from_address@21@00 Int)
(declare-const $to_address@22@00 Int)
; ---------- $offer_0 ----------
(declare-const $from_resource@23@00 $Struct)
(declare-const $to_resource@24@00 $Struct)
(declare-const $from_amount@25@00 Int)
(declare-const $to_amount@26@00 Int)
(declare-const $from_address@27@00 Int)
(declare-const $to_address@28@00 Int)
; ---------- $trust ----------
(declare-const $address@29@00 Int)
(declare-const $by_address@30@00 Int)
; ---------- $trust_0 ----------
(declare-const $address@31@00 Int)
(declare-const $by_address@32@00 Int)
; ---------- $performs$create ----------
(declare-const $resource@33@00 $Struct)
(declare-const $from_address@34@00 Int)
(declare-const $to_address@35@00 Int)
(declare-const $amount@36@00 Int)
; ---------- $performs$create_0 ----------
(declare-const $resource@37@00 $Struct)
(declare-const $from_address@38@00 Int)
(declare-const $to_address@39@00 Int)
(declare-const $amount@40@00 Int)
; ---------- $performs$destroy ----------
(declare-const $resource@41@00 $Struct)
(declare-const $from_address@42@00 Int)
(declare-const $amount@43@00 Int)
; ---------- $performs$destroy_0 ----------
(declare-const $resource@44@00 $Struct)
(declare-const $from_address@45@00 Int)
(declare-const $amount@46@00 Int)
; ---------- $performs$reallocate ----------
(declare-const $resource@47@00 $Struct)
(declare-const $from_address@48@00 Int)
(declare-const $to_address@49@00 Int)
(declare-const $amount@50@00 Int)
; ---------- $performs$reallocate_0 ----------
(declare-const $resource@51@00 $Struct)
(declare-const $from_address@52@00 Int)
(declare-const $to_address@53@00 Int)
(declare-const $amount@54@00 Int)
; ---------- $performs$offer ----------
(declare-const $from_resource@55@00 $Struct)
(declare-const $to_resource@56@00 $Struct)
(declare-const $from_amount@57@00 Int)
(declare-const $to_amount@58@00 Int)
(declare-const $from_address@59@00 Int)
(declare-const $to_address@60@00 Int)
(declare-const $times@61@00 Int)
; ---------- $performs$offer_0 ----------
(declare-const $from_resource@62@00 $Struct)
(declare-const $to_resource@63@00 $Struct)
(declare-const $from_amount@64@00 Int)
(declare-const $to_amount@65@00 Int)
(declare-const $from_address@66@00 Int)
(declare-const $to_address@67@00 Int)
(declare-const $times@68@00 Int)
; ---------- $performs$revoke ----------
(declare-const $from_resource@69@00 $Struct)
(declare-const $to_resource@70@00 $Struct)
(declare-const $from_amount@71@00 Int)
(declare-const $to_amount@72@00 Int)
(declare-const $from_address@73@00 Int)
(declare-const $to_adress@74@00 Int)
; ---------- $performs$revoke_0 ----------
(declare-const $from_resource@75@00 $Struct)
(declare-const $to_resource@76@00 $Struct)
(declare-const $from_amount@77@00 Int)
(declare-const $to_amount@78@00 Int)
(declare-const $from_address@79@00 Int)
(declare-const $to_adress@80@00 Int)
; ---------- $performs$trust ----------
(declare-const $address@81@00 Int)
(declare-const $by_address@82@00 Int)
(declare-const $value@83@00 Bool)
; ---------- $performs$trust_0 ----------
(declare-const $address@84@00 Int)
(declare-const $by_address@85@00 Int)
(declare-const $value@86@00 Bool)
; ---------- e$TokenPurchase ----------
(declare-const $arg0@87@00 Int)
(declare-const $arg1@88@00 Int)
(declare-const $arg2@89@00 Int)
; ---------- e$TokenPurchase_0 ----------
(declare-const $arg0@90@00 Int)
(declare-const $arg1@91@00 Int)
(declare-const $arg2@92@00 Int)
; ---------- e$EthPurchase ----------
(declare-const $arg0@93@00 Int)
(declare-const $arg1@94@00 Int)
(declare-const $arg2@95@00 Int)
; ---------- e$EthPurchase_0 ----------
(declare-const $arg0@96@00 Int)
(declare-const $arg1@97@00 Int)
(declare-const $arg2@98@00 Int)
; ---------- e$AddLiquidity ----------
(declare-const $arg0@99@00 Int)
(declare-const $arg1@100@00 Int)
(declare-const $arg2@101@00 Int)
; ---------- e$AddLiquidity_0 ----------
(declare-const $arg0@102@00 Int)
(declare-const $arg1@103@00 Int)
(declare-const $arg2@104@00 Int)
; ---------- e$RemoveLiquidity ----------
(declare-const $arg0@105@00 Int)
(declare-const $arg1@106@00 Int)
(declare-const $arg2@107@00 Int)
; ---------- e$RemoveLiquidity_0 ----------
(declare-const $arg0@108@00 Int)
(declare-const $arg1@109@00 Int)
(declare-const $arg2@110@00 Int)
; ---------- e$Transfer ----------
(declare-const $arg0@111@00 Int)
(declare-const $arg1@112@00 Int)
(declare-const $arg2@113@00 Int)
; ---------- e$Transfer_0 ----------
(declare-const $arg0@114@00 Int)
(declare-const $arg1@115@00 Int)
(declare-const $arg2@116@00 Int)
; ---------- e$Approval ----------
(declare-const $arg0@117@00 Int)
(declare-const $arg1@118@00 Int)
(declare-const $arg2@119@00 Int)
; ---------- e$Approval_0 ----------
(declare-const $arg0@120@00 Int)
(declare-const $arg1@121@00 Int)
(declare-const $arg2@122@00 Int)
; ---------- $accessible$setup ----------
(declare-const $tag@123@00 Int)
(declare-const $to@124@00 Int)
(declare-const $amount@125@00 Int)
(declare-const $arg0@126@00 Int)
; ---------- $accessible$setup_0 ----------
(declare-const $tag@127@00 Int)
(declare-const $to@128@00 Int)
(declare-const $amount@129@00 Int)
(declare-const $arg0@130@00 Int)
; ---------- $accessible$addLiquidity ----------
(declare-const $tag@131@00 Int)
(declare-const $to@132@00 Int)
(declare-const $amount@133@00 Int)
(declare-const $arg0@134@00 Int)
(declare-const $arg1@135@00 Int)
(declare-const $arg2@136@00 Int)
; ---------- $accessible$addLiquidity_0 ----------
(declare-const $tag@137@00 Int)
(declare-const $to@138@00 Int)
(declare-const $amount@139@00 Int)
(declare-const $arg0@140@00 Int)
(declare-const $arg1@141@00 Int)
(declare-const $arg2@142@00 Int)
; ---------- $accessible$removeLiquidity ----------
(declare-const $tag@143@00 Int)
(declare-const $to@144@00 Int)
(declare-const $amount@145@00 Int)
(declare-const $arg0@146@00 Int)
(declare-const $arg1@147@00 Int)
(declare-const $arg2@148@00 Int)
(declare-const $arg3@149@00 Int)
; ---------- $accessible$removeLiquidity_0 ----------
(declare-const $tag@150@00 Int)
(declare-const $to@151@00 Int)
(declare-const $amount@152@00 Int)
(declare-const $arg0@153@00 Int)
(declare-const $arg1@154@00 Int)
(declare-const $arg2@155@00 Int)
(declare-const $arg3@156@00 Int)
; ---------- $accessible$getInputPrice ----------
(declare-const $tag@157@00 Int)
(declare-const $to@158@00 Int)
(declare-const $amount@159@00 Int)
(declare-const $arg0@160@00 Int)
(declare-const $arg1@161@00 Int)
(declare-const $arg2@162@00 Int)
; ---------- $accessible$getInputPrice_0 ----------
(declare-const $tag@163@00 Int)
(declare-const $to@164@00 Int)
(declare-const $amount@165@00 Int)
(declare-const $arg0@166@00 Int)
(declare-const $arg1@167@00 Int)
(declare-const $arg2@168@00 Int)
; ---------- $accessible$getOutputPrice ----------
(declare-const $tag@169@00 Int)
(declare-const $to@170@00 Int)
(declare-const $amount@171@00 Int)
(declare-const $arg0@172@00 Int)
(declare-const $arg1@173@00 Int)
(declare-const $arg2@174@00 Int)
; ---------- $accessible$getOutputPrice_0 ----------
(declare-const $tag@175@00 Int)
(declare-const $to@176@00 Int)
(declare-const $amount@177@00 Int)
(declare-const $arg0@178@00 Int)
(declare-const $arg1@179@00 Int)
(declare-const $arg2@180@00 Int)
; ---------- $accessible$ethToTokenInput ----------
(declare-const $tag@181@00 Int)
(declare-const $to@182@00 Int)
(declare-const $amount@183@00 Int)
(declare-const $arg0@184@00 Int)
(declare-const $arg1@185@00 Int)
(declare-const $arg2@186@00 Int)
(declare-const $arg3@187@00 Int)
(declare-const $arg4@188@00 Int)
; ---------- $accessible$ethToTokenInput_0 ----------
(declare-const $tag@189@00 Int)
(declare-const $to@190@00 Int)
(declare-const $amount@191@00 Int)
(declare-const $arg0@192@00 Int)
(declare-const $arg1@193@00 Int)
(declare-const $arg2@194@00 Int)
(declare-const $arg3@195@00 Int)
(declare-const $arg4@196@00 Int)
; ---------- $accessible$__default__ ----------
(declare-const $tag@197@00 Int)
(declare-const $to@198@00 Int)
(declare-const $amount@199@00 Int)
; ---------- $accessible$__default___0 ----------
(declare-const $tag@200@00 Int)
(declare-const $to@201@00 Int)
(declare-const $amount@202@00 Int)
; ---------- $accessible$ethToTokenSwapInput ----------
(declare-const $tag@203@00 Int)
(declare-const $to@204@00 Int)
(declare-const $amount@205@00 Int)
(declare-const $arg0@206@00 Int)
(declare-const $arg1@207@00 Int)
; ---------- $accessible$ethToTokenSwapInput_0 ----------
(declare-const $tag@208@00 Int)
(declare-const $to@209@00 Int)
(declare-const $amount@210@00 Int)
(declare-const $arg0@211@00 Int)
(declare-const $arg1@212@00 Int)
; ---------- $accessible$ethToTokenTransferInput ----------
(declare-const $tag@213@00 Int)
(declare-const $to@214@00 Int)
(declare-const $amount@215@00 Int)
(declare-const $arg0@216@00 Int)
(declare-const $arg1@217@00 Int)
(declare-const $arg2@218@00 Int)
; ---------- $accessible$ethToTokenTransferInput_0 ----------
(declare-const $tag@219@00 Int)
(declare-const $to@220@00 Int)
(declare-const $amount@221@00 Int)
(declare-const $arg0@222@00 Int)
(declare-const $arg1@223@00 Int)
(declare-const $arg2@224@00 Int)
; ---------- $accessible$ethToTokenOutput ----------
(declare-const $tag@225@00 Int)
(declare-const $to@226@00 Int)
(declare-const $amount@227@00 Int)
(declare-const $arg0@228@00 Int)
(declare-const $arg1@229@00 Int)
(declare-const $arg2@230@00 Int)
(declare-const $arg3@231@00 Int)
(declare-const $arg4@232@00 Int)
; ---------- $accessible$ethToTokenOutput_0 ----------
(declare-const $tag@233@00 Int)
(declare-const $to@234@00 Int)
(declare-const $amount@235@00 Int)
(declare-const $arg0@236@00 Int)
(declare-const $arg1@237@00 Int)
(declare-const $arg2@238@00 Int)
(declare-const $arg3@239@00 Int)
(declare-const $arg4@240@00 Int)
; ---------- $accessible$ethToTokenSwapOutput ----------
(declare-const $tag@241@00 Int)
(declare-const $to@242@00 Int)
(declare-const $amount@243@00 Int)
(declare-const $arg0@244@00 Int)
(declare-const $arg1@245@00 Int)
; ---------- $accessible$ethToTokenSwapOutput_0 ----------
(declare-const $tag@246@00 Int)
(declare-const $to@247@00 Int)
(declare-const $amount@248@00 Int)
(declare-const $arg0@249@00 Int)
(declare-const $arg1@250@00 Int)
; ---------- $accessible$ethToTokenTransferOutput ----------
(declare-const $tag@251@00 Int)
(declare-const $to@252@00 Int)
(declare-const $amount@253@00 Int)
(declare-const $arg0@254@00 Int)
(declare-const $arg1@255@00 Int)
(declare-const $arg2@256@00 Int)
; ---------- $accessible$ethToTokenTransferOutput_0 ----------
(declare-const $tag@257@00 Int)
(declare-const $to@258@00 Int)
(declare-const $amount@259@00 Int)
(declare-const $arg0@260@00 Int)
(declare-const $arg1@261@00 Int)
(declare-const $arg2@262@00 Int)
; ---------- $accessible$tokenToEthInput ----------
(declare-const $tag@263@00 Int)
(declare-const $to@264@00 Int)
(declare-const $amount@265@00 Int)
(declare-const $arg0@266@00 Int)
(declare-const $arg1@267@00 Int)
(declare-const $arg2@268@00 Int)
(declare-const $arg3@269@00 Int)
(declare-const $arg4@270@00 Int)
; ---------- $accessible$tokenToEthInput_0 ----------
(declare-const $tag@271@00 Int)
(declare-const $to@272@00 Int)
(declare-const $amount@273@00 Int)
(declare-const $arg0@274@00 Int)
(declare-const $arg1@275@00 Int)
(declare-const $arg2@276@00 Int)
(declare-const $arg3@277@00 Int)
(declare-const $arg4@278@00 Int)
; ---------- $accessible$tokenToEthSwapInput ----------
(declare-const $tag@279@00 Int)
(declare-const $to@280@00 Int)
(declare-const $amount@281@00 Int)
(declare-const $arg0@282@00 Int)
(declare-const $arg1@283@00 Int)
(declare-const $arg2@284@00 Int)
; ---------- $accessible$tokenToEthSwapInput_0 ----------
(declare-const $tag@285@00 Int)
(declare-const $to@286@00 Int)
(declare-const $amount@287@00 Int)
(declare-const $arg0@288@00 Int)
(declare-const $arg1@289@00 Int)
(declare-const $arg2@290@00 Int)
; ---------- $accessible$tokenToEthTransferInput ----------
(declare-const $tag@291@00 Int)
(declare-const $to@292@00 Int)
(declare-const $amount@293@00 Int)
(declare-const $arg0@294@00 Int)
(declare-const $arg1@295@00 Int)
(declare-const $arg2@296@00 Int)
(declare-const $arg3@297@00 Int)
; ---------- $accessible$tokenToEthTransferInput_0 ----------
(declare-const $tag@298@00 Int)
(declare-const $to@299@00 Int)
(declare-const $amount@300@00 Int)
(declare-const $arg0@301@00 Int)
(declare-const $arg1@302@00 Int)
(declare-const $arg2@303@00 Int)
(declare-const $arg3@304@00 Int)
; ---------- $accessible$tokenToEthOutput ----------
(declare-const $tag@305@00 Int)
(declare-const $to@306@00 Int)
(declare-const $amount@307@00 Int)
(declare-const $arg0@308@00 Int)
(declare-const $arg1@309@00 Int)
(declare-const $arg2@310@00 Int)
(declare-const $arg3@311@00 Int)
(declare-const $arg4@312@00 Int)
; ---------- $accessible$tokenToEthOutput_0 ----------
(declare-const $tag@313@00 Int)
(declare-const $to@314@00 Int)
(declare-const $amount@315@00 Int)
(declare-const $arg0@316@00 Int)
(declare-const $arg1@317@00 Int)
(declare-const $arg2@318@00 Int)
(declare-const $arg3@319@00 Int)
(declare-const $arg4@320@00 Int)
; ---------- $accessible$tokenToEthSwapOutput ----------
(declare-const $tag@321@00 Int)
(declare-const $to@322@00 Int)
(declare-const $amount@323@00 Int)
(declare-const $arg0@324@00 Int)
(declare-const $arg1@325@00 Int)
(declare-const $arg2@326@00 Int)
; ---------- $accessible$tokenToEthSwapOutput_0 ----------
(declare-const $tag@327@00 Int)
(declare-const $to@328@00 Int)
(declare-const $amount@329@00 Int)
(declare-const $arg0@330@00 Int)
(declare-const $arg1@331@00 Int)
(declare-const $arg2@332@00 Int)
; ---------- $accessible$tokenToEthTransferOutput ----------
(declare-const $tag@333@00 Int)
(declare-const $to@334@00 Int)
(declare-const $amount@335@00 Int)
(declare-const $arg0@336@00 Int)
(declare-const $arg1@337@00 Int)
(declare-const $arg2@338@00 Int)
(declare-const $arg3@339@00 Int)
; ---------- $accessible$tokenToEthTransferOutput_0 ----------
(declare-const $tag@340@00 Int)
(declare-const $to@341@00 Int)
(declare-const $amount@342@00 Int)
(declare-const $arg0@343@00 Int)
(declare-const $arg1@344@00 Int)
(declare-const $arg2@345@00 Int)
(declare-const $arg3@346@00 Int)
; ---------- $accessible$tokenToTokenInput ----------
(declare-const $tag@347@00 Int)
(declare-const $to@348@00 Int)
(declare-const $amount@349@00 Int)
(declare-const $arg0@350@00 Int)
(declare-const $arg1@351@00 Int)
(declare-const $arg2@352@00 Int)
(declare-const $arg3@353@00 Int)
(declare-const $arg4@354@00 Int)
(declare-const $arg5@355@00 Int)
(declare-const $arg6@356@00 Int)
; ---------- $accessible$tokenToTokenInput_0 ----------
(declare-const $tag@357@00 Int)
(declare-const $to@358@00 Int)
(declare-const $amount@359@00 Int)
(declare-const $arg0@360@00 Int)
(declare-const $arg1@361@00 Int)
(declare-const $arg2@362@00 Int)
(declare-const $arg3@363@00 Int)
(declare-const $arg4@364@00 Int)
(declare-const $arg5@365@00 Int)
(declare-const $arg6@366@00 Int)
; ---------- $accessible$tokenToTokenSwapInput ----------
(declare-const $tag@367@00 Int)
(declare-const $to@368@00 Int)
(declare-const $amount@369@00 Int)
(declare-const $arg0@370@00 Int)
(declare-const $arg1@371@00 Int)
(declare-const $arg2@372@00 Int)
(declare-const $arg3@373@00 Int)
(declare-const $arg4@374@00 Int)
; ---------- $accessible$tokenToTokenSwapInput_0 ----------
(declare-const $tag@375@00 Int)
(declare-const $to@376@00 Int)
(declare-const $amount@377@00 Int)
(declare-const $arg0@378@00 Int)
(declare-const $arg1@379@00 Int)
(declare-const $arg2@380@00 Int)
(declare-const $arg3@381@00 Int)
(declare-const $arg4@382@00 Int)
; ---------- $accessible$tokenToTokenTransferInput ----------
(declare-const $tag@383@00 Int)
(declare-const $to@384@00 Int)
(declare-const $amount@385@00 Int)
(declare-const $arg0@386@00 Int)
(declare-const $arg1@387@00 Int)
(declare-const $arg2@388@00 Int)
(declare-const $arg3@389@00 Int)
(declare-const $arg4@390@00 Int)
(declare-const $arg5@391@00 Int)
; ---------- $accessible$tokenToTokenTransferInput_0 ----------
(declare-const $tag@392@00 Int)
(declare-const $to@393@00 Int)
(declare-const $amount@394@00 Int)
(declare-const $arg0@395@00 Int)
(declare-const $arg1@396@00 Int)
(declare-const $arg2@397@00 Int)
(declare-const $arg3@398@00 Int)
(declare-const $arg4@399@00 Int)
(declare-const $arg5@400@00 Int)
; ---------- $accessible$tokenToTokenOutput ----------
(declare-const $tag@401@00 Int)
(declare-const $to@402@00 Int)
(declare-const $amount@403@00 Int)
(declare-const $arg0@404@00 Int)
(declare-const $arg1@405@00 Int)
(declare-const $arg2@406@00 Int)
(declare-const $arg3@407@00 Int)
(declare-const $arg4@408@00 Int)
(declare-const $arg5@409@00 Int)
(declare-const $arg6@410@00 Int)
; ---------- $accessible$tokenToTokenOutput_0 ----------
(declare-const $tag@411@00 Int)
(declare-const $to@412@00 Int)
(declare-const $amount@413@00 Int)
(declare-const $arg0@414@00 Int)
(declare-const $arg1@415@00 Int)
(declare-const $arg2@416@00 Int)
(declare-const $arg3@417@00 Int)
(declare-const $arg4@418@00 Int)
(declare-const $arg5@419@00 Int)
(declare-const $arg6@420@00 Int)
; ---------- $accessible$tokenToTokenSwapOutput ----------
(declare-const $tag@421@00 Int)
(declare-const $to@422@00 Int)
(declare-const $amount@423@00 Int)
(declare-const $arg0@424@00 Int)
(declare-const $arg1@425@00 Int)
(declare-const $arg2@426@00 Int)
(declare-const $arg3@427@00 Int)
(declare-const $arg4@428@00 Int)
; ---------- $accessible$tokenToTokenSwapOutput_0 ----------
(declare-const $tag@429@00 Int)
(declare-const $to@430@00 Int)
(declare-const $amount@431@00 Int)
(declare-const $arg0@432@00 Int)
(declare-const $arg1@433@00 Int)
(declare-const $arg2@434@00 Int)
(declare-const $arg3@435@00 Int)
(declare-const $arg4@436@00 Int)
; ---------- $accessible$tokenToTokenTransferOutput ----------
(declare-const $tag@437@00 Int)
(declare-const $to@438@00 Int)
(declare-const $amount@439@00 Int)
(declare-const $arg0@440@00 Int)
(declare-const $arg1@441@00 Int)
(declare-const $arg2@442@00 Int)
(declare-const $arg3@443@00 Int)
(declare-const $arg4@444@00 Int)
(declare-const $arg5@445@00 Int)
; ---------- $accessible$tokenToTokenTransferOutput_0 ----------
(declare-const $tag@446@00 Int)
(declare-const $to@447@00 Int)
(declare-const $amount@448@00 Int)
(declare-const $arg0@449@00 Int)
(declare-const $arg1@450@00 Int)
(declare-const $arg2@451@00 Int)
(declare-const $arg3@452@00 Int)
(declare-const $arg4@453@00 Int)
(declare-const $arg5@454@00 Int)
; ---------- $accessible$tokenToExchangeSwapInput ----------
(declare-const $tag@455@00 Int)
(declare-const $to@456@00 Int)
(declare-const $amount@457@00 Int)
(declare-const $arg0@458@00 Int)
(declare-const $arg1@459@00 Int)
(declare-const $arg2@460@00 Int)
(declare-const $arg3@461@00 Int)
(declare-const $arg4@462@00 Int)
; ---------- $accessible$tokenToExchangeSwapInput_0 ----------
(declare-const $tag@463@00 Int)
(declare-const $to@464@00 Int)
(declare-const $amount@465@00 Int)
(declare-const $arg0@466@00 Int)
(declare-const $arg1@467@00 Int)
(declare-const $arg2@468@00 Int)
(declare-const $arg3@469@00 Int)
(declare-const $arg4@470@00 Int)
; ---------- $accessible$tokenToExchangeTransferInput ----------
(declare-const $tag@471@00 Int)
(declare-const $to@472@00 Int)
(declare-const $amount@473@00 Int)
(declare-const $arg0@474@00 Int)
(declare-const $arg1@475@00 Int)
(declare-const $arg2@476@00 Int)
(declare-const $arg3@477@00 Int)
(declare-const $arg4@478@00 Int)
(declare-const $arg5@479@00 Int)
; ---------- $accessible$tokenToExchangeTransferInput_0 ----------
(declare-const $tag@480@00 Int)
(declare-const $to@481@00 Int)
(declare-const $amount@482@00 Int)
(declare-const $arg0@483@00 Int)
(declare-const $arg1@484@00 Int)
(declare-const $arg2@485@00 Int)
(declare-const $arg3@486@00 Int)
(declare-const $arg4@487@00 Int)
(declare-const $arg5@488@00 Int)
; ---------- $accessible$tokenToExchangeSwapOutput ----------
(declare-const $tag@489@00 Int)
(declare-const $to@490@00 Int)
(declare-const $amount@491@00 Int)
(declare-const $arg0@492@00 Int)
(declare-const $arg1@493@00 Int)
(declare-const $arg2@494@00 Int)
(declare-const $arg3@495@00 Int)
(declare-const $arg4@496@00 Int)
; ---------- $accessible$tokenToExchangeSwapOutput_0 ----------
(declare-const $tag@497@00 Int)
(declare-const $to@498@00 Int)
(declare-const $amount@499@00 Int)
(declare-const $arg0@500@00 Int)
(declare-const $arg1@501@00 Int)
(declare-const $arg2@502@00 Int)
(declare-const $arg3@503@00 Int)
(declare-const $arg4@504@00 Int)
; ---------- $accessible$tokenToExchangeTransferOutput ----------
(declare-const $tag@505@00 Int)
(declare-const $to@506@00 Int)
(declare-const $amount@507@00 Int)
(declare-const $arg0@508@00 Int)
(declare-const $arg1@509@00 Int)
(declare-const $arg2@510@00 Int)
(declare-const $arg3@511@00 Int)
(declare-const $arg4@512@00 Int)
(declare-const $arg5@513@00 Int)
; ---------- $accessible$tokenToExchangeTransferOutput_0 ----------
(declare-const $tag@514@00 Int)
(declare-const $to@515@00 Int)
(declare-const $amount@516@00 Int)
(declare-const $arg0@517@00 Int)
(declare-const $arg1@518@00 Int)
(declare-const $arg2@519@00 Int)
(declare-const $arg3@520@00 Int)
(declare-const $arg4@521@00 Int)
(declare-const $arg5@522@00 Int)
; ---------- $accessible$getEthToTokenInputPrice ----------
(declare-const $tag@523@00 Int)
(declare-const $to@524@00 Int)
(declare-const $amount@525@00 Int)
(declare-const $arg0@526@00 Int)
; ---------- $accessible$getEthToTokenInputPrice_0 ----------
(declare-const $tag@527@00 Int)
(declare-const $to@528@00 Int)
(declare-const $amount@529@00 Int)
(declare-const $arg0@530@00 Int)
; ---------- $accessible$getEthToTokenOutputPrice ----------
(declare-const $tag@531@00 Int)
(declare-const $to@532@00 Int)
(declare-const $amount@533@00 Int)
(declare-const $arg0@534@00 Int)
; ---------- $accessible$getEthToTokenOutputPrice_0 ----------
(declare-const $tag@535@00 Int)
(declare-const $to@536@00 Int)
(declare-const $amount@537@00 Int)
(declare-const $arg0@538@00 Int)
; ---------- $accessible$getTokenToEthInputPrice ----------
(declare-const $tag@539@00 Int)
(declare-const $to@540@00 Int)
(declare-const $amount@541@00 Int)
(declare-const $arg0@542@00 Int)
; ---------- $accessible$getTokenToEthInputPrice_0 ----------
(declare-const $tag@543@00 Int)
(declare-const $to@544@00 Int)
(declare-const $amount@545@00 Int)
(declare-const $arg0@546@00 Int)
; ---------- $accessible$getTokenToEthOutputPrice ----------
(declare-const $tag@547@00 Int)
(declare-const $to@548@00 Int)
(declare-const $amount@549@00 Int)
(declare-const $arg0@550@00 Int)
; ---------- $accessible$getTokenToEthOutputPrice_0 ----------
(declare-const $tag@551@00 Int)
(declare-const $to@552@00 Int)
(declare-const $amount@553@00 Int)
(declare-const $arg0@554@00 Int)
; ---------- $accessible$tokenAddress ----------
(declare-const $tag@555@00 Int)
(declare-const $to@556@00 Int)
(declare-const $amount@557@00 Int)
; ---------- $accessible$tokenAddress_0 ----------
(declare-const $tag@558@00 Int)
(declare-const $to@559@00 Int)
(declare-const $amount@560@00 Int)
; ---------- $accessible$factoryAddress ----------
(declare-const $tag@561@00 Int)
(declare-const $to@562@00 Int)
(declare-const $amount@563@00 Int)
; ---------- $accessible$factoryAddress_0 ----------
(declare-const $tag@564@00 Int)
(declare-const $to@565@00 Int)
(declare-const $amount@566@00 Int)
; ---------- $accessible$balanceOf ----------
(declare-const $tag@567@00 Int)
(declare-const $to@568@00 Int)
(declare-const $amount@569@00 Int)
(declare-const $arg0@570@00 Int)
; ---------- $accessible$balanceOf_0 ----------
(declare-const $tag@571@00 Int)
(declare-const $to@572@00 Int)
(declare-const $amount@573@00 Int)
(declare-const $arg0@574@00 Int)
; ---------- $accessible$transfer ----------
(declare-const $tag@575@00 Int)
(declare-const $to@576@00 Int)
(declare-const $amount@577@00 Int)
(declare-const $arg0@578@00 Int)
(declare-const $arg1@579@00 Int)
; ---------- $accessible$transfer_0 ----------
(declare-const $tag@580@00 Int)
(declare-const $to@581@00 Int)
(declare-const $amount@582@00 Int)
(declare-const $arg0@583@00 Int)
(declare-const $arg1@584@00 Int)
; ---------- $accessible$transferFrom ----------
(declare-const $tag@585@00 Int)
(declare-const $to@586@00 Int)
(declare-const $amount@587@00 Int)
(declare-const $arg0@588@00 Int)
(declare-const $arg1@589@00 Int)
(declare-const $arg2@590@00 Int)
; ---------- $accessible$transferFrom_0 ----------
(declare-const $tag@591@00 Int)
(declare-const $to@592@00 Int)
(declare-const $amount@593@00 Int)
(declare-const $arg0@594@00 Int)
(declare-const $arg1@595@00 Int)
(declare-const $arg2@596@00 Int)
; ---------- $accessible$approve ----------
(declare-const $tag@597@00 Int)
(declare-const $to@598@00 Int)
(declare-const $amount@599@00 Int)
(declare-const $arg0@600@00 Int)
(declare-const $arg1@601@00 Int)
; ---------- $accessible$approve_0 ----------
(declare-const $tag@602@00 Int)
(declare-const $to@603@00 Int)
(declare-const $amount@604@00 Int)
(declare-const $arg0@605@00 Int)
(declare-const $arg1@606@00 Int)
; ---------- $accessible$allowance ----------
(declare-const $tag@607@00 Int)
(declare-const $to@608@00 Int)
(declare-const $amount@609@00 Int)
(declare-const $arg0@610@00 Int)
(declare-const $arg1@611@00 Int)
; ---------- $accessible$allowance_0 ----------
(declare-const $tag@612@00 Int)
(declare-const $to@613@00 Int)
(declare-const $amount@614@00 Int)
(declare-const $arg0@615@00 Int)
(declare-const $arg1@616@00 Int)
; ---------- $accessible$__init__ ----------
(declare-const $tag@617@00 Int)
(declare-const $to@618@00 Int)
(declare-const $amount@619@00 Int)
; ---------- $accessible$__init___0 ----------
(declare-const $tag@620@00 Int)
(declare-const $to@621@00 Int)
(declare-const $amount@622@00 Int)
