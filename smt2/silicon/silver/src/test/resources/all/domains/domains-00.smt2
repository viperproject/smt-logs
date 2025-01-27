(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 03:01:06
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
(declare-sort Hidden<Ref> 0)
(declare-sort Cell<Ref> 0)
(declare-sort Triple<Int~_Bool~_Int> 0)
(declare-sort Foo<Perm> 0)
(declare-sort L 0)
(declare-sort Foo<Int> 0)
(declare-sort D10A<Ref> 0)
(declare-sort Foo<Ref> 0)
(declare-sort D10B 0)
(declare-sort Pair<Int~_Bool> 0)
(declare-sort List<Int> 0)
(declare-sort Hidden<Int> 0)
(declare-sort Triple<Int~_Bool~_Ref> 0)
(declare-sort Bar<Ref~_Int> 0)
(declare-sort D10A<Int> 0)
(declare-sort Cell<Int> 0)
(declare-sort Bar<Int~_Int> 0)
(declare-sort D10C<Int> 0)
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
(declare-fun $SortWrappers.Hidden<Ref>To$Snap (Hidden<Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToHidden<Ref> ($Snap) Hidden<Ref>)
(assert (forall ((x Hidden<Ref>)) (!
    (= x ($SortWrappers.$SnapToHidden<Ref>($SortWrappers.Hidden<Ref>To$Snap x)))
    :pattern (($SortWrappers.Hidden<Ref>To$Snap x))
    :qid |$Snap.$SnapToHidden<Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Hidden<Ref>To$Snap($SortWrappers.$SnapToHidden<Ref> x)))
    :pattern (($SortWrappers.$SnapToHidden<Ref> x))
    :qid |$Snap.Hidden<Ref>To$SnapToHidden<Ref>|
    )))
(declare-fun $SortWrappers.Cell<Ref>To$Snap (Cell<Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToCell<Ref> ($Snap) Cell<Ref>)
(assert (forall ((x Cell<Ref>)) (!
    (= x ($SortWrappers.$SnapToCell<Ref>($SortWrappers.Cell<Ref>To$Snap x)))
    :pattern (($SortWrappers.Cell<Ref>To$Snap x))
    :qid |$Snap.$SnapToCell<Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Cell<Ref>To$Snap($SortWrappers.$SnapToCell<Ref> x)))
    :pattern (($SortWrappers.$SnapToCell<Ref> x))
    :qid |$Snap.Cell<Ref>To$SnapToCell<Ref>|
    )))
(declare-fun $SortWrappers.Triple<Int~_Bool~_Int>To$Snap (Triple<Int~_Bool~_Int>) $Snap)
(declare-fun $SortWrappers.$SnapToTriple<Int~_Bool~_Int> ($Snap) Triple<Int~_Bool~_Int>)
(assert (forall ((x Triple<Int~_Bool~_Int>)) (!
    (= x ($SortWrappers.$SnapToTriple<Int~_Bool~_Int>($SortWrappers.Triple<Int~_Bool~_Int>To$Snap x)))
    :pattern (($SortWrappers.Triple<Int~_Bool~_Int>To$Snap x))
    :qid |$Snap.$SnapToTriple<Int~_Bool~_Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Triple<Int~_Bool~_Int>To$Snap($SortWrappers.$SnapToTriple<Int~_Bool~_Int> x)))
    :pattern (($SortWrappers.$SnapToTriple<Int~_Bool~_Int> x))
    :qid |$Snap.Triple<Int~_Bool~_Int>To$SnapToTriple<Int~_Bool~_Int>|
    )))
(declare-fun $SortWrappers.Foo<Perm>To$Snap (Foo<Perm>) $Snap)
(declare-fun $SortWrappers.$SnapToFoo<Perm> ($Snap) Foo<Perm>)
(assert (forall ((x Foo<Perm>)) (!
    (= x ($SortWrappers.$SnapToFoo<Perm>($SortWrappers.Foo<Perm>To$Snap x)))
    :pattern (($SortWrappers.Foo<Perm>To$Snap x))
    :qid |$Snap.$SnapToFoo<Perm>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Foo<Perm>To$Snap($SortWrappers.$SnapToFoo<Perm> x)))
    :pattern (($SortWrappers.$SnapToFoo<Perm> x))
    :qid |$Snap.Foo<Perm>To$SnapToFoo<Perm>|
    )))
