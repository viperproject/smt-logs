(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:43:59
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
(declare-sort List<Int> 0)
(declare-sort ContainsDomain<Int~_Tree<List<Int>>> 0)
(declare-sort Tree<List<Int>> 0)
(declare-sort ContainsDomain<Tree<List<Int>>~_Tree<List<Int>>> 0)
(declare-sort ContainsDomain<List<Int>~_List<Int>> 0)
(declare-sort ContainsTransitivityDomain 0)
(declare-sort ContainsDomain<List<Int>~_Tree<List<Int>>> 0)
(declare-sort ContainsDomain<Int~_List<Int>> 0)
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
(declare-fun $SortWrappers.List<Int>To$Snap (List<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToList<Int> ($Snap) List<Int>)
(assert (forall ((x List<Int>)) (!
    (= x ($SortWrappers.$SnapToList<Int>($SortWrappers.List<Int>To$Snap x)))
    :pattern (($SortWrappers.List<Int>To$Snap x))
    :qid |$Snap.$SnapToList<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.List<Int>To$Snap($SortWrappers.$SnapToList<Int> x)))
    :pattern (($SortWrappers.$SnapToList<Int> x))
    :qid |$Snap.List<Int>To$SnapToList<Int>|
    )))
(declare-fun $SortWrappers.ContainsDomain<Int~_Tree<List<Int>>>To$Snap (ContainsDomain<Int~_Tree<List<Int>>>) $Snap)
(declare-fun $SortWrappers.$SnapToContainsDomain<Int~_Tree<List<Int>>> ($Snap) ContainsDomain<Int~_Tree<List<Int>>>)
(assert (forall ((x ContainsDomain<Int~_Tree<List<Int>>>)) (!
    (= x ($SortWrappers.$SnapToContainsDomain<Int~_Tree<List<Int>>>($SortWrappers.ContainsDomain<Int~_Tree<List<Int>>>To$Snap x)))
    :pattern (($SortWrappers.ContainsDomain<Int~_Tree<List<Int>>>To$Snap x))
    :qid |$Snap.$SnapToContainsDomain<Int~_Tree<List<Int>>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ContainsDomain<Int~_Tree<List<Int>>>To$Snap($SortWrappers.$SnapToContainsDomain<Int~_Tree<List<Int>>> x)))
    :pattern (($SortWrappers.$SnapToContainsDomain<Int~_Tree<List<Int>>> x))
    :qid |$Snap.ContainsDomain<Int~_Tree<List<Int>>>To$SnapToContainsDomain<Int~_Tree<List<Int>>>|
    )))
(declare-fun $SortWrappers.Tree<List<Int>>To$Snap (Tree<List<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapToTree<List<Int>> ($Snap) Tree<List<Int>>)
(assert (forall ((x Tree<List<Int>>)) (!
    (= x ($SortWrappers.$SnapToTree<List<Int>>($SortWrappers.Tree<List<Int>>To$Snap x)))
    :pattern (($SortWrappers.Tree<List<Int>>To$Snap x))
    :qid |$Snap.$SnapToTree<List<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Tree<List<Int>>To$Snap($SortWrappers.$SnapToTree<List<Int>> x)))
    :pattern (($SortWrappers.$SnapToTree<List<Int>> x))
    :qid |$Snap.Tree<List<Int>>To$SnapToTree<List<Int>>|
    )))
(declare-fun $SortWrappers.ContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>To$Snap (ContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>) $Snap)
(declare-fun $SortWrappers.$SnapToContainsDomain<Tree<List<Int>>~_Tree<List<Int>>> ($Snap) ContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>)
(assert (forall ((x ContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>)) (!
    (= x ($SortWrappers.$SnapToContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>($SortWrappers.ContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>To$Snap x)))
    :pattern (($SortWrappers.ContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>To$Snap x))
    :qid |$Snap.$SnapToContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>To$Snap($SortWrappers.$SnapToContainsDomain<Tree<List<Int>>~_Tree<List<Int>>> x)))
    :pattern (($SortWrappers.$SnapToContainsDomain<Tree<List<Int>>~_Tree<List<Int>>> x))
    :qid |$Snap.ContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>To$SnapToContainsDomain<Tree<List<Int>>~_Tree<List<Int>>>|
    )))
(declare-fun $SortWrappers.ContainsDomain<List<Int>~_List<Int>>To$Snap (ContainsDomain<List<Int>~_List<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapToContainsDomain<List<Int>~_List<Int>> ($Snap) ContainsDomain<List<Int>~_List<Int>>)
(assert (forall ((x ContainsDomain<List<Int>~_List<Int>>)) (!
    (= x ($SortWrappers.$SnapToContainsDomain<List<Int>~_List<Int>>($SortWrappers.ContainsDomain<List<Int>~_List<Int>>To$Snap x)))
    :pattern (($SortWrappers.ContainsDomain<List<Int>~_List<Int>>To$Snap x))
    :qid |$Snap.$SnapToContainsDomain<List<Int>~_List<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ContainsDomain<List<Int>~_List<Int>>To$Snap($SortWrappers.$SnapToContainsDomain<List<Int>~_List<Int>> x)))
    :pattern (($SortWrappers.$SnapToContainsDomain<List<Int>~_List<Int>> x))
    :qid |$Snap.ContainsDomain<List<Int>~_List<Int>>To$SnapToContainsDomain<List<Int>~_List<Int>>|
    )))
