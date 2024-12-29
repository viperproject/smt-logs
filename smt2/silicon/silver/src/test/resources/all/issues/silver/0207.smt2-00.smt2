(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 20:08:11
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
(declare-sort BST 0)
(declare-sort Foo 0)
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
(declare-fun $SortWrappers.BSTTo$Snap (BST) $Snap)
(declare-fun $SortWrappers.$SnapToBST ($Snap) BST)
(assert (forall ((x BST)) (!
    (= x ($SortWrappers.$SnapToBST($SortWrappers.BSTTo$Snap x)))
    :pattern (($SortWrappers.BSTTo$Snap x))
    :qid |$Snap.$SnapToBSTTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.BSTTo$Snap($SortWrappers.$SnapToBST x)))
    :pattern (($SortWrappers.$SnapToBST x))
    :qid |$Snap.BSTTo$SnapToBST|
    )))
(declare-fun $SortWrappers.FooTo$Snap (Foo) $Snap)
(declare-fun $SortWrappers.$SnapToFoo ($Snap) Foo)
(assert (forall ((x Foo)) (!
    (= x ($SortWrappers.$SnapToFoo($SortWrappers.FooTo$Snap x)))
    :pattern (($SortWrappers.FooTo$Snap x))
    :qid |$Snap.$SnapToFooTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.FooTo$Snap($SortWrappers.$SnapToFoo x)))
    :pattern (($SortWrappers.$SnapToFoo x))
    :qid |$Snap.FooTo$SnapToFoo|
    )))
; ////////// Symbols
(declare-fun value<Int> (BST) Int)
(declare-fun left<BST> (BST) BST)
(declare-fun right<BST> (BST) BST)
(declare-const nullNode<BST> BST)
(declare-fun isParent<Bool> (BST BST) Bool)
(declare-const foo<Foo> Foo)
(declare-fun bar<Foo> (Foo) Foo)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((t BST)) (!
  (=>
    (not (= (left<BST> t) (as nullNode<BST>  BST)))
    (> (value<Int> t) (value<Int> (left<BST> t))))
  :pattern ((value<Int> t) (value<Int> (left<BST> t)))
  :qid |prog.left_smaller|)))
(assert (forall ((t BST) (c BST)) (!
  (=>
    (and
      (not (= t (as nullNode<BST>  BST)))
      (and (not (= c (as nullNode<BST>  BST))) (isParent<Bool> (left<BST> t) c)))
    (< (value<Int> c) (value<Int> t)))
  :pattern ((value<Int> t) (value<Int> c))
  :pattern ((isParent<Bool> (left<BST> t) c))
  :qid |prog.left_sub_tree_smaller|)))
(assert (forall ((t BST) (c BST)) (!
  (=>
    (and
      (not (= t (as nullNode<BST>  BST)))
      (and (not (= c (as nullNode<BST>  BST))) (isParent<Bool> (right<BST> t) c)))
    (> (value<Int> c) (value<Int> t)))
  :pattern ((value<Int> t) (value<Int> c))
  :qid |prog.right_sub_tree_larger|)))
(assert (forall ((t BST)) (!
  (isParent<Bool> t t)
  :pattern ((isParent<Bool> t t))
  :qid |prog.isParent_reflexive|)))
(assert (forall ((t BST)) (!
  (and (isParent<Bool> t (left<BST> t)) (isParent<Bool> t (right<BST> t)))
  :pattern ((isParent<Bool> t (left<BST> t)))
  :pattern ((isParent<Bool> t (right<BST> t)))
  :qid |prog.isParent_base|)))
(assert (forall ((p BST) (c BST)) (!
  (=>
    (isParent<Bool> p c)
    (and (isParent<Bool> p (left<BST> c)) (isParent<Bool> p (right<BST> c))))
  :pattern ((isParent<Bool> p (left<BST> c)))
  :pattern ((isParent<Bool> p (right<BST> c)))
  :qid |prog.isParent_recursive|)))
(assert (forall ((p BST) (c BST)) (!
  (=>
    (and
      (not (= p (as nullNode<BST>  BST)))
      (and (isParent<Bool> p c) (> (value<Int> p) (value<Int> c))))
    (and
      (not (= (left<BST> p) (as nullNode<BST>  BST)))
      (isParent<Bool> (left<BST> p) c)))
  :pattern ((isParent<Bool> (left<BST> p) c))
  :qid |prog.isParent_left|)))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