(declare-fun $SortWrappers.LTo$Snap (L) $Snap)
(declare-fun $SortWrappers.$SnapToL ($Snap) L)
(assert (forall ((x L)) (!
    (= x ($SortWrappers.$SnapToL($SortWrappers.LTo$Snap x)))
    :pattern (($SortWrappers.LTo$Snap x))
    :qid |$Snap.$SnapToLTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.LTo$Snap($SortWrappers.$SnapToL x)))
    :pattern (($SortWrappers.$SnapToL x))
    :qid |$Snap.LTo$SnapToL|
    )))
(declare-fun $SortWrappers.Foo<Int>To$Snap (Foo<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToFoo<Int> ($Snap) Foo<Int>)
(assert (forall ((x Foo<Int>)) (!
    (= x ($SortWrappers.$SnapToFoo<Int>($SortWrappers.Foo<Int>To$Snap x)))
    :pattern (($SortWrappers.Foo<Int>To$Snap x))
    :qid |$Snap.$SnapToFoo<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Foo<Int>To$Snap($SortWrappers.$SnapToFoo<Int> x)))
    :pattern (($SortWrappers.$SnapToFoo<Int> x))
    :qid |$Snap.Foo<Int>To$SnapToFoo<Int>|
    )))
(declare-fun $SortWrappers.D10A<Ref>To$Snap (D10A<Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToD10A<Ref> ($Snap) D10A<Ref>)
(assert (forall ((x D10A<Ref>)) (!
    (= x ($SortWrappers.$SnapToD10A<Ref>($SortWrappers.D10A<Ref>To$Snap x)))
    :pattern (($SortWrappers.D10A<Ref>To$Snap x))
    :qid |$Snap.$SnapToD10A<Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.D10A<Ref>To$Snap($SortWrappers.$SnapToD10A<Ref> x)))
    :pattern (($SortWrappers.$SnapToD10A<Ref> x))
    :qid |$Snap.D10A<Ref>To$SnapToD10A<Ref>|
    )))
(declare-fun $SortWrappers.Foo<Ref>To$Snap (Foo<Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToFoo<Ref> ($Snap) Foo<Ref>)
(assert (forall ((x Foo<Ref>)) (!
    (= x ($SortWrappers.$SnapToFoo<Ref>($SortWrappers.Foo<Ref>To$Snap x)))
    :pattern (($SortWrappers.Foo<Ref>To$Snap x))
    :qid |$Snap.$SnapToFoo<Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Foo<Ref>To$Snap($SortWrappers.$SnapToFoo<Ref> x)))
    :pattern (($SortWrappers.$SnapToFoo<Ref> x))
    :qid |$Snap.Foo<Ref>To$SnapToFoo<Ref>|
    )))
(declare-fun $SortWrappers.D10BTo$Snap (D10B) $Snap)
(declare-fun $SortWrappers.$SnapToD10B ($Snap) D10B)
(assert (forall ((x D10B)) (!
    (= x ($SortWrappers.$SnapToD10B($SortWrappers.D10BTo$Snap x)))
    :pattern (($SortWrappers.D10BTo$Snap x))
    :qid |$Snap.$SnapToD10BTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.D10BTo$Snap($SortWrappers.$SnapToD10B x)))
    :pattern (($SortWrappers.$SnapToD10B x))
    :qid |$Snap.D10BTo$SnapToD10B|
    )))
