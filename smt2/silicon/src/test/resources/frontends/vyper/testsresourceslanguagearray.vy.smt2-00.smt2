(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 09:56:08
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
(declare-sort Seq<Seq<Seq<Int>>> 0)
(declare-sort Seq<Seq<Int>> 0)
(declare-sort Seq<Int> 0)
(declare-sort $Array<Seq<Seq<Int>>> 0)
(declare-sort $Struct 0)
(declare-sort $Contract 0)
(declare-sort $Array<Seq<Int>> 0)
(declare-sort $StructOps<$Struct> 0)
(declare-sort $StructOps<Seq<Int>> 0)
(declare-sort $Range 0)
(declare-sort $Int 0)
(declare-sort $StructOps<$Map<Int~_Int>> 0)
(declare-sort s$struct$self 0)
(declare-sort $StructOps<Seq<Seq<Seq<Int>>>> 0)
(declare-sort $Map<Int~_Seq<Int>> 0)
(declare-sort $Math 0)
(declare-sort $StructOps<Int> 0)
(declare-sort $StructOps<$Map<Int~_Seq<Int>>> 0)
(declare-sort s$resource$$creator 0)
(declare-sort $Map<Int~_$Struct> 0)
(declare-sort $StructOps<Bool> 0)
(declare-sort $Blockchain 0)
(declare-sort $Array<Int> 0)
(declare-sort $Convert 0)
(declare-sort $StructOps<Seq<Seq<Int>>> 0)
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
(declare-fun $SortWrappers.Seq<Seq<Seq<Int>>>To$Snap (Seq<Seq<Seq<Int>>>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<Seq<Seq<Int>>> ($Snap) Seq<Seq<Seq<Int>>>)
(assert (forall ((x Seq<Seq<Seq<Int>>>)) (!
    (= x ($SortWrappers.$SnapToSeq<Seq<Seq<Int>>>($SortWrappers.Seq<Seq<Seq<Int>>>To$Snap x)))
    :pattern (($SortWrappers.Seq<Seq<Seq<Int>>>To$Snap x))
    :qid |$Snap.$SnapToSeq<Seq<Seq<Int>>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<Seq<Seq<Int>>>To$Snap($SortWrappers.$SnapToSeq<Seq<Seq<Int>>> x)))
    :pattern (($SortWrappers.$SnapToSeq<Seq<Seq<Int>>> x))
    :qid |$Snap.Seq<Seq<Seq<Int>>>To$SnapToSeq<Seq<Seq<Int>>>|
    )))
