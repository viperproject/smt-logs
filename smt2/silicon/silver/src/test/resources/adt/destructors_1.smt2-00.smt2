(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 15:01:52
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
(declare-sort Tree<Bool> 0)
(declare-sort List<Bool> 0)
(declare-sort Tree<Int> 0)
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
(declare-fun $SortWrappers.Tree<Bool>To$Snap (Tree<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToTree<Bool> ($Snap) Tree<Bool>)
(assert (forall ((x Tree<Bool>)) (!
    (= x ($SortWrappers.$SnapToTree<Bool>($SortWrappers.Tree<Bool>To$Snap x)))
    :pattern (($SortWrappers.Tree<Bool>To$Snap x))
    :qid |$Snap.$SnapToTree<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Tree<Bool>To$Snap($SortWrappers.$SnapToTree<Bool> x)))
    :pattern (($SortWrappers.$SnapToTree<Bool> x))
    :qid |$Snap.Tree<Bool>To$SnapToTree<Bool>|
    )))
(declare-fun $SortWrappers.List<Bool>To$Snap (List<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToList<Bool> ($Snap) List<Bool>)
(assert (forall ((x List<Bool>)) (!
    (= x ($SortWrappers.$SnapToList<Bool>($SortWrappers.List<Bool>To$Snap x)))
    :pattern (($SortWrappers.List<Bool>To$Snap x))
    :qid |$Snap.$SnapToList<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.List<Bool>To$Snap($SortWrappers.$SnapToList<Bool> x)))
    :pattern (($SortWrappers.$SnapToList<Bool> x))
    :qid |$Snap.List<Bool>To$SnapToList<Bool>|
    )))
(declare-fun $SortWrappers.Tree<Int>To$Snap (Tree<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToTree<Int> ($Snap) Tree<Int>)
(assert (forall ((x Tree<Int>)) (!
    (= x ($SortWrappers.$SnapToTree<Int>($SortWrappers.Tree<Int>To$Snap x)))
    :pattern (($SortWrappers.Tree<Int>To$Snap x))
    :qid |$Snap.$SnapToTree<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Tree<Int>To$Snap($SortWrappers.$SnapToTree<Int> x)))
    :pattern (($SortWrappers.$SnapToTree<Int> x))
    :qid |$Snap.Tree<Int>To$SnapToTree<Int>|
    )))
; ////////// Symbols
(declare-const Nil<List<Bool>> List<Bool>)
(declare-fun Cons<List<Bool>> (Bool List<Bool>) List<Bool>)
(declare-fun get_List_value<Bool> (List<Bool>) Bool)
(declare-fun get_List_tail<List<Bool>> (List<Bool>) List<Bool>)
(declare-fun List_tag<Int> (List<Bool>) Int)
(declare-const Leaf<Tree<Int>> Tree<Int>)
(declare-fun Node<Tree<Int>> (Int Tree<Int> Tree<Int>) Tree<Int>)
(declare-fun get_Tree_value<Int> (Tree<Int>) Int)
(declare-fun get_Tree_left<Tree<Int>> (Tree<Int>) Tree<Int>)
(declare-fun get_Tree_right<Tree<Int>> (Tree<Int>) Tree<Int>)
(declare-fun Tree_tag<Int> (Tree<Int>) Int)
(declare-const Leaf<Tree<Bool>> Tree<Bool>)
(declare-fun Node<Tree<Bool>> (Bool Tree<Bool> Tree<Bool>) Tree<Bool>)
(declare-fun get_Tree_value<Bool> (Tree<Bool>) Bool)
(declare-fun get_Tree_left<Tree<Bool>> (Tree<Bool>) Tree<Bool>)
(declare-fun get_Tree_right<Tree<Bool>> (Tree<Bool>) Tree<Bool>)
(declare-fun Tree_tag<Int> (Tree<Bool>) Int)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((value Bool) (tail List<Bool>)) (!
  (= value (get_List_value<Bool> (Cons<List<Bool>> value tail)))
  :pattern ((Cons<List<Bool>> value tail))
  )))
(assert (forall ((value Bool) (tail List<Bool>)) (!
  (= tail (get_List_tail<List<Bool>> (Cons<List<Bool>> value tail)))
  :pattern ((Cons<List<Bool>> value tail))
  )))