(declare-fun $SortWrappers.Pair<Int~_Bool>To$Snap (Pair<Int~_Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToPair<Int~_Bool> ($Snap) Pair<Int~_Bool>)
(assert (forall ((x Pair<Int~_Bool>)) (!
    (= x ($SortWrappers.$SnapToPair<Int~_Bool>($SortWrappers.Pair<Int~_Bool>To$Snap x)))
    :pattern (($SortWrappers.Pair<Int~_Bool>To$Snap x))
    :qid |$Snap.$SnapToPair<Int~_Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Pair<Int~_Bool>To$Snap($SortWrappers.$SnapToPair<Int~_Bool> x)))
    :pattern (($SortWrappers.$SnapToPair<Int~_Bool> x))
    :qid |$Snap.Pair<Int~_Bool>To$SnapToPair<Int~_Bool>|
    )))
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
(declare-fun $SortWrappers.Hidden<Int>To$Snap (Hidden<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToHidden<Int> ($Snap) Hidden<Int>)
(assert (forall ((x Hidden<Int>)) (!
    (= x ($SortWrappers.$SnapToHidden<Int>($SortWrappers.Hidden<Int>To$Snap x)))
    :pattern (($SortWrappers.Hidden<Int>To$Snap x))
    :qid |$Snap.$SnapToHidden<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Hidden<Int>To$Snap($SortWrappers.$SnapToHidden<Int> x)))
    :pattern (($SortWrappers.$SnapToHidden<Int> x))
    :qid |$Snap.Hidden<Int>To$SnapToHidden<Int>|
    )))
(declare-fun $SortWrappers.Triple<Int~_Bool~_Ref>To$Snap (Triple<Int~_Bool~_Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToTriple<Int~_Bool~_Ref> ($Snap) Triple<Int~_Bool~_Ref>)
(assert (forall ((x Triple<Int~_Bool~_Ref>)) (!
    (= x ($SortWrappers.$SnapToTriple<Int~_Bool~_Ref>($SortWrappers.Triple<Int~_Bool~_Ref>To$Snap x)))
    :pattern (($SortWrappers.Triple<Int~_Bool~_Ref>To$Snap x))
    :qid |$Snap.$SnapToTriple<Int~_Bool~_Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Triple<Int~_Bool~_Ref>To$Snap($SortWrappers.$SnapToTriple<Int~_Bool~_Ref> x)))
    :pattern (($SortWrappers.$SnapToTriple<Int~_Bool~_Ref> x))
    :qid |$Snap.Triple<Int~_Bool~_Ref>To$SnapToTriple<Int~_Bool~_Ref>|
    )))
(declare-fun $SortWrappers.Bar<Ref~_Int>To$Snap (Bar<Ref~_Int>) $Snap)
(declare-fun $SortWrappers.$SnapToBar<Ref~_Int> ($Snap) Bar<Ref~_Int>)
(assert (forall ((x Bar<Ref~_Int>)) (!
    (= x ($SortWrappers.$SnapToBar<Ref~_Int>($SortWrappers.Bar<Ref~_Int>To$Snap x)))
    :pattern (($SortWrappers.Bar<Ref~_Int>To$Snap x))
    :qid |$Snap.$SnapToBar<Ref~_Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Bar<Ref~_Int>To$Snap($SortWrappers.$SnapToBar<Ref~_Int> x)))
    :pattern (($SortWrappers.$SnapToBar<Ref~_Int> x))
    :qid |$Snap.Bar<Ref~_Int>To$SnapToBar<Ref~_Int>|
    )))
(declare-fun $SortWrappers.D10A<Int>To$Snap (D10A<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToD10A<Int> ($Snap) D10A<Int>)
(assert (forall ((x D10A<Int>)) (!
    (= x ($SortWrappers.$SnapToD10A<Int>($SortWrappers.D10A<Int>To$Snap x)))
    :pattern (($SortWrappers.D10A<Int>To$Snap x))
    :qid |$Snap.$SnapToD10A<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.D10A<Int>To$Snap($SortWrappers.$SnapToD10A<Int> x)))
    :pattern (($SortWrappers.$SnapToD10A<Int> x))
    :qid |$Snap.D10A<Int>To$SnapToD10A<Int>|
    )))
(declare-fun $SortWrappers.Cell<Int>To$Snap (Cell<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToCell<Int> ($Snap) Cell<Int>)
(assert (forall ((x Cell<Int>)) (!
    (= x ($SortWrappers.$SnapToCell<Int>($SortWrappers.Cell<Int>To$Snap x)))
    :pattern (($SortWrappers.Cell<Int>To$Snap x))
    :qid |$Snap.$SnapToCell<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Cell<Int>To$Snap($SortWrappers.$SnapToCell<Int> x)))
    :pattern (($SortWrappers.$SnapToCell<Int> x))
    :qid |$Snap.Cell<Int>To$SnapToCell<Int>|
    )))