(declare-fun $SortWrappers.Seq<Seq<Int>>To$Snap (Seq<Seq<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<Seq<Int>> ($Snap) Seq<Seq<Int>>)
(assert (forall ((x Seq<Seq<Int>>)) (!
    (= x ($SortWrappers.$SnapToSeq<Seq<Int>>($SortWrappers.Seq<Seq<Int>>To$Snap x)))
    :pattern (($SortWrappers.Seq<Seq<Int>>To$Snap x))
    :qid |$Snap.$SnapToSeq<Seq<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<Seq<Int>>To$Snap($SortWrappers.$SnapToSeq<Seq<Int>> x)))
    :pattern (($SortWrappers.$SnapToSeq<Seq<Int>> x))
    :qid |$Snap.Seq<Seq<Int>>To$SnapToSeq<Seq<Int>>|
    )))
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
(declare-fun $SortWrappers.$Array<Seq<Seq<Int>>>To$Snap ($Array<Seq<Seq<Int>>>) $Snap)
(declare-fun $SortWrappers.$SnapTo$Array<Seq<Seq<Int>>> ($Snap) $Array<Seq<Seq<Int>>>)
(assert (forall ((x $Array<Seq<Seq<Int>>>)) (!
    (= x ($SortWrappers.$SnapTo$Array<Seq<Seq<Int>>>($SortWrappers.$Array<Seq<Seq<Int>>>To$Snap x)))
    :pattern (($SortWrappers.$Array<Seq<Seq<Int>>>To$Snap x))
    :qid |$Snap.$SnapTo$Array<Seq<Seq<Int>>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$Array<Seq<Seq<Int>>>To$Snap($SortWrappers.$SnapTo$Array<Seq<Seq<Int>>> x)))
    :pattern (($SortWrappers.$SnapTo$Array<Seq<Seq<Int>>> x))
    :qid |$Snap.$Array<Seq<Seq<Int>>>To$SnapTo$Array<Seq<Seq<Int>>>|
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
(declare-fun $SortWrappers.$Array<Seq<Int>>To$Snap ($Array<Seq<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapTo$Array<Seq<Int>> ($Snap) $Array<Seq<Int>>)
(assert (forall ((x $Array<Seq<Int>>)) (!
    (= x ($SortWrappers.$SnapTo$Array<Seq<Int>>($SortWrappers.$Array<Seq<Int>>To$Snap x)))
    :pattern (($SortWrappers.$Array<Seq<Int>>To$Snap x))
    :qid |$Snap.$SnapTo$Array<Seq<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$Array<Seq<Int>>To$Snap($SortWrappers.$SnapTo$Array<Seq<Int>> x)))
    :pattern (($SortWrappers.$SnapTo$Array<Seq<Int>> x))
    :qid |$Snap.$Array<Seq<Int>>To$SnapTo$Array<Seq<Int>>|
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
(declare-fun $SortWrappers.$StructOps<Seq<Seq<Seq<Int>>>>To$Snap ($StructOps<Seq<Seq<Seq<Int>>>>) $Snap)
(declare-fun $SortWrappers.$SnapTo$StructOps<Seq<Seq<Seq<Int>>>> ($Snap) $StructOps<Seq<Seq<Seq<Int>>>>)
(assert (forall ((x $StructOps<Seq<Seq<Seq<Int>>>>)) (!
    (= x ($SortWrappers.$SnapTo$StructOps<Seq<Seq<Seq<Int>>>>($SortWrappers.$StructOps<Seq<Seq<Seq<Int>>>>To$Snap x)))
    :pattern (($SortWrappers.$StructOps<Seq<Seq<Seq<Int>>>>To$Snap x))
    :qid |$Snap.$SnapTo$StructOps<Seq<Seq<Seq<Int>>>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$StructOps<Seq<Seq<Seq<Int>>>>To$Snap($SortWrappers.$SnapTo$StructOps<Seq<Seq<Seq<Int>>>> x)))
    :pattern (($SortWrappers.$SnapTo$StructOps<Seq<Seq<Seq<Int>>>> x))
    :qid |$Snap.$StructOps<Seq<Seq<Seq<Int>>>>To$SnapTo$StructOps<Seq<Seq<Seq<Int>>>>|
    )))
(declare-fun $SortWrappers.$Map<Int~_Seq<Int>>To$Snap ($Map<Int~_Seq<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapTo$Map<Int~_Seq<Int>> ($Snap) $Map<Int~_Seq<Int>>)
(assert (forall ((x $Map<Int~_Seq<Int>>)) (!
    (= x ($SortWrappers.$SnapTo$Map<Int~_Seq<Int>>($SortWrappers.$Map<Int~_Seq<Int>>To$Snap x)))
    :pattern (($SortWrappers.$Map<Int~_Seq<Int>>To$Snap x))
    :qid |$Snap.$SnapTo$Map<Int~_Seq<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$Map<Int~_Seq<Int>>To$Snap($SortWrappers.$SnapTo$Map<Int~_Seq<Int>> x)))
    :pattern (($SortWrappers.$SnapTo$Map<Int~_Seq<Int>> x))
    :qid |$Snap.$Map<Int~_Seq<Int>>To$SnapTo$Map<Int~_Seq<Int>>|
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
(declare-fun $SortWrappers.$StructOps<$Map<Int~_Seq<Int>>>To$Snap ($StructOps<$Map<Int~_Seq<Int>>>) $Snap)
(declare-fun $SortWrappers.$SnapTo$StructOps<$Map<Int~_Seq<Int>>> ($Snap) $StructOps<$Map<Int~_Seq<Int>>>)
(assert (forall ((x $StructOps<$Map<Int~_Seq<Int>>>)) (!
    (= x ($SortWrappers.$SnapTo$StructOps<$Map<Int~_Seq<Int>>>($SortWrappers.$StructOps<$Map<Int~_Seq<Int>>>To$Snap x)))
    :pattern (($SortWrappers.$StructOps<$Map<Int~_Seq<Int>>>To$Snap x))
    :qid |$Snap.$SnapTo$StructOps<$Map<Int~_Seq<Int>>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$StructOps<$Map<Int~_Seq<Int>>>To$Snap($SortWrappers.$SnapTo$StructOps<$Map<Int~_Seq<Int>>> x)))
    :pattern (($SortWrappers.$SnapTo$StructOps<$Map<Int~_Seq<Int>>> x))
    :qid |$Snap.$StructOps<$Map<Int~_Seq<Int>>>To$SnapTo$StructOps<$Map<Int~_Seq<Int>>>|
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
(declare-fun $SortWrappers.$StructOps<Seq<Seq<Int>>>To$Snap ($StructOps<Seq<Seq<Int>>>) $Snap)
(declare-fun $SortWrappers.$SnapTo$StructOps<Seq<Seq<Int>>> ($Snap) $StructOps<Seq<Seq<Int>>>)
(assert (forall ((x $StructOps<Seq<Seq<Int>>>)) (!
    (= x ($SortWrappers.$SnapTo$StructOps<Seq<Seq<Int>>>($SortWrappers.$StructOps<Seq<Seq<Int>>>To$Snap x)))
    :pattern (($SortWrappers.$StructOps<Seq<Seq<Int>>>To$Snap x))
    :qid |$Snap.$SnapTo$StructOps<Seq<Seq<Int>>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$StructOps<Seq<Seq<Int>>>To$Snap($SortWrappers.$SnapTo$StructOps<Seq<Seq<Int>>> x)))
    :pattern (($SortWrappers.$SnapTo$StructOps<Seq<Seq<Int>>> x))
    :qid |$Snap.$StructOps<Seq<Seq<Int>>>To$SnapTo$StructOps<Seq<Seq<Int>>>|
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
(declare-fun Seq_length (Seq<Seq<Seq<Int>>>) Int)
(declare-const Seq_empty Seq<Seq<Seq<Int>>>)
(declare-fun Seq_singleton (Seq<Seq<Int>>) Seq<Seq<Seq<Int>>>)
(declare-fun Seq_append (Seq<Seq<Seq<Int>>> Seq<Seq<Seq<Int>>>) Seq<Seq<Seq<Int>>>)
(declare-fun Seq_index (Seq<Seq<Seq<Int>>> Int) Seq<Seq<Int>>)
(declare-fun Seq_add (Int Int) Int)
(declare-fun Seq_sub (Int Int) Int)
(declare-fun Seq_update (Seq<Seq<Seq<Int>>> Int Seq<Seq<Int>>) Seq<Seq<Seq<Int>>>)
(declare-fun Seq_take (Seq<Seq<Seq<Int>>> Int) Seq<Seq<Seq<Int>>>)
(declare-fun Seq_drop (Seq<Seq<Seq<Int>>> Int) Seq<Seq<Seq<Int>>>)
(declare-fun Seq_contains (Seq<Seq<Seq<Int>>> Seq<Seq<Int>>) Bool)
(declare-fun Seq_contains_trigger (Seq<Seq<Seq<Int>>> Seq<Seq<Int>>) Bool)
(declare-fun Seq_skolem (Seq<Seq<Seq<Int>>> Seq<Seq<Int>>) Int)
(declare-fun Seq_equal (Seq<Seq<Seq<Int>>> Seq<Seq<Seq<Int>>>) Bool)
(declare-fun Seq_skolem_diff (Seq<Seq<Seq<Int>>> Seq<Seq<Seq<Int>>>) Int)
(declare-fun Seq_length (Seq<Seq<Int>>) Int)
(declare-const Seq_empty Seq<Seq<Int>>)
(declare-fun Seq_singleton (Seq<Int>) Seq<Seq<Int>>)
(declare-fun Seq_append (Seq<Seq<Int>> Seq<Seq<Int>>) Seq<Seq<Int>>)
(declare-fun Seq_index (Seq<Seq<Int>> Int) Seq<Int>)
(declare-fun Seq_update (Seq<Seq<Int>> Int Seq<Int>) Seq<Seq<Int>>)
(declare-fun Seq_take (Seq<Seq<Int>> Int) Seq<Seq<Int>>)
(declare-fun Seq_drop (Seq<Seq<Int>> Int) Seq<Seq<Int>>)
(declare-fun Seq_contains (Seq<Seq<Int>> Seq<Int>) Bool)
(declare-fun Seq_contains_trigger (Seq<Seq<Int>> Seq<Int>) Bool)
(declare-fun Seq_skolem (Seq<Seq<Int>> Seq<Int>) Int)
(declare-fun Seq_equal (Seq<Seq<Int>> Seq<Seq<Int>>) Bool)
(declare-fun Seq_skolem_diff (Seq<Seq<Int>> Seq<Seq<Int>>) Int)
(declare-fun Seq_length (Seq<Int>) Int)
(declare-const Seq_empty Seq<Int>)
(declare-fun Seq_singleton (Int) Seq<Int>)
(declare-fun Seq_append (Seq<Int> Seq<Int>) Seq<Int>)
(declare-fun Seq_index (Seq<Int> Int) Int)
(declare-fun Seq_update (Seq<Int> Int Int) Seq<Int>)
(declare-fun Seq_take (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_drop (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_contains (Seq<Int> Int) Bool)
(declare-fun Seq_contains_trigger (Seq<Int> Int) Bool)
(declare-fun Seq_skolem (Seq<Int> Int) Int)
(declare-fun Seq_equal (Seq<Int> Seq<Int>) Bool)
(declare-fun Seq_skolem_diff (Seq<Int> Seq<Int>) Int)
(declare-fun Seq_range (Int Int) Seq<Int>)
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
(declare-fun $struct_get<Seq<Seq<Seq<Int>>>> (Int) Seq<Seq<Seq<Int>>>)
(declare-fun $struct_set<$Struct> ($Struct Int Seq<Seq<Seq<Int>>>) $Struct)
(declare-fun $struct_loc<Int> ($Struct Int) Int)
(declare-fun $struct_get<Seq<Seq<Int>>> (Int) Seq<Seq<Int>>)
(declare-fun $struct_set<$Struct> ($Struct Int Seq<Seq<Int>>) $Struct)
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
(declare-fun $map_init<$Map<Int~_$Struct>> ($Struct) $Map<Int~_$Struct>)
(declare-fun $map_eq<Bool> ($Map<Int~_$Struct> $Map<Int~_$Struct>) Bool)
(declare-fun $map_get<$Struct> ($Map<Int~_$Struct> Int) $Struct)
(declare-fun $map_set<$Map<Int~_$Struct>> ($Map<Int~_$Struct> Int $Struct) $Map<Int~_$Struct>)
(declare-fun $map_init<$Map<Int~_Seq<Int>>> (Seq<Int>) $Map<Int~_Seq<Int>>)
(declare-fun $map_eq<Bool> ($Map<Int~_Seq<Int>> $Map<Int~_Seq<Int>>) Bool)
(declare-fun $map_get<Seq<Int>> ($Map<Int~_Seq<Int>> Int) Seq<Int>)
(declare-fun $map_set<$Map<Int~_Seq<Int>>> ($Map<Int~_Seq<Int>> Int Seq<Int>) $Map<Int~_Seq<Int>>)
(declare-fun $struct_get<$Map<Int~_Int>> (Int) $Map<Int~_Int>)
(declare-fun $struct_set<$Struct> ($Struct Int $Map<Int~_Int>) $Struct)
(declare-fun $struct_get<Seq<Int>> (Int) Seq<Int>)
(declare-fun $struct_set<$Struct> ($Struct Int Seq<Int>) $Struct)
(declare-fun s$resource$$creator$init<$Struct> ($Struct) $Struct)
(declare-fun s$resource$$creator$eq<Bool> ($Struct $Struct) Bool)
(declare-fun $map_sum<Int> ($Map<Int~_Int>) Int)
(declare-const $self_address<Int> Int)
(declare-fun $implements<Bool> (Int Int) Bool)
(declare-fun $struct_get<$Map<Int~_Seq<Int>>> (Int) $Map<Int~_Seq<Int>>)
(declare-fun $struct_set<$Struct> ($Struct Int $Map<Int~_Seq<Int>>) $Struct)
(declare-fun $struct_get<$Struct> (Int) $Struct)
(declare-fun $struct_set<$Struct> ($Struct Int $Struct) $Struct)
(declare-fun $array_init<Seq<Seq<Seq<Int>>>> (Seq<Seq<Int>> Int) Seq<Seq<Seq<Int>>>)
(declare-fun $array_init<Seq<Seq<Int>>> (Seq<Int> Int) Seq<Seq<Int>>)
(declare-fun s$struct$self$init<$Struct> (Seq<Int> Seq<Seq<Int>> Seq<Seq<Seq<Int>>> Seq<Int> $Map<Int~_Seq<Int>> Int Int Bool $Map<Int~_Int> $Map<Int~_Int> Bool) $Struct)
(declare-fun s$struct$self$eq<Bool> ($Struct $Struct) Bool)
(declare-fun $range<Seq<Int>> (Int Int) Seq<Int>)
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
(declare-fun $accessible$array_read%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$array_read_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$array_write%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$array_write_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$array_write_all%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$array_write_all_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$matrix_write%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$matrix_write_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$matrix_write_fail%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$matrix_write_fail_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$out_of_bounds_read%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$out_of_bounds_read_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$out_of_bounds_write%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$out_of_bounds_write_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$get_zeros_fail%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$get_zeros_fail_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$get_zeros_at_fail%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$get_zeros_at_fail_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$set_zeros_fail%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$set_zeros_fail_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$acc_map%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$acc_map_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$acc_bounds%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$acc_bounds_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$index_negative_fail%trigger ($Snap Int Int Int Seq<Int> Int) Bool)
(declare-fun $accessible$index_negative_fail_0%trigger ($Snap Int Int Int Seq<Int> Int) Bool)
(declare-fun $accessible$index_size_fail%trigger ($Snap Int Int Int Seq<Int> Int) Bool)
(declare-fun $accessible$index_size_fail_0%trigger ($Snap Int Int Int Seq<Int> Int) Bool)
(declare-fun $accessible$element_in_array%trigger ($Snap Int Int Int Seq<Int> Int) Bool)
(declare-fun $accessible$element_in_array_0%trigger ($Snap Int Int Int Seq<Int> Int) Bool)
(declare-fun $accessible$element_in_array_fail%trigger ($Snap Int Int Int Seq<Int> Int) Bool)
(declare-fun $accessible$element_in_array_fail_0%trigger ($Snap Int Int Int Seq<Int> Int) Bool)
(declare-fun $accessible$__init__%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$__init___0%trigger ($Snap Int Int Int) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Seq<Seq<Seq<Int>>>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<Seq<Seq<Int>>>)) 0))
(assert (forall ((s Seq<Seq<Seq<Int>>>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<Seq<Seq<Int>>>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e Seq<Seq<Int>>)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Seq<Seq<Int>>>) (s1 Seq<Seq<Seq<Int>>>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Seq<Seq<Int>>>)))
      (not (= s1 (as Seq_empty  Seq<Seq<Seq<Int>>>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<Seq<Seq<Int>>>) (s1 Seq<Seq<Seq<Int>>>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<Seq<Seq<Int>>>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<Seq<Seq<Int>>>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e Seq<Seq<Int>>)) (!
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
(assert (forall ((s0 Seq<Seq<Seq<Int>>>) (s1 Seq<Seq<Seq<Int>>>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Seq<Seq<Int>>>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Seq<Seq<Int>>>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<Seq<Seq<Int>>>) (s1 Seq<Seq<Seq<Int>>>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Seq<Seq<Int>>>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Seq<Seq<Int>>>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<Seq<Seq<Int>>>) (s1 Seq<Seq<Seq<Int>>>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Seq<Seq<Int>>>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Seq<Seq<Int>>>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (i Int) (v Seq<Seq<Int>>)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (i Int) (v Seq<Seq<Int>>) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (n Int)) (!
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
(assert (forall ((s Seq<Seq<Seq<Int>>>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (n Int)) (!
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
(assert (forall ((s Seq<Seq<Seq<Int>>>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (t Seq<Seq<Seq<Int>>>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (t Seq<Seq<Seq<Int>>>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (t Seq<Seq<Seq<Int>>>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (t Seq<Seq<Seq<Int>>>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<Seq<Seq<Int>>>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (n Int)) (!
  (=>
    (>= n (Seq_length s))
    (= (Seq_drop s n) (as Seq_empty  Seq<Seq<Seq<Int>>>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (x Seq<Seq<Int>>)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (x Seq<Seq<Int>>) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<Seq<Seq<Int>>>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<Seq<Seq<Int>>>) (s1 Seq<Seq<Seq<Int>>>)) (!
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
(assert (forall ((a Seq<Seq<Seq<Int>>>) (b Seq<Seq<Seq<Int>>>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x Seq<Seq<Int>>) (y Seq<Seq<Int>>)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
  )))
(assert (forall ((s Seq<Seq<Int>>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<Seq<Int>>)) 0))
(assert (forall ((s Seq<Seq<Int>>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<Seq<Int>>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e Seq<Int>)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Seq<Int>>) (s1 Seq<Seq<Int>>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Seq<Int>>)))
      (not (= s1 (as Seq_empty  Seq<Seq<Int>>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<Seq<Int>>) (s1 Seq<Seq<Int>>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<Seq<Int>>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<Seq<Int>>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e Seq<Int>)) (!
  (= (Seq_index (Seq_singleton e) 0) e)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Seq<Int>>) (s1 Seq<Seq<Int>>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Seq<Int>>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Seq<Int>>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<Seq<Int>>) (s1 Seq<Seq<Int>>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Seq<Int>>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Seq<Int>>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<Seq<Int>>) (s1 Seq<Seq<Int>>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Seq<Int>>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Seq<Int>>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<Seq<Int>>) (i Int) (v Seq<Int>)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Seq<Int>>) (i Int) (v Seq<Int>) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Seq<Int>>) (n Int)) (!
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
(assert (forall ((s Seq<Seq<Int>>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<Seq<Int>>) (n Int)) (!
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
(assert (forall ((s Seq<Seq<Int>>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<Seq<Int>>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<Seq<Int>>) (t Seq<Seq<Int>>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Seq<Int>>) (t Seq<Seq<Int>>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Seq<Int>>) (t Seq<Seq<Int>>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Seq<Int>>) (t Seq<Seq<Int>>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Seq<Int>>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<Seq<Int>>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Seq<Int>>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Seq<Int>>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Seq<Int>>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<Seq<Int>>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Seq<Int>>) (x Seq<Int>)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<Seq<Int>>) (x Seq<Int>) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<Seq<Int>>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<Seq<Int>>) (s1 Seq<Seq<Int>>)) (!
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
(assert (forall ((a Seq<Seq<Int>>) (b Seq<Seq<Int>>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x Seq<Int>) (y Seq<Int>)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
  )))
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
(assert (forall (($s $Struct) ($m Int) ($t Seq<Seq<Seq<Int>>>)) (!
  (Seq_equal
    ($struct_get<Seq<Seq<Seq<Int>>>> ($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
    $t)
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
  :qid |prog.$get_set_0_ax|)))
(assert (forall (($s $Struct) ($m Int) ($n Int) ($t Seq<Seq<Seq<Int>>>)) (!
  (=>
    (not (= $m $n))
    (=
      ($struct_loc<Int> $s $m)
      ($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m)))
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m))
  :qid |prog.$get_set_1_ax|)))
(assert (forall (($s $Struct) ($m Int) ($t Seq<Seq<Int>>)) (!
  (Seq_equal
    ($struct_get<Seq<Seq<Int>>> ($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
    $t)
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
  :qid |prog.$get_set_0_ax|)))
(assert (forall (($s $Struct) ($m Int) ($n Int) ($t Seq<Seq<Int>>)) (!
  (=>
    (not (= $m $n))
    (=
      ($struct_loc<Int> $s $m)
      ($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m)))
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m))
  :qid |prog.$get_set_1_ax|)))
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
(assert (forall (($v Seq<Int>) ($k Int)) (!
  (Seq_equal ($map_get<Seq<Int>> ($map_init<$Map<Int~_Seq<Int>>> $v) $k) $v)
  :pattern (($map_get<Seq<Int>> ($map_init<$Map<Int~_Seq<Int>>> $v) $k))
  :qid |prog.$map_init_ax|)))
(assert (forall (($m $Map<Int~_Seq<Int>>) ($n $Map<Int~_Seq<Int>>)) (!
  (and
    (= ($map_eq<Bool> $m $n) (= $m $n))
    (=
      ($map_eq<Bool> $m $n)
      (forall (($k Int)) (!
        (Seq_equal ($map_get<Seq<Int>> $m $k) ($map_get<Seq<Int>> $n $k))
        :pattern (($map_get<Seq<Int>> $m $k) ($map_get<Seq<Int>> $n $k))
        ))))
  :pattern (($map_eq<Bool> $m $n))
  :qid |prog.$map_eq_ax|)))
(assert (forall (($m $Map<Int~_Seq<Int>>) ($k Int) ($v Seq<Int>) ($kk Int)) (!
  (Seq_equal
    ($map_get<Seq<Int>> ($map_set<$Map<Int~_Seq<Int>>> $m $k $v) $kk)
    (ite (= $k $kk) $v ($map_get<Seq<Int>> $m $kk)))
  :pattern (($map_get<Seq<Int>> ($map_set<$Map<Int~_Seq<Int>>> $m $k $v) $kk))
  :qid |prog.$map_set_ax|)))
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
(assert (not (= (as $self_address<Int>  Int) 0)))
(assert (forall (($s $Struct) ($m Int) ($t $Map<Int~_Seq<Int>>)) (!
  (=
    ($struct_get<$Map<Int~_Seq<Int>>> ($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
    $t)
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
  :qid |prog.$get_set_0_ax|)))
(assert (forall (($s $Struct) ($m Int) ($n Int) ($t $Map<Int~_Seq<Int>>)) (!
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
(assert (forall (($e Seq<Seq<Int>>) ($c Int)) (!
  (= (Seq_length ($array_init<Seq<Seq<Seq<Int>>>> $e $c)) $c)
  :pattern (($array_init<Seq<Seq<Seq<Int>>>> $e $c))
  :qid |prog.$array_init_len_ax|)))
(assert (forall (($e Seq<Seq<Int>>) ($c Int) ($i Int)) (!
  (=>
    (and (<= 0 $i) (< $i $c))
    (Seq_equal (Seq_index ($array_init<Seq<Seq<Seq<Int>>>> $e $c) $i) $e))
  :pattern ((Seq_index ($array_init<Seq<Seq<Seq<Int>>>> $e $c) $i))
  :qid |prog.$array_init_val_ax|)))
(assert (forall (($e Seq<Int>) ($c Int)) (!
  (= (Seq_length ($array_init<Seq<Seq<Int>>> $e $c)) $c)
  :pattern (($array_init<Seq<Seq<Int>>> $e $c))
  :qid |prog.$array_init_len_ax|)))
(assert (forall (($e Seq<Int>) ($c Int) ($i Int)) (!
  (=>
    (and (<= 0 $i) (< $i $c))
    (Seq_equal (Seq_index ($array_init<Seq<Seq<Int>>> $e $c) $i) $e))
  :pattern ((Seq_index ($array_init<Seq<Seq<Int>>> $e $c) $i))
  :qid |prog.$array_init_val_ax|)))
(assert (forall (($arg_0 Seq<Int>) ($arg_1 Seq<Seq<Int>>) ($arg_2 Seq<Seq<Seq<Int>>>) ($arg_3 Seq<Int>) ($arg_4 $Map<Int~_Seq<Int>>) ($arg_5 Int) ($arg_6 Int) ($arg_7 Bool) ($arg_8 $Map<Int~_Int>) ($arg_9 $Map<Int~_Int>) ($arg_10 Bool)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) (- 0 1)))
      9122519725869122497593506884710)
    (and
      (Seq_equal
        ($struct_get<Seq<Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 0))
        $arg_0)
      (and
        (Seq_equal
          ($struct_get<Seq<Seq<Int>>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 1))
          $arg_1)
        (and
          (Seq_equal
            ($struct_get<Seq<Seq<Seq<Int>>>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 2))
            $arg_2)
          (and
            (Seq_equal
              ($struct_get<Seq<Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 3))
              $arg_3)
            (and
              (=
                ($struct_get<$Map<Int~_Seq<Int>>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 4))
                $arg_4)
              (and
                (=
                  ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 5))
                  $arg_5)
                (and
                  (=
                    ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 6))
                    $arg_6)
                  (and
                    (=
                      ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 7))
                      $arg_7)
                    (and
                      (=
                        ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 8))
                        $arg_8)
                      (and
                        (=
                          ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 9))
                          $arg_9)
                        (=
                          ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10) 10))
                          $arg_10))))))))))))
  :pattern ((s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10))
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
              ($struct_get<Seq<Seq<Int>>> ($struct_loc<Int> $l 1))
              ($struct_get<Seq<Seq<Int>>> ($struct_loc<Int> $r 1)))
            (and
              (Seq_equal
                ($struct_get<Seq<Seq<Seq<Int>>>> ($struct_loc<Int> $l 2))
                ($struct_get<Seq<Seq<Seq<Int>>>> ($struct_loc<Int> $r 2)))
              (and
                (Seq_equal
                  ($struct_get<Seq<Int>> ($struct_loc<Int> $l 3))
                  ($struct_get<Seq<Int>> ($struct_loc<Int> $r 3)))
                (and
                  ($map_eq<Bool> ($struct_get<$Map<Int~_Seq<Int>>> ($struct_loc<Int> $l 4)) ($struct_get<$Map<Int~_Seq<Int>>> ($struct_loc<Int> $r 4)))
                  (and
                    (=
                      ($struct_get<Int> ($struct_loc<Int> $l 5))
                      ($struct_get<Int> ($struct_loc<Int> $r 5)))
                    (and
                      (=
                        ($struct_get<Int> ($struct_loc<Int> $l 6))
                        ($struct_get<Int> ($struct_loc<Int> $r 6)))
                      (and
                        (=
                          ($struct_get<Bool> ($struct_loc<Int> $l 7))
                          ($struct_get<Bool> ($struct_loc<Int> $r 7)))
                        (and
                          ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 8)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 8)))
                          (and
                            ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 9)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 9)))
                            (=
                              ($struct_get<Bool> ($struct_loc<Int> $l 10))
                              ($struct_get<Bool> ($struct_loc<Int> $r 10))))))))))))))))
  :pattern ((s$struct$self$eq<Bool> $l $r))
  :qid |prog.s$struct$self$eq$ax|)))
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
  :qid |quant-u-1504|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-1505|)))
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
  :qid |quant-u-1510|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1511|)))
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
  :qid |quant-u-1506|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-1507|)))
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
  :qid |quant-u-1512|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1513|)))
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
  :qid |quant-u-1508|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1509|)))
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
  :qid |quant-u-1514|)))
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
  :qid |quant-u-1515|)))
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
; ---------- $accessible$array_read ----------
(declare-const $tag@87@00 Int)
(declare-const $to@88@00 Int)
(declare-const $amount@89@00 Int)
; ---------- $accessible$array_read_0 ----------
(declare-const $tag@90@00 Int)
(declare-const $to@91@00 Int)
(declare-const $amount@92@00 Int)
; ---------- $accessible$array_write ----------
(declare-const $tag@93@00 Int)
(declare-const $to@94@00 Int)
(declare-const $amount@95@00 Int)
; ---------- $accessible$array_write_0 ----------
(declare-const $tag@96@00 Int)
(declare-const $to@97@00 Int)
(declare-const $amount@98@00 Int)
; ---------- $accessible$array_write_all ----------
(declare-const $tag@99@00 Int)
(declare-const $to@100@00 Int)
(declare-const $amount@101@00 Int)
; ---------- $accessible$array_write_all_0 ----------
(declare-const $tag@102@00 Int)
(declare-const $to@103@00 Int)
(declare-const $amount@104@00 Int)
; ---------- $accessible$matrix_write ----------
(declare-const $tag@105@00 Int)
(declare-const $to@106@00 Int)
(declare-const $amount@107@00 Int)
; ---------- $accessible$matrix_write_0 ----------
(declare-const $tag@108@00 Int)
(declare-const $to@109@00 Int)
(declare-const $amount@110@00 Int)
; ---------- $accessible$matrix_write_fail ----------
(declare-const $tag@111@00 Int)
(declare-const $to@112@00 Int)
(declare-const $amount@113@00 Int)
; ---------- $accessible$matrix_write_fail_0 ----------
(declare-const $tag@114@00 Int)
(declare-const $to@115@00 Int)
(declare-const $amount@116@00 Int)
; ---------- $accessible$out_of_bounds_read ----------
(declare-const $tag@117@00 Int)
(declare-const $to@118@00 Int)
(declare-const $amount@119@00 Int)
; ---------- $accessible$out_of_bounds_read_0 ----------
(declare-const $tag@120@00 Int)
(declare-const $to@121@00 Int)
(declare-const $amount@122@00 Int)
; ---------- $accessible$out_of_bounds_write ----------
(declare-const $tag@123@00 Int)
(declare-const $to@124@00 Int)
(declare-const $amount@125@00 Int)
; ---------- $accessible$out_of_bounds_write_0 ----------
(declare-const $tag@126@00 Int)
(declare-const $to@127@00 Int)
(declare-const $amount@128@00 Int)
; ---------- $accessible$get_zeros_fail ----------
(declare-const $tag@129@00 Int)
(declare-const $to@130@00 Int)
(declare-const $amount@131@00 Int)
; ---------- $accessible$get_zeros_fail_0 ----------
(declare-const $tag@132@00 Int)
(declare-const $to@133@00 Int)
(declare-const $amount@134@00 Int)
; ---------- $accessible$get_zeros_at_fail ----------
(declare-const $tag@135@00 Int)
(declare-const $to@136@00 Int)
(declare-const $amount@137@00 Int)
(declare-const $arg0@138@00 Int)
; ---------- $accessible$get_zeros_at_fail_0 ----------
(declare-const $tag@139@00 Int)
(declare-const $to@140@00 Int)
(declare-const $amount@141@00 Int)
(declare-const $arg0@142@00 Int)
; ---------- $accessible$set_zeros_fail ----------
(declare-const $tag@143@00 Int)
(declare-const $to@144@00 Int)
(declare-const $amount@145@00 Int)
; ---------- $accessible$set_zeros_fail_0 ----------
(declare-const $tag@146@00 Int)
(declare-const $to@147@00 Int)
(declare-const $amount@148@00 Int)
; ---------- $accessible$acc_map ----------
(declare-const $tag@149@00 Int)
(declare-const $to@150@00 Int)
(declare-const $amount@151@00 Int)
; ---------- $accessible$acc_map_0 ----------
(declare-const $tag@152@00 Int)
(declare-const $to@153@00 Int)
(declare-const $amount@154@00 Int)
; ---------- $accessible$acc_bounds ----------
(declare-const $tag@155@00 Int)
(declare-const $to@156@00 Int)
(declare-const $amount@157@00 Int)
; ---------- $accessible$acc_bounds_0 ----------
(declare-const $tag@158@00 Int)
(declare-const $to@159@00 Int)
(declare-const $amount@160@00 Int)
; ---------- $accessible$index_negative_fail ----------
(declare-const $tag@161@00 Int)
(declare-const $to@162@00 Int)
(declare-const $amount@163@00 Int)
(declare-const $arg0@164@00 Seq<Int>)
(declare-const $arg1@165@00 Int)
; ---------- $accessible$index_negative_fail_0 ----------
(declare-const $tag@166@00 Int)
(declare-const $to@167@00 Int)
(declare-const $amount@168@00 Int)
(declare-const $arg0@169@00 Seq<Int>)
(declare-const $arg1@170@00 Int)
; ---------- $accessible$index_size_fail ----------
(declare-const $tag@171@00 Int)
(declare-const $to@172@00 Int)
(declare-const $amount@173@00 Int)
(declare-const $arg0@174@00 Seq<Int>)
(declare-const $arg1@175@00 Int)
; ---------- $accessible$index_size_fail_0 ----------
(declare-const $tag@176@00 Int)
(declare-const $to@177@00 Int)
(declare-const $amount@178@00 Int)
(declare-const $arg0@179@00 Seq<Int>)
(declare-const $arg1@180@00 Int)
; ---------- $accessible$element_in_array ----------
(declare-const $tag@181@00 Int)
(declare-const $to@182@00 Int)
(declare-const $amount@183@00 Int)
(declare-const $arg0@184@00 Seq<Int>)
(declare-const $arg1@185@00 Int)
; ---------- $accessible$element_in_array_0 ----------
(declare-const $tag@186@00 Int)
(declare-const $to@187@00 Int)
(declare-const $amount@188@00 Int)
(declare-const $arg0@189@00 Seq<Int>)
(declare-const $arg1@190@00 Int)
; ---------- $accessible$element_in_array_fail ----------
(declare-const $tag@191@00 Int)
(declare-const $to@192@00 Int)
(declare-const $amount@193@00 Int)
(declare-const $arg0@194@00 Seq<Int>)
(declare-const $arg1@195@00 Int)
; ---------- $accessible$element_in_array_fail_0 ----------
(declare-const $tag@196@00 Int)
(declare-const $to@197@00 Int)
(declare-const $amount@198@00 Int)
(declare-const $arg0@199@00 Seq<Int>)
(declare-const $arg1@200@00 Int)
; ---------- $accessible$__init__ ----------
(declare-const $tag@201@00 Int)
(declare-const $to@202@00 Int)
(declare-const $amount@203@00 Int)
; ---------- $accessible$__init___0 ----------
(declare-const $tag@204@00 Int)
(declare-const $to@205@00 Int)
(declare-const $amount@206@00 Int)