(assert (= (List_tag<Int> (as Nil<List<Bool>>  List<Bool>)) 1))
(assert (forall ((value Bool) (tail List<Bool>)) (!
  (= (List_tag<Int> (Cons<List<Bool>> value tail)) 0)
  :pattern ((Cons<List<Bool>> value tail))
  )))
(assert (forall ((t List<Bool>)) (!
  (or
    (= t (as Nil<List<Bool>>  List<Bool>))
    (=
      t
      (Cons<List<Bool>> (get_List_value<Bool> t) (get_List_tail<List<Bool>> t))))
  :pattern ((List_tag<Int> t))
  :pattern ((get_List_value<Bool> t))
  :pattern ((get_List_tail<List<Bool>> t))
  )))
(assert (forall ((value Int) (left Tree<Int>) (right Tree<Int>)) (!
  (= value (get_Tree_value<Int> (Node<Tree<Int>> value left right)))
  :pattern ((Node<Tree<Int>> value left right))
  )))
(assert (forall ((value Int) (left Tree<Int>) (right Tree<Int>)) (!
  (= left (get_Tree_left<Tree<Int>> (Node<Tree<Int>> value left right)))
  :pattern ((Node<Tree<Int>> value left right))
  )))
(assert (forall ((value Int) (left Tree<Int>) (right Tree<Int>)) (!
  (= right (get_Tree_right<Tree<Int>> (Node<Tree<Int>> value left right)))
  :pattern ((Node<Tree<Int>> value left right))
  )))
(assert (= (Tree_tag<Int> (as Leaf<Tree<Int>>  Tree<Int>)) 0))
(assert (forall ((value Int) (left Tree<Int>) (right Tree<Int>)) (!
  (= (Tree_tag<Int> (Node<Tree<Int>> value left right)) 1)
  :pattern ((Node<Tree<Int>> value left right))
  )))
(assert (forall ((t Tree<Int>)) (!
  (or
    (= t (as Leaf<Tree<Int>>  Tree<Int>))
    (=
      t
      (Node<Tree<Int>> (get_Tree_value<Int> t) (get_Tree_left<Tree<Int>> t) (get_Tree_right<Tree<Int>> t))))
  :pattern ((Tree_tag<Int> t))
  :pattern ((get_Tree_value<Int> t))
  :pattern ((get_Tree_left<Tree<Int>> t))
  :pattern ((get_Tree_right<Tree<Int>> t))
  )))
(assert (forall ((value Bool) (left Tree<Bool>) (right Tree<Bool>)) (!
  (= value (get_Tree_value<Bool> (Node<Tree<Bool>> value left right)))
  :pattern ((Node<Tree<Bool>> value left right))
  )))
(assert (forall ((value Bool) (left Tree<Bool>) (right Tree<Bool>)) (!
  (= left (get_Tree_left<Tree<Bool>> (Node<Tree<Bool>> value left right)))
  :pattern ((Node<Tree<Bool>> value left right))
  )))
(assert (forall ((value Bool) (left Tree<Bool>) (right Tree<Bool>)) (!
  (= right (get_Tree_right<Tree<Bool>> (Node<Tree<Bool>> value left right)))
  :pattern ((Node<Tree<Bool>> value left right))
  )))
(assert (= (Tree_tag<Int> (as Leaf<Tree<Bool>>  Tree<Bool>)) 0))
(assert (forall ((value Bool) (left Tree<Bool>) (right Tree<Bool>)) (!
  (= (Tree_tag<Int> (Node<Tree<Bool>> value left right)) 1)
  :pattern ((Node<Tree<Bool>> value left right))
  )))
(assert (forall ((t Tree<Bool>)) (!
  (or
    (= t (as Leaf<Tree<Bool>>  Tree<Bool>))
    (=
      t
      (Node<Tree<Bool>> (get_Tree_value<Bool> t) (get_Tree_left<Tree<Bool>> t) (get_Tree_right<Tree<Bool>> t))))
  :pattern ((Tree_tag<Int> t))
  :pattern ((get_Tree_value<Bool> t))
  :pattern ((get_Tree_left<Tree<Bool>> t))
  :pattern ((get_Tree_right<Tree<Bool>> t))
  )))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