(declare-fun $SortWrappers.Bar<Int~_Int>To$Snap (Bar<Int~_Int>) $Snap)
(declare-fun $SortWrappers.$SnapToBar<Int~_Int> ($Snap) Bar<Int~_Int>)
(assert (forall ((x Bar<Int~_Int>)) (!
    (= x ($SortWrappers.$SnapToBar<Int~_Int>($SortWrappers.Bar<Int~_Int>To$Snap x)))
    :pattern (($SortWrappers.Bar<Int~_Int>To$Snap x))
    :qid |$Snap.$SnapToBar<Int~_Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Bar<Int~_Int>To$Snap($SortWrappers.$SnapToBar<Int~_Int> x)))
    :pattern (($SortWrappers.$SnapToBar<Int~_Int> x))
    :qid |$Snap.Bar<Int~_Int>To$SnapToBar<Int~_Int>|
    )))
(declare-fun $SortWrappers.D10C<Int>To$Snap (D10C<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToD10C<Int> ($Snap) D10C<Int>)
(assert (forall ((x D10C<Int>)) (!
    (= x ($SortWrappers.$SnapToD10C<Int>($SortWrappers.D10C<Int>To$Snap x)))
    :pattern (($SortWrappers.D10C<Int>To$Snap x))
    :qid |$Snap.$SnapToD10C<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.D10C<Int>To$Snap($SortWrappers.$SnapToD10C<Int> x)))
    :pattern (($SortWrappers.$SnapToD10C<Int> x))
    :qid |$Snap.D10C<Int>To$SnapToD10C<Int>|
    )))
; ////////// Symbols
(declare-fun f1<Int> (Int) Int)
(declare-fun f2<Int> (Int) Int)
(declare-fun Pair_pair<Pair<Int~_Bool>> (Int Bool) Pair<Int~_Bool>)
(declare-fun Pair_first<Int> (Pair<Int~_Bool>) Int)
(declare-fun Pair_second<Bool> (Pair<Int~_Bool>) Bool)
(declare-fun hide<Int> ($Ref) Int)
(declare-fun Triple_triple<Triple<Int~_Bool~_Ref>> (Int Bool $Ref) Triple<Int~_Bool~_Ref>)
(declare-fun Triple_first<Int> (Triple<Int~_Bool~_Ref>) Int)
(declare-fun Triple_second<Bool> (Triple<Int~_Bool~_Ref>) Bool)
(declare-fun Triple_third<Ref> (Triple<Int~_Bool~_Ref>) $Ref)
(declare-fun Triple_isPrefix<Bool> (Pair<Int~_Bool> Triple<Int~_Bool~_Ref>) Bool)
(declare-fun Triple_triple<Triple<Int~_Bool~_Int>> (Int Bool Int) Triple<Int~_Bool~_Int>)
(declare-fun Triple_first<Int> (Triple<Int~_Bool~_Int>) Int)
(declare-fun Triple_second<Bool> (Triple<Int~_Bool~_Int>) Bool)
(declare-fun Triple_third<Int> (Triple<Int~_Bool~_Int>) Int)
(declare-fun Triple_isPrefix<Bool> (Pair<Int~_Bool> Triple<Int~_Bool~_Int>) Bool)
(declare-fun hide2<Int> ($Ref) Int)
(declare-const nil<List<Int>> List<Int>)
(declare-fun cons<List<Int>> (Int List<Int>) List<Int>)
(declare-fun length<Int> (List<Int>) Int)
(declare-fun barfoo1<Bool> ($Ref) Bool)
(declare-fun barfoo2<Int> ($Ref) Int)
(declare-fun foo<Int> (Int) Int)
(declare-fun fooid<Int> (Int) Int)
(declare-fun barfoo1<Bool> (Int) Bool)
(declare-fun barfoo2<Int> (Int) Int)
(declare-fun hide<Int> (Int) Int)
(declare-fun hide2<Int> (Int) Int)
(declare-fun Cell_cell<Cell<Int>> (Int) Cell<Int>)
(declare-fun Cell_get<Int> (Cell<Int>) Int)
(declare-fun Cell_cell<Cell<Ref>> ($Ref) Cell<Ref>)
(declare-fun Cell_get<Ref> (Cell<Ref>) $Ref)
(declare-fun foo<Int> ($Ref) Int)
(declare-fun fooid<Ref> ($Ref) $Ref)
(declare-fun foo<Int> ($Perm) Int)
(declare-fun fooid<Perm> ($Perm) $Perm)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((a Int) (b Bool)) (!
  (= (Pair_first<Int> (Pair_pair<Pair<Int~_Bool>> a b)) a)
  :pattern ((Pair_first<Int> (Pair_pair<Pair<Int~_Bool>> a b)))
  :qid |prog.Pair_access_first|)))