(declare-fun $SortWrappers.ContainsTransitivityDomainTo$Snap (ContainsTransitivityDomain) $Snap)
(declare-fun $SortWrappers.$SnapToContainsTransitivityDomain ($Snap) ContainsTransitivityDomain)
(assert (forall ((x ContainsTransitivityDomain)) (!
    (= x ($SortWrappers.$SnapToContainsTransitivityDomain($SortWrappers.ContainsTransitivityDomainTo$Snap x)))
    :pattern (($SortWrappers.ContainsTransitivityDomainTo$Snap x))
    :qid |$Snap.$SnapToContainsTransitivityDomainTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ContainsTransitivityDomainTo$Snap($SortWrappers.$SnapToContainsTransitivityDomain x)))
    :pattern (($SortWrappers.$SnapToContainsTransitivityDomain x))
    :qid |$Snap.ContainsTransitivityDomainTo$SnapToContainsTransitivityDomain|
    )))
(declare-fun $SortWrappers.ContainsDomain<List<Int>~_Tree<List<Int>>>To$Snap (ContainsDomain<List<Int>~_Tree<List<Int>>>) $Snap)
(declare-fun $SortWrappers.$SnapToContainsDomain<List<Int>~_Tree<List<Int>>> ($Snap) ContainsDomain<List<Int>~_Tree<List<Int>>>)
(assert (forall ((x ContainsDomain<List<Int>~_Tree<List<Int>>>)) (!
    (= x ($SortWrappers.$SnapToContainsDomain<List<Int>~_Tree<List<Int>>>($SortWrappers.ContainsDomain<List<Int>~_Tree<List<Int>>>To$Snap x)))
    :pattern (($SortWrappers.ContainsDomain<List<Int>~_Tree<List<Int>>>To$Snap x))
    :qid |$Snap.$SnapToContainsDomain<List<Int>~_Tree<List<Int>>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ContainsDomain<List<Int>~_Tree<List<Int>>>To$Snap($SortWrappers.$SnapToContainsDomain<List<Int>~_Tree<List<Int>>> x)))
    :pattern (($SortWrappers.$SnapToContainsDomain<List<Int>~_Tree<List<Int>>> x))
    :qid |$Snap.ContainsDomain<List<Int>~_Tree<List<Int>>>To$SnapToContainsDomain<List<Int>~_Tree<List<Int>>>|
    )))
(declare-fun $SortWrappers.ContainsDomain<Int~_List<Int>>To$Snap (ContainsDomain<Int~_List<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapToContainsDomain<Int~_List<Int>> ($Snap) ContainsDomain<Int~_List<Int>>)
(assert (forall ((x ContainsDomain<Int~_List<Int>>)) (!
    (= x ($SortWrappers.$SnapToContainsDomain<Int~_List<Int>>($SortWrappers.ContainsDomain<Int~_List<Int>>To$Snap x)))
    :pattern (($SortWrappers.ContainsDomain<Int~_List<Int>>To$Snap x))
    :qid |$Snap.$SnapToContainsDomain<Int~_List<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ContainsDomain<Int~_List<Int>>To$Snap($SortWrappers.$SnapToContainsDomain<Int~_List<Int>> x)))
    :pattern (($SortWrappers.$SnapToContainsDomain<Int~_List<Int>> x))
    :qid |$Snap.ContainsDomain<Int~_List<Int>>To$SnapToContainsDomain<Int~_List<Int>>|
    )))
; ////////// Symbols
(declare-fun contains<Bool> (List<Int> Tree<List<Int>>) Bool)
(declare-fun contains<Bool> (Int List<Int>) Bool)
(declare-const Nil<List<Int>> List<Int>)
(declare-fun Cons<List<Int>> (Int List<Int>) List<Int>)
(declare-fun get_List_value<Int> (List<Int>) Int)
(declare-fun get_List_tail<List<Int>> (List<Int>) List<Int>)
(declare-fun List_tag<Int> (List<Int>) Int)
(declare-const Leaf<Tree<List<Int>>> Tree<List<Int>>)
(declare-fun Node<Tree<List<Int>>> (List<Int> Tree<List<Int>> Tree<List<Int>>) Tree<List<Int>>)
(declare-fun get_Tree_value<List<Int>> (Tree<List<Int>>) List<Int>)
(declare-fun get_Tree_left<Tree<List<Int>>> (Tree<List<Int>>) Tree<List<Int>>)
(declare-fun get_Tree_right<Tree<List<Int>>> (Tree<List<Int>>) Tree<List<Int>>)
(declare-fun Tree_tag<Int> (Tree<List<Int>>) Int)
(declare-fun contains<Bool> (Tree<List<Int>> Tree<List<Int>>) Bool)
(declare-fun contains<Bool> (Int Tree<List<Int>>) Bool)
(declare-fun contains<Bool> (List<Int> List<Int>) Bool)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((value Int) (tail List<Int>)) (!
  (= value (get_List_value<Int> (Cons<List<Int>> value tail)))
  :pattern ((Cons<List<Int>> value tail))
  )))
