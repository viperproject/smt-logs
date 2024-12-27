(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:02:53
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
(declare-sort Seq<Bool> 0)
(declare-sort Seq<Int> 0)
(declare-sort Set<Int> 0)
(declare-sort Multiset<Int> 0)
(declare-sort BoolWellFoundedOrder 0)
(declare-sort WellFoundedOrder<PredicateInstance> 0)
(declare-sort WellFoundedOrder<Bool> 0)
(declare-sort SeqWellFoundedOrder<Bool> 0)
(declare-sort WellFoundedOrder<Perm> 0)
(declare-sort SetWellFoundedOrder<Int> 0)
(declare-sort SeqWellFoundedOrder<Int> 0)
(declare-sort PredicateInstance 0)
(declare-sort WellFoundedOrder<Ref> 0)
(declare-sort PermWellFoundedOrder 0)
(declare-sort IntWellFoundedOrder 0)
(declare-sort PredicateInstancesWellFoundedOrder 0)
(declare-sort WellFoundedOrder<Set<Int>> 0)
(declare-sort WellFoundedOrder<Multiset<Int>> 0)
(declare-sort RefWellFoundedOrder 0)
(declare-sort MultiSetWellFoundedOrder<Int> 0)
(declare-sort WellFoundedOrder<Int> 0)
(declare-sort PredicateInstancesNestedRelation 0)
(declare-sort WellFoundedOrder<Seq<Int>> 0)
(declare-sort WellFoundedOrder<Seq<Bool>> 0)
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
(declare-fun $SortWrappers.Seq<Bool>To$Snap (Seq<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<Bool> ($Snap) Seq<Bool>)
(assert (forall ((x Seq<Bool>)) (!
    (= x ($SortWrappers.$SnapToSeq<Bool>($SortWrappers.Seq<Bool>To$Snap x)))
    :pattern (($SortWrappers.Seq<Bool>To$Snap x))
    :qid |$Snap.$SnapToSeq<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<Bool>To$Snap($SortWrappers.$SnapToSeq<Bool> x)))
    :pattern (($SortWrappers.$SnapToSeq<Bool> x))
    :qid |$Snap.Seq<Bool>To$SnapToSeq<Bool>|
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
(declare-fun $SortWrappers.Set<Int>To$Snap (Set<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Int> ($Snap) Set<Int>)
(assert (forall ((x Set<Int>)) (!
    (= x ($SortWrappers.$SnapToSet<Int>($SortWrappers.Set<Int>To$Snap x)))
    :pattern (($SortWrappers.Set<Int>To$Snap x))
    :qid |$Snap.$SnapToSet<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Int>To$Snap($SortWrappers.$SnapToSet<Int> x)))
    :pattern (($SortWrappers.$SnapToSet<Int> x))
    :qid |$Snap.Set<Int>To$SnapToSet<Int>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.Multiset<Int>To$Snap (Multiset<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToMultiset<Int> ($Snap) Multiset<Int>)
(assert (forall ((x Multiset<Int>)) (!
    (= x ($SortWrappers.$SnapToMultiset<Int>($SortWrappers.Multiset<Int>To$Snap x)))
    :pattern (($SortWrappers.Multiset<Int>To$Snap x))
    :qid |$Snap.$SnapToMultiset<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Multiset<Int>To$Snap($SortWrappers.$SnapToMultiset<Int> x)))
    :pattern (($SortWrappers.$SnapToMultiset<Int> x))
    :qid |$Snap.Multiset<Int>To$SnapToMultiset<Int>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.BoolWellFoundedOrderTo$Snap (BoolWellFoundedOrder) $Snap)
(declare-fun $SortWrappers.$SnapToBoolWellFoundedOrder ($Snap) BoolWellFoundedOrder)
(assert (forall ((x BoolWellFoundedOrder)) (!
    (= x ($SortWrappers.$SnapToBoolWellFoundedOrder($SortWrappers.BoolWellFoundedOrderTo$Snap x)))
    :pattern (($SortWrappers.BoolWellFoundedOrderTo$Snap x))
    :qid |$Snap.$SnapToBoolWellFoundedOrderTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.BoolWellFoundedOrderTo$Snap($SortWrappers.$SnapToBoolWellFoundedOrder x)))
    :pattern (($SortWrappers.$SnapToBoolWellFoundedOrder x))
    :qid |$Snap.BoolWellFoundedOrderTo$SnapToBoolWellFoundedOrder|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<PredicateInstance>To$Snap (WellFoundedOrder<PredicateInstance>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<PredicateInstance> ($Snap) WellFoundedOrder<PredicateInstance>)
(assert (forall ((x WellFoundedOrder<PredicateInstance>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<PredicateInstance>($SortWrappers.WellFoundedOrder<PredicateInstance>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<PredicateInstance>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<PredicateInstance>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<PredicateInstance>To$Snap($SortWrappers.$SnapToWellFoundedOrder<PredicateInstance> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<PredicateInstance> x))
    :qid |$Snap.WellFoundedOrder<PredicateInstance>To$SnapToWellFoundedOrder<PredicateInstance>|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<Bool>To$Snap (WellFoundedOrder<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<Bool> ($Snap) WellFoundedOrder<Bool>)
(assert (forall ((x WellFoundedOrder<Bool>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<Bool>($SortWrappers.WellFoundedOrder<Bool>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<Bool>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<Bool>To$Snap($SortWrappers.$SnapToWellFoundedOrder<Bool> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<Bool> x))
    :qid |$Snap.WellFoundedOrder<Bool>To$SnapToWellFoundedOrder<Bool>|
    )))
(declare-fun $SortWrappers.SeqWellFoundedOrder<Bool>To$Snap (SeqWellFoundedOrder<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToSeqWellFoundedOrder<Bool> ($Snap) SeqWellFoundedOrder<Bool>)
(assert (forall ((x SeqWellFoundedOrder<Bool>)) (!
    (= x ($SortWrappers.$SnapToSeqWellFoundedOrder<Bool>($SortWrappers.SeqWellFoundedOrder<Bool>To$Snap x)))
    :pattern (($SortWrappers.SeqWellFoundedOrder<Bool>To$Snap x))
    :qid |$Snap.$SnapToSeqWellFoundedOrder<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.SeqWellFoundedOrder<Bool>To$Snap($SortWrappers.$SnapToSeqWellFoundedOrder<Bool> x)))
    :pattern (($SortWrappers.$SnapToSeqWellFoundedOrder<Bool> x))
    :qid |$Snap.SeqWellFoundedOrder<Bool>To$SnapToSeqWellFoundedOrder<Bool>|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<Perm>To$Snap (WellFoundedOrder<Perm>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<Perm> ($Snap) WellFoundedOrder<Perm>)
(assert (forall ((x WellFoundedOrder<Perm>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<Perm>($SortWrappers.WellFoundedOrder<Perm>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<Perm>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<Perm>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<Perm>To$Snap($SortWrappers.$SnapToWellFoundedOrder<Perm> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<Perm> x))
    :qid |$Snap.WellFoundedOrder<Perm>To$SnapToWellFoundedOrder<Perm>|
    )))
(declare-fun $SortWrappers.SetWellFoundedOrder<Int>To$Snap (SetWellFoundedOrder<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSetWellFoundedOrder<Int> ($Snap) SetWellFoundedOrder<Int>)
(assert (forall ((x SetWellFoundedOrder<Int>)) (!
    (= x ($SortWrappers.$SnapToSetWellFoundedOrder<Int>($SortWrappers.SetWellFoundedOrder<Int>To$Snap x)))
    :pattern (($SortWrappers.SetWellFoundedOrder<Int>To$Snap x))
    :qid |$Snap.$SnapToSetWellFoundedOrder<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.SetWellFoundedOrder<Int>To$Snap($SortWrappers.$SnapToSetWellFoundedOrder<Int> x)))
    :pattern (($SortWrappers.$SnapToSetWellFoundedOrder<Int> x))
    :qid |$Snap.SetWellFoundedOrder<Int>To$SnapToSetWellFoundedOrder<Int>|
    )))
(declare-fun $SortWrappers.SeqWellFoundedOrder<Int>To$Snap (SeqWellFoundedOrder<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSeqWellFoundedOrder<Int> ($Snap) SeqWellFoundedOrder<Int>)
(assert (forall ((x SeqWellFoundedOrder<Int>)) (!
    (= x ($SortWrappers.$SnapToSeqWellFoundedOrder<Int>($SortWrappers.SeqWellFoundedOrder<Int>To$Snap x)))
    :pattern (($SortWrappers.SeqWellFoundedOrder<Int>To$Snap x))
    :qid |$Snap.$SnapToSeqWellFoundedOrder<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.SeqWellFoundedOrder<Int>To$Snap($SortWrappers.$SnapToSeqWellFoundedOrder<Int> x)))
    :pattern (($SortWrappers.$SnapToSeqWellFoundedOrder<Int> x))
    :qid |$Snap.SeqWellFoundedOrder<Int>To$SnapToSeqWellFoundedOrder<Int>|
    )))
(declare-fun $SortWrappers.PredicateInstanceTo$Snap (PredicateInstance) $Snap)
(declare-fun $SortWrappers.$SnapToPredicateInstance ($Snap) PredicateInstance)
(assert (forall ((x PredicateInstance)) (!
    (= x ($SortWrappers.$SnapToPredicateInstance($SortWrappers.PredicateInstanceTo$Snap x)))
    :pattern (($SortWrappers.PredicateInstanceTo$Snap x))
    :qid |$Snap.$SnapToPredicateInstanceTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.PredicateInstanceTo$Snap($SortWrappers.$SnapToPredicateInstance x)))
    :pattern (($SortWrappers.$SnapToPredicateInstance x))
    :qid |$Snap.PredicateInstanceTo$SnapToPredicateInstance|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<Ref>To$Snap (WellFoundedOrder<Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<Ref> ($Snap) WellFoundedOrder<Ref>)
(assert (forall ((x WellFoundedOrder<Ref>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<Ref>($SortWrappers.WellFoundedOrder<Ref>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<Ref>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<Ref>To$Snap($SortWrappers.$SnapToWellFoundedOrder<Ref> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<Ref> x))
    :qid |$Snap.WellFoundedOrder<Ref>To$SnapToWellFoundedOrder<Ref>|
    )))
(declare-fun $SortWrappers.PermWellFoundedOrderTo$Snap (PermWellFoundedOrder) $Snap)
(declare-fun $SortWrappers.$SnapToPermWellFoundedOrder ($Snap) PermWellFoundedOrder)
(assert (forall ((x PermWellFoundedOrder)) (!
    (= x ($SortWrappers.$SnapToPermWellFoundedOrder($SortWrappers.PermWellFoundedOrderTo$Snap x)))
    :pattern (($SortWrappers.PermWellFoundedOrderTo$Snap x))
    :qid |$Snap.$SnapToPermWellFoundedOrderTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.PermWellFoundedOrderTo$Snap($SortWrappers.$SnapToPermWellFoundedOrder x)))
    :pattern (($SortWrappers.$SnapToPermWellFoundedOrder x))
    :qid |$Snap.PermWellFoundedOrderTo$SnapToPermWellFoundedOrder|
    )))
(declare-fun $SortWrappers.IntWellFoundedOrderTo$Snap (IntWellFoundedOrder) $Snap)
(declare-fun $SortWrappers.$SnapToIntWellFoundedOrder ($Snap) IntWellFoundedOrder)
(assert (forall ((x IntWellFoundedOrder)) (!
    (= x ($SortWrappers.$SnapToIntWellFoundedOrder($SortWrappers.IntWellFoundedOrderTo$Snap x)))
    :pattern (($SortWrappers.IntWellFoundedOrderTo$Snap x))
    :qid |$Snap.$SnapToIntWellFoundedOrderTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IntWellFoundedOrderTo$Snap($SortWrappers.$SnapToIntWellFoundedOrder x)))
    :pattern (($SortWrappers.$SnapToIntWellFoundedOrder x))
    :qid |$Snap.IntWellFoundedOrderTo$SnapToIntWellFoundedOrder|
    )))
(declare-fun $SortWrappers.PredicateInstancesWellFoundedOrderTo$Snap (PredicateInstancesWellFoundedOrder) $Snap)
(declare-fun $SortWrappers.$SnapToPredicateInstancesWellFoundedOrder ($Snap) PredicateInstancesWellFoundedOrder)
(assert (forall ((x PredicateInstancesWellFoundedOrder)) (!
    (= x ($SortWrappers.$SnapToPredicateInstancesWellFoundedOrder($SortWrappers.PredicateInstancesWellFoundedOrderTo$Snap x)))
    :pattern (($SortWrappers.PredicateInstancesWellFoundedOrderTo$Snap x))
    :qid |$Snap.$SnapToPredicateInstancesWellFoundedOrderTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.PredicateInstancesWellFoundedOrderTo$Snap($SortWrappers.$SnapToPredicateInstancesWellFoundedOrder x)))
    :pattern (($SortWrappers.$SnapToPredicateInstancesWellFoundedOrder x))
    :qid |$Snap.PredicateInstancesWellFoundedOrderTo$SnapToPredicateInstancesWellFoundedOrder|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<Set<Int>>To$Snap (WellFoundedOrder<Set<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<Set<Int>> ($Snap) WellFoundedOrder<Set<Int>>)
(assert (forall ((x WellFoundedOrder<Set<Int>>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<Set<Int>>($SortWrappers.WellFoundedOrder<Set<Int>>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<Set<Int>>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<Set<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<Set<Int>>To$Snap($SortWrappers.$SnapToWellFoundedOrder<Set<Int>> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<Set<Int>> x))
    :qid |$Snap.WellFoundedOrder<Set<Int>>To$SnapToWellFoundedOrder<Set<Int>>|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<Multiset<Int>>To$Snap (WellFoundedOrder<Multiset<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<Multiset<Int>> ($Snap) WellFoundedOrder<Multiset<Int>>)
(assert (forall ((x WellFoundedOrder<Multiset<Int>>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<Multiset<Int>>($SortWrappers.WellFoundedOrder<Multiset<Int>>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<Multiset<Int>>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<Multiset<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<Multiset<Int>>To$Snap($SortWrappers.$SnapToWellFoundedOrder<Multiset<Int>> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<Multiset<Int>> x))
    :qid |$Snap.WellFoundedOrder<Multiset<Int>>To$SnapToWellFoundedOrder<Multiset<Int>>|
    )))
(declare-fun $SortWrappers.RefWellFoundedOrderTo$Snap (RefWellFoundedOrder) $Snap)
(declare-fun $SortWrappers.$SnapToRefWellFoundedOrder ($Snap) RefWellFoundedOrder)
(assert (forall ((x RefWellFoundedOrder)) (!
    (= x ($SortWrappers.$SnapToRefWellFoundedOrder($SortWrappers.RefWellFoundedOrderTo$Snap x)))
    :pattern (($SortWrappers.RefWellFoundedOrderTo$Snap x))
    :qid |$Snap.$SnapToRefWellFoundedOrderTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.RefWellFoundedOrderTo$Snap($SortWrappers.$SnapToRefWellFoundedOrder x)))
    :pattern (($SortWrappers.$SnapToRefWellFoundedOrder x))
    :qid |$Snap.RefWellFoundedOrderTo$SnapToRefWellFoundedOrder|
    )))
(declare-fun $SortWrappers.MultiSetWellFoundedOrder<Int>To$Snap (MultiSetWellFoundedOrder<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToMultiSetWellFoundedOrder<Int> ($Snap) MultiSetWellFoundedOrder<Int>)
(assert (forall ((x MultiSetWellFoundedOrder<Int>)) (!
    (= x ($SortWrappers.$SnapToMultiSetWellFoundedOrder<Int>($SortWrappers.MultiSetWellFoundedOrder<Int>To$Snap x)))
    :pattern (($SortWrappers.MultiSetWellFoundedOrder<Int>To$Snap x))
    :qid |$Snap.$SnapToMultiSetWellFoundedOrder<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.MultiSetWellFoundedOrder<Int>To$Snap($SortWrappers.$SnapToMultiSetWellFoundedOrder<Int> x)))
    :pattern (($SortWrappers.$SnapToMultiSetWellFoundedOrder<Int> x))
    :qid |$Snap.MultiSetWellFoundedOrder<Int>To$SnapToMultiSetWellFoundedOrder<Int>|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<Int>To$Snap (WellFoundedOrder<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<Int> ($Snap) WellFoundedOrder<Int>)
(assert (forall ((x WellFoundedOrder<Int>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<Int>($SortWrappers.WellFoundedOrder<Int>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<Int>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<Int>To$Snap($SortWrappers.$SnapToWellFoundedOrder<Int> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<Int> x))
    :qid |$Snap.WellFoundedOrder<Int>To$SnapToWellFoundedOrder<Int>|
    )))
(declare-fun $SortWrappers.PredicateInstancesNestedRelationTo$Snap (PredicateInstancesNestedRelation) $Snap)
(declare-fun $SortWrappers.$SnapToPredicateInstancesNestedRelation ($Snap) PredicateInstancesNestedRelation)
(assert (forall ((x PredicateInstancesNestedRelation)) (!
    (= x ($SortWrappers.$SnapToPredicateInstancesNestedRelation($SortWrappers.PredicateInstancesNestedRelationTo$Snap x)))
    :pattern (($SortWrappers.PredicateInstancesNestedRelationTo$Snap x))
    :qid |$Snap.$SnapToPredicateInstancesNestedRelationTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.PredicateInstancesNestedRelationTo$Snap($SortWrappers.$SnapToPredicateInstancesNestedRelation x)))
    :pattern (($SortWrappers.$SnapToPredicateInstancesNestedRelation x))
    :qid |$Snap.PredicateInstancesNestedRelationTo$SnapToPredicateInstancesNestedRelation|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<Seq<Int>>To$Snap (WellFoundedOrder<Seq<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<Seq<Int>> ($Snap) WellFoundedOrder<Seq<Int>>)
(assert (forall ((x WellFoundedOrder<Seq<Int>>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<Seq<Int>>($SortWrappers.WellFoundedOrder<Seq<Int>>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<Seq<Int>>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<Seq<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<Seq<Int>>To$Snap($SortWrappers.$SnapToWellFoundedOrder<Seq<Int>> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<Seq<Int>> x))
    :qid |$Snap.WellFoundedOrder<Seq<Int>>To$SnapToWellFoundedOrder<Seq<Int>>|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<Seq<Bool>>To$Snap (WellFoundedOrder<Seq<Bool>>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<Seq<Bool>> ($Snap) WellFoundedOrder<Seq<Bool>>)
(assert (forall ((x WellFoundedOrder<Seq<Bool>>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<Seq<Bool>>($SortWrappers.WellFoundedOrder<Seq<Bool>>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<Seq<Bool>>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<Seq<Bool>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<Seq<Bool>>To$Snap($SortWrappers.$SnapToWellFoundedOrder<Seq<Bool>> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<Seq<Bool>> x))
    :qid |$Snap.WellFoundedOrder<Seq<Bool>>To$SnapToWellFoundedOrder<Seq<Bool>>|
    )))
; ////////// Symbols
(declare-fun Set_card (Set<Int>) Int)
(declare-const Set_empty Set<Int>)
(declare-fun Set_in (Int Set<Int>) Bool)
(declare-fun Set_singleton (Int) Set<Int>)
(declare-fun Set_unionone (Set<Int> Int) Set<Int>)
(declare-fun Set_union (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_intersection (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_difference (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_subset (Set<Int> Set<Int>) Bool)
(declare-fun Set_equal (Set<Int> Set<Int>) Bool)
(declare-fun Set_skolem_diff (Set<Int> Set<Int>) Int)
(declare-fun Multiset_count (Multiset<Int> Int) Int)
(declare-fun Multiset_card (Multiset<Int>) Int)
(declare-const Multiset_empty Multiset<Int>)
(declare-fun Multiset_singleton (Int) Multiset<Int>)
(declare-fun Multiset_unionone (Multiset<Int> Int) Multiset<Int>)
(declare-fun Multiset_union (Multiset<Int> Multiset<Int>) Multiset<Int>)
(declare-fun Multiset_intersection (Multiset<Int> Multiset<Int>) Multiset<Int>)
(declare-fun Multiset_difference (Multiset<Int> Multiset<Int>) Multiset<Int>)
(declare-fun Multiset_subset (Multiset<Int> Multiset<Int>) Bool)
(declare-fun Multiset_equal (Multiset<Int> Multiset<Int>) Bool)
(declare-fun Multiset_skolem_diff (Multiset<Int> Multiset<Int>) Int)
(declare-fun Multiset_disjoint (Multiset<Int> Multiset<Int>) Bool)
(declare-fun Seq_length (Seq<Bool>) Int)
(declare-const Seq_empty Seq<Bool>)
(declare-fun Seq_singleton (Bool) Seq<Bool>)
(declare-fun Seq_append (Seq<Bool> Seq<Bool>) Seq<Bool>)
(declare-fun Seq_index (Seq<Bool> Int) Bool)
(declare-fun Seq_add (Int Int) Int)
(declare-fun Seq_sub (Int Int) Int)
(declare-fun Seq_update (Seq<Bool> Int Bool) Seq<Bool>)
(declare-fun Seq_take (Seq<Bool> Int) Seq<Bool>)
(declare-fun Seq_drop (Seq<Bool> Int) Seq<Bool>)
(declare-fun Seq_contains (Seq<Bool> Bool) Bool)
(declare-fun Seq_contains_trigger (Seq<Bool> Bool) Bool)
(declare-fun Seq_skolem (Seq<Bool> Bool) Int)
(declare-fun Seq_equal (Seq<Bool> Seq<Bool>) Bool)
(declare-fun Seq_skolem_diff (Seq<Bool> Seq<Bool>) Int)
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
(declare-fun decreasing<Bool> ($Perm $Perm) Bool)
(declare-fun bounded<Bool> ($Perm) Bool)
(declare-fun nestedPredicates<Bool> (PredicateInstance PredicateInstance) Bool)
(declare-fun decreasing<Bool> (Bool Bool) Bool)
(declare-fun bounded<Bool> (Bool) Bool)
(declare-fun decreasing<Bool> ($Ref $Ref) Bool)
(declare-fun bounded<Bool> ($Ref) Bool)
(declare-fun decreasing<Bool> (PredicateInstance PredicateInstance) Bool)
(declare-fun bounded<Bool> (PredicateInstance) Bool)
(declare-fun decreasing<Bool> (Seq<Int> Seq<Int>) Bool)
(declare-fun bounded<Bool> (Seq<Int>) Bool)
(declare-fun decreasing<Bool> (Seq<Bool> Seq<Bool>) Bool)
(declare-fun bounded<Bool> (Seq<Bool>) Bool)
(declare-fun decreasing<Bool> (Set<Int> Set<Int>) Bool)
(declare-fun bounded<Bool> (Set<Int>) Bool)
(declare-fun decreasing<Bool> (Multiset<Int> Multiset<Int>) Bool)
(declare-fun bounded<Bool> (Multiset<Int>) Bool)
(declare-fun decreasing<Bool> (Int Int) Bool)
(declare-fun bounded<Bool> (Int) Bool)
; Declaring symbols related to program functions (from program analysis)
(declare-fun sequences ($Snap Seq<Int>) Int)
(declare-fun sequences%limited ($Snap Seq<Int>) Int)
(declare-fun sequences%stateless (Seq<Int>) Bool)
(declare-fun sequences%precondition ($Snap Seq<Int>) Bool)
(declare-fun fact ($Snap Int) Int)
(declare-fun fact%limited ($Snap Int) Int)
(declare-fun fact%stateless (Int) Bool)
(declare-fun fact%precondition ($Snap Int) Bool)
(declare-fun predicates_e ($Snap $Ref) Int)
(declare-fun predicates_e%limited ($Snap $Ref) Int)
(declare-fun predicates_e%stateless ($Ref) Bool)
(declare-fun predicates_e%precondition ($Snap $Ref) Bool)
(declare-fun predicates ($Snap $Ref) Int)
(declare-fun predicates%limited ($Snap $Ref) Int)
(declare-fun predicates%stateless ($Ref) Bool)
(declare-fun predicates%precondition ($Snap $Ref) Bool)
(declare-fun rationals_e ($Snap $Perm) $Perm)
(declare-fun rationals_e%limited ($Snap $Perm) $Perm)
(declare-fun rationals_e%stateless ($Perm) Bool)
(declare-fun rationals_e%precondition ($Snap $Perm) Bool)
(declare-fun sets_e ($Snap Set<Int>) Int)
(declare-fun sets_e%limited ($Snap Set<Int>) Int)
(declare-fun sets_e%stateless (Set<Int>) Bool)
(declare-fun sets_e%precondition ($Snap Set<Int>) Bool)
(declare-fun fact_e ($Snap Int) Int)
(declare-fun fact_e%limited ($Snap Int) Int)
(declare-fun fact_e%stateless (Int) Bool)
(declare-fun fact_e%precondition ($Snap Int) Bool)
(declare-fun multiSets ($Snap Multiset<Int>) Int)
(declare-fun multiSets%limited ($Snap Multiset<Int>) Int)
(declare-fun multiSets%stateless (Multiset<Int>) Bool)
(declare-fun multiSets%precondition ($Snap Multiset<Int>) Bool)
(declare-fun references ($Snap $Ref) Int)
(declare-fun references%limited ($Snap $Ref) Int)
(declare-fun references%stateless ($Ref) Bool)
(declare-fun references%precondition ($Snap $Ref) Bool)
(declare-fun booleans_e ($Snap Bool) Int)
(declare-fun booleans_e%limited ($Snap Bool) Int)
(declare-fun booleans_e%stateless (Bool) Bool)
(declare-fun booleans_e%precondition ($Snap Bool) Bool)
(declare-fun PI_list ($Snap $Ref) PredicateInstance)
(declare-fun PI_list%limited ($Snap $Ref) PredicateInstance)
(declare-fun PI_list%stateless ($Ref) Bool)
(declare-fun PI_list%precondition ($Snap $Ref) Bool)
(declare-fun references_e ($Snap $Ref) Int)
(declare-fun references_e%limited ($Snap $Ref) Int)
(declare-fun references_e%stateless ($Ref) Bool)
(declare-fun references_e%precondition ($Snap $Ref) Bool)
(declare-fun rationals ($Snap $Perm) $Perm)
(declare-fun rationals%limited ($Snap $Perm) $Perm)
(declare-fun rationals%stateless ($Perm) Bool)
(declare-fun rationals%precondition ($Snap $Perm) Bool)
(declare-fun multiSets_e ($Snap Multiset<Int>) Int)
(declare-fun multiSets_e%limited ($Snap Multiset<Int>) Int)
(declare-fun multiSets_e%stateless (Multiset<Int>) Bool)
(declare-fun multiSets_e%precondition ($Snap Multiset<Int>) Bool)
(declare-fun sets ($Snap Set<Int>) Int)
(declare-fun sets%limited ($Snap Set<Int>) Int)
(declare-fun sets%stateless (Set<Int>) Bool)
(declare-fun sets%precondition ($Snap Set<Int>) Bool)
(declare-fun booleans ($Snap Bool) Int)
(declare-fun booleans%limited ($Snap Bool) Int)
(declare-fun booleans%stateless (Bool) Bool)
(declare-fun booleans%precondition ($Snap Bool) Bool)
(declare-fun numberOfUsers ($Snap Seq<Bool>) Int)
(declare-fun numberOfUsers%limited ($Snap Seq<Bool>) Int)
(declare-fun numberOfUsers%stateless (Seq<Bool>) Bool)
(declare-fun numberOfUsers%precondition ($Snap Seq<Bool>) Bool)
(declare-fun sequences_e ($Snap Seq<Int>) Int)
(declare-fun sequences_e%limited ($Snap Seq<Int>) Int)
(declare-fun sequences_e%stateless (Seq<Int>) Bool)
(declare-fun sequences_e%precondition ($Snap Seq<Int>) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun list%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Seq<Bool>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<Bool>)) 0))
(assert (forall ((s Seq<Bool>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<Bool>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e Bool)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Bool>) (s1 Seq<Bool>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Bool>)))
      (not (= s1 (as Seq_empty  Seq<Bool>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<Bool>) (s1 Seq<Bool>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<Bool>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<Bool>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e Bool)) (!
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
(assert (forall ((s0 Seq<Bool>) (s1 Seq<Bool>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Bool>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Bool>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<Bool>) (s1 Seq<Bool>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Bool>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Bool>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<Bool>) (s1 Seq<Bool>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Bool>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Bool>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<Bool>) (i Int) (v Bool)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Bool>) (i Int) (v Bool) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Bool>) (n Int)) (!
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
(assert (forall ((s Seq<Bool>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<Bool>) (n Int)) (!
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
(assert (forall ((s Seq<Bool>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<Bool>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<Bool>) (t Seq<Bool>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Bool>) (t Seq<Bool>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Bool>) (t Seq<Bool>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Bool>) (t Seq<Bool>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Bool>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<Bool>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Bool>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Bool>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Bool>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<Bool>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Bool>) (x Bool)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<Bool>) (x Bool) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<Bool>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<Bool>) (s1 Seq<Bool>)) (!
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
(assert (forall ((a Seq<Bool>) (b Seq<Bool>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x Bool) (y Bool)) (!
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
(assert (forall ((s Set<Int>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Int)) (!
  (not (Set_in o (as Set_empty  Set<Int>)))
  :pattern ((Set_in o (as Set_empty  Set<Int>)))
  )))
(assert (forall ((s Set<Int>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Int>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Int))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Int)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Int) (o Int)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Int)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Int>) (x Int) (o Int)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Int>) (x Int) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
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
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (Set_subset a b)
    (forall ((o Int)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
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
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((ms Multiset<Int>) (x Int)) (!
  (>= (Multiset_count ms x) 0)
  :pattern ((Multiset_count ms x))
  )))
(assert (forall ((s Multiset<Int>)) (!
  (<= 0 (Multiset_card s))
  :pattern ((Multiset_card s))
  )))
(assert (forall ((o Int)) (!
  (= (Multiset_count (as Multiset_empty  Multiset<Int>) o) 0)
  :pattern ((Multiset_count (as Multiset_empty  Multiset<Int>) o))
  )))
(assert (forall ((s Multiset<Int>)) (!
  (and
    (= (= (Multiset_card s) 0) (= s (as Multiset_empty  Multiset<Int>)))
    (=>
      (not (= (Multiset_card s) 0))
      (exists ((x Int)) 
        (< 0 (Multiset_count s x)))))
  :pattern ((Multiset_card s))
  )))
(assert (forall ((r Int) (o Int)) (!
  (and
    (= (= (Multiset_count (Multiset_singleton r) o) 1) (= r o))
    (= (= (Multiset_count (Multiset_singleton r) o) 0) (not (= r o))))
  :pattern ((Multiset_count (Multiset_singleton r) o))
  )))
(assert (forall ((r Int)) (!
  (and
    (= (Multiset_card (Multiset_singleton r)) 1)
    (= (Multiset_count (Multiset_singleton r) r) 1))
  :pattern ((Multiset_singleton r))
  )))
(assert (forall ((r Int)) (!
  (=
    (Multiset_singleton r)
    (Multiset_unionone (as Multiset_empty  Multiset<Int>) r))
  :pattern ((Multiset_singleton r))
  )))
(assert (forall ((a Multiset<Int>) (x Int) (o Int)) (!
  (=
    (Multiset_count (Multiset_unionone a x) o)
    (ite (= x o) (+ (Multiset_count a o) 1) (Multiset_count a o)))
  :pattern ((Multiset_count (Multiset_unionone a x) o))
  :pattern ((Multiset_unionone a x) (Multiset_count a o))
  )))
(assert (forall ((a Multiset<Int>) (x Int)) (!
  (= (Multiset_card (Multiset_unionone a x)) (+ (Multiset_card a) 1))
  :pattern ((Multiset_card (Multiset_unionone a x)))
  :pattern ((Multiset_unionone a x) (Multiset_card a))
  )))
(assert (forall ((a Multiset<Int>) (x Int)) (!
  (and
    (> (Multiset_count (Multiset_unionone a x) x) 0)
    (> (Multiset_card (Multiset_unionone a x)) 0))
  :pattern ((Multiset_unionone a x))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>) (o Int)) (!
  (=
    (Multiset_count (Multiset_union a b) o)
    (+ (Multiset_count a o) (Multiset_count b o)))
  :pattern ((Multiset_count (Multiset_union a b) o))
  :pattern ((Multiset_union a b) (Multiset_count a o) (Multiset_count b o))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>)) (!
  (=
    (Multiset_card (Multiset_union a b))
    (+ (Multiset_card a) (Multiset_card b)))
  :pattern ((Multiset_card (Multiset_union a b)))
  :pattern ((Multiset_card a) (Multiset_union a b))
  :pattern ((Multiset_card b) (Multiset_union a b))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>) (o Int)) (!
  (=
    (Multiset_count (Multiset_intersection a b) o)
    (ite
      (<= (Multiset_count a o) (Multiset_count b o))
      (Multiset_count a o)
      (Multiset_count b o)))
  :pattern ((Multiset_count (Multiset_intersection a b) o))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>)) (!
  (=
    (Multiset_intersection (Multiset_intersection a b) b)
    (Multiset_intersection a b))
  :pattern ((Multiset_intersection (Multiset_intersection a b) b))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>)) (!
  (=
    (Multiset_intersection a (Multiset_intersection a b))
    (Multiset_intersection a b))
  :pattern ((Multiset_intersection a (Multiset_intersection a b)))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>) (o Int)) (!
  (=
    (Multiset_count (Multiset_difference a b) o)
    (ite
      (< (- (Multiset_count a o) (Multiset_count b o)) 0)
      0
      (- (Multiset_count a o) (Multiset_count b o))))
  :pattern ((Multiset_count (Multiset_difference a b) o))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>) (y Int)) (!
  (=>
    (<= (Multiset_count a y) (Multiset_count b y))
    (= (Multiset_count (Multiset_difference a b) y) 0))
  :pattern ((Multiset_difference a b) (Multiset_count b y) (Multiset_count a y))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>)) (!
  (and
    (=
      (+
        (+
          (Multiset_card (Multiset_difference a b))
          (Multiset_card (Multiset_difference b a)))
        (* 2 (Multiset_card (Multiset_intersection a b))))
      (Multiset_card (Multiset_union a b)))
    (=
      (Multiset_card (Multiset_difference a b))
      (- (Multiset_card a) (Multiset_card (Multiset_intersection a b)))))
  :pattern ((Multiset_card (Multiset_difference a b)))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>)) (!
  (=
    (Multiset_subset a b)
    (forall ((o Int)) (!
      (<= (Multiset_count a o) (Multiset_count b o))
      :pattern ((Multiset_count a o))
      :pattern ((Multiset_count b o))
      )))
  :pattern ((Multiset_subset a b))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>)) (!
  (or
    (and (Multiset_equal a b) (= a b))
    (and
      (not (Multiset_equal a b))
      (and
        (not (= a b))
        (and
          (= (Multiset_skolem_diff a b) (Multiset_skolem_diff b a))
          (not
            (=
              (Multiset_count a (Multiset_skolem_diff a b))
              (Multiset_count b (Multiset_skolem_diff a b))))))))
  :pattern ((Multiset_equal a b))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>)) (!
  (=> (Multiset_equal a b) (= a b))
  :pattern ((Multiset_equal a b))
  )))
(assert (forall ((a Multiset<Int>) (b Multiset<Int>)) (!
  (=
    (Multiset_disjoint a b)
    (forall ((o Int)) (!
      (or (= (Multiset_count a o) 0) (= (Multiset_count b o) 0))
      :pattern ((Multiset_count a o))
      :pattern ((Multiset_count b o))
      )))
  :pattern ((Multiset_disjoint a b))
  )))
(assert (forall ((seq1 Seq<Bool>) (seq2 Seq<Bool>)) (!
  (=> (< (Seq_length seq1) (Seq_length seq2)) (decreasing<Bool> seq1 seq2))
  :pattern ((decreasing<Bool> seq1 seq2))
  :qid |prog.seq_ax_dec|)))
(assert (forall ((seq1 Seq<Bool>)) (!
  (=> (>= (Seq_length seq1) 0) (bounded<Bool> seq1))
  :pattern ((bounded<Bool> seq1))
  :qid |prog.seq_ax_bound|)))
(assert (forall ((seq1 Seq<Int>) (seq2 Seq<Int>)) (!
  (=> (< (Seq_length seq1) (Seq_length seq2)) (decreasing<Bool> seq1 seq2))
  :pattern ((decreasing<Bool> seq1 seq2))
  :qid |prog.seq_ax_dec|)))
(assert (forall ((seq1 Seq<Int>)) (!
  (=> (>= (Seq_length seq1) 0) (bounded<Bool> seq1))
  :pattern ((bounded<Bool> seq1))
  :qid |prog.seq_ax_bound|)))
(assert (forall ((mSet1 Multiset<Int>) (mSet2 Multiset<Int>)) (!
  (=>
    (< (Multiset_card mSet1) (Multiset_card mSet2))
    (decreasing<Bool> mSet1 mSet2))
  :pattern ((decreasing<Bool> mSet1 mSet2))
  :qid |prog.multiset_ax_dec|)))
(assert (forall ((mSet1 Multiset<Int>)) (!
  (bounded<Bool> mSet1)
  :pattern ((bounded<Bool> mSet1))
  :qid |prog.multiset_ax_bound|)))
(assert (forall ((l1 PredicateInstance) (l2 PredicateInstance) (l3 PredicateInstance)) (!
  (=>
    (and (nestedPredicates<Bool> l1 l2) (nestedPredicates<Bool> l2 l3))
    (nestedPredicates<Bool> l1 l3))
  :pattern ((nestedPredicates<Bool> l1 l2) (nestedPredicates<Bool> l2 l3))
  :qid |prog.nestedTrans|)))
(assert (forall ((l1 PredicateInstance)) (!
  (not (nestedPredicates<Bool> l1 l1))
  :pattern ((nestedPredicates<Bool> l1 l1))
  :qid |prog.nestedReflex|)))
(assert (decreasing<Bool> false true))
(assert (forall ((bool1 Bool)) (!
  (bounded<Bool> bool1)
  :pattern ((bounded<Bool> bool1))
  :qid |prog.bool_ax_bound|)))
(assert (forall ((int1 Int) (int2 Int)) (!
  (=> (< int1 int2) (decreasing<Bool> int1 int2))
  :pattern ((decreasing<Bool> int1 int2))
  :qid |prog.integer_ax_dec|)))
(assert (forall ((int1 Int)) (!
  (=> (>= int1 0) (bounded<Bool> int1))
  :pattern ((bounded<Bool> int1))
  :qid |prog.integer_ax_bound|)))
(assert (forall ((set1 Set<Int>) (set2 Set<Int>)) (!
  (=> (< (Set_card set1) (Set_card set2)) (decreasing<Bool> set1 set2))
  :pattern ((decreasing<Bool> set1 set2))
  :qid |prog.set_ax_dec|)))
(assert (forall ((set1 Set<Int>)) (!
  (bounded<Bool> set1)
  :pattern ((bounded<Bool> set1))
  :qid |prog.set_ax_bound|)))
(assert (forall ((ref1 $Ref)) (!
  (=> (not (= ref1 $Ref.null)) (decreasing<Bool> $Ref.null ref1))
  :pattern ((decreasing<Bool> $Ref.null ref1))
  :qid |prog.ref_ax_dec|)))
(assert (forall ((ref1 $Ref)) (!
  (bounded<Bool> ref1)
  :pattern ((bounded<Bool> ref1))
  :qid |prog.ref_ax_bound|)))
(assert (forall ((int1 $Perm) (int2 $Perm)) (!
  (=> (<= int1 (- int2 $Perm.Write)) (decreasing<Bool> int1 int2))
  :pattern ((decreasing<Bool> int1 int2))
  :qid |prog.rational_ax_dec|)))
(assert (forall ((int1 $Perm)) (!
  (=> (>= int1 $Perm.No) (bounded<Bool> int1))
  :pattern ((bounded<Bool> int1))
  :qid |prog.rational_ax_bound|)))
(assert (forall ((l1 PredicateInstance) (l2 PredicateInstance)) (!
  (= (decreasing<Bool> l1 l2) (nestedPredicates<Bool> l1 l2))
  :pattern ((nestedPredicates<Bool> l1 l2))
  :qid |prog.predicate_instances_ax_dec|)))
(assert (forall ((l1 PredicateInstance)) (!
  (bounded<Bool> l1)
  :pattern ((bounded<Bool> l1))
  :qid |prog.predicate_instances_ax_bound|)))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun joined_unfolding@37@00 ($Snap $Ref) Bool)
(declare-fun joined_unfolding@38@00 ($Snap $Ref) Int)
(declare-fun $k@40@00 () $Perm)
(assert (forall ((s@$ $Snap) (seq@0@00 Seq<Int>)) (!
  (= (sequences%limited s@$ seq@0@00) (sequences s@$ seq@0@00))
  :pattern ((sequences s@$ seq@0@00))
  :qid |quant-u-26673|)))
(assert (forall ((s@$ $Snap) (seq@0@00 Seq<Int>)) (!
  (sequences%stateless seq@0@00)
  :pattern ((sequences%limited s@$ seq@0@00))
  :qid |quant-u-26674|)))
(assert (forall ((s@$ $Snap) (seq@0@00 Seq<Int>)) (!
  (let ((result@1@00 (sequences%limited s@$ seq@0@00))) (=>
    (sequences%precondition s@$ seq@0@00)
    (= result@1@00 (Seq_length seq@0@00))))
  :pattern ((sequences%limited s@$ seq@0@00))
  :qid |quant-u-26709|)))
(assert (forall ((s@$ $Snap) (seq@0@00 Seq<Int>)) (!
  (let ((result@1@00 (sequences%limited s@$ seq@0@00))) true)
  :pattern ((sequences%limited s@$ seq@0@00))
  :qid |quant-u-26710|)))
(assert (forall ((s@$ $Snap) (seq@0@00 Seq<Int>)) (!
  (=>
    (sequences%precondition s@$ seq@0@00)
    (=
      (sequences s@$ seq@0@00)
      (ite
        (not (= (Seq_length seq@0@00) 0))
        (+ 1 (sequences%limited $Snap.unit (Seq_drop seq@0@00 1)))
        0)))
  :pattern ((sequences s@$ seq@0@00))
  :qid |quant-u-26711|)))
(assert (forall ((s@$ $Snap) (seq@0@00 Seq<Int>)) (!
  (=>
    (sequences%precondition s@$ seq@0@00)
    (ite
      (not (= (Seq_length seq@0@00) 0))
      (sequences%precondition $Snap.unit (Seq_drop seq@0@00 1))
      true))
  :pattern ((sequences s@$ seq@0@00))
  :qid |quant-u-26712|)))
(assert (forall ((s@$ $Snap) (x@2@00 Int)) (!
  (= (fact%limited s@$ x@2@00) (fact s@$ x@2@00))
  :pattern ((fact s@$ x@2@00))
  :qid |quant-u-26675|)))
(assert (forall ((s@$ $Snap) (x@2@00 Int)) (!
  (fact%stateless x@2@00)
  :pattern ((fact%limited s@$ x@2@00))
  :qid |quant-u-26676|)))
(assert (forall ((s@$ $Snap) (x@2@00 Int)) (!
  (=>
    (fact%precondition s@$ x@2@00)
    (=
      (fact s@$ x@2@00)
      (ite (= x@2@00 0) 1 (* x@2@00 (fact%limited $Snap.unit (- x@2@00 1))))))
  :pattern ((fact s@$ x@2@00))
  :qid |quant-u-26713|)))
(assert (forall ((s@$ $Snap) (x@2@00 Int)) (!
  (=>
    (fact%precondition s@$ x@2@00)
    (ite (= x@2@00 0) true (fact%precondition $Snap.unit (- x@2@00 1))))
  :pattern ((fact s@$ x@2@00))
  :qid |quant-u-26714|)))
(assert (forall ((s@$ $Snap) (xs@4@00 $Ref)) (!
  (= (predicates_e%limited s@$ xs@4@00) (predicates_e s@$ xs@4@00))
  :pattern ((predicates_e s@$ xs@4@00))
  :qid |quant-u-26677|)))
(assert (forall ((s@$ $Snap) (xs@4@00 $Ref)) (!
  (predicates_e%stateless xs@4@00)
  :pattern ((predicates_e%limited s@$ xs@4@00))
  :qid |quant-u-26678|)))
(assert (forall ((s@$ $Snap) (xs@4@00 $Ref)) (!
  (=>
    (predicates_e%precondition s@$ xs@4@00)
    (=
      (predicates_e s@$ xs@4@00)
      (ite
        (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
        (predicates_e%limited s@$ xs@4@00)
        0)))
  :pattern ((predicates_e s@$ xs@4@00))
  :qid |quant-u-26715|)))
(assert (forall ((s@$ $Snap) (xs@4@00 $Ref)) (!
  (=>
    (predicates_e%precondition s@$ xs@4@00)
    (ite
      (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
      (predicates_e%precondition s@$ xs@4@00)
      true))
  :pattern ((predicates_e s@$ xs@4@00))
  :qid |quant-u-26716|)))
(assert (forall ((s@$ $Snap) (xs@6@00 $Ref)) (!
  (= (predicates%limited s@$ xs@6@00) (predicates s@$ xs@6@00))
  :pattern ((predicates s@$ xs@6@00))
  :qid |quant-u-26679|)))
(assert (forall ((s@$ $Snap) (xs@6@00 $Ref)) (!
  (predicates%stateless xs@6@00)
  :pattern ((predicates%limited s@$ xs@6@00))
  :qid |quant-u-26680|)))
(assert (forall ((s@$ $Snap) (xs@6@00 $Ref)) (!
  (=>
    (predicates%precondition s@$ xs@6@00)
    (=
      (predicates s@$ xs@6@00)
      (ite
        (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
        (predicates%limited ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        0)))
  :pattern ((predicates s@$ xs@6@00))
  :pattern ((predicates%stateless xs@6@00) (list%trigger s@$ xs@6@00))
  :qid |quant-u-26717|)))
(assert (forall ((s@$ $Snap) (xs@6@00 $Ref)) (!
  (=>
    (predicates%precondition s@$ xs@6@00)
    (ite
      (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
      (predicates%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      true))
  :pattern ((predicates s@$ xs@6@00))
  :qid |quant-u-26718|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Perm)) (!
  (= (rationals_e%limited s@$ r@8@00) (rationals_e s@$ r@8@00))
  :pattern ((rationals_e s@$ r@8@00))
  :qid |quant-u-26681|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Perm)) (!
  (rationals_e%stateless r@8@00)
  :pattern ((rationals_e%limited s@$ r@8@00))
  :qid |quant-u-26682|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Perm)) (!
  (=>
    (rationals_e%precondition s@$ r@8@00)
    (=
      (rationals_e s@$ r@8@00)
      (ite
        (>= r@8@00 $Perm.No)
        (rationals_e%limited $Snap.unit (/ r@8@00 (to_real 2)))
        r@8@00)))
  :pattern ((rationals_e s@$ r@8@00))
  :qid |quant-u-26719|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Perm)) (!
  (=>
    (rationals_e%precondition s@$ r@8@00)
    (ite
      (>= r@8@00 $Perm.No)
      (rationals_e%precondition $Snap.unit (/ r@8@00 (to_real 2)))
      true))
  :pattern ((rationals_e s@$ r@8@00))
  :qid |quant-u-26720|)))
(assert (forall ((s@$ $Snap) (s@10@00 Set<Int>)) (!
  (= (sets_e%limited s@$ s@10@00) (sets_e s@$ s@10@00))
  :pattern ((sets_e s@$ s@10@00))
  :qid |quant-u-26683|)))
(assert (forall ((s@$ $Snap) (s@10@00 Set<Int>)) (!
  (sets_e%stateless s@10@00)
  :pattern ((sets_e%limited s@$ s@10@00))
  :qid |quant-u-26684|)))
(assert (forall ((s@$ $Snap) (s@10@00 Set<Int>)) (!
  (=>
    (sets_e%precondition s@$ s@10@00)
    (=
      (sets_e s@$ s@10@00)
      (ite
        (and (> (Set_card s@10@00) 0) (Set_in (Set_card s@10@00) s@10@00))
        1
        (sets_e%limited $Snap.unit (Set_difference s@10@00 (Set_singleton (Set_card s@10@00)))))))
  :pattern ((sets_e s@$ s@10@00))
  :qid |quant-u-26721|)))
(assert (forall ((s@$ $Snap) (s@10@00 Set<Int>)) (!
  (=>
    (sets_e%precondition s@$ s@10@00)
    (ite
      (and (> (Set_card s@10@00) 0) (Set_in (Set_card s@10@00) s@10@00))
      true
      (sets_e%precondition $Snap.unit (Set_difference s@10@00 (Set_singleton (Set_card s@10@00))))))
  :pattern ((sets_e s@$ s@10@00))
  :qid |quant-u-26722|)))
(assert (forall ((s@$ $Snap) (x@12@00 Int)) (!
  (= (fact_e%limited s@$ x@12@00) (fact_e s@$ x@12@00))
  :pattern ((fact_e s@$ x@12@00))
  :qid |quant-u-26685|)))
(assert (forall ((s@$ $Snap) (x@12@00 Int)) (!
  (fact_e%stateless x@12@00)
  :pattern ((fact_e%limited s@$ x@12@00))
  :qid |quant-u-26686|)))
(assert (forall ((s@$ $Snap) (x@12@00 Int)) (!
  (=>
    (fact_e%precondition s@$ x@12@00)
    (=
      (fact_e s@$ x@12@00)
      (ite (= x@12@00 0) 1 (* x@12@00 (fact_e%limited $Snap.unit x@12@00)))))
  :pattern ((fact_e s@$ x@12@00))
  :qid |quant-u-26723|)))
(assert (forall ((s@$ $Snap) (x@12@00 Int)) (!
  (=>
    (fact_e%precondition s@$ x@12@00)
    (ite (= x@12@00 0) true (fact_e%precondition $Snap.unit x@12@00)))
  :pattern ((fact_e s@$ x@12@00))
  :qid |quant-u-26724|)))
(assert (forall ((s@$ $Snap) (s@14@00 Multiset<Int>)) (!
  (= (multiSets%limited s@$ s@14@00) (multiSets s@$ s@14@00))
  :pattern ((multiSets s@$ s@14@00))
  :qid |quant-u-26687|)))
(assert (forall ((s@$ $Snap) (s@14@00 Multiset<Int>)) (!
  (multiSets%stateless s@14@00)
  :pattern ((multiSets%limited s@$ s@14@00))
  :qid |quant-u-26688|)))
(assert (forall ((s@$ $Snap) (s@14@00 Multiset<Int>)) (!
  (=>
    (multiSets%precondition s@$ s@14@00)
    (=
      (multiSets s@$ s@14@00)
      (ite
        (and
          (> (Multiset_card s@14@00) 0)
          (> (Multiset_count s@14@00 (Multiset_card s@14@00)) 0))
        (multiSets%limited $Snap.unit (Multiset_difference s@14@00 (Multiset_singleton (Multiset_card s@14@00))))
        1)))
  :pattern ((multiSets s@$ s@14@00))
  :qid |quant-u-26725|)))
(assert (forall ((s@$ $Snap) (s@14@00 Multiset<Int>)) (!
  (=>
    (multiSets%precondition s@$ s@14@00)
    (ite
      (and
        (> (Multiset_card s@14@00) 0)
        (> (Multiset_count s@14@00 (Multiset_card s@14@00)) 0))
      (multiSets%precondition $Snap.unit (Multiset_difference s@14@00 (Multiset_singleton (Multiset_card s@14@00))))
      true))
  :pattern ((multiSets s@$ s@14@00))
  :qid |quant-u-26726|)))
(assert (forall ((s@$ $Snap) (r@16@00 $Ref)) (!
  (= (references%limited s@$ r@16@00) (references s@$ r@16@00))
  :pattern ((references s@$ r@16@00))
  :qid |quant-u-26689|)))
(assert (forall ((s@$ $Snap) (r@16@00 $Ref)) (!
  (references%stateless r@16@00)
  :pattern ((references%limited s@$ r@16@00))
  :qid |quant-u-26690|)))
(assert (forall ((s@$ $Snap) (r@16@00 $Ref)) (!
  (=>
    (references%precondition s@$ r@16@00)
    (=
      (references s@$ r@16@00)
      (ite (= r@16@00 $Ref.null) 1 (references%limited $Snap.unit $Ref.null))))
  :pattern ((references s@$ r@16@00))
  :qid |quant-u-26727|)))
(assert (forall ((s@$ $Snap) (r@16@00 $Ref)) (!
  (=>
    (references%precondition s@$ r@16@00)
    (ite
      (= r@16@00 $Ref.null)
      true
      (references%precondition $Snap.unit $Ref.null)))
  :pattern ((references s@$ r@16@00))
  :qid |quant-u-26728|)))
(assert (forall ((s@$ $Snap) (b@18@00 Bool)) (!
  (= (booleans_e%limited s@$ b@18@00) (booleans_e s@$ b@18@00))
  :pattern ((booleans_e s@$ b@18@00))
  :qid |quant-u-26691|)))
(assert (forall ((s@$ $Snap) (b@18@00 Bool)) (!
  (booleans_e%stateless b@18@00)
  :pattern ((booleans_e%limited s@$ b@18@00))
  :qid |quant-u-26692|)))
(assert (forall ((s@$ $Snap) (b@18@00 Bool)) (!
  (let ((result@19@00 (booleans_e%limited s@$ b@18@00))) (=>
    (booleans_e%precondition s@$ b@18@00)
    (= result@19@00 1)))
  :pattern ((booleans_e%limited s@$ b@18@00))
  :qid |quant-u-26729|)))
(assert (forall ((s@$ $Snap) (b@18@00 Bool)) (!
  (let ((result@19@00 (booleans_e%limited s@$ b@18@00))) true)
  :pattern ((booleans_e%limited s@$ b@18@00))
  :qid |quant-u-26730|)))
(assert (forall ((s@$ $Snap) (b@18@00 Bool)) (!
  (=>
    (booleans_e%precondition s@$ b@18@00)
    (=
      (booleans_e s@$ b@18@00)
      (ite (not b@18@00) (booleans_e%limited $Snap.unit (not b@18@00)) 1)))
  :pattern ((booleans_e s@$ b@18@00))
  :qid |quant-u-26731|)))
(assert (forall ((s@$ $Snap) (b@18@00 Bool)) (!
  (=>
    (booleans_e%precondition s@$ b@18@00)
    (ite (not b@18@00) (booleans_e%precondition $Snap.unit (not b@18@00)) true))
  :pattern ((booleans_e s@$ b@18@00))
  :qid |quant-u-26732|)))
(assert (forall ((s@$ $Snap) (xs@20@00 $Ref)) (!
  (= (PI_list%limited s@$ xs@20@00) (PI_list s@$ xs@20@00))
  :pattern ((PI_list s@$ xs@20@00))
  :qid |quant-u-26693|)))
(assert (forall ((s@$ $Snap) (xs@20@00 $Ref)) (!
  (PI_list%stateless xs@20@00)
  :pattern ((PI_list%limited s@$ xs@20@00))
  :qid |quant-u-26694|)))
(assert (forall ((s@$ $Snap) (r@22@00 $Ref)) (!
  (= (references_e%limited s@$ r@22@00) (references_e s@$ r@22@00))
  :pattern ((references_e s@$ r@22@00))
  :qid |quant-u-26695|)))
(assert (forall ((s@$ $Snap) (r@22@00 $Ref)) (!
  (references_e%stateless r@22@00)
  :pattern ((references_e%limited s@$ r@22@00))
  :qid |quant-u-26696|)))
(assert (forall ((s@$ $Snap) (r@22@00 $Ref)) (!
  (=>
    (references_e%precondition s@$ r@22@00)
    (=
      (references_e s@$ r@22@00)
      (ite (= r@22@00 $Ref.null) 1 (references_e%limited $Snap.unit r@22@00))))
  :pattern ((references_e s@$ r@22@00))
  :qid |quant-u-26733|)))
(assert (forall ((s@$ $Snap) (r@22@00 $Ref)) (!
  (=>
    (references_e%precondition s@$ r@22@00)
    (ite
      (= r@22@00 $Ref.null)
      true
      (references_e%precondition $Snap.unit r@22@00)))
  :pattern ((references_e s@$ r@22@00))
  :qid |quant-u-26734|)))
(assert (forall ((s@$ $Snap) (r@24@00 $Perm)) (!
  (= (rationals%limited s@$ r@24@00) (rationals s@$ r@24@00))
  :pattern ((rationals s@$ r@24@00))
  :qid |quant-u-26697|)))
(assert (forall ((s@$ $Snap) (r@24@00 $Perm)) (!
  (rationals%stateless r@24@00)
  :pattern ((rationals%limited s@$ r@24@00))
  :qid |quant-u-26698|)))
(assert (forall ((s@$ $Snap) (r@24@00 $Perm)) (!
  (=>
    (rationals%precondition s@$ r@24@00)
    (=
      (rationals s@$ r@24@00)
      (ite
        (>= r@24@00 $Perm.No)
        (rationals%limited $Snap.unit (- r@24@00 $Perm.Write))
        r@24@00)))
  :pattern ((rationals s@$ r@24@00))
  :qid |quant-u-26735|)))
(assert (forall ((s@$ $Snap) (r@24@00 $Perm)) (!
  (=>
    (rationals%precondition s@$ r@24@00)
    (ite
      (>= r@24@00 $Perm.No)
      (rationals%precondition $Snap.unit (- r@24@00 $Perm.Write))
      true))
  :pattern ((rationals s@$ r@24@00))
  :qid |quant-u-26736|)))
(assert (forall ((s@$ $Snap) (s@26@00 Multiset<Int>)) (!
  (= (multiSets_e%limited s@$ s@26@00) (multiSets_e s@$ s@26@00))
  :pattern ((multiSets_e s@$ s@26@00))
  :qid |quant-u-26699|)))
(assert (forall ((s@$ $Snap) (s@26@00 Multiset<Int>)) (!
  (multiSets_e%stateless s@26@00)
  :pattern ((multiSets_e%limited s@$ s@26@00))
  :qid |quant-u-26700|)))
(assert (forall ((s@$ $Snap) (s@26@00 Multiset<Int>)) (!
  (=>
    (multiSets_e%precondition s@$ s@26@00)
    (=
      (multiSets_e s@$ s@26@00)
      (ite
        (and
          (> (Multiset_card s@26@00) 0)
          (> (Multiset_count s@26@00 (Multiset_card s@26@00)) 0))
        1
        (multiSets_e%limited $Snap.unit (Multiset_difference s@26@00 (Multiset_singleton (Multiset_card s@26@00)))))))
  :pattern ((multiSets_e s@$ s@26@00))
  :qid |quant-u-26737|)))
(assert (forall ((s@$ $Snap) (s@26@00 Multiset<Int>)) (!
  (=>
    (multiSets_e%precondition s@$ s@26@00)
    (ite
      (and
        (> (Multiset_card s@26@00) 0)
        (> (Multiset_count s@26@00 (Multiset_card s@26@00)) 0))
      true
      (multiSets_e%precondition $Snap.unit (Multiset_difference s@26@00 (Multiset_singleton (Multiset_card s@26@00))))))
  :pattern ((multiSets_e s@$ s@26@00))
  :qid |quant-u-26738|)))
(assert (forall ((s@$ $Snap) (s@28@00 Set<Int>)) (!
  (= (sets%limited s@$ s@28@00) (sets s@$ s@28@00))
  :pattern ((sets s@$ s@28@00))
  :qid |quant-u-26701|)))
(assert (forall ((s@$ $Snap) (s@28@00 Set<Int>)) (!
  (sets%stateless s@28@00)
  :pattern ((sets%limited s@$ s@28@00))
  :qid |quant-u-26702|)))
(assert (forall ((s@$ $Snap) (s@28@00 Set<Int>)) (!
  (=>
    (sets%precondition s@$ s@28@00)
    (=
      (sets s@$ s@28@00)
      (ite
        (and (> (Set_card s@28@00) 0) (Set_in (Set_card s@28@00) s@28@00))
        (sets%limited $Snap.unit (Set_difference s@28@00 (Set_singleton (Set_card s@28@00))))
        1)))
  :pattern ((sets s@$ s@28@00))
  :qid |quant-u-26739|)))
(assert (forall ((s@$ $Snap) (s@28@00 Set<Int>)) (!
  (=>
    (sets%precondition s@$ s@28@00)
    (ite
      (and (> (Set_card s@28@00) 0) (Set_in (Set_card s@28@00) s@28@00))
      (sets%precondition $Snap.unit (Set_difference s@28@00 (Set_singleton (Set_card s@28@00))))
      true))
  :pattern ((sets s@$ s@28@00))
  :qid |quant-u-26740|)))
(assert (forall ((s@$ $Snap) (b@30@00 Bool)) (!
  (= (booleans%limited s@$ b@30@00) (booleans s@$ b@30@00))
  :pattern ((booleans s@$ b@30@00))
  :qid |quant-u-26703|)))
(assert (forall ((s@$ $Snap) (b@30@00 Bool)) (!
  (booleans%stateless b@30@00)
  :pattern ((booleans%limited s@$ b@30@00))
  :qid |quant-u-26704|)))
(assert (forall ((s@$ $Snap) (b@30@00 Bool)) (!
  (let ((result@31@00 (booleans%limited s@$ b@30@00))) (=>
    (booleans%precondition s@$ b@30@00)
    (= result@31@00 1)))
  :pattern ((booleans%limited s@$ b@30@00))
  :qid |quant-u-26741|)))
(assert (forall ((s@$ $Snap) (b@30@00 Bool)) (!
  (let ((result@31@00 (booleans%limited s@$ b@30@00))) true)
  :pattern ((booleans%limited s@$ b@30@00))
  :qid |quant-u-26742|)))
(assert (forall ((s@$ $Snap) (b@30@00 Bool)) (!
  (=>
    (booleans%precondition s@$ b@30@00)
    (=
      (booleans s@$ b@30@00)
      (ite b@30@00 (booleans%limited $Snap.unit (not b@30@00)) 1)))
  :pattern ((booleans s@$ b@30@00))
  :qid |quant-u-26743|)))
(assert (forall ((s@$ $Snap) (b@30@00 Bool)) (!
  (=>
    (booleans%precondition s@$ b@30@00)
    (ite b@30@00 (booleans%precondition $Snap.unit (not b@30@00)) true))
  :pattern ((booleans s@$ b@30@00))
  :qid |quant-u-26744|)))
(assert (forall ((s@$ $Snap) (seq@32@00 Seq<Bool>)) (!
  (= (numberOfUsers%limited s@$ seq@32@00) (numberOfUsers s@$ seq@32@00))
  :pattern ((numberOfUsers s@$ seq@32@00))
  :qid |quant-u-26705|)))
(assert (forall ((s@$ $Snap) (seq@32@00 Seq<Bool>)) (!
  (numberOfUsers%stateless seq@32@00)
  :pattern ((numberOfUsers%limited s@$ seq@32@00))
  :qid |quant-u-26706|)))
(assert (forall ((s@$ $Snap) (seq@32@00 Seq<Bool>)) (!
  (=>
    (numberOfUsers%precondition s@$ seq@32@00)
    (=
      (numberOfUsers s@$ seq@32@00)
      (ite
        (= (Seq_length seq@32@00) 0)
        0
        (ite
          (Seq_index seq@32@00 0)
          (+ 1 (numberOfUsers%limited $Snap.unit (Seq_drop seq@32@00 1)))
          (numberOfUsers%limited $Snap.unit (Seq_drop seq@32@00 1))))))
  :pattern ((numberOfUsers s@$ seq@32@00))
  :qid |quant-u-26745|)))
(assert (forall ((s@$ $Snap) (seq@32@00 Seq<Bool>)) (!
  (=>
    (numberOfUsers%precondition s@$ seq@32@00)
    (ite
      (= (Seq_length seq@32@00) 0)
      true
      (numberOfUsers%precondition $Snap.unit (Seq_drop seq@32@00 1))))
  :pattern ((numberOfUsers s@$ seq@32@00))
  :qid |quant-u-26746|)))
(assert (forall ((s@$ $Snap) (seq@34@00 Seq<Int>)) (!
  (= (sequences_e%limited s@$ seq@34@00) (sequences_e s@$ seq@34@00))
  :pattern ((sequences_e s@$ seq@34@00))
  :qid |quant-u-26707|)))
(assert (forall ((s@$ $Snap) (seq@34@00 Seq<Int>)) (!
  (sequences_e%stateless seq@34@00)
  :pattern ((sequences_e%limited s@$ seq@34@00))
  :qid |quant-u-26708|)))
(assert (forall ((s@$ $Snap) (seq@34@00 Seq<Int>)) (!
  (let ((result@35@00 (sequences_e%limited s@$ seq@34@00))) (=>
    (sequences_e%precondition s@$ seq@34@00)
    (= result@35@00 (Seq_length seq@34@00))))
  :pattern ((sequences_e%limited s@$ seq@34@00))
  :qid |quant-u-26747|)))
(assert (forall ((s@$ $Snap) (seq@34@00 Seq<Int>)) (!
  (let ((result@35@00 (sequences_e%limited s@$ seq@34@00))) true)
  :pattern ((sequences_e%limited s@$ seq@34@00))
  :qid |quant-u-26748|)))
(assert (forall ((s@$ $Snap) (seq@34@00 Seq<Int>)) (!
  (=>
    (sequences_e%precondition s@$ seq@34@00)
    (=
      (sequences_e s@$ seq@34@00)
      (ite
        (not (= (Seq_length seq@34@00) 0))
        (sequences_e%limited $Snap.unit (Seq_append
          (Seq_drop seq@34@00 1)
          (Seq_singleton 1)))
        0)))
  :pattern ((sequences_e s@$ seq@34@00))
  :qid |quant-u-26749|)))
(assert (forall ((s@$ $Snap) (seq@34@00 Seq<Int>)) (!
  (=>
    (sequences_e%precondition s@$ seq@34@00)
    (ite
      (not (= (Seq_length seq@34@00) 0))
      (sequences_e%precondition $Snap.unit (Seq_append
        (Seq_drop seq@34@00 1)
        (Seq_singleton 1)))
      true))
  :pattern ((sequences_e s@$ seq@34@00))
  :qid |quant-u-26750|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- otherMultiSetTests ----------
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
; assert (bounded(Multiset(1)): Bool)
; [eval] (bounded(Multiset(1)): Bool)
; [eval] Multiset(1)
(push) ; 3
(assert (not (bounded<Bool> (Multiset_singleton 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> (Multiset_singleton 1)))
; [exec]
; assert (decreasing(Multiset(1), Multiset(1, 1)): Bool)
; [eval] (decreasing(Multiset(1), Multiset(1, 1)): Bool)
; [eval] Multiset(1)
; [eval] Multiset(1, 1)
(push) ; 3
(assert (not (decreasing<Bool> (Multiset_singleton 1) (Multiset_unionone (Multiset_singleton 1) 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (Multiset_singleton 1) (Multiset_unionone (Multiset_singleton 1) 1)))
; [exec]
; assert (bounded(Multiset(1, 2, 3)): Bool)
; [eval] (bounded(Multiset(1, 2, 3)): Bool)
; [eval] Multiset(1, 2, 3)
(push) ; 3
(assert (not (bounded<Bool> (Multiset_unionone (Multiset_unionone (Multiset_singleton 1) 2) 3))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> (Multiset_unionone (Multiset_unionone (Multiset_singleton 1) 2) 3)))
; [exec]
; assert (decreasing(Multiset(1, 2, 3), Multiset(1, 2, 2, 3, 3)): Bool)
; [eval] (decreasing(Multiset(1, 2, 3), Multiset(1, 2, 2, 3, 3)): Bool)
; [eval] Multiset(1, 2, 3)
; [eval] Multiset(1, 2, 2, 3, 3)
(push) ; 3
(assert (not (decreasing<Bool> (Multiset_unionone (Multiset_unionone (Multiset_singleton 1) 2) 3) (Multiset_unionone (Multiset_unionone (Multiset_unionone (Multiset_unionone (Multiset_singleton 1) 2) 2) 3) 3))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (Multiset_unionone (Multiset_unionone (Multiset_singleton 1) 2) 3) (Multiset_unionone (Multiset_unionone (Multiset_unionone (Multiset_unionone (Multiset_singleton 1) 2) 2) 3) 3)))
; [exec]
; assert (decreasing(Multiset(1, 1), Multiset(1, 1)): Bool)
; [eval] (decreasing(Multiset(1, 1), Multiset(1, 1)): Bool)
; [eval] Multiset(1, 1)
; [eval] Multiset(1, 1)
(push) ; 3
(assert (not (decreasing<Bool> (Multiset_unionone (Multiset_singleton 1) 1) (Multiset_unionone (Multiset_singleton 1) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (decreasing(Multiset(1, 1), Multiset(1, 1)): Bool)
; [eval] Multiset(1, 1)
; [eval] Multiset(1, 1)
(set-option :timeout 0)
(push) ; 3
(assert (not (decreasing<Bool> (Multiset_unionone (Multiset_singleton 1) 1) (Multiset_unionone (Multiset_singleton 1) 1))))
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
; [eval] (decreasing(Multiset(1, 1), Multiset(1, 1)): Bool)
; [eval] Multiset(1, 1)
; [eval] Multiset(1, 1)
(set-option :timeout 0)
(push) ; 3
(assert (not (decreasing<Bool> (Multiset_unionone (Multiset_singleton 1) 1) (Multiset_unionone (Multiset_singleton 1) 1))))
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
; [eval] (decreasing(Multiset(1, 1), Multiset(1, 1)): Bool)
; [eval] Multiset(1, 1)
; [eval] Multiset(1, 1)
(set-option :timeout 0)
(push) ; 3
(assert (not (decreasing<Bool> (Multiset_unionone (Multiset_singleton 1) 1) (Multiset_unionone (Multiset_singleton 1) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- otherMultiSetTests2 ----------
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
; assert (decreasing(Multiset(2), Multiset(1)): Bool)
; [eval] (decreasing(Multiset(2), Multiset(1)): Bool)
; [eval] Multiset(2)
; [eval] Multiset(1)
(push) ; 3
(assert (not (decreasing<Bool> (Multiset_singleton 2) (Multiset_singleton 1))))
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
; [eval] (decreasing(Multiset(2), Multiset(1)): Bool)
; [eval] Multiset(2)
; [eval] Multiset(1)
(set-option :timeout 0)
(push) ; 3
(assert (not (decreasing<Bool> (Multiset_singleton 2) (Multiset_singleton 1))))
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
; [eval] (decreasing(Multiset(2), Multiset(1)): Bool)
; [eval] Multiset(2)
; [eval] Multiset(1)
(set-option :timeout 0)
(push) ; 3
(assert (not (decreasing<Bool> (Multiset_singleton 2) (Multiset_singleton 1))))
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
; [eval] (decreasing(Multiset(2), Multiset(1)): Bool)
; [eval] Multiset(2)
; [eval] Multiset(1)
(set-option :timeout 0)
(push) ; 3
(assert (not (decreasing<Bool> (Multiset_singleton 2) (Multiset_singleton 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- fact_termination_proof ----------
(declare-const x@0@01 Int)
(declare-const x@1@01 Int)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 $Snap.unit))
; [eval] x >= 0
(assert (>= x@1@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] !(x == 0)
; [eval] x == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@1@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= x@1@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | x@1@01 != 0 | live]
; [else-branch: 0 | x@1@01 == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | x@1@01 != 0]
(assert (not (= x@1@01 0)))
; [exec]
; assert (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool)
; [eval] (decreasing(x - 1, old(x)): Bool)
; [eval] x - 1
; [eval] old(x)
(push) ; 4
(assert (not (decreasing<Bool> (- x@1@01 1) x@1@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (- x@1@01 1) x@1@01))
; [eval] (bounded(old(x)): Bool)
; [eval] old(x)
(push) ; 4
(assert (not (bounded<Bool> x@1@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> x@1@01))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | x@1@01 == 0]
(assert (= x@1@01 0))
(pop) ; 3
; [eval] x == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= x@1@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@1@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | x@1@01 == 0 | live]
; [else-branch: 1 | x@1@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | x@1@01 == 0]
(assert (= x@1@01 0))
(pop) ; 3
(push) ; 3
; [else-branch: 1 | x@1@01 != 0]
(assert (not (= x@1@01 0)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- fact_e_termination_proof ----------
(declare-const x@3@01 Int)
(declare-const x@4@01 Int)
(push) ; 1
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 $Snap.unit))
; [eval] x >= 0
(assert (>= x@4@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] !(x == 0)
; [eval] x == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@4@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= x@4@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | x@4@01 != 0 | live]
; [else-branch: 2 | x@4@01 == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | x@4@01 != 0]
(assert (not (= x@4@01 0)))
; [exec]
; assert (decreasing(x, old(x)): Bool) && (bounded(old(x)): Bool)
; [eval] (decreasing(x, old(x)): Bool)
; [eval] old(x)
(push) ; 4
(assert (not (decreasing<Bool> x@4@01 x@4@01)))
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
; [eval] (decreasing(x, old(x)): Bool)
; [eval] old(x)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> x@4@01 x@4@01)))
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
; [eval] (decreasing(x, old(x)): Bool)
; [eval] old(x)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> x@4@01 x@4@01)))
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
; [eval] (decreasing(x, old(x)): Bool)
; [eval] old(x)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> x@4@01 x@4@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- references_termination_proof ----------
(declare-const r@6@01 $Ref)
(declare-const r@7@01 $Ref)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] !(r == null)
; [eval] r == null
(push) ; 3
(set-option :timeout 10)
(assert (not (= r@7@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= r@7@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | r@7@01 != Null | live]
; [else-branch: 3 | r@7@01 == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | r@7@01 != Null]
(assert (not (= r@7@01 $Ref.null)))
; [exec]
; assert (decreasing(null, old(r)): Bool) && (bounded(old(r)): Bool)
; [eval] (decreasing(null, old(r)): Bool)
; [eval] old(r)
(push) ; 4
(assert (not (decreasing<Bool> $Ref.null r@7@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> $Ref.null r@7@01))
; [eval] (bounded(old(r)): Bool)
; [eval] old(r)
(push) ; 4
(assert (not (bounded<Bool> r@7@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> r@7@01))
(pop) ; 3
(push) ; 3
; [else-branch: 3 | r@7@01 == Null]
(assert (= r@7@01 $Ref.null))
(pop) ; 3
; [eval] r == null
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= r@7@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= r@7@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | r@7@01 == Null | live]
; [else-branch: 4 | r@7@01 != Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 4 | r@7@01 == Null]
(assert (= r@7@01 $Ref.null))
(pop) ; 3
(push) ; 3
; [else-branch: 4 | r@7@01 != Null]
(assert (not (= r@7@01 $Ref.null)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- references_e_termination_proof ----------
(declare-const r@8@01 $Ref)
(declare-const r@9@01 $Ref)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] !(r == null)
; [eval] r == null
(push) ; 3
(set-option :timeout 10)
(assert (not (= r@9@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= r@9@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | r@9@01 != Null | live]
; [else-branch: 5 | r@9@01 == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | r@9@01 != Null]
(assert (not (= r@9@01 $Ref.null)))
; [exec]
; assert (decreasing(r, old(r)): Bool) && (bounded(old(r)): Bool)
; [eval] (decreasing(r, old(r)): Bool)
; [eval] old(r)
(push) ; 4
(assert (not (decreasing<Bool> r@9@01 r@9@01)))
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
; [eval] (decreasing(r, old(r)): Bool)
; [eval] old(r)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> r@9@01 r@9@01)))
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
; [eval] (decreasing(r, old(r)): Bool)
; [eval] old(r)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> r@9@01 r@9@01)))
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
; [eval] (decreasing(r, old(r)): Bool)
; [eval] old(r)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> r@9@01 r@9@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- booleans_termination_proof ----------
(declare-const b@10@01 Bool)
(declare-const b@11@01 Bool)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@11@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@11@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | b@11@01 | live]
; [else-branch: 6 | !(b@11@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 6 | b@11@01]
(assert b@11@01)
; [exec]
; assert (decreasing(!b, old(b)): Bool) && (bounded(old(b)): Bool)
; [eval] (decreasing(!b, old(b)): Bool)
; [eval] !b
; [eval] old(b)
(push) ; 4
(assert (not (decreasing<Bool> (not b@11@01) b@11@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (not b@11@01) b@11@01))
; [eval] (bounded(old(b)): Bool)
; [eval] old(b)
(push) ; 4
(assert (not (bounded<Bool> b@11@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> b@11@01))
(pop) ; 3
(push) ; 3
; [else-branch: 6 | !(b@11@01)]
(assert (not b@11@01))
(pop) ; 3
; [eval] !b
(push) ; 3
(set-option :timeout 10)
(assert (not b@11@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@11@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | !(b@11@01) | live]
; [else-branch: 7 | b@11@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | !(b@11@01)]
(assert (not b@11@01))
(pop) ; 3
(push) ; 3
; [else-branch: 7 | b@11@01]
(assert b@11@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- booleans_e_termination_proof ----------
(declare-const b@12@01 Bool)
(declare-const b@13@01 Bool)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] !b
(push) ; 3
(set-option :timeout 10)
(assert (not b@13@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@13@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | !(b@13@01) | live]
; [else-branch: 8 | b@13@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 8 | !(b@13@01)]
(assert (not b@13@01))
; [exec]
; assert (decreasing(!b, old(b)): Bool) && (bounded(old(b)): Bool)
; [eval] (decreasing(!b, old(b)): Bool)
; [eval] !b
; [eval] old(b)
(push) ; 4
(assert (not (decreasing<Bool> (not b@13@01) b@13@01)))
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
; [eval] (decreasing(!b, old(b)): Bool)
; [eval] !b
; [eval] old(b)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (not b@13@01) b@13@01)))
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
; [eval] (decreasing(!b, old(b)): Bool)
; [eval] !b
; [eval] old(b)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (not b@13@01) b@13@01)))
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
; [eval] (decreasing(!b, old(b)): Bool)
; [eval] !b
; [eval] old(b)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (not b@13@01) b@13@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- rationals_termination_proof ----------
(declare-const r@14@01 $Perm)
(declare-const r@15@01 $Perm)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] r >= 0 / 1
(push) ; 3
(set-option :timeout 10)
(assert (not (not (>= r@15@01 $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (>= r@15@01 $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | r@15@01 >= Z | live]
; [else-branch: 9 | !(r@15@01 >= Z) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 9 | r@15@01 >= Z]
(assert (>= r@15@01 $Perm.No))
; [exec]
; assert (decreasing(r - 1 / 1, old(r)): Bool) && (bounded(old(r)): Bool)
; [eval] (decreasing(r - 1 / 1, old(r)): Bool)
; [eval] r - 1 / 1
; [eval] old(r)
(push) ; 4
(assert (not (decreasing<Bool> (- r@15@01 $Perm.Write) r@15@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (- r@15@01 $Perm.Write) r@15@01))
; [eval] (bounded(old(r)): Bool)
; [eval] old(r)
(push) ; 4
(assert (not (bounded<Bool> r@15@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> r@15@01))
(pop) ; 3
(push) ; 3
; [else-branch: 9 | !(r@15@01 >= Z)]
(assert (not (>= r@15@01 $Perm.No)))
(pop) ; 3
; [eval] !(r >= 0 / 1)
; [eval] r >= 0 / 1
(push) ; 3
(set-option :timeout 10)
(assert (not (>= r@15@01 $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (>= r@15@01 $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | !(r@15@01 >= Z) | live]
; [else-branch: 10 | r@15@01 >= Z | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 10 | !(r@15@01 >= Z)]
(assert (not (>= r@15@01 $Perm.No)))
(pop) ; 3
(push) ; 3
; [else-branch: 10 | r@15@01 >= Z]
(assert (>= r@15@01 $Perm.No))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- rationals_e_termination_proof ----------
(declare-const r@16@01 $Perm)
(declare-const r@17@01 $Perm)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] r >= 0 / 1
(push) ; 3
(set-option :timeout 10)
(assert (not (not (>= r@17@01 $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (>= r@17@01 $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | r@17@01 >= Z | live]
; [else-branch: 11 | !(r@17@01 >= Z) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 11 | r@17@01 >= Z]
(assert (>= r@17@01 $Perm.No))
; [exec]
; assert (decreasing(r / 2, old(r)): Bool) && (bounded(old(r)): Bool)
; [eval] (decreasing(r / 2, old(r)): Bool)
; [eval] r / 2
; [eval] old(r)
(push) ; 4
(assert (not (decreasing<Bool> (/ r@17@01 (to_real 2)) r@17@01)))
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
; [eval] (decreasing(r / 2, old(r)): Bool)
; [eval] r / 2
; [eval] old(r)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (/ r@17@01 (to_real 2)) r@17@01)))
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
; [eval] (decreasing(r / 2, old(r)): Bool)
; [eval] r / 2
; [eval] old(r)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (/ r@17@01 (to_real 2)) r@17@01)))
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
; [eval] (decreasing(r / 2, old(r)): Bool)
; [eval] r / 2
; [eval] old(r)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (/ r@17@01 (to_real 2)) r@17@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- sequences_termination_proof ----------
(declare-const seq@18@01 Seq<Int>)
(declare-const seq@19@01 Seq<Int>)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] |seq| != 0
; [eval] |seq|
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_length seq@19@01) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (Seq_length seq@19@01) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | |seq@19@01| != 0 | live]
; [else-branch: 12 | |seq@19@01| == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 12 | |seq@19@01| != 0]
(assert (not (= (Seq_length seq@19@01) 0)))
; [exec]
; assert (decreasing(seq[1..], old(seq)): Bool) && (bounded(old(seq)): Bool)
; [eval] (decreasing(seq[1..], old(seq)): Bool)
; [eval] seq[1..]
; [eval] old(seq)
(push) ; 4
(assert (not (decreasing<Bool> (Seq_drop seq@19@01 1) seq@19@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (Seq_drop seq@19@01 1) seq@19@01))
; [eval] (bounded(old(seq)): Bool)
; [eval] old(seq)
(push) ; 4
(assert (not (bounded<Bool> seq@19@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> seq@19@01))
(pop) ; 3
(push) ; 3
; [else-branch: 12 | |seq@19@01| == 0]
(assert (= (Seq_length seq@19@01) 0))
(pop) ; 3
; [eval] !(|seq| != 0)
; [eval] |seq| != 0
; [eval] |seq|
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (Seq_length seq@19@01) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_length seq@19@01) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | |seq@19@01| == 0 | live]
; [else-branch: 13 | |seq@19@01| != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 13 | |seq@19@01| == 0]
(assert (= (Seq_length seq@19@01) 0))
(pop) ; 3
(push) ; 3
; [else-branch: 13 | |seq@19@01| != 0]
(assert (not (= (Seq_length seq@19@01) 0)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- sequences_e_termination_proof ----------
(declare-const seq@20@01 Seq<Int>)
(declare-const seq@21@01 Seq<Int>)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] |seq| != 0
; [eval] |seq|
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_length seq@21@01) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (Seq_length seq@21@01) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | |seq@21@01| != 0 | live]
; [else-branch: 14 | |seq@21@01| == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 14 | |seq@21@01| != 0]
(assert (not (= (Seq_length seq@21@01) 0)))
; [exec]
; assert (decreasing(seq[1..] ++ Seq(1), old(seq)): Bool) &&
;   (bounded(old(seq)): Bool)
; [eval] (decreasing(seq[1..] ++ Seq(1), old(seq)): Bool)
; [eval] seq[1..] ++ Seq(1)
; [eval] seq[1..]
; [eval] Seq(1)
(assert (= (Seq_length (Seq_singleton 1)) 1))
; [eval] old(seq)
(push) ; 4
(assert (not (decreasing<Bool> (Seq_append (Seq_drop seq@21@01 1) (Seq_singleton 1)) seq@21@01)))
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
; [eval] (decreasing(seq[1..] ++ Seq(1), old(seq)): Bool)
; [eval] seq[1..] ++ Seq(1)
; [eval] seq[1..]
; [eval] Seq(1)
; [eval] old(seq)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (Seq_append (Seq_drop seq@21@01 1) (Seq_singleton 1)) seq@21@01)))
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
; [eval] (decreasing(seq[1..] ++ Seq(1), old(seq)): Bool)
; [eval] seq[1..] ++ Seq(1)
; [eval] seq[1..]
; [eval] Seq(1)
; [eval] old(seq)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (Seq_append (Seq_drop seq@21@01 1) (Seq_singleton 1)) seq@21@01)))
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
; [eval] (decreasing(seq[1..] ++ Seq(1), old(seq)): Bool)
; [eval] seq[1..] ++ Seq(1)
; [eval] seq[1..]
; [eval] Seq(1)
; [eval] old(seq)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (Seq_append (Seq_drop seq@21@01 1) (Seq_singleton 1)) seq@21@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- numberOfUsers_termination_proof ----------
(declare-const seq@22@01 Seq<Bool>)
(declare-const seq@23@01 Seq<Bool>)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] !(|seq| == 0)
; [eval] |seq| == 0
; [eval] |seq|
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_length seq@23@01) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (Seq_length seq@23@01) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | |seq@23@01| != 0 | live]
; [else-branch: 15 | |seq@23@01| == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 15 | |seq@23@01| != 0]
(assert (not (= (Seq_length seq@23@01) 0)))
; [eval] seq[0]
(push) ; 4
(assert (not (< 0 (Seq_length seq@23@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (Seq_index seq@23@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (Seq_index seq@23@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | seq@23@01[0] | live]
; [else-branch: 16 | !(seq@23@01[0]) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 16 | seq@23@01[0]]
(assert (Seq_index seq@23@01 0))
; [exec]
; assert (decreasing(seq[1..], old(seq)): Bool) && (bounded(old(seq)): Bool)
; [eval] (decreasing(seq[1..], old(seq)): Bool)
; [eval] seq[1..]
; [eval] old(seq)
(push) ; 5
(assert (not (decreasing<Bool> (Seq_drop seq@23@01 1) seq@23@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (Seq_drop seq@23@01 1) seq@23@01))
; [eval] (bounded(old(seq)): Bool)
; [eval] old(seq)
(push) ; 5
(assert (not (bounded<Bool> seq@23@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> seq@23@01))
(pop) ; 4
(push) ; 4
; [else-branch: 16 | !(seq@23@01[0])]
(assert (not (Seq_index seq@23@01 0)))
(pop) ; 4
; [eval] !(seq[0])
; [eval] seq[0]
(push) ; 4
(assert (not (< 0 (Seq_length seq@23@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (Seq_index seq@23@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (Seq_index seq@23@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | !(seq@23@01[0]) | live]
; [else-branch: 17 | seq@23@01[0] | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 17 | !(seq@23@01[0])]
(assert (not (Seq_index seq@23@01 0)))
; [exec]
; assert (decreasing(seq[1..], old(seq)): Bool) && (bounded(old(seq)): Bool)
; [eval] (decreasing(seq[1..], old(seq)): Bool)
; [eval] seq[1..]
; [eval] old(seq)
(push) ; 5
(assert (not (decreasing<Bool> (Seq_drop seq@23@01 1) seq@23@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (Seq_drop seq@23@01 1) seq@23@01))
; [eval] (bounded(old(seq)): Bool)
; [eval] old(seq)
(push) ; 5
(assert (not (bounded<Bool> seq@23@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> seq@23@01))
(pop) ; 4
(push) ; 4
; [else-branch: 17 | seq@23@01[0]]
(assert (Seq_index seq@23@01 0))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 15 | |seq@23@01| == 0]
(assert (= (Seq_length seq@23@01) 0))
(pop) ; 3
; [eval] |seq| == 0
; [eval] |seq|
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (Seq_length seq@23@01) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_length seq@23@01) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | |seq@23@01| == 0 | live]
; [else-branch: 18 | |seq@23@01| != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 18 | |seq@23@01| == 0]
(assert (= (Seq_length seq@23@01) 0))
(pop) ; 3
(push) ; 3
; [else-branch: 18 | |seq@23@01| != 0]
(assert (not (= (Seq_length seq@23@01) 0)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- sets_termination_proof ----------
(declare-const s@24@01 Set<Int>)
(declare-const s@25@01 Set<Int>)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] |s| > 0 && (|s| in s)
; [eval] |s| > 0
; [eval] |s|
(push) ; 3
; [then-branch: 19 | !(|s@25@01| > 0) | live]
; [else-branch: 19 | |s@25@01| > 0 | live]
(push) ; 4
; [then-branch: 19 | !(|s@25@01| > 0)]
(assert (not (> (Set_card s@25@01) 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 19 | |s@25@01| > 0]
(assert (> (Set_card s@25@01) 0))
; [eval] (|s| in s)
; [eval] |s|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> (Set_card s@25@01) 0) (not (> (Set_card s@25@01) 0))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and (> (Set_card s@25@01) 0) (Set_in (Set_card s@25@01) s@25@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and (> (Set_card s@25@01) 0) (Set_in (Set_card s@25@01) s@25@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | |s@25@01| > 0 && |s@25@01| in s@25@01 | live]
; [else-branch: 20 | !(|s@25@01| > 0 && |s@25@01| in s@25@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 20 | |s@25@01| > 0 && |s@25@01| in s@25@01]
(assert (and (> (Set_card s@25@01) 0) (Set_in (Set_card s@25@01) s@25@01)))
; [exec]
; assert (decreasing((s setminus Set(|s|)), old(s)): Bool) &&
;   (bounded(old(s)): Bool)
; [eval] (decreasing((s setminus Set(|s|)), old(s)): Bool)
; [eval] (s setminus Set(|s|))
; [eval] Set(|s|)
; [eval] |s|
; [eval] old(s)
(push) ; 4
(assert (not (decreasing<Bool> (Set_difference s@25@01 (Set_singleton (Set_card s@25@01))) s@25@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (Set_difference s@25@01 (Set_singleton (Set_card s@25@01))) s@25@01))
; [eval] (bounded(old(s)): Bool)
; [eval] old(s)
(push) ; 4
(assert (not (bounded<Bool> s@25@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> s@25@01))
(pop) ; 3
(push) ; 3
; [else-branch: 20 | !(|s@25@01| > 0 && |s@25@01| in s@25@01)]
(assert (not (and (> (Set_card s@25@01) 0) (Set_in (Set_card s@25@01) s@25@01))))
(pop) ; 3
; [eval] !(|s| > 0 && (|s| in s))
; [eval] |s| > 0 && (|s| in s)
; [eval] |s| > 0
; [eval] |s|
(push) ; 3
; [then-branch: 21 | !(|s@25@01| > 0) | live]
; [else-branch: 21 | |s@25@01| > 0 | live]
(push) ; 4
; [then-branch: 21 | !(|s@25@01| > 0)]
(assert (not (> (Set_card s@25@01) 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 21 | |s@25@01| > 0]
(assert (> (Set_card s@25@01) 0))
; [eval] (|s| in s)
; [eval] |s|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (and (> (Set_card s@25@01) 0) (Set_in (Set_card s@25@01) s@25@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and (> (Set_card s@25@01) 0) (Set_in (Set_card s@25@01) s@25@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | !(|s@25@01| > 0 && |s@25@01| in s@25@01) | live]
; [else-branch: 22 | |s@25@01| > 0 && |s@25@01| in s@25@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 22 | !(|s@25@01| > 0 && |s@25@01| in s@25@01)]
(assert (not (and (> (Set_card s@25@01) 0) (Set_in (Set_card s@25@01) s@25@01))))
(pop) ; 3
(push) ; 3
; [else-branch: 22 | |s@25@01| > 0 && |s@25@01| in s@25@01]
(assert (and (> (Set_card s@25@01) 0) (Set_in (Set_card s@25@01) s@25@01)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- sets_e_termination_proof ----------
(declare-const s@26@01 Set<Int>)
(declare-const s@27@01 Set<Int>)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] !(|s| > 0 && (|s| in s))
; [eval] |s| > 0 && (|s| in s)
; [eval] |s| > 0
; [eval] |s|
(push) ; 3
; [then-branch: 23 | !(|s@27@01| > 0) | live]
; [else-branch: 23 | |s@27@01| > 0 | live]
(push) ; 4
; [then-branch: 23 | !(|s@27@01| > 0)]
(assert (not (> (Set_card s@27@01) 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 23 | |s@27@01| > 0]
(assert (> (Set_card s@27@01) 0))
; [eval] (|s| in s)
; [eval] |s|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> (Set_card s@27@01) 0) (not (> (Set_card s@27@01) 0))))
(push) ; 3
(set-option :timeout 10)
(assert (not (and (> (Set_card s@27@01) 0) (Set_in (Set_card s@27@01) s@27@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and (> (Set_card s@27@01) 0) (Set_in (Set_card s@27@01) s@27@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | !(|s@27@01| > 0 && |s@27@01| in s@27@01) | live]
; [else-branch: 24 | |s@27@01| > 0 && |s@27@01| in s@27@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 24 | !(|s@27@01| > 0 && |s@27@01| in s@27@01)]
(assert (not (and (> (Set_card s@27@01) 0) (Set_in (Set_card s@27@01) s@27@01))))
; [exec]
; assert (decreasing((s setminus Set(|s|)), old(s)): Bool) &&
;   (bounded(old(s)): Bool)
; [eval] (decreasing((s setminus Set(|s|)), old(s)): Bool)
; [eval] (s setminus Set(|s|))
; [eval] Set(|s|)
; [eval] |s|
; [eval] old(s)
(push) ; 4
(assert (not (decreasing<Bool> (Set_difference s@27@01 (Set_singleton (Set_card s@27@01))) s@27@01)))
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
; [eval] (decreasing((s setminus Set(|s|)), old(s)): Bool)
; [eval] (s setminus Set(|s|))
; [eval] Set(|s|)
; [eval] |s|
; [eval] old(s)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (Set_difference s@27@01 (Set_singleton (Set_card s@27@01))) s@27@01)))
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
; [eval] (decreasing((s setminus Set(|s|)), old(s)): Bool)
; [eval] (s setminus Set(|s|))
; [eval] Set(|s|)
; [eval] |s|
; [eval] old(s)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (Set_difference s@27@01 (Set_singleton (Set_card s@27@01))) s@27@01)))
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
; [eval] (decreasing((s setminus Set(|s|)), old(s)): Bool)
; [eval] (s setminus Set(|s|))
; [eval] Set(|s|)
; [eval] |s|
; [eval] old(s)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (Set_difference s@27@01 (Set_singleton (Set_card s@27@01))) s@27@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- multiSets_termination_proof ----------
(declare-const s@28@01 Multiset<Int>)
(declare-const s@29@01 Multiset<Int>)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] |s| > 0 && ((|s| in s)) > 0
; [eval] |s| > 0
; [eval] |s|
(push) ; 3
; [then-branch: 25 | !(|s@29@01| > 0) | live]
; [else-branch: 25 | |s@29@01| > 0 | live]
(push) ; 4
; [then-branch: 25 | !(|s@29@01| > 0)]
(assert (not (> (Multiset_card s@29@01) 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 25 | |s@29@01| > 0]
(assert (> (Multiset_card s@29@01) 0))
; [eval] ((|s| in s)) > 0
; [eval] (|s| in s)
; [eval] |s|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> (Multiset_card s@29@01) 0) (not (> (Multiset_card s@29@01) 0))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (and
    (> (Multiset_card s@29@01) 0)
    (> (Multiset_count s@29@01 (Multiset_card s@29@01)) 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (> (Multiset_card s@29@01) 0)
  (> (Multiset_count s@29@01 (Multiset_card s@29@01)) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | |s@29@01| > 0 && s@29@01(|s@29@01|) > 0 | live]
; [else-branch: 26 | !(|s@29@01| > 0 && s@29@01(|s@29@01|) > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 26 | |s@29@01| > 0 && s@29@01(|s@29@01|) > 0]
(assert (and
  (> (Multiset_card s@29@01) 0)
  (> (Multiset_count s@29@01 (Multiset_card s@29@01)) 0)))
; [exec]
; assert (decreasing((s setminus Multiset(|s|)), old(s)): Bool) &&
;   (bounded(old(s)): Bool)
; [eval] (decreasing((s setminus Multiset(|s|)), old(s)): Bool)
; [eval] (s setminus Multiset(|s|))
; [eval] Multiset(|s|)
; [eval] |s|
; [eval] old(s)
(push) ; 4
(assert (not (decreasing<Bool> (Multiset_difference s@29@01 (Multiset_singleton (Multiset_card s@29@01))) s@29@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (Multiset_difference s@29@01 (Multiset_singleton (Multiset_card s@29@01))) s@29@01))
; [eval] (bounded(old(s)): Bool)
; [eval] old(s)
(push) ; 4
(assert (not (bounded<Bool> s@29@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> s@29@01))
(pop) ; 3
(push) ; 3
; [else-branch: 26 | !(|s@29@01| > 0 && s@29@01(|s@29@01|) > 0)]
(assert (not
  (and
    (> (Multiset_card s@29@01) 0)
    (> (Multiset_count s@29@01 (Multiset_card s@29@01)) 0))))
(pop) ; 3
; [eval] !(|s| > 0 && ((|s| in s)) > 0)
; [eval] |s| > 0 && ((|s| in s)) > 0
; [eval] |s| > 0
; [eval] |s|
(push) ; 3
; [then-branch: 27 | !(|s@29@01| > 0) | live]
; [else-branch: 27 | |s@29@01| > 0 | live]
(push) ; 4
; [then-branch: 27 | !(|s@29@01| > 0)]
(assert (not (> (Multiset_card s@29@01) 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 27 | |s@29@01| > 0]
(assert (> (Multiset_card s@29@01) 0))
; [eval] ((|s| in s)) > 0
; [eval] (|s| in s)
; [eval] |s|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (> (Multiset_card s@29@01) 0)
  (> (Multiset_count s@29@01 (Multiset_card s@29@01)) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (and
    (> (Multiset_card s@29@01) 0)
    (> (Multiset_count s@29@01 (Multiset_card s@29@01)) 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | !(|s@29@01| > 0 && s@29@01(|s@29@01|) > 0) | live]
; [else-branch: 28 | |s@29@01| > 0 && s@29@01(|s@29@01|) > 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 28 | !(|s@29@01| > 0 && s@29@01(|s@29@01|) > 0)]
(assert (not
  (and
    (> (Multiset_card s@29@01) 0)
    (> (Multiset_count s@29@01 (Multiset_card s@29@01)) 0))))
(pop) ; 3
(push) ; 3
; [else-branch: 28 | |s@29@01| > 0 && s@29@01(|s@29@01|) > 0]
(assert (and
  (> (Multiset_card s@29@01) 0)
  (> (Multiset_count s@29@01 (Multiset_card s@29@01)) 0)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- multiSets_e_termination_proof ----------
(declare-const s@30@01 Multiset<Int>)
(declare-const s@31@01 Multiset<Int>)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] !(|s| > 0 && ((|s| in s)) > 0)
; [eval] |s| > 0 && ((|s| in s)) > 0
; [eval] |s| > 0
; [eval] |s|
(push) ; 3
; [then-branch: 29 | !(|s@31@01| > 0) | live]
; [else-branch: 29 | |s@31@01| > 0 | live]
(push) ; 4
; [then-branch: 29 | !(|s@31@01| > 0)]
(assert (not (> (Multiset_card s@31@01) 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 29 | |s@31@01| > 0]
(assert (> (Multiset_card s@31@01) 0))
; [eval] ((|s| in s)) > 0
; [eval] (|s| in s)
; [eval] |s|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> (Multiset_card s@31@01) 0) (not (> (Multiset_card s@31@01) 0))))
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (> (Multiset_card s@31@01) 0)
  (> (Multiset_count s@31@01 (Multiset_card s@31@01)) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (and
    (> (Multiset_card s@31@01) 0)
    (> (Multiset_count s@31@01 (Multiset_card s@31@01)) 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | !(|s@31@01| > 0 && s@31@01(|s@31@01|) > 0) | live]
; [else-branch: 30 | |s@31@01| > 0 && s@31@01(|s@31@01|) > 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 30 | !(|s@31@01| > 0 && s@31@01(|s@31@01|) > 0)]
(assert (not
  (and
    (> (Multiset_card s@31@01) 0)
    (> (Multiset_count s@31@01 (Multiset_card s@31@01)) 0))))
; [exec]
; assert (decreasing((s setminus Multiset(|s|)), old(s)): Bool) &&
;   (bounded(old(s)): Bool)
; [eval] (decreasing((s setminus Multiset(|s|)), old(s)): Bool)
; [eval] (s setminus Multiset(|s|))
; [eval] Multiset(|s|)
; [eval] |s|
; [eval] old(s)
(push) ; 4
(assert (not (decreasing<Bool> (Multiset_difference s@31@01 (Multiset_singleton (Multiset_card s@31@01))) s@31@01)))
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
; [eval] (decreasing((s setminus Multiset(|s|)), old(s)): Bool)
; [eval] (s setminus Multiset(|s|))
; [eval] Multiset(|s|)
; [eval] |s|
; [eval] old(s)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (Multiset_difference s@31@01 (Multiset_singleton (Multiset_card s@31@01))) s@31@01)))
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
; [eval] (decreasing((s setminus Multiset(|s|)), old(s)): Bool)
; [eval] (s setminus Multiset(|s|))
; [eval] Multiset(|s|)
; [eval] |s|
; [eval] old(s)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (Multiset_difference s@31@01 (Multiset_singleton (Multiset_card s@31@01))) s@31@01)))
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
; [eval] (decreasing((s setminus Multiset(|s|)), old(s)): Bool)
; [eval] (s setminus Multiset(|s|))
; [eval] Multiset(|s|)
; [eval] |s|
; [eval] old(s)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> (Multiset_difference s@31@01 (Multiset_singleton (Multiset_card s@31@01))) s@31@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- predicates_termination_proof ----------
(declare-const xs@32@01 $Ref)
(declare-const xs@33@01 $Ref)
(push) ; 1
(declare-const $t@34@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var b1: Bool
(declare-const b1@35@01 Bool)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b1@35@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b1@35@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | b1@35@01 | live]
; [else-branch: 31 | !(b1@35@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 31 | b1@35@01]
(assert b1@35@01)
; [exec]
; // list_xs
; var list__16981330: PredicateInstance
(declare-const list__16981330@36@01 PredicateInstance)
; [exec]
; list__16981330 := PI_list(xs)
; [eval] PI_list(xs)
(push) ; 4
(declare-const $k@37@01 $Perm)
(assert ($Perm.isReadVar $k@37@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@37@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (PI_list%precondition $t@34@01 xs@33@01))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@37@01))
(assert (PI_list%precondition $t@34@01 xs@33@01))
(declare-const list__16981330@38@01 PredicateInstance)
(assert (= list__16981330@38@01 (PI_list $t@34@01 xs@33@01)))
; [exec]
; unfold acc(list(xs), write)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (not (= xs@33@01 $Ref.null)))
; [eval] xs.next != null
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | First:($t@34@01) != Null | live]
; [else-branch: 32 | First:($t@34@01) == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 32 | First:($t@34@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01)) $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (list%trigger $t@34@01 xs@33@01))
; [eval] xs.next != null
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | First:($t@34@01) != Null | live]
; [else-branch: 33 | First:($t@34@01) == Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 33 | First:($t@34@01) != Null]
; [exec]
; // list_xs.next
; var list_1681681832: PredicateInstance
(declare-const list_1681681832@39@01 PredicateInstance)
; [exec]
; list_1681681832 := PI_list(xs.next)
; [eval] PI_list(xs.next)
(push) ; 6
(declare-const $k@40@01 $Perm)
(assert ($Perm.isReadVar $k@40@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@40@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (PI_list%precondition ($Snap.second $t@34@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01))))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@40@01))
(assert (PI_list%precondition ($Snap.second $t@34@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01))))
(declare-const list_1681681832@41@01 PredicateInstance)
(assert (=
  list_1681681832@41@01
  (PI_list ($Snap.second $t@34@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01)))))
; [exec]
; inhale nestedPredicates(list_1681681832, list__16981330)
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 $Snap.unit))
; [eval] nestedPredicates(list_1681681832, list__16981330)
(assert (nestedPredicates<Bool> list_1681681832@41@01 list__16981330@38@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] xs.next != null
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | First:($t@34@01) != Null | live]
; [else-branch: 34 | First:($t@34@01) == Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 34 | First:($t@34@01) != Null]
; [exec]
; assert (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool) &&
;   (bounded(old(PI_list(xs))): Bool)
; [eval] (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool)
; [eval] PI_list(xs.next)
(push) ; 7
(declare-const $k@43@01 $Perm)
(assert ($Perm.isReadVar $k@43@01))
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@43@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
; Joined path conditions
(assert ($Perm.isReadVar $k@43@01))
; [eval] old(PI_list(xs))
; [eval] PI_list(xs)
(set-option :timeout 0)
(push) ; 7
(declare-const $k@44@01 $Perm)
(assert ($Perm.isReadVar $k@44@01))
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@44@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
; Joined path conditions
(assert ($Perm.isReadVar $k@44@01))
(set-option :timeout 0)
(push) ; 7
(assert (not (decreasing<Bool> (PI_list ($Snap.second $t@34@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01))) (PI_list $t@34@01 xs@33@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (decreasing<Bool> (PI_list ($Snap.second $t@34@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01))) (PI_list $t@34@01 xs@33@01)))
; [eval] (bounded(old(PI_list(xs))): Bool)
; [eval] old(PI_list(xs))
; [eval] PI_list(xs)
(push) ; 7
(declare-const $k@45@01 $Perm)
(assert ($Perm.isReadVar $k@45@01))
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@45@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
; Joined path conditions
(assert ($Perm.isReadVar $k@45@01))
(set-option :timeout 0)
(push) ; 7
(assert (not (bounded<Bool> (PI_list $t@34@01 xs@33@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (bounded<Bool> (PI_list $t@34@01 xs@33@01)))
; [exec]
; inhale false
(pop) ; 6
; [eval] !(xs.next != null)
; [eval] xs.next != null
; [then-branch: 35 | First:($t@34@01) == Null | dead]
; [else-branch: 35 | First:($t@34@01) != Null | live]
(push) ; 6
; [else-branch: 35 | First:($t@34@01) != Null]
(pop) ; 6
(pop) ; 5
; [eval] !(xs.next != null)
; [eval] xs.next != null
; [then-branch: 36 | First:($t@34@01) == Null | dead]
; [else-branch: 36 | First:($t@34@01) != Null | live]
(push) ; 5
; [else-branch: 36 | First:($t@34@01) != Null]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 32 | First:($t@34@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01)) $Ref.null))
(assert (= ($Snap.second $t@34@01) $Snap.unit))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (list%trigger $t@34@01 xs@33@01))
; [eval] xs.next != null
; [then-branch: 37 | First:($t@34@01) != Null | dead]
; [else-branch: 37 | First:($t@34@01) == Null | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 37 | First:($t@34@01) == Null]
(pop) ; 5
; [eval] !(xs.next != null)
; [eval] xs.next != null
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | First:($t@34@01) == Null | live]
; [else-branch: 38 | First:($t@34@01) != Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 38 | First:($t@34@01) == Null]
; [eval] xs.next != null
; [then-branch: 39 | First:($t@34@01) != Null | dead]
; [else-branch: 39 | First:($t@34@01) == Null | live]
(push) ; 6
; [else-branch: 39 | First:($t@34@01) == Null]
(pop) ; 6
; [eval] !(xs.next != null)
; [eval] xs.next != null
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@34@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 40 | First:($t@34@01) == Null | live]
; [else-branch: 40 | First:($t@34@01) != Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 40 | First:($t@34@01) == Null]
; [exec]
; inhale false
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 31 | !(b1@35@01)]
(assert (not b1@35@01))
(pop) ; 3
; [eval] !b1
(push) ; 3
(set-option :timeout 10)
(assert (not b1@35@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b1@35@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | !(b1@35@01) | live]
; [else-branch: 41 | b1@35@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 41 | !(b1@35@01)]
(assert (not b1@35@01))
(pop) ; 3
(push) ; 3
; [else-branch: 41 | b1@35@01]
(assert b1@35@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- predicates_pres_termination_proof ----------
(declare-const xs@46@01 $Ref)
(declare-const xs@47@01 $Ref)
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
; var $condInEx: Bool
(declare-const $condInEx@48@01 Bool)
; [exec]
; inhale acc(list(xs), write)
(declare-const $t@49@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- predicates_e_termination_proof ----------
(declare-const xs@50@01 $Ref)
(declare-const xs@51@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@52@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var b2: Bool
(declare-const b2@53@01 Bool)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b2@53@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b2@53@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 42 | b2@53@01 | live]
; [else-branch: 42 | !(b2@53@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 42 | b2@53@01]
(assert b2@53@01)
; [exec]
; // list_xs
; var list__169813300: PredicateInstance
(declare-const list__169813300@54@01 PredicateInstance)
; [exec]
; list__169813300 := PI_list(xs)
; [eval] PI_list(xs)
(push) ; 4
(declare-const $k@55@01 $Perm)
(assert ($Perm.isReadVar $k@55@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@55@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (PI_list%precondition $t@52@01 xs@51@01))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@55@01))
(assert (PI_list%precondition $t@52@01 xs@51@01))
(declare-const list__169813300@56@01 PredicateInstance)
(assert (= list__169813300@56@01 (PI_list $t@52@01 xs@51@01)))
; [exec]
; unfold acc(list(xs), write)
(assert (= $t@52@01 ($Snap.combine ($Snap.first $t@52@01) ($Snap.second $t@52@01))))
(assert (not (= xs@51@01 $Ref.null)))
; [eval] xs.next != null
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | First:($t@52@01) != Null | live]
; [else-branch: 43 | First:($t@52@01) == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 43 | First:($t@52@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (list%trigger $t@52@01 xs@51@01))
; [eval] xs.next != null
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | First:($t@52@01) != Null | live]
; [else-branch: 44 | First:($t@52@01) == Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 44 | First:($t@52@01) != Null]
; [exec]
; // list_xs.next
; var list_16816818320: PredicateInstance
(declare-const list_16816818320@57@01 PredicateInstance)
; [exec]
; list_16816818320 := PI_list(xs.next)
; [eval] PI_list(xs.next)
(push) ; 6
(declare-const $k@58@01 $Perm)
(assert ($Perm.isReadVar $k@58@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@58@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (PI_list%precondition ($Snap.second $t@52@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01))))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@58@01))
(assert (PI_list%precondition ($Snap.second $t@52@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01))))
(declare-const list_16816818320@59@01 PredicateInstance)
(assert (=
  list_16816818320@59@01
  (PI_list ($Snap.second $t@52@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)))))
; [exec]
; inhale nestedPredicates(list_16816818320, list__169813300)
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] nestedPredicates(list_16816818320, list__169813300)
(assert (nestedPredicates<Bool> list_16816818320@59@01 list__169813300@56@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale false
(pop) ; 5
; [eval] !(xs.next != null)
; [eval] xs.next != null
; [then-branch: 45 | First:($t@52@01) == Null | dead]
; [else-branch: 45 | First:($t@52@01) != Null | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 45 | First:($t@52@01) != Null]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 43 | First:($t@52@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null))
(assert (= ($Snap.second $t@52@01) $Snap.unit))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (list%trigger $t@52@01 xs@51@01))
; [eval] xs.next != null
; [then-branch: 46 | First:($t@52@01) != Null | dead]
; [else-branch: 46 | First:($t@52@01) == Null | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 46 | First:($t@52@01) == Null]
(pop) ; 5
; [eval] !(xs.next != null)
; [eval] xs.next != null
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 47 | First:($t@52@01) == Null | live]
; [else-branch: 47 | First:($t@52@01) != Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 47 | First:($t@52@01) == Null]
; [exec]
; inhale false
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 42 | !(b2@53@01)]
(assert (not b2@53@01))
(pop) ; 3
; [eval] !b2
(push) ; 3
(set-option :timeout 10)
(assert (not b2@53@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b2@53@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | !(b2@53@01) | live]
; [else-branch: 48 | b2@53@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 48 | !(b2@53@01)]
(assert (not b2@53@01))
; [eval] (unfolding acc(list(xs), write) in xs.next != null)
(push) ; 4
(assert (list%trigger $t@52@01 xs@51@01))
(assert (= $t@52@01 ($Snap.combine ($Snap.first $t@52@01) ($Snap.second $t@52@01))))
(assert (not (= xs@51@01 $Ref.null)))
; [eval] xs.next != null
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 49 | First:($t@52@01) != Null | live]
; [else-branch: 49 | First:($t@52@01) == Null | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 49 | First:($t@52@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)))
; [eval] xs.next != null
(pop) ; 5
(push) ; 5
; [else-branch: 49 | First:($t@52@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null))
(assert (= ($Snap.second $t@52@01) $Snap.unit))
; [eval] xs.next != null
(pop) ; 5
(pop) ; 4
(declare-const joined_unfolding@61@01 Bool)
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null))
  (=
    (as joined_unfolding@61@01  Bool)
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)
  (=
    (as joined_unfolding@61@01  Bool)
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)))))
; Joined path conditions
(assert (and
  (list%trigger $t@52@01 xs@51@01)
  (= $t@52@01 ($Snap.combine ($Snap.first $t@52@01) ($Snap.second $t@52@01)))
  (not (= xs@51@01 $Ref.null))))
; Joined path conditions
(assert (and
  (list%trigger $t@52@01 xs@51@01)
  (= $t@52@01 ($Snap.combine ($Snap.first $t@52@01) ($Snap.second $t@52@01)))
  (not (= xs@51@01 $Ref.null))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)
  (and
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)
    (= ($Snap.second $t@52@01) $Snap.unit))))
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null)
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@52@01)) $Ref.null))))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (as joined_unfolding@61@01  Bool))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (as joined_unfolding@61@01  Bool)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 50 | joined_unfolding@61@01 | live]
; [else-branch: 50 | !(joined_unfolding@61@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 50 | joined_unfolding@61@01]
(assert (as joined_unfolding@61@01  Bool))
; [exec]
; assert (decreasing(PI_list(xs), old(PI_list(xs))): Bool) &&
;   (bounded(old(PI_list(xs))): Bool)
; [eval] (decreasing(PI_list(xs), old(PI_list(xs))): Bool)
; [eval] PI_list(xs)
(push) ; 5
(declare-const $k@62@01 $Perm)
(assert ($Perm.isReadVar $k@62@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@62@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (PI_list%precondition $t@52@01 xs@51@01))
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@62@01))
(assert (PI_list%precondition $t@52@01 xs@51@01))
; [eval] old(PI_list(xs))
; [eval] PI_list(xs)
(set-option :timeout 0)
(push) ; 5
(declare-const $k@63@01 $Perm)
(assert ($Perm.isReadVar $k@63@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@63@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@63@01))
(set-option :timeout 0)
(push) ; 5
(assert (not (decreasing<Bool> (PI_list $t@52@01 xs@51@01) (PI_list $t@52@01 xs@51@01))))
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
; [eval] (decreasing(PI_list(xs), old(PI_list(xs))): Bool)
; [eval] PI_list(xs)
(set-option :timeout 0)
(push) ; 5
(declare-const $k@64@01 $Perm)
(assert ($Perm.isReadVar $k@64@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@64@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@64@01))
; [eval] old(PI_list(xs))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
; [eval] PI_list(xs)
(set-option :timeout 0)
(push) ; 5
(declare-const $k@65@01 $Perm)
(assert ($Perm.isReadVar $k@65@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@65@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@65@01))
(set-option :timeout 0)
(push) ; 5
(assert (not (decreasing<Bool> (PI_list $t@52@01 xs@51@01) (PI_list $t@52@01 xs@51@01))))
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
; [eval] (decreasing(PI_list(xs), old(PI_list(xs))): Bool)
; [eval] PI_list(xs)
(set-option :timeout 0)
(push) ; 5
(declare-const $k@66@01 $Perm)
(assert ($Perm.isReadVar $k@66@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@66@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@66@01))
; [eval] old(PI_list(xs))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
; [eval] PI_list(xs)
(set-option :timeout 0)
(push) ; 5
(declare-const $k@67@01 $Perm)
(assert ($Perm.isReadVar $k@67@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@67@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@67@01))
(set-option :timeout 0)
(push) ; 5
(assert (not (decreasing<Bool> (PI_list $t@52@01 xs@51@01) (PI_list $t@52@01 xs@51@01))))
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
; [eval] (decreasing(PI_list(xs), old(PI_list(xs))): Bool)
; [eval] PI_list(xs)
(set-option :timeout 0)
(push) ; 5
(declare-const $k@68@01 $Perm)
(assert ($Perm.isReadVar $k@68@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@68@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@68@01))
; [eval] old(PI_list(xs))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
; [eval] PI_list(xs)
(set-option :timeout 0)
(push) ; 5
(declare-const $k@69@01 $Perm)
(assert ($Perm.isReadVar $k@69@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@69@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@69@01))
(set-option :timeout 0)
(push) ; 5
(assert (not (decreasing<Bool> (PI_list $t@52@01 xs@51@01) (PI_list $t@52@01 xs@51@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- predicates_e_pres_termination_proof ----------
(declare-const xs@70@01 $Ref)
(declare-const xs@71@01 $Ref)
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
; var $condInEx: Bool
(declare-const $condInEx@72@01 Bool)
; [exec]
; inhale acc(list(xs), write)
(declare-const $t@73@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1