(assert (forall ((a Int) (b Bool)) (!
  (= (Pair_second<Bool> (Pair_pair<Pair<Int~_Bool>> a b)) b)
  :pattern ((Pair_second<Bool> (Pair_pair<Pair<Int~_Bool>> a b)))
  :qid |prog.Pair_access_second|)))
(assert (forall ((a $Ref)) (!
  (= (hide<Int> a) 0)
  :pattern ((hide<Int> a))
  :qid |prog.hidden_ax1|)))
(assert (forall ((a Int) (b Bool) (c $Ref)) (!
  (= (Triple_first<Int> (Triple_triple<Triple<Int~_Bool~_Ref>> a b c)) a)
  :pattern ((Triple_first<Int> (Triple_triple<Triple<Int~_Bool~_Ref>> a b c)))
  :qid |prog.Triple_access_first|)))
(assert (forall ((a Int) (b Bool) (c $Ref)) (!
  (= (Triple_second<Bool> (Triple_triple<Triple<Int~_Bool~_Ref>> a b c)) b)
  :pattern ((Triple_second<Bool> (Triple_triple<Triple<Int~_Bool~_Ref>> a b c)))
  :qid |prog.Triple_access_second|)))
(assert (forall ((a Int) (b Bool) (c $Ref)) (!
  (= (Triple_third<Ref> (Triple_triple<Triple<Int~_Bool~_Ref>> a b c)) c)
  :pattern ((Triple_third<Ref> (Triple_triple<Triple<Int~_Bool~_Ref>> a b c)))
  :qid |prog.Triple_access_third|)))
(assert (forall ((p Pair<Int~_Bool>) (t Triple<Int~_Bool~_Ref>)) (!
  (=
    (Triple_isPrefix<Bool> p t)
    (and
      (= (Pair_first<Int> p) (Triple_first<Int> t))
      (= (Pair_second<Bool> p) (Triple_second<Bool> t))))
  :pattern ((Triple_isPrefix<Bool> p t))
  :pattern ((Pair_first<Int> p) (Triple_first<Int> t))
  :pattern ((Pair_first<Int> p) (Triple_second<Bool> t))
  :pattern ((Triple_first<Int> t) (Pair_second<Bool> p))
  :pattern ((Pair_second<Bool> p) (Triple_second<Bool> t))
  :qid |prog.Triple_is_prefix|)))
(assert (forall ((a Int) (b Bool) (c Int)) (!
  (= (Triple_first<Int> (Triple_triple<Triple<Int~_Bool~_Int>> a b c)) a)
  :pattern ((Triple_first<Int> (Triple_triple<Triple<Int~_Bool~_Int>> a b c)))
  :qid |prog.Triple_access_first|)))
(assert (forall ((a Int) (b Bool) (c Int)) (!
  (= (Triple_second<Bool> (Triple_triple<Triple<Int~_Bool~_Int>> a b c)) b)
  :pattern ((Triple_second<Bool> (Triple_triple<Triple<Int~_Bool~_Int>> a b c)))
  :qid |prog.Triple_access_second|)))
(assert (forall ((a Int) (b Bool) (c Int)) (!
  (= (Triple_third<Int> (Triple_triple<Triple<Int~_Bool~_Int>> a b c)) c)
  :pattern ((Triple_third<Int> (Triple_triple<Triple<Int~_Bool~_Int>> a b c)))
  :qid |prog.Triple_access_third|)))