(assert (forall ((value Int) (tail List<Int>)) (!
  (= tail (get_List_tail<List<Int>> (Cons<List<Int>> value tail)))
  :pattern ((Cons<List<Int>> value tail))
  )))
(assert (= (List_tag<Int> (as Nil<List<Int>>  List<Int>)) 1))
(assert (forall ((value Int) (tail List<Int>)) (!
  (= (List_tag<Int> (Cons<List<Int>> value tail)) 0)
  :pattern ((Cons<List<Int>> value tail))
  )))
(assert (forall ((t List<Int>)) (!
  (or
    (= t (as Nil<List<Int>>  List<Int>))
    (= t (Cons<List<Int>> (get_List_value<Int> t) (get_List_tail<List<Int>> t))))
  :pattern ((List_tag<Int> t))
  :pattern ((get_List_value<Int> t))
  :pattern ((get_List_tail<List<Int>> t))
  )))
(assert (forall ((value Int) (tail List<Int>)) (!
  (and
    (contains<Bool> value (Cons<List<Int>> value tail))
    (contains<Bool> tail (Cons<List<Int>> value tail)))
  :pattern ((Cons<List<Int>> value tail))
  )))
(assert (forall ((value List<Int>) (left Tree<List<Int>>) (right Tree<List<Int>>)) (!
  (= value (get_Tree_value<List<Int>> (Node<Tree<List<Int>>> value left right)))
  :pattern ((Node<Tree<List<Int>>> value left right))
  )))
(assert (forall ((value List<Int>) (left Tree<List<Int>>) (right Tree<List<Int>>)) (!
  (=
    left
    (get_Tree_left<Tree<List<Int>>> (Node<Tree<List<Int>>> value left right)))
  :pattern ((Node<Tree<List<Int>>> value left right))
  )))
(assert (forall ((value List<Int>) (left Tree<List<Int>>) (right Tree<List<Int>>)) (!
  (=
    right
    (get_Tree_right<Tree<List<Int>>> (Node<Tree<List<Int>>> value left right)))
  :pattern ((Node<Tree<List<Int>>> value left right))
  )))
(assert (= (Tree_tag<Int> (as Leaf<Tree<List<Int>>>  Tree<List<Int>>)) 0))
(assert (forall ((value List<Int>) (left Tree<List<Int>>) (right Tree<List<Int>>)) (!
  (= (Tree_tag<Int> (Node<Tree<List<Int>>> value left right)) 1)
  :pattern ((Node<Tree<List<Int>>> value left right))
  )))
(assert (forall ((t Tree<List<Int>>)) (!
  (or
    (= t (as Leaf<Tree<List<Int>>>  Tree<List<Int>>))
    (=
      t
      (Node<Tree<List<Int>>> (get_Tree_value<List<Int>> t) (get_Tree_left<Tree<List<Int>>> t) (get_Tree_right<Tree<List<Int>>> t))))
  :pattern ((Tree_tag<Int> t))
  :pattern ((get_Tree_value<List<Int>> t))
  :pattern ((get_Tree_left<Tree<List<Int>>> t))
  :pattern ((get_Tree_right<Tree<List<Int>>> t))
  )))
(assert (forall ((value List<Int>) (left Tree<List<Int>>) (right Tree<List<Int>>)) (!
  (and
    (and
      (contains<Bool> value (Node<Tree<List<Int>>> value left right))
      (contains<Bool> left (Node<Tree<List<Int>>> value left right)))
    (contains<Bool> right (Node<Tree<List<Int>>> value left right)))
  :pattern ((Node<Tree<List<Int>>> value left right))
  )))
(assert (forall ((a List<Int>) (b List<Int>) (c List<Int>)) (!
  (=> (and (contains<Bool> a b) (contains<Bool> b c)) (contains<Bool> a c))
  :pattern ((contains<Bool> a b) (contains<Bool> b c))
  )))
(assert (forall ((a List<Int>) (b List<Int>) (c Tree<List<Int>>)) (!
  (=> (and (contains<Bool> a b) (contains<Bool> b c)) (contains<Bool> a c))
  :pattern ((contains<Bool> a b) (contains<Bool> b c))
  )))
(assert (forall ((a Int) (b List<Int>) (c List<Int>)) (!
  (=> (and (contains<Bool> a b) (contains<Bool> b c)) (contains<Bool> a c))
  :pattern ((contains<Bool> a b) (contains<Bool> b c))
  )))
(assert (forall ((a Int) (b List<Int>) (c Tree<List<Int>>)) (!
  (=> (and (contains<Bool> a b) (contains<Bool> b c)) (contains<Bool> a c))
  :pattern ((contains<Bool> a b) (contains<Bool> b c))
  )))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