(assert (forall ((p Pair<Int~_Bool>) (t Triple<Int~_Bool~_Int>)) (!
  (=
    (Triple_isPrefix<Bool> p t)
    (and
      (= (Pair_first<Int> p) (Triple_first<Int> t))
      (= (Pair_second<Bool> p) (Triple_second<Bool> t))))
  :pattern ((Triple_isPrefix<Bool> p t))
  :pattern ((Pair_first<Int> p) (Triple_first<Int> t))
  :pattern ((Pair_first<Int> p) (Triple_second<Bool> t))
  :pattern ((Triple_first<Int> t) (Pair_second<Bool> p))
  :pattern ((Pair_second<Bool> p) (Triple_second<Bool> t))
  :qid |prog.Triple_is_prefix|)))
(assert (= (length<Int> (as nil<List<Int>>  List<Int>)) 0))
(assert (forall ((x Int)) (!
  (forall ((xs List<Int>)) (!
    (= (length<Int> (cons<List<Int>> x xs)) (+ (length<Int> xs) 1))
    :pattern ((length<Int> (cons<List<Int>> x xs)))
    :pattern ((length<Int> xs))
    ))
  
  :qid |prog.cons_length|)))
(assert (forall ((z Int)) (!
  (forall ((zs List<Int>)) (!
    (not (= (cons<List<Int>> z zs) (as nil<List<Int>>  List<Int>)))
    :pattern ((cons<List<Int>> z zs))
    ))
  
  :qid |prog.nil_cons|)))
(assert (forall ((a $Ref)) (!
  (= (barfoo1<Bool> a) true)
  :pattern ((barfoo1<Bool> a))
  :qid |prog.bar_ax1|)))
(assert (forall ((b Int)) (!
  (= (barfoo1<Bool> $Ref.null) true)
  
  :qid |prog.bar_ax2|)))
(assert (forall ((a $Ref)) (!
  (not (= (barfoo2<Int> a) (hide<Int> a)))
  :pattern ((barfoo2<Int> a))
  :pattern ((hide<Int> a))
  :qid |prog.bar_ax3|)))
(assert (forall ((a Int)) (!
  (> (foo<Int> a) 0)
  :pattern ((foo<Int> a))
  :qid |prog.foo_ax1|)))
(assert (forall ((a Int)) (!
  (= (fooid<Int> a) a)
  :pattern ((fooid<Int> a))
  :qid |prog.foo_ax2|)))
(assert (forall ((a Int)) (!
  (= (barfoo1<Bool> a) true)
  :pattern ((barfoo1<Bool> a))
  :qid |prog.bar_ax1|)))
(assert (forall ((a Int)) (!
  (not (= (barfoo2<Int> a) (hide<Int> a)))
  :pattern ((barfoo2<Int> a))
  :pattern ((hide<Int> a))
  :qid |prog.bar_ax3|)))
(assert (forall ((a Int)) (!
  (= (hide<Int> a) 0)
  :pattern ((hide<Int> a))
  :qid |prog.hidden_ax1|)))
(assert (forall ((a Int)) (!
  (= (Cell_get<Int> (Cell_cell<Cell<Int>> a)) a)
  :pattern ((Cell_get<Int> (Cell_cell<Cell<Int>> a)))
  :qid |prog.cell_ax1|)))
(assert (forall ((a $Ref)) (!
  (= (Cell_get<Ref> (Cell_cell<Cell<Ref>> a)) a)
  :pattern ((Cell_get<Ref> (Cell_cell<Cell<Ref>> a)))
  :qid |prog.cell_ax1|)))
(assert (forall ((a $Ref)) (!
  (> (foo<Int> a) 0)
  :pattern ((foo<Int> a))
  :qid |prog.foo_ax1|)))
(assert (forall ((a $Ref)) (!
  (= (fooid<Ref> a) a)
  :pattern ((fooid<Ref> a))
  :qid |prog.foo_ax2|)))
(assert (forall ((a $Perm)) (!
  (> (foo<Int> a) 0)
  :pattern ((foo<Int> a))
  :qid |prog.foo_ax1|)))
(assert (forall ((a $Perm)) (!
  (= (fooid<Perm> a) a)
  :pattern ((fooid<Perm> a))
  :qid |prog.foo_ax2|)))
(assert (forall ((r $Ref)) (!
  (< (hide2<Int> r) 0)
  :pattern ((hide2<Int> r))
  :qid |prog.d10c_ax1|)))
(assert (forall ((x Int)) (!
  (> (hide2<Int> x) 0)
  :pattern ((hide2<Int> x))
  :qid |prog.d10b_ax1|)))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
