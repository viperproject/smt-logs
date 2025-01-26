(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 21:39:13
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
(declare-sort Seq<$Ref> 0)
(declare-sort Seq<Int> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<Seq<$Ref>> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<array> 0)
(declare-sort $FVF<value> 0)
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
(declare-fun $SortWrappers.Seq<$Ref>To$Snap (Seq<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<$Ref> ($Snap) Seq<$Ref>)
(assert (forall ((x Seq<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSeq<$Ref>($SortWrappers.Seq<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Seq<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSeq<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<$Ref>To$Snap($SortWrappers.$SnapToSeq<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSeq<$Ref> x))
    :qid |$Snap.Seq<$Ref>To$SnapToSeq<$Ref>|
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
(declare-fun $SortWrappers.Set<Seq<$Ref>>To$Snap (Set<Seq<$Ref>>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Seq<$Ref>> ($Snap) Set<Seq<$Ref>>)
(assert (forall ((x Set<Seq<$Ref>>)) (!
    (= x ($SortWrappers.$SnapToSet<Seq<$Ref>>($SortWrappers.Set<Seq<$Ref>>To$Snap x)))
    :pattern (($SortWrappers.Set<Seq<$Ref>>To$Snap x))
    :qid |$Snap.$SnapToSet<Seq<$Ref>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Seq<$Ref>>To$Snap($SortWrappers.$SnapToSet<Seq<$Ref>> x)))
    :pattern (($SortWrappers.$SnapToSet<Seq<$Ref>> x))
    :qid |$Snap.Set<Seq<$Ref>>To$SnapToSet<Seq<$Ref>>|
    )))
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
(declare-fun $SortWrappers.$FVF<array>To$Snap ($FVF<array>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<array> ($Snap) $FVF<array>)
(assert (forall ((x $FVF<array>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<array>($SortWrappers.$FVF<array>To$Snap x)))
    :pattern (($SortWrappers.$FVF<array>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<array>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<array>To$Snap($SortWrappers.$SnapTo$FVF<array> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<array> x))
    :qid |$Snap.$FVF<array>To$SnapTo$FVF<array>|
    )))
(declare-fun $SortWrappers.$FVF<value>To$Snap ($FVF<value>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<value> ($Snap) $FVF<value>)
(assert (forall ((x $FVF<value>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<value>($SortWrappers.$FVF<value>To$Snap x)))
    :pattern (($SortWrappers.$FVF<value>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<value>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<value>To$Snap($SortWrappers.$SnapTo$FVF<value> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<value> x))
    :qid |$Snap.$FVF<value>To$SnapTo$FVF<value>|
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
(declare-fun Set_card (Set<Seq<$Ref>>) Int)
(declare-const Set_empty Set<Seq<$Ref>>)
(declare-fun Set_in (Seq<$Ref> Set<Seq<$Ref>>) Bool)
(declare-fun Set_singleton (Seq<$Ref>) Set<Seq<$Ref>>)
(declare-fun Set_unionone (Set<Seq<$Ref>> Seq<$Ref>) Set<Seq<$Ref>>)
(declare-fun Set_union (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_intersection (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_difference (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_subset (Set<Seq<$Ref>> Set<Seq<$Ref>>) Bool)
(declare-fun Set_equal (Set<Seq<$Ref>> Set<Seq<$Ref>>) Bool)
(declare-fun Set_skolem_diff (Set<Seq<$Ref>> Set<Seq<$Ref>>) Seq<$Ref>)
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
(declare-fun Seq_length (Seq<$Ref>) Int)
(declare-const Seq_empty Seq<$Ref>)
(declare-fun Seq_singleton ($Ref) Seq<$Ref>)
(declare-fun Seq_append (Seq<$Ref> Seq<$Ref>) Seq<$Ref>)
(declare-fun Seq_index (Seq<$Ref> Int) $Ref)
(declare-fun Seq_add (Int Int) Int)
(declare-fun Seq_sub (Int Int) Int)
(declare-fun Seq_update (Seq<$Ref> Int $Ref) Seq<$Ref>)
(declare-fun Seq_take (Seq<$Ref> Int) Seq<$Ref>)
(declare-fun Seq_drop (Seq<$Ref> Int) Seq<$Ref>)
(declare-fun Seq_contains (Seq<$Ref> $Ref) Bool)
(declare-fun Seq_contains_trigger (Seq<$Ref> $Ref) Bool)
(declare-fun Seq_skolem (Seq<$Ref> $Ref) Int)
(declare-fun Seq_equal (Seq<$Ref> Seq<$Ref>) Bool)
(declare-fun Seq_skolem_diff (Seq<$Ref> Seq<$Ref>) Int)
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
; /field_value_functions_declarations.smt2 [array: Seq[Ref]]
(declare-fun $FVF.domain_array ($FVF<array>) Set<$Ref>)
(declare-fun $FVF.lookup_array ($FVF<array> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_array ($FVF<array> $FVF<array>) Bool)
(declare-fun $FVF.loc_array (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_array ($FPM $Ref) $Perm)
(declare-const $fvfTOP_array $FVF<array>)
; /field_value_functions_declarations.smt2 [value: Int]
(declare-fun $FVF.domain_value ($FVF<value>) Set<$Ref>)
(declare-fun $FVF.lookup_value ($FVF<value> $Ref) Int)
(declare-fun $FVF.after_value ($FVF<value> $FVF<value>) Bool)
(declare-fun $FVF.loc_value (Int $Ref) Bool)
(declare-fun $FVF.perm_value ($FPM $Ref) $Perm)
(declare-const $fvfTOP_value $FVF<value>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Seq<$Ref>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<$Ref>)) 0))
(assert (forall ((s Seq<$Ref>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e $Ref)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (not (= s1 (as Seq_empty  Seq<$Ref>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<$Ref>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<$Ref>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e $Ref)) (!
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
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<$Ref>) (i Int) (v $Ref)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<$Ref>) (i Int) (v $Ref) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
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
(assert (forall ((s Seq<$Ref>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
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
(assert (forall ((s Seq<$Ref>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<$Ref>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (x $Ref)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<$Ref>) (x $Ref) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<$Ref>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
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
(assert (forall ((a Seq<$Ref>) (b Seq<$Ref>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x $Ref) (y $Ref)) (!
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
(assert (forall ((s Set<Seq<$Ref>>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Seq<$Ref>)) (!
  (not (Set_in o (as Set_empty  Set<Seq<$Ref>>)))
  :pattern ((Set_in o (as Set_empty  Set<Seq<$Ref>>)))
  )))
(assert (forall ((s Set<Seq<$Ref>>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Seq<$Ref>>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Seq<$Ref>))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Seq<$Ref>)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Seq<$Ref>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Seq<$Ref>)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>) (y Seq<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
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
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (=
    (Set_subset a b)
    (forall ((o Seq<$Ref>)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
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
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
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
; /field_value_functions_axioms.smt2 [array: Seq[Ref]]
(assert (forall ((vs $FVF<array>) (ws $FVF<array>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_array vs) ($FVF.domain_array ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_array vs))
            (= ($FVF.lookup_array vs x) ($FVF.lookup_array ws x)))
          :pattern (($FVF.lookup_array vs x) ($FVF.lookup_array ws x))
          :qid |qp.$FVF<array>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<array>To$Snap vs)
              ($SortWrappers.$FVF<array>To$Snap ws)
              )
    :qid |qp.$FVF<array>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_array pm r))
    :pattern (($FVF.perm_array pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_array f r) true)
    :pattern (($FVF.loc_array f r)))))
; /field_value_functions_axioms.smt2 [value: Int]
(assert (forall ((vs $FVF<value>) (ws $FVF<value>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_value vs) ($FVF.domain_value ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_value vs))
            (= ($FVF.lookup_value vs x) ($FVF.lookup_value ws x)))
          :pattern (($FVF.lookup_value vs x) ($FVF.lookup_value ws x))
          :qid |qp.$FVF<value>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<value>To$Snap vs)
              ($SortWrappers.$FVF<value>To$Snap ws)
              )
    :qid |qp.$FVF<value>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_value pm r))
    :pattern (($FVF.perm_value pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_value f r) true)
    :pattern (($FVF.loc_value f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- parallel_mergesort ----------
(declare-const a@0@01 $Ref)
(declare-const b@1@01 $Ref)
(declare-const start@2@01 Int)
(declare-const end@3@01 Int)
(declare-const a@4@01 $Ref)
(declare-const b@5@01 $Ref)
(declare-const start@6@01 Int)
(declare-const end@7@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(declare-const $k@9@01 $Perm)
(assert ($Perm.isReadVar $k@9@01))
(assert (<= $Perm.No $k@9@01))
(assert (<= $k@9@01 $Perm.Write))
(assert (=> (< $Perm.No $k@9@01) (not (= a@4@01 $Ref.null))))
(assert (=
  ($Snap.second $t@8@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@8@01))
    ($Snap.second ($Snap.second $t@8@01)))))
(declare-const $k@10@01 $Perm)
(assert ($Perm.isReadVar $k@10@01))
(push) ; 2
(set-option :timeout 10)
(assert (not (= a@4@01 b@5@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No $k@10@01))
(assert (<= $k@10@01 $Perm.Write))
(assert (=> (< $Perm.No $k@10@01) (not (= b@5@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@8@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@8@01))) $Snap.unit))
; [eval] start >= 0
(assert (>= start@6@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@8@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01)))) $Snap.unit))
; [eval] end <= |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= end@7@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
  $Snap.unit))
; [eval] |a.array| == |b.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01)))
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@11@01 Int)
(declare-const j@12@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 3
; [then-branch: 0 | !(i@11@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 0 | i@11@01 in [start@6@01..end@7@01] | live]
(push) ; 4
; [then-branch: 0 | !(i@11@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | i@11@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 1 | !(j@12@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 1 | j@12@01 in [start@6@01..end@7@01] | live]
(push) ; 6
; [then-branch: 1 | !(j@12@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | j@12@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01))))
(push) ; 3
; [then-branch: 2 | i@11@01 in [start@6@01..end@7@01] && j@12@01 in [start@6@01..end@7@01] && i@11@01 != j@12@01 | live]
; [else-branch: 2 | !(i@11@01 in [start@6@01..end@7@01] && j@12@01 in [start@6@01..end@7@01] && i@11@01 != j@12@01) | live]
(push) ; 4
; [then-branch: 2 | i@11@01 in [start@6@01..end@7@01] && j@12@01 in [start@6@01..end@7@01] && i@11@01 != j@12@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
    (not (= i@11@01 j@12@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@11@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@11@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@12@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@12@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(i@11@01 in [start@6@01..end@7@01] && j@12@01 in [start@6@01..end@7@01] && i@11@01 != j@12@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
      (not (= i@11@01 j@12@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
      (not (= i@11@01 j@12@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
    (not (= i@11@01 j@12@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
        (not (= i@11@01 j@12@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
      (not (= i@11@01 j@12@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@11@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@11@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@14@12@14@112-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@11@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@14@12@14@112-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@11@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@11@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@14@12@14@112-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@11@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@14@12@14@112-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@12@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@11@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@12@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@14@12@14@112-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@12@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@14@12@14@112-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@11@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@14@12@14@112-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@11@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i@11@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          j@12@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@11@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@11@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@12@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@11@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@11@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@12@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@12@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@11@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@12@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@11@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@11@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@14@12@14@112|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))))))
(declare-const i@13@01 Int)
(push) ; 2
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@13@01))
; [eval] a.array[i]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@13@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@13@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@14@01 ($Ref) Int)
(declare-fun img@15@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@13@01 Int) (i2@13@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i1@13@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) i2@13@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i1@13@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i2@13@01)))
    (= i1@13@01 i2@13@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@13@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@13@01)
    (and
      (=
        (inv@14@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i@13@01))
        i@13@01)
      (img@15@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
        i@13@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@13@01))
  :qid |quant-u-22189|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@15@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@14@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
        (inv@14@01 r))
      r))
  :pattern ((inv@14@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@13@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@13@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i@13@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@13@01))
  :qid |value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
(declare-const i@16@01 Int)
(declare-const j@17@01 Int)
(push) ; 2
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 3
; [then-branch: 3 | !(i@16@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 3 | i@16@01 in [start@6@01..end@7@01] | live]
(push) ; 4
; [then-branch: 3 | !(i@16@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 3 | i@16@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 4 | !(j@17@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 4 | j@17@01 in [start@6@01..end@7@01] | live]
(push) ; 6
; [then-branch: 4 | !(j@17@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 4 | j@17@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01))))
(push) ; 3
; [then-branch: 5 | i@16@01 in [start@6@01..end@7@01] && j@17@01 in [start@6@01..end@7@01] && i@16@01 != j@17@01 | live]
; [else-branch: 5 | !(i@16@01 in [start@6@01..end@7@01] && j@17@01 in [start@6@01..end@7@01] && i@16@01 != j@17@01) | live]
(push) ; 4
; [then-branch: 5 | i@16@01 in [start@6@01..end@7@01] && j@17@01 in [start@6@01..end@7@01] && i@16@01 != j@17@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
    (not (= i@16@01 j@17@01)))))
; [eval] b.array[i] != b.array[j]
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@16@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@16@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] b.array[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@17@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  j@17@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(i@16@01 in [start@6@01..end@7@01] && j@17@01 in [start@6@01..end@7@01] && i@16@01 != j@17@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
      (not (= i@16@01 j@17@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
      (not (= i@16@01 j@17@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
    (not (= i@16@01 j@17@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
        (not (= i@16@01 j@17@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
      (not (= i@16@01 j@17@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@16@01 Int) (j@17@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
        (not (= i@16@01 j@17@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
            (not (= i@16@01 j@17@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@16@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@17@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@16@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@16@12@16@112-aux|)))
(assert (forall ((i@16@01 Int) (j@17@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
        (not (= i@16@01 j@17@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
            (not (= i@16@01 j@17@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@16@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@16@12@16@112-aux|)))
(assert (forall ((i@16@01 Int) (j@17@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
        (not (= i@16@01 j@17@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
            (not (= i@16@01 j@17@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@16@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@17@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@16@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@16@12@16@112-aux|)))
(assert (forall ((i@16@01 Int) (j@17@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
        (not (= i@16@01 j@17@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
            (not (= i@16@01 j@17@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@16@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@16@12@16@112-aux|)))
(assert (forall ((i@16@01 Int) (j@17@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
        (not (= i@16@01 j@17@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
            (not (= i@16@01 j@17@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@17@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@16@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@17@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@16@12@16@112-aux|)))
(assert (forall ((i@16@01 Int) (j@17@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
        (not (= i@16@01 j@17@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
            (not (= i@16@01 j@17@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@17@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@16@12@16@112-aux|)))
(assert (forall ((i@16@01 Int) (j@17@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
        (not (= i@16@01 j@17@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
            (not (= i@16@01 j@17@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
          (not (= i@16@01 j@17@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@16@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@16@12@16@112-aux|)))
(assert (forall ((i@16@01 Int) (j@17@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@16@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@17@01)
        (not (= i@16@01 j@17@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i@16@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          j@17@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@16@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@17@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@16@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@17@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@16@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@17@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@16@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@17@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@17@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@16@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@17@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@16@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@16@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@16@12@16@112|)))
(declare-const i@18@01 Int)
(push) ; 2
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@18@01))
; [eval] b.array[i]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@18@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  i@18@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@19@01 ($Ref) Int)
(declare-fun img@20@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@18@01 Int) (i2@18@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i1@18@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) i2@18@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i1@18@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i2@18@01)))
    (= i1@18@01 i2@18@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@18@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@18@01)
    (and
      (=
        (inv@19@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i@18@01))
        i@18@01)
      (img@20@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
        i@18@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@18@01))
  :qid |quant-u-22191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@20@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
        (inv@19@01 r))
      r))
  :pattern ((inv@19@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@18@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@18@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i@18@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@18@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
        i@18@01)
      (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01)) i@13@01))
    (=
      (and
        (img@20@01 r)
        (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
      (and
        (img@15@01 r)
        (Seq_contains (Seq_range start@6@01 end@7@01) (inv@14@01 r)))))
  
  :qid |quant-u-22192|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(declare-const $k@22@01 $Perm)
(assert ($Perm.isReadVar $k@22@01))
(assert (<= $Perm.No $k@22@01))
(assert (<= $k@22@01 $Perm.Write))
(assert (=> (< $Perm.No $k@22@01) (not (= a@4@01 $Ref.null))))
(assert (=
  ($Snap.second $t@21@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@21@01))
    ($Snap.second ($Snap.second $t@21@01)))))
(declare-const $k@23@01 $Perm)
(assert ($Perm.isReadVar $k@23@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (= a@4@01 b@5@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No $k@23@01))
(assert (<= $k@23@01 $Perm.Write))
(assert (=> (< $Perm.No $k@23@01) (not (= b@5@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@21@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@21@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@21@01))) $Snap.unit))
; [eval] start >= 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@21@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))
  $Snap.unit))
; [eval] end <= |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<=
  end@7@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
  $Snap.unit))
; [eval] |a.array| == |b.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01)))
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@24@01 Int)
(declare-const j@25@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 4
; [then-branch: 6 | !(i@24@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 6 | i@24@01 in [start@6@01..end@7@01] | live]
(push) ; 5
; [then-branch: 6 | !(i@24@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | i@24@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 7 | !(j@25@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 7 | j@25@01 in [start@6@01..end@7@01] | live]
(push) ; 7
; [then-branch: 7 | !(j@25@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 7 | j@25@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01))))
(push) ; 4
; [then-branch: 8 | i@24@01 in [start@6@01..end@7@01] && j@25@01 in [start@6@01..end@7@01] && i@24@01 != j@25@01 | live]
; [else-branch: 8 | !(i@24@01 in [start@6@01..end@7@01] && j@25@01 in [start@6@01..end@7@01] && i@24@01 != j@25@01) | live]
(push) ; 5
; [then-branch: 8 | i@24@01 in [start@6@01..end@7@01] && j@25@01 in [start@6@01..end@7@01] && i@24@01 != j@25@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
    (not (= i@24@01 j@25@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@24@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@24@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= j@25@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@25@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 8 | !(i@24@01 in [start@6@01..end@7@01] && j@25@01 in [start@6@01..end@7@01] && i@24@01 != j@25@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
      (not (= i@24@01 j@25@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
      (not (= i@24@01 j@25@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
    (not (= i@24@01 j@25@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
        (not (= i@24@01 j@25@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
      (not (= i@24@01 j@25@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@24@01 Int) (j@25@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
        (not (= i@24@01 j@25@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
            (not (= i@24@01 j@25@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@24@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@25@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@24@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@24@01 Int) (j@25@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
        (not (= i@24@01 j@25@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
            (not (= i@24@01 j@25@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@24@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@24@01 Int) (j@25@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
        (not (= i@24@01 j@25@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
            (not (= i@24@01 j@25@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@24@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    j@25@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@24@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    j@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@24@01 Int) (j@25@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
        (not (= i@24@01 j@25@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
            (not (= i@24@01 j@25@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@24@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    j@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@24@01 Int) (j@25@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
        (not (= i@24@01 j@25@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
            (not (= i@24@01 j@25@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@25@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    i@24@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@25@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    i@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@24@01 Int) (j@25@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
        (not (= i@24@01 j@25@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
            (not (= i@24@01 j@25@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@25@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    i@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@24@01 Int) (j@25@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
        (not (= i@24@01 j@25@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
            (not (= i@24@01 j@25@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
          (not (= i@24@01 j@25@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    i@24@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    j@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@24@01 Int) (j@25@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@24@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@25@01)
        (not (= i@24@01 j@25@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
          i@24@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
          j@25@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@24@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@25@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@24@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@25@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@24@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    j@25@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@24@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    j@25@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@25@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    i@24@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@25@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    i@24@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    i@24@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    j@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))
(declare-const i@26@01 Int)
(push) ; 3
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@26@01))
; [eval] a.array[i]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@26@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@26@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@27@01 ($Ref) Int)
(declare-fun img@28@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@26@01 Int) (i2@26@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i1@26@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) i2@26@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
          i1@26@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
          i2@26@01)))
    (= i1@26@01 i2@26@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@26@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@26@01)
    (and
      (=
        (inv@27@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
          i@26@01))
        i@26@01)
      (img@28@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
        i@26@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    i@26@01))
  :qid |quant-u-22194|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@28@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@27@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
        (inv@27@01 r))
      r))
  :pattern ((inv@27@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@26@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@26@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
          i@26@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
    i@26@01))
  :qid |value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
(declare-const i@29@01 Int)
(declare-const j@30@01 Int)
(push) ; 3
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 4
; [then-branch: 9 | !(i@29@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 9 | i@29@01 in [start@6@01..end@7@01] | live]
(push) ; 5
; [then-branch: 9 | !(i@29@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | i@29@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 10 | !(j@30@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 10 | j@30@01 in [start@6@01..end@7@01] | live]
(push) ; 7
; [then-branch: 10 | !(j@30@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 10 | j@30@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01))))
(push) ; 4
; [then-branch: 11 | i@29@01 in [start@6@01..end@7@01] && j@30@01 in [start@6@01..end@7@01] && i@29@01 != j@30@01 | live]
; [else-branch: 11 | !(i@29@01 in [start@6@01..end@7@01] && j@30@01 in [start@6@01..end@7@01] && i@29@01 != j@30@01) | live]
(push) ; 5
; [then-branch: 11 | i@29@01 in [start@6@01..end@7@01] && j@30@01 in [start@6@01..end@7@01] && i@29@01 != j@30@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
    (not (= i@29@01 j@30@01)))))
; [eval] b.array[i] != b.array[j]
; [eval] b.array[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@29@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  i@29@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] b.array[j]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= j@30@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  j@30@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(i@29@01 in [start@6@01..end@7@01] && j@30@01 in [start@6@01..end@7@01] && i@29@01 != j@30@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
      (not (= i@29@01 j@30@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
      (not (= i@29@01 j@30@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
    (not (= i@29@01 j@30@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
        (not (= i@29@01 j@30@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
      (not (= i@29@01 j@30@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@29@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@30@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@29@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@29@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@29@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    j@30@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@29@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@29@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@30@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    i@29@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@30@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    i@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@30@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    i@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    i@29@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
          i@29@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
          j@30@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@29@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@30@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@29@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@30@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@29@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    j@30@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@29@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    j@30@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@30@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    i@29@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@30@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    i@29@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    i@29@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))
(declare-const i@31@01 Int)
(push) ; 3
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@31@01))
; [eval] b.array[i]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@31@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  i@31@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@32@01 ($Ref) Int)
(declare-fun img@33@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@31@01 Int) (i2@31@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i1@31@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) i2@31@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
          i1@31@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
          i2@31@01)))
    (= i1@31@01 i2@31@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@31@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@31@01)
    (and
      (=
        (inv@32@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
          i@31@01))
        i@31@01)
      (img@33@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
        i@31@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    i@31@01))
  :qid |quant-u-22196|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@33@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@32@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
        (inv@32@01 r))
      r))
  :pattern ((inv@32@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@31@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@31@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
          i@31@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
    i@31@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
        i@31@01)
      (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01)) i@26@01))
    (=
      (and
        (img@33@01 r)
        (Seq_contains (Seq_range start@6@01 end@7@01) (inv@32@01 r)))
      (and
        (img@28@01 r)
        (Seq_contains (Seq_range start@6@01 end@7@01) (inv@27@01 r)))))
  
  :qid |quant-u-22197|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))
  $Snap.unit))
; [eval] a.array == old(a.array)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@21@01))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))
  $Snap.unit))
; [eval] b.array == old(b.array)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(b.array)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@21@01)))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; var middle: Int
(declare-const middle@34@01 Int)
; [exec]
; var t1A: Seq[Ref]
(declare-const t1A@35@01 Seq<$Ref>)
; [exec]
; var t1B: Seq[Ref]
(declare-const t1B@36@01 Seq<$Ref>)
; [exec]
; var t2A: Seq[Ref]
(declare-const t2A@37@01 Seq<$Ref>)
; [exec]
; var t2B: Seq[Ref]
(declare-const t2B@38@01 Seq<$Ref>)
; [eval] end - start > 1
; [eval] end - start
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> (- end@7@01 start@6@01) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> (- end@7@01 start@6@01) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | end@7@01 - start@6@01 > 1 | live]
; [else-branch: 12 | !(end@7@01 - start@6@01 > 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 12 | end@7@01 - start@6@01 > 1]
(assert (> (- end@7@01 start@6@01) 1))
; [exec]
; middle := start + (end - start) \ 2
; [eval] start + (end - start) \ 2
; [eval] (end - start) \ 2
; [eval] end - start
(declare-const middle@39@01 Int)
(assert (= middle@39@01 (+ start@6@01 (div (- end@7@01 start@6@01) 2))))
; [exec]
; t1A := a.array
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const t1A@40@01 Seq<$Ref>)
(assert (= t1A@40@01 ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))
; [exec]
; t1B := b.array
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const t1B@41@01 Seq<$Ref>)
(assert (=
  t1B@41@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))
; [exec]
; exhale acc(a.array, wildcard)
(declare-const $k@42@01 $Perm)
(assert ($Perm.isReadVar $k@42@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@9@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@42@01 $k@9@01))
(assert (<= $Perm.No (- $k@9@01 $k@42@01)))
(assert (<= (- $k@9@01 $k@42@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@9@01 $k@42@01)) (not (= a@4@01 $Ref.null))))
; [exec]
; exhale acc(b.array, wildcard)
(declare-const $k@43@01 $Perm)
(assert ($Perm.isReadVar $k@43@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@10@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@43@01 $k@10@01))
(assert (<= $Perm.No (- $k@10@01 $k@43@01)))
(assert (<= (- $k@10@01 $k@43@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@10@01 $k@43@01)) (not (= b@5@01 $Ref.null))))
; [exec]
; exhale start >= 0 && (middle <= |a.array| && |a.array| == |b.array|)
; [eval] start >= 0
; [eval] middle <= |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- $k@9@01 $k@42@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (<=
  middle@39@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  middle@39@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01)))))
; [eval] |a.array| == |b.array|
; [eval] |a.array|
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- $k@9@01 $k@42@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- $k@10@01 $k@43@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale (forall i: Int ::(i in [start..middle)) ==>
;     acc(a.array[i].value, write))
(declare-const i@44@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..middle))
; [eval] [start..middle)
(assert (Seq_contains (Seq_range start@6@01 middle@39@01) i@44@01))
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (- $k@9@01 $k@42@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@44@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@44@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@45@01 ($Ref) Int)
(declare-fun img@46@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@44@01 Int) (i2@44@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 middle@39@01) i1@44@01)
      (Seq_contains (Seq_range start@6@01 middle@39@01) i2@44@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i1@44@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i2@44@01)))
    (= i1@44@01 i2@44@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@44@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 middle@39@01) i@44@01)
    (and
      (=
        (inv@45@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i@44@01))
        i@44@01)
      (img@46@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
        i@44@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@44@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@46@01 r)
      (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@45@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
        (inv@45@01 r))
      r))
  :pattern ((inv@45@01 r))
  :qid |value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@44@01 Int)) (!
  (=
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01)) i@44@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
      i@44@01))
  
  :qid |quant-u-22199|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@47@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@45@01 r))
      (img@46@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          (inv@45@01 r))))
    ($Perm.min
      (ite
        (and
          (img@15@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@14@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@48@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@45@01 r))
      (img@46@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          (inv@45@01 r))))
    ($Perm.min
      (ite
        (and
          (img@20@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@47@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@15@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@14@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@47@01 r))
    $Perm.No)
  
  :qid |quant-u-22201|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@47@01 r) $Perm.No)
  
  :qid |quant-u-22202|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@45@01 r))
      (img@46@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          (inv@45@01 r))))
    (= (- $Perm.Write (pTaken@47@01 r)) $Perm.No))
  
  :qid |quant-u-22203|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall i: Int ::(i in [start..middle)) ==>
;     acc(b.array[i].value, write))
(declare-const i@49@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..middle))
; [eval] [start..middle)
(assert (Seq_contains (Seq_range start@6@01 middle@39@01) i@49@01))
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (- $k@10@01 $k@43@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@49@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@49@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@50@01 ($Ref) Int)
(declare-fun img@51@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@49@01 Int) (i2@49@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 middle@39@01) i1@49@01)
      (Seq_contains (Seq_range start@6@01 middle@39@01) i2@49@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i1@49@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i2@49@01)))
    (= i1@49@01 i2@49@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@49@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 middle@39@01) i@49@01)
    (and
      (=
        (inv@50@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i@49@01))
        i@49@01)
      (img@51@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
        i@49@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@49@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@51@01 r)
      (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@50@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
        (inv@50@01 r))
      r))
  :pattern ((inv@50@01 r))
  :qid |value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@49@01 Int)) (!
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
      i@49@01)
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01)) i@49@01))
  
  :qid |quant-u-22205|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@52@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@50@01 r))
      (img@51@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          (inv@50@01 r))))
    ($Perm.min
      (ite
        (and
          (img@20@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@53@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@50@01 r))
      (img@51@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          (inv@50@01 r))))
    ($Perm.min
      (ite
        (and
          (img@15@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@14@01 r)))
        (- $Perm.Write (pTaken@47@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@52@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@20@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@52@01 r))
    $Perm.No)
  
  :qid |quant-u-22207|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@52@01 r) $Perm.No)
  
  :qid |quant-u-22208|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@50@01 r))
      (img@51@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          (inv@50@01 r))))
    (= (- $Perm.Write (pTaken@52@01 r)) $Perm.No))
  
  :qid |quant-u-22209|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; t2A := a.array
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- $k@9@01 $k@42@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const t2A@54@01 Seq<$Ref>)
(assert (= t2A@54@01 ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))
; [exec]
; t2B := b.array
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- $k@10@01 $k@43@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const t2B@55@01 Seq<$Ref>)
(assert (=
  t2B@55@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))
; [exec]
; exhale acc(a.array, wildcard)
(declare-const $k@56@01 $Perm)
(assert ($Perm.isReadVar $k@56@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (- $k@9@01 $k@42@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@56@01 (- $k@9@01 $k@42@01)))
(assert (<= $Perm.No (- (- $k@9@01 $k@42@01) $k@56@01)))
(assert (<= (- (- $k@9@01 $k@42@01) $k@56@01) $Perm.Write))
(assert (=> (< $Perm.No (- (- $k@9@01 $k@42@01) $k@56@01)) (not (= a@4@01 $Ref.null))))
; [exec]
; exhale acc(b.array, wildcard)
(declare-const $k@57@01 $Perm)
(assert ($Perm.isReadVar $k@57@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (- $k@10@01 $k@43@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@57@01 (- $k@10@01 $k@43@01)))
(assert (<= $Perm.No (- (- $k@10@01 $k@43@01) $k@57@01)))
(assert (<= (- (- $k@10@01 $k@43@01) $k@57@01) $Perm.Write))
(assert (=> (< $Perm.No (- (- $k@10@01 $k@43@01) $k@57@01)) (not (= b@5@01 $Ref.null))))
; [exec]
; exhale middle >= 0 && (end <= |a.array| && |a.array| == |b.array|)
; [eval] middle >= 0
(set-option :timeout 0)
(push) ; 4
(assert (not (>= middle@39@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (>= middle@39@01 0))
; [eval] end <= |a.array|
; [eval] |a.array|
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- (- $k@9@01 $k@42@01) $k@56@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] |a.array| == |b.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- (- $k@9@01 $k@42@01) $k@56@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- (- $k@10@01 $k@43@01) $k@57@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale (forall i: Int ::(i in [middle..end)) ==>
;     acc(a.array[i].value, write))
(declare-const i@58@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [middle..end))
; [eval] [middle..end)
(assert (Seq_contains (Seq_range middle@39@01 end@7@01) i@58@01))
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (- (- $k@9@01 $k@42@01) $k@56@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@58@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@58@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@59@01 ($Ref) Int)
(declare-fun img@60@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@58@01 Int) (i2@58@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range middle@39@01 end@7@01) i1@58@01)
      (Seq_contains (Seq_range middle@39@01 end@7@01) i2@58@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i1@58@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i2@58@01)))
    (= i1@58@01 i2@58@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@58@01 Int)) (!
  (=>
    (Seq_contains (Seq_range middle@39@01 end@7@01) i@58@01)
    (and
      (=
        (inv@59@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i@58@01))
        i@58@01)
      (img@60@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
        i@58@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@58@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@60@01 r)
      (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@59@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
        (inv@59@01 r))
      r))
  :pattern ((inv@59@01 r))
  :qid |value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@58@01 Int)) (!
  (=
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01)) i@58@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
      i@58@01))
  
  :qid |quant-u-22211|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@61@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@59@01 r))
      (img@60@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          (inv@59@01 r))))
    ($Perm.min
      (ite
        (and
          (img@15@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@14@01 r)))
        (- $Perm.Write (pTaken@47@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@62@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@59@01 r))
      (img@60@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          (inv@59@01 r))))
    ($Perm.min
      (ite
        (and
          (img@20@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
        (- $Perm.Write (pTaken@52@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@61@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@15@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@14@01 r)))
        (- $Perm.Write (pTaken@47@01 r))
        $Perm.No)
      (pTaken@61@01 r))
    $Perm.No)
  
  :qid |quant-u-22213|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@59@01 r))
      (img@60@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          (inv@59@01 r))))
    (= (- $Perm.Write (pTaken@61@01 r)) $Perm.No))
  
  :qid |quant-u-22214|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall i: Int ::(i in [middle..end)) ==>
;     acc(b.array[i].value, write))
(declare-const i@63@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [middle..end))
; [eval] [middle..end)
(assert (Seq_contains (Seq_range middle@39@01 end@7@01) i@63@01))
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (- (- $k@10@01 $k@43@01) $k@57@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@63@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@63@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@64@01 ($Ref) Int)
(declare-fun img@65@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@63@01 Int) (i2@63@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range middle@39@01 end@7@01) i1@63@01)
      (Seq_contains (Seq_range middle@39@01 end@7@01) i2@63@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i1@63@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i2@63@01)))
    (= i1@63@01 i2@63@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@63@01 Int)) (!
  (=>
    (Seq_contains (Seq_range middle@39@01 end@7@01) i@63@01)
    (and
      (=
        (inv@64@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i@63@01))
        i@63@01)
      (img@65@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
        i@63@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@63@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@65@01 r)
      (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@64@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
        (inv@64@01 r))
      r))
  :pattern ((inv@64@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@66@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@64@01 r))
      (img@65@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          (inv@64@01 r))))
    ($Perm.min
      (ite
        (and
          (img@20@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
        (- $Perm.Write (pTaken@52@01 r))
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
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@20@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
        (- $Perm.Write (pTaken@52@01 r))
        $Perm.No)
      (pTaken@66@01 r))
    $Perm.No)
  
  :qid |quant-u-22217|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@64@01 r))
      (img@65@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          (inv@64@01 r))))
    (= (- $Perm.Write (pTaken@66@01 r)) $Perm.No))
  
  :qid |quant-u-22218|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; inhale acc(a.array, wildcard)
(declare-const $k@67@01 $Perm)
(assert ($Perm.isReadVar $k@67@01))
(declare-const $t@68@01 Seq<$Ref>)
(declare-const $t@69@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No (- (- $k@9@01 $k@42@01) $k@56@01))
    (Seq_equal $t@69@01 ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))
  (=> (< $Perm.No $k@67@01) (Seq_equal $t@69@01 $t@68@01))))
(assert (<= $Perm.No (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01)))
(assert (<= (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $Perm.Write))
(assert (=>
  (< $Perm.No (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01))
  (not (= a@4@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(b.array, wildcard)
(declare-const $k@70@01 $Perm)
(assert ($Perm.isReadVar $k@70@01))
(declare-const $t@71@01 Seq<$Ref>)
(declare-const $t@72@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No (- (- $k@10@01 $k@43@01) $k@57@01))
    (Seq_equal
      $t@72@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))
  (=> (< $Perm.No $k@70@01) (Seq_equal $t@72@01 $t@71@01))))
(assert (<= $Perm.No (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01)))
(assert (<= (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $Perm.Write))
(assert (=>
  (< $Perm.No (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01))
  (not (= b@5@01 $Ref.null))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::(i in [start..middle)) ==>
;     acc(a.array[i].value, write))
(declare-const i@73@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..middle))
; [eval] [start..middle)
(assert (Seq_contains (Seq_range start@6@01 middle@39@01) i@73@01))
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@73@01 (Seq_length $t@69@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-const $t@74@01 $FVF<value>)
(declare-fun inv@75@01 ($Ref) Int)
(declare-fun img@76@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@73@01 Int) (i2@73@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 middle@39@01) i1@73@01)
      (Seq_contains (Seq_range start@6@01 middle@39@01) i2@73@01)
      (= (Seq_index $t@69@01 i1@73@01) (Seq_index $t@69@01 i2@73@01)))
    (= i1@73@01 i2@73@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@73@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 middle@39@01) i@73@01)
    (and
      (= (inv@75@01 (Seq_index $t@69@01 i@73@01)) i@73@01)
      (img@76@01 (Seq_index $t@69@01 i@73@01))))
  :pattern ((Seq_index $t@69@01 i@73@01))
  :qid |quant-u-22220|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@76@01 r)
      (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@75@01 r)))
    (= (Seq_index $t@69@01 (inv@75@01 r)) r))
  :pattern ((inv@75@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@73@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 middle@39@01) i@73@01)
    (not (= (Seq_index $t@69@01 i@73@01) $Ref.null)))
  :pattern ((Seq_index $t@69@01 i@73@01))
  :qid |value-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::(i in [start..middle)) ==>
;     acc(b.array[i].value, write))
(declare-const i@77@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..middle))
; [eval] [start..middle)
(assert (Seq_contains (Seq_range start@6@01 middle@39@01) i@77@01))
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@77@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@77@01 (Seq_length $t@72@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-const $t@78@01 $FVF<value>)
(declare-fun inv@79@01 ($Ref) Int)
(declare-fun img@80@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@77@01 Int) (i2@77@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 middle@39@01) i1@77@01)
      (Seq_contains (Seq_range start@6@01 middle@39@01) i2@77@01)
      (= (Seq_index $t@72@01 i1@77@01) (Seq_index $t@72@01 i2@77@01)))
    (= i1@77@01 i2@77@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@77@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 middle@39@01) i@77@01)
    (and
      (= (inv@79@01 (Seq_index $t@72@01 i@77@01)) i@77@01)
      (img@80@01 (Seq_index $t@72@01 i@77@01))))
  :pattern ((Seq_index $t@72@01 i@77@01))
  :qid |quant-u-22222|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@79@01 r)))
    (= (Seq_index $t@72@01 (inv@79@01 r)) r))
  :pattern ((inv@79@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@77@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 middle@39@01) i@77@01)
    (not (= (Seq_index $t@72@01 i@77@01) $Ref.null)))
  :pattern ((Seq_index $t@72@01 i@77@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index $t@72@01 i@77@01) (Seq_index $t@69@01 i@73@01))
    (=
      (and
        (img@80@01 r)
        (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@79@01 r)))
      (and
        (img@76@01 r)
        (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@75@01 r)))))
  
  :qid |quant-u-22223|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale a.array == t1A
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 $Snap.unit))
; [eval] a.array == t1A
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal $t@69@01 t1A@40@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale b.array == t1B
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 $Snap.unit))
; [eval] b.array == t1B
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal $t@72@01 t1B@41@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(a.array, wildcard)
(declare-const $k@83@01 $Perm)
(assert ($Perm.isReadVar $k@83@01))
(declare-const $t@84@01 Seq<$Ref>)
(declare-const $t@85@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01))
    (Seq_equal $t@85@01 $t@69@01))
  (=> (< $Perm.No $k@83@01) (Seq_equal $t@85@01 $t@84@01))))
(assert (<= $Perm.No (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01)))
(assert (<= (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $Perm.Write))
(assert (=>
  (< $Perm.No (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01))
  (not (= a@4@01 $Ref.null))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(b.array, wildcard)
(declare-const $k@86@01 $Perm)
(assert ($Perm.isReadVar $k@86@01))
(declare-const $t@87@01 Seq<$Ref>)
(declare-const $t@88@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01))
    (Seq_equal $t@88@01 $t@72@01))
  (=> (< $Perm.No $k@86@01) (Seq_equal $t@88@01 $t@87@01))))
(assert (<= $Perm.No (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01)))
(assert (<= (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $Perm.Write))
(assert (=>
  (< $Perm.No (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01))
  (not (= b@5@01 $Ref.null))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::(i in [middle..end)) ==>
;     acc(a.array[i].value, write))
(declare-const i@89@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [middle..end))
; [eval] [middle..end)
(assert (Seq_contains (Seq_range middle@39@01 end@7@01) i@89@01))
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@89@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@89@01 (Seq_length $t@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-const $t@90@01 $FVF<value>)
(declare-fun inv@91@01 ($Ref) Int)
(declare-fun img@92@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@89@01 Int) (i2@89@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range middle@39@01 end@7@01) i1@89@01)
      (Seq_contains (Seq_range middle@39@01 end@7@01) i2@89@01)
      (= (Seq_index $t@85@01 i1@89@01) (Seq_index $t@85@01 i2@89@01)))
    (= i1@89@01 i2@89@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@89@01 Int)) (!
  (=>
    (Seq_contains (Seq_range middle@39@01 end@7@01) i@89@01)
    (and
      (= (inv@91@01 (Seq_index $t@85@01 i@89@01)) i@89@01)
      (img@92@01 (Seq_index $t@85@01 i@89@01))))
  :pattern ((Seq_index $t@85@01 i@89@01))
  :qid |quant-u-22225|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@91@01 r)))
    (= (Seq_index $t@85@01 (inv@91@01 r)) r))
  :pattern ((inv@91@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@89@01 Int)) (!
  (=>
    (Seq_contains (Seq_range middle@39@01 end@7@01) i@89@01)
    (not (= (Seq_index $t@85@01 i@89@01) $Ref.null)))
  :pattern ((Seq_index $t@85@01 i@89@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index $t@85@01 i@89@01) (Seq_index $t@72@01 i@77@01))
    (=
      (and
        (img@92@01 r)
        (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@91@01 r)))
      (and
        (img@80@01 r)
        (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@79@01 r)))))
  
  :qid |quant-u-22226|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index $t@85@01 i@89@01) (Seq_index $t@69@01 i@73@01))
    (=
      (and
        (img@92@01 r)
        (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@91@01 r)))
      (and
        (img@76@01 r)
        (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@75@01 r)))))
  
  :qid |quant-u-22227|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::(i in [middle..end)) ==>
;     acc(b.array[i].value, write))
(declare-const i@93@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [middle..end))
; [eval] [middle..end)
(assert (Seq_contains (Seq_range middle@39@01 end@7@01) i@93@01))
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@93@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@93@01 (Seq_length $t@88@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-const $t@94@01 $FVF<value>)
(declare-fun inv@95@01 ($Ref) Int)
(declare-fun img@96@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@93@01 Int) (i2@93@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range middle@39@01 end@7@01) i1@93@01)
      (Seq_contains (Seq_range middle@39@01 end@7@01) i2@93@01)
      (= (Seq_index $t@88@01 i1@93@01) (Seq_index $t@88@01 i2@93@01)))
    (= i1@93@01 i2@93@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@93@01 Int)) (!
  (=>
    (Seq_contains (Seq_range middle@39@01 end@7@01) i@93@01)
    (and
      (= (inv@95@01 (Seq_index $t@88@01 i@93@01)) i@93@01)
      (img@96@01 (Seq_index $t@88@01 i@93@01))))
  :pattern ((Seq_index $t@88@01 i@93@01))
  :qid |quant-u-22229|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@96@01 r)
      (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@95@01 r)))
    (= (Seq_index $t@88@01 (inv@95@01 r)) r))
  :pattern ((inv@95@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@93@01 Int)) (!
  (=>
    (Seq_contains (Seq_range middle@39@01 end@7@01) i@93@01)
    (not (= (Seq_index $t@88@01 i@93@01) $Ref.null)))
  :pattern ((Seq_index $t@88@01 i@93@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index $t@88@01 i@93@01) (Seq_index $t@85@01 i@89@01))
    (=
      (and
        (img@96@01 r)
        (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@95@01 r)))
      (and
        (img@92@01 r)
        (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@91@01 r)))))
  
  :qid |quant-u-22230|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index $t@88@01 i@93@01) (Seq_index $t@72@01 i@77@01))
    (=
      (and
        (img@96@01 r)
        (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@95@01 r)))
      (and
        (img@80@01 r)
        (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@79@01 r)))))
  
  :qid |quant-u-22231|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index $t@88@01 i@93@01) (Seq_index $t@69@01 i@73@01))
    (=
      (and
        (img@96@01 r)
        (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@95@01 r)))
      (and
        (img@76@01 r)
        (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@75@01 r)))))
  
  :qid |quant-u-22232|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale a.array == t2A
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 $Snap.unit))
; [eval] a.array == t2A
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal $t@85@01 t2A@54@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale b.array == t2B
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 $Snap.unit))
; [eval] b.array == t2B
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal $t@88@01 t2B@55@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; merge(a, b, start, middle, end)
(declare-const $k@99@01 $Perm)
(assert ($Perm.isReadVar $k@99@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@99@01 (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01)))
(assert (<=
  $Perm.No
  (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)))
(assert (<=
  (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01))
  (not (= a@4@01 $Ref.null))))
(declare-const $k@100@01 $Perm)
(assert ($Perm.isReadVar $k@100@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@100@01 (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01)))
(assert (<=
  $Perm.No
  (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)))
(assert (<=
  (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01))
  (not (= b@5@01 $Ref.null))))
; [eval] 0 <= start
(set-option :timeout 0)
(push) ; 4
(assert (not (<= 0 start@6@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 start@6@01))
; [eval] end <= |a.array|
; [eval] |a.array|
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (<= end@7@01 (Seq_length $t@85@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= end@7@01 (Seq_length $t@85@01)))
; [eval] |b.array| == |a.array|
; [eval] |b.array|
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (= (Seq_length $t@88@01) (Seq_length $t@85@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length $t@88@01) (Seq_length $t@85@01)))
; [eval] start < middle
(push) ; 4
(assert (not (< start@6@01 middle@39@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< start@6@01 middle@39@01))
; [eval] middle < end
(push) ; 4
(assert (not (< middle@39@01 end@7@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< middle@39@01 end@7@01))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@101@01 Int)
(declare-const j@102@01 Int)
(push) ; 4
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 13 | !(i@101@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 13 | i@101@01 in [start@6@01..end@7@01] | live]
(push) ; 6
; [then-branch: 13 | !(i@101@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 13 | i@101@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 14 | !(j@102@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 14 | j@102@01 in [start@6@01..end@7@01] | live]
(push) ; 8
; [then-branch: 14 | !(j@102@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 14 | j@102@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01))
; [eval] i != j
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01))))
(push) ; 5
; [then-branch: 15 | i@101@01 in [start@6@01..end@7@01] && j@102@01 in [start@6@01..end@7@01] && i@101@01 != j@102@01 | live]
; [else-branch: 15 | !(i@101@01 in [start@6@01..end@7@01] && j@102@01 in [start@6@01..end@7@01] && i@101@01 != j@102@01) | live]
(push) ; 6
; [then-branch: 15 | i@101@01 in [start@6@01..end@7@01] && j@102@01 in [start@6@01..end@7@01] && i@101@01 != j@102@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
    (not (= i@101@01 j@102@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@101@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@101@01 (Seq_length $t@85@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= j@102@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@102@01 (Seq_length $t@85@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 15 | !(i@101@01 in [start@6@01..end@7@01] && j@102@01 in [start@6@01..end@7@01] && i@101@01 != j@102@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
      (not (= i@101@01 j@102@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
      (not (= i@101@01 j@102@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
    (not (= i@101@01 j@102@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
        (not (= i@101@01 j@102@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
      (not (= i@101@01 j@102@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@101@01 Int) (j@102@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
        (not (= i@101@01 j@102@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
            (not (= i@101@01 j@102@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@101@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@102@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@101@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@101@01 Int) (j@102@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
        (not (= i@101@01 j@102@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
            (not (= i@101@01 j@102@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@101@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@101@01 Int) (j@102@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
        (not (= i@101@01 j@102@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
            (not (= i@101@01 j@102@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@101@01) (Seq_index
    $t@85@01
    j@102@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@101@01) (Seq_index
    $t@85@01
    j@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@101@01 Int) (j@102@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
        (not (= i@101@01 j@102@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
            (not (= i@101@01 j@102@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@101@01) (Seq_index
    $t@85@01
    j@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@101@01 Int) (j@102@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
        (not (= i@101@01 j@102@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
            (not (= i@101@01 j@102@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@102@01) (Seq_index
    $t@85@01
    i@101@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@102@01) (Seq_index
    $t@85@01
    i@101@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@101@01 Int) (j@102@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
        (not (= i@101@01 j@102@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
            (not (= i@101@01 j@102@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@102@01) (Seq_index
    $t@85@01
    i@101@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@101@01 Int) (j@102@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
        (not (= i@101@01 j@102@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
            (not (= i@101@01 j@102@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
          (not (= i@101@01 j@102@01))))))
  :pattern ((Seq_index $t@85@01 i@101@01) (Seq_index $t@85@01 j@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(push) ; 4
(assert (not (forall ((i@101@01 Int) (j@102@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
        (not (= i@101@01 j@102@01))))
    (not (= (Seq_index $t@85@01 i@101@01) (Seq_index $t@85@01 j@102@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@101@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@102@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@101@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@102@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@101@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@102@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@101@01) (Seq_index
    $t@85@01
    j@102@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@101@01) (Seq_index
    $t@85@01
    j@102@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@101@01) (Seq_index
    $t@85@01
    j@102@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@102@01) (Seq_index
    $t@85@01
    i@101@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@102@01) (Seq_index
    $t@85@01
    i@101@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@102@01) (Seq_index
    $t@85@01
    i@101@01))
  :pattern ((Seq_index $t@85@01 i@101@01) (Seq_index $t@85@01 j@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@101@01 Int) (j@102@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@101@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@102@01)
        (not (= i@101@01 j@102@01))))
    (not (= (Seq_index $t@85@01 i@101@01) (Seq_index $t@85@01 j@102@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@101@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@102@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@101@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@102@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@101@01) (Seq_index
    $t@85@01
    j@102@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@101@01) (Seq_index
    $t@85@01
    j@102@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@102@01) (Seq_index
    $t@85@01
    i@101@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@102@01) (Seq_index
    $t@85@01
    i@101@01))
  :pattern ((Seq_index $t@85@01 i@101@01) (Seq_index $t@85@01 j@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112|)))
(declare-const k@103@01 Int)
(push) ; 4
; [eval] (k in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) k@103@01))
; [eval] a.array[k]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= k@103@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@103@01 (Seq_length $t@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@104@01 ($Ref) Int)
(declare-fun img@105@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@103@01 Int) (k2@103@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) k1@103@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) k2@103@01)
      (= (Seq_index $t@85@01 k1@103@01) (Seq_index $t@85@01 k2@103@01)))
    (= k1@103@01 k2@103@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@103@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) k@103@01)
    (and
      (= (inv@104@01 (Seq_index $t@85@01 k@103@01)) k@103@01)
      (img@105@01 (Seq_index $t@85@01 k@103@01))))
  :pattern ((Seq_index $t@85@01 k@103@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@105@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@104@01 r)))
    (= (Seq_index $t@85@01 (inv@104@01 r)) r))
  :pattern ((inv@104@01 r))
  :qid |value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((k@103@01 Int)) (!
  (= (Seq_index $t@85@01 k@103@01) (Seq_index $t@69@01 k@103@01))
  
  :qid |quant-u-22234|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((k@103@01 Int)) (!
  (= (Seq_index $t@85@01 k@103@01) (Seq_index $t@72@01 k@103@01))
  
  :qid |quant-u-22235|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((k@103@01 Int)) (!
  (= (Seq_index $t@85@01 k@103@01) (Seq_index $t@88@01 k@103@01))
  
  :qid |quant-u-22236|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@106@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@104@01 r))
      (img@105@01 r)
      (= r (Seq_index $t@85@01 (inv@104@01 r))))
    ($Perm.min
      (ite
        (and
          (img@76@01 r)
          (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@75@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@107@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@104@01 r))
      (img@105@01 r)
      (= r (Seq_index $t@85@01 (inv@104@01 r))))
    ($Perm.min
      (ite
        (and
          (img@92@01 r)
          (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@91@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@106@01 r)))
    $Perm.No))
(define-fun pTaken@108@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@104@01 r))
      (img@105@01 r)
      (= r (Seq_index $t@85@01 (inv@104@01 r))))
    ($Perm.min
      (ite
        (and
          (img@80@01 r)
          (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@79@01 r)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@106@01 r)) (pTaken@107@01 r)))
    $Perm.No))
(define-fun pTaken@109@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@104@01 r))
      (img@105@01 r)
      (= r (Seq_index $t@85@01 (inv@104@01 r))))
    ($Perm.min
      (ite
        (and
          (img@96@01 r)
          (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@95@01 r)))
        $Perm.Write
        $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@106@01 r)) (pTaken@107@01 r))
        (pTaken@108@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@76@01 r)
          (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@75@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@106@01 r))
    $Perm.No)
  
  :qid |quant-u-22238|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@104@01 r))
      (img@105@01 r)
      (= r (Seq_index $t@85@01 (inv@104@01 r))))
    (= (- $Perm.Write (pTaken@106@01 r)) $Perm.No))
  
  :qid |quant-u-22239|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@92@01 r)
          (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@91@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@107@01 r))
    $Perm.No)
  
  :qid |quant-u-22240|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@104@01 r))
      (img@105@01 r)
      (= r (Seq_index $t@85@01 (inv@104@01 r))))
    (= (- (- $Perm.Write (pTaken@106@01 r)) (pTaken@107@01 r)) $Perm.No))
  
  :qid |quant-u-22241|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
(declare-const i@110@01 Int)
(declare-const j@111@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 16 | !(i@110@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 16 | i@110@01 in [start@6@01..end@7@01] | live]
(push) ; 6
; [then-branch: 16 | !(i@110@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 16 | i@110@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 17 | !(j@111@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 17 | j@111@01 in [start@6@01..end@7@01] | live]
(push) ; 8
; [then-branch: 17 | !(j@111@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 17 | j@111@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01))
; [eval] i != j
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01))))
(push) ; 5
; [then-branch: 18 | i@110@01 in [start@6@01..end@7@01] && j@111@01 in [start@6@01..end@7@01] && i@110@01 != j@111@01 | live]
; [else-branch: 18 | !(i@110@01 in [start@6@01..end@7@01] && j@111@01 in [start@6@01..end@7@01] && i@110@01 != j@111@01) | live]
(push) ; 6
; [then-branch: 18 | i@110@01 in [start@6@01..end@7@01] && j@111@01 in [start@6@01..end@7@01] && i@110@01 != j@111@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
    (not (= i@110@01 j@111@01)))))
; [eval] b.array[i] != b.array[j]
; [eval] b.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@110@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@110@01 (Seq_length $t@88@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b.array[j]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= j@111@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@111@01 (Seq_length $t@88@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 18 | !(i@110@01 in [start@6@01..end@7@01] && j@111@01 in [start@6@01..end@7@01] && i@110@01 != j@111@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
      (not (= i@110@01 j@111@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
      (not (= i@110@01 j@111@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
    (not (= i@110@01 j@111@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
        (not (= i@110@01 j@111@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
      (not (= i@110@01 j@111@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@110@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@110@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@110@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@110@01) (Seq_index
    $t@88@01
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@110@01) (Seq_index
    $t@88@01
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@110@01) (Seq_index
    $t@88@01
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@111@01) (Seq_index
    $t@88@01
    i@110@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@111@01) (Seq_index
    $t@88@01
    i@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@111@01) (Seq_index
    $t@88@01
    i@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_index $t@88@01 i@110@01) (Seq_index $t@88@01 j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(push) ; 4
(assert (not (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
        (not (= i@110@01 j@111@01))))
    (not (= (Seq_index $t@88@01 i@110@01) (Seq_index $t@88@01 j@111@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@110@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@110@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@110@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@111@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@110@01) (Seq_index
    $t@88@01
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@110@01) (Seq_index
    $t@88@01
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@110@01) (Seq_index
    $t@88@01
    j@111@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@111@01) (Seq_index
    $t@88@01
    i@110@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@111@01) (Seq_index
    $t@88@01
    i@110@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@111@01) (Seq_index
    $t@88@01
    i@110@01))
  :pattern ((Seq_index $t@88@01 i@110@01) (Seq_index $t@88@01 j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@110@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@111@01)
        (not (= i@110@01 j@111@01))))
    (not (= (Seq_index $t@88@01 i@110@01) (Seq_index $t@88@01 j@111@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@110@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@110@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@111@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@110@01) (Seq_index
    $t@88@01
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@110@01) (Seq_index
    $t@88@01
    j@111@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@111@01) (Seq_index
    $t@88@01
    i@110@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@111@01) (Seq_index
    $t@88@01
    i@110@01))
  :pattern ((Seq_index $t@88@01 i@110@01) (Seq_index $t@88@01 j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112|)))
(declare-const l@112@01 Int)
(push) ; 4
; [eval] (l in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) l@112@01))
; [eval] b.array[l]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= l@112@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< l@112@01 (Seq_length $t@88@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@113@01 ($Ref) Int)
(declare-fun img@114@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((l1@112@01 Int) (l2@112@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) l1@112@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) l2@112@01)
      (= (Seq_index $t@88@01 l1@112@01) (Seq_index $t@88@01 l2@112@01)))
    (= l1@112@01 l2@112@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((l@112@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) l@112@01)
    (and
      (= (inv@113@01 (Seq_index $t@88@01 l@112@01)) l@112@01)
      (img@114@01 (Seq_index $t@88@01 l@112@01))))
  :pattern ((Seq_index $t@88@01 l@112@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@114@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@113@01 r)))
    (= (Seq_index $t@88@01 (inv@113@01 r)) r))
  :pattern ((inv@113@01 r))
  :qid |value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((l@112@01 Int)) (!
  (= (Seq_index $t@88@01 l@112@01) (Seq_index $t@72@01 l@112@01))
  
  :qid |quant-u-22243|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@115@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index $t@88@01 (inv@113@01 r))))
    ($Perm.min
      (ite
        (and
          (img@96@01 r)
          (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@95@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@116@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index $t@88@01 (inv@113@01 r))))
    ($Perm.min
      (ite
        (and
          (img@80@01 r)
          (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@79@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@115@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@96@01 r)
          (Seq_contains (Seq_range middle@39@01 end@7@01) (inv@95@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@115@01 r))
    $Perm.No)
  
  :qid |quant-u-22245|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index $t@88@01 (inv@113@01 r))))
    (= (- $Perm.Write (pTaken@115@01 r)) $Perm.No))
  
  :qid |quant-u-22246|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@80@01 r)
          (Seq_contains (Seq_range start@6@01 middle@39@01) (inv@79@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@116@01 r))
    $Perm.No)
  
  :qid |quant-u-22247|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index $t@88@01 (inv@113@01 r))))
    (= (- (- $Perm.Write (pTaken@115@01 r)) (pTaken@116@01 r)) $Perm.No))
  
  :qid |quant-u-22248|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@117@01 $Snap)
(assert (= $t@117@01 ($Snap.combine ($Snap.first $t@117@01) ($Snap.second $t@117@01))))
(declare-const $k@118@01 $Perm)
(assert ($Perm.isReadVar $k@118@01))
(declare-const $t@119@01 Seq<$Ref>)
(assert (and
  (=>
    (<
      $Perm.No
      (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01))
    (Seq_equal $t@119@01 $t@85@01))
  (=>
    (< $Perm.No $k@118@01)
    (Seq_equal
      $t@119@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@117@01))))))
(assert (<=
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01)))
(assert (<=
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
      $k@118@01))
  (not (= a@4@01 $Ref.null))))
(assert (=
  ($Snap.second $t@117@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@117@01))
    ($Snap.second ($Snap.second $t@117@01)))))
(declare-const $k@120@01 $Perm)
(assert ($Perm.isReadVar $k@120@01))
(declare-const $t@121@01 Seq<$Ref>)
(assert (and
  (=>
    (<
      $Perm.No
      (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01))
    (Seq_equal $t@121@01 $t@88@01))
  (=>
    (< $Perm.No $k@120@01)
    (Seq_equal
      $t@121@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@117@01)))))))
(assert (<=
  $Perm.No
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01)))
(assert (<=
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
      $k@120@01))
  (not (= b@5@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@117@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@117@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@117@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@117@01))) $Snap.unit))
; [eval] a.array == old(a.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal $t@119@01 $t@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@117@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@117@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@117@01))))
  $Snap.unit))
; [eval] b.array == old(b.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(b.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal $t@121@01 $t@88@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01)))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@122@01 Int)
(declare-const j@123@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 19 | !(i@122@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 19 | i@122@01 in [start@6@01..end@7@01] | live]
(push) ; 6
; [then-branch: 19 | !(i@122@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 19 | i@122@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 20 | !(j@123@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 20 | j@123@01 in [start@6@01..end@7@01] | live]
(push) ; 8
; [then-branch: 20 | !(j@123@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 20 | j@123@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01))
; [eval] i != j
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01))))
(push) ; 5
; [then-branch: 21 | i@122@01 in [start@6@01..end@7@01] && j@123@01 in [start@6@01..end@7@01] && i@122@01 != j@123@01 | live]
; [else-branch: 21 | !(i@122@01 in [start@6@01..end@7@01] && j@123@01 in [start@6@01..end@7@01] && i@122@01 != j@123@01) | live]
(push) ; 6
; [then-branch: 21 | i@122@01 in [start@6@01..end@7@01] && j@123@01 in [start@6@01..end@7@01] && i@122@01 != j@123@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
    (not (= i@122@01 j@123@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@122@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@122@01 (Seq_length $t@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= j@123@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@123@01 (Seq_length $t@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 21 | !(i@122@01 in [start@6@01..end@7@01] && j@123@01 in [start@6@01..end@7@01] && i@122@01 != j@123@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
      (not (= i@122@01 j@123@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
      (not (= i@122@01 j@123@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
    (not (= i@122@01 j@123@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
        (not (= i@122@01 j@123@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
      (not (= i@122@01 j@123@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@122@01 Int) (j@123@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
        (not (= i@122@01 j@123@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
            (not (= i@122@01 j@123@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@122@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@123@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@122@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@122@01 Int) (j@123@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
        (not (= i@122@01 j@123@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
            (not (= i@122@01 j@123@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@122@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@122@01 Int) (j@123@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
        (not (= i@122@01 j@123@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
            (not (= i@122@01 j@123@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@122@01) (Seq_index
    $t@119@01
    j@123@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@122@01) (Seq_index
    $t@119@01
    j@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@122@01 Int) (j@123@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
        (not (= i@122@01 j@123@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
            (not (= i@122@01 j@123@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@122@01) (Seq_index
    $t@119@01
    j@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@122@01 Int) (j@123@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
        (not (= i@122@01 j@123@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
            (not (= i@122@01 j@123@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@123@01) (Seq_index
    $t@119@01
    i@122@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@123@01) (Seq_index
    $t@119@01
    i@122@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@122@01 Int) (j@123@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
        (not (= i@122@01 j@123@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
            (not (= i@122@01 j@123@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@123@01) (Seq_index
    $t@119@01
    i@122@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@122@01 Int) (j@123@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
        (not (= i@122@01 j@123@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
            (not (= i@122@01 j@123@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
          (not (= i@122@01 j@123@01))))))
  :pattern ((Seq_index $t@119@01 i@122@01) (Seq_index $t@119@01 j@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@122@01 Int) (j@123@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@122@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@123@01)
        (not (= i@122@01 j@123@01))))
    (not (= (Seq_index $t@119@01 i@122@01) (Seq_index $t@119@01 j@123@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@122@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@123@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@122@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@123@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@122@01) (Seq_index
    $t@119@01
    j@123@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@122@01) (Seq_index
    $t@119@01
    j@123@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@123@01) (Seq_index
    $t@119@01
    i@122@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@123@01) (Seq_index
    $t@119@01
    i@122@01))
  :pattern ((Seq_index $t@119@01 i@122@01) (Seq_index $t@119@01 j@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01)))))))))
(declare-const i@124@01 Int)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@124@01))
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@124@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@124@01 (Seq_length $t@119@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@125@01 ($Ref) Int)
(declare-fun img@126@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@124@01 Int) (i2@124@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i1@124@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) i2@124@01)
      (= (Seq_index $t@119@01 i1@124@01) (Seq_index $t@119@01 i2@124@01)))
    (= i1@124@01 i2@124@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@124@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@124@01)
    (and
      (= (inv@125@01 (Seq_index $t@119@01 i@124@01)) i@124@01)
      (img@126@01 (Seq_index $t@119@01 i@124@01))))
  :pattern ((Seq_index $t@119@01 i@124@01))
  :qid |quant-u-22250|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@126@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@125@01 r)))
    (= (Seq_index $t@119@01 (inv@125@01 r)) r))
  :pattern ((inv@125@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@124@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@124@01)
    (not (= (Seq_index $t@119@01 i@124@01) $Ref.null)))
  :pattern ((Seq_index $t@119@01 i@124@01))
  :qid |value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@117@01)))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
(declare-const i@127@01 Int)
(declare-const j@128@01 Int)
(push) ; 4
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 22 | !(i@127@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 22 | i@127@01 in [start@6@01..end@7@01] | live]
(push) ; 6
; [then-branch: 22 | !(i@127@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 22 | i@127@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 23 | !(j@128@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 23 | j@128@01 in [start@6@01..end@7@01] | live]
(push) ; 8
; [then-branch: 23 | !(j@128@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 23 | j@128@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01))
; [eval] i != j
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01))))
(push) ; 5
; [then-branch: 24 | i@127@01 in [start@6@01..end@7@01] && j@128@01 in [start@6@01..end@7@01] && i@127@01 != j@128@01 | live]
; [else-branch: 24 | !(i@127@01 in [start@6@01..end@7@01] && j@128@01 in [start@6@01..end@7@01] && i@127@01 != j@128@01) | live]
(push) ; 6
; [then-branch: 24 | i@127@01 in [start@6@01..end@7@01] && j@128@01 in [start@6@01..end@7@01] && i@127@01 != j@128@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
    (not (= i@127@01 j@128@01)))))
; [eval] b.array[i] != b.array[j]
; [eval] b.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@127@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@127@01 (Seq_length $t@121@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b.array[j]
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= j@128@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@128@01 (Seq_length $t@121@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 24 | !(i@127@01 in [start@6@01..end@7@01] && j@128@01 in [start@6@01..end@7@01] && i@127@01 != j@128@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
      (not (= i@127@01 j@128@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
      (not (= i@127@01 j@128@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
    (not (= i@127@01 j@128@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
        (not (= i@127@01 j@128@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
      (not (= i@127@01 j@128@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@127@01 Int) (j@128@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
        (not (= i@127@01 j@128@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
            (not (= i@127@01 j@128@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@127@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@128@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@127@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@127@01 Int) (j@128@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
        (not (= i@127@01 j@128@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
            (not (= i@127@01 j@128@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@127@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@127@01 Int) (j@128@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
        (not (= i@127@01 j@128@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
            (not (= i@127@01 j@128@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@127@01) (Seq_index
    $t@121@01
    j@128@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@127@01) (Seq_index
    $t@121@01
    j@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@127@01 Int) (j@128@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
        (not (= i@127@01 j@128@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
            (not (= i@127@01 j@128@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@127@01) (Seq_index
    $t@121@01
    j@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@127@01 Int) (j@128@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
        (not (= i@127@01 j@128@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
            (not (= i@127@01 j@128@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@128@01) (Seq_index
    $t@121@01
    i@127@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@128@01) (Seq_index
    $t@121@01
    i@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@127@01 Int) (j@128@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
        (not (= i@127@01 j@128@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
            (not (= i@127@01 j@128@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@128@01) (Seq_index
    $t@121@01
    i@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@127@01 Int) (j@128@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
        (not (= i@127@01 j@128@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
            (not (= i@127@01 j@128@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
          (not (= i@127@01 j@128@01))))))
  :pattern ((Seq_index $t@121@01 i@127@01) (Seq_index $t@121@01 j@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@127@01 Int) (j@128@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@127@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@128@01)
        (not (= i@127@01 j@128@01))))
    (not (= (Seq_index $t@121@01 i@127@01) (Seq_index $t@121@01 j@128@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@127@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@128@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@127@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@128@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@127@01) (Seq_index
    $t@121@01
    j@128@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@127@01) (Seq_index
    $t@121@01
    j@128@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@128@01) (Seq_index
    $t@121@01
    i@127@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@128@01) (Seq_index
    $t@121@01
    i@127@01))
  :pattern ((Seq_index $t@121@01 i@127@01) (Seq_index $t@121@01 j@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111|)))
(declare-const i@129@01 Int)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@129@01))
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@129@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@129@01 (Seq_length $t@121@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@130@01 ($Ref) Int)
(declare-fun img@131@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@129@01 Int) (i2@129@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i1@129@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) i2@129@01)
      (= (Seq_index $t@121@01 i1@129@01) (Seq_index $t@121@01 i2@129@01)))
    (= i1@129@01 i2@129@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@129@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@129@01)
    (and
      (= (inv@130@01 (Seq_index $t@121@01 i@129@01)) i@129@01)
      (img@131@01 (Seq_index $t@121@01 i@129@01))))
  :pattern ((Seq_index $t@121@01 i@129@01))
  :qid |quant-u-22252|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@131@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@130@01 r)))
    (= (Seq_index $t@121@01 (inv@130@01 r)) r))
  :pattern ((inv@130@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@129@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@129@01)
    (not (= (Seq_index $t@121@01 i@129@01) $Ref.null)))
  :pattern ((Seq_index $t@121@01 i@129@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index $t@121@01 i@129@01) (Seq_index $t@119@01 i@124@01))
    (=
      (and
        (img@131@01 r)
        (Seq_contains (Seq_range start@6@01 end@7@01) (inv@130@01 r)))
      (and
        (img@126@01 r)
        (Seq_contains (Seq_range start@6@01 end@7@01) (inv@125@01 r)))))
  
  :qid |quant-u-22253|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(declare-const $k@132@01 $Perm)
(assert ($Perm.isReadVar $k@132@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    (+
      (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
      $k@118@01)
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<
  $k@132@01
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01)))
(assert (<=
  $Perm.No
  (-
    (+
      (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
      $k@118@01)
    $k@132@01)))
(assert (<=
  (-
    (+
      (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
      $k@118@01)
    $k@132@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
        $k@118@01)
      $k@132@01))
  (not (= a@4@01 $Ref.null))))
(declare-const $k@133@01 $Perm)
(assert ($Perm.isReadVar $k@133@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    (+
      (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
      $k@120@01)
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<
  $k@133@01
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01)))
(assert (<=
  $Perm.No
  (-
    (+
      (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
      $k@120@01)
    $k@133@01)))
(assert (<=
  (-
    (+
      (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
      $k@120@01)
    $k@133@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (-
          (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01)
          $k@100@01)
        $k@120@01)
      $k@133@01))
  (not (= b@5@01 $Ref.null))))
; [eval] start >= 0
; [eval] end <= |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (<= end@7@01 (Seq_length $t@119@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= end@7@01 (Seq_length $t@119@01)))
; [eval] |a.array| == |b.array|
; [eval] |a.array|
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (= (Seq_length $t@119@01) (Seq_length $t@121@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length $t@119@01) (Seq_length $t@121@01)))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@134@01 Int)
(declare-const j@135@01 Int)
(push) ; 4
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 25 | !(i@134@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 25 | i@134@01 in [start@6@01..end@7@01] | live]
(push) ; 6
; [then-branch: 25 | !(i@134@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 25 | i@134@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 26 | !(j@135@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 26 | j@135@01 in [start@6@01..end@7@01] | live]
(push) ; 8
; [then-branch: 26 | !(j@135@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 26 | j@135@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01))
; [eval] i != j
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01))))
(push) ; 5
; [then-branch: 27 | i@134@01 in [start@6@01..end@7@01] && j@135@01 in [start@6@01..end@7@01] && i@134@01 != j@135@01 | live]
; [else-branch: 27 | !(i@134@01 in [start@6@01..end@7@01] && j@135@01 in [start@6@01..end@7@01] && i@134@01 != j@135@01) | live]
(push) ; 6
; [then-branch: 27 | i@134@01 in [start@6@01..end@7@01] && j@135@01 in [start@6@01..end@7@01] && i@134@01 != j@135@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
    (not (= i@134@01 j@135@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@134@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@134@01 (Seq_length $t@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= j@135@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@135@01 (Seq_length $t@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 27 | !(i@134@01 in [start@6@01..end@7@01] && j@135@01 in [start@6@01..end@7@01] && i@134@01 != j@135@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
      (not (= i@134@01 j@135@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
      (not (= i@134@01 j@135@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
    (not (= i@134@01 j@135@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
        (not (= i@134@01 j@135@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
      (not (= i@134@01 j@135@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@134@01 Int) (j@135@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
        (not (= i@134@01 j@135@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
            (not (= i@134@01 j@135@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@134@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@135@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@134@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@134@01 Int) (j@135@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
        (not (= i@134@01 j@135@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
            (not (= i@134@01 j@135@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@134@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@134@01 Int) (j@135@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
        (not (= i@134@01 j@135@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
            (not (= i@134@01 j@135@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@134@01) (Seq_index
    $t@119@01
    j@135@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@134@01) (Seq_index
    $t@119@01
    j@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@134@01 Int) (j@135@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
        (not (= i@134@01 j@135@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
            (not (= i@134@01 j@135@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@134@01) (Seq_index
    $t@119@01
    j@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@134@01 Int) (j@135@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
        (not (= i@134@01 j@135@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
            (not (= i@134@01 j@135@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@135@01) (Seq_index
    $t@119@01
    i@134@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@135@01) (Seq_index
    $t@119@01
    i@134@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@134@01 Int) (j@135@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
        (not (= i@134@01 j@135@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
            (not (= i@134@01 j@135@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@135@01) (Seq_index
    $t@119@01
    i@134@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@134@01 Int) (j@135@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
        (not (= i@134@01 j@135@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
            (not (= i@134@01 j@135@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
          (not (= i@134@01 j@135@01))))))
  :pattern ((Seq_index $t@119@01 i@134@01) (Seq_index $t@119@01 j@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(push) ; 4
(assert (not (forall ((i@134@01 Int) (j@135@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
        (not (= i@134@01 j@135@01))))
    (not (= (Seq_index $t@119@01 i@134@01) (Seq_index $t@119@01 j@135@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@134@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@135@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@134@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@135@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@134@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@135@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@134@01) (Seq_index
    $t@119@01
    j@135@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@134@01) (Seq_index
    $t@119@01
    j@135@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@134@01) (Seq_index
    $t@119@01
    j@135@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@135@01) (Seq_index
    $t@119@01
    i@134@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@135@01) (Seq_index
    $t@119@01
    i@134@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@135@01) (Seq_index
    $t@119@01
    i@134@01))
  :pattern ((Seq_index $t@119@01 i@134@01) (Seq_index $t@119@01 j@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@134@01 Int) (j@135@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@134@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@135@01)
        (not (= i@134@01 j@135@01))))
    (not (= (Seq_index $t@119@01 i@134@01) (Seq_index $t@119@01 j@135@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@134@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@135@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@134@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@135@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@134@01) (Seq_index
    $t@119@01
    j@135@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@134@01) (Seq_index
    $t@119@01
    j@135@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@135@01) (Seq_index
    $t@119@01
    i@134@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@135@01) (Seq_index
    $t@119@01
    i@134@01))
  :pattern ((Seq_index $t@119@01 i@134@01) (Seq_index $t@119@01 j@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111|)))
(declare-const i@136@01 Int)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@136@01))
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@136@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@136@01 (Seq_length $t@119@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@137@01 ($Ref) Int)
(declare-fun img@138@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@136@01 Int) (i2@136@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i1@136@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) i2@136@01)
      (= (Seq_index $t@119@01 i1@136@01) (Seq_index $t@119@01 i2@136@01)))
    (= i1@136@01 i2@136@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@136@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@136@01)
    (and
      (= (inv@137@01 (Seq_index $t@119@01 i@136@01)) i@136@01)
      (img@138@01 (Seq_index $t@119@01 i@136@01))))
  :pattern ((Seq_index $t@119@01 i@136@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@138@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@137@01 r)))
    (= (Seq_index $t@119@01 (inv@137@01 r)) r))
  :pattern ((inv@137@01 r))
  :qid |value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@136@01 Int)) (!
  (= (Seq_index $t@119@01 i@136@01) (Seq_index $t@121@01 i@136@01))
  
  :qid |quant-u-22255|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@139@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@137@01 r))
      (img@138@01 r)
      (= r (Seq_index $t@119@01 (inv@137@01 r))))
    ($Perm.min
      (ite
        (and
          (img@126@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@125@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@140@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@137@01 r))
      (img@138@01 r)
      (= r (Seq_index $t@119@01 (inv@137@01 r))))
    ($Perm.min
      (ite
        (and
          (img@131@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@130@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@139@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@126@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@125@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@139@01 r))
    $Perm.No)
  
  :qid |quant-u-22257|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@137@01 r))
      (img@138@01 r)
      (= r (Seq_index $t@119@01 (inv@137@01 r))))
    (= (- $Perm.Write (pTaken@139@01 r)) $Perm.No))
  
  :qid |quant-u-22258|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
(declare-const i@141@01 Int)
(declare-const j@142@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 28 | !(i@141@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 28 | i@141@01 in [start@6@01..end@7@01] | live]
(push) ; 6
; [then-branch: 28 | !(i@141@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 28 | i@141@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 29 | !(j@142@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 29 | j@142@01 in [start@6@01..end@7@01] | live]
(push) ; 8
; [then-branch: 29 | !(j@142@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 29 | j@142@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01))
; [eval] i != j
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01))))
(push) ; 5
; [then-branch: 30 | i@141@01 in [start@6@01..end@7@01] && j@142@01 in [start@6@01..end@7@01] && i@141@01 != j@142@01 | live]
; [else-branch: 30 | !(i@141@01 in [start@6@01..end@7@01] && j@142@01 in [start@6@01..end@7@01] && i@141@01 != j@142@01) | live]
(push) ; 6
; [then-branch: 30 | i@141@01 in [start@6@01..end@7@01] && j@142@01 in [start@6@01..end@7@01] && i@141@01 != j@142@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
    (not (= i@141@01 j@142@01)))))
; [eval] b.array[i] != b.array[j]
; [eval] b.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@141@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@141@01 (Seq_length $t@121@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b.array[j]
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= j@142@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@142@01 (Seq_length $t@121@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 30 | !(i@141@01 in [start@6@01..end@7@01] && j@142@01 in [start@6@01..end@7@01] && i@141@01 != j@142@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
      (not (= i@141@01 j@142@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
      (not (= i@141@01 j@142@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
    (not (= i@141@01 j@142@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
        (not (= i@141@01 j@142@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
      (not (= i@141@01 j@142@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@141@01 Int) (j@142@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
        (not (= i@141@01 j@142@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
            (not (= i@141@01 j@142@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@141@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@142@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@141@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@141@01 Int) (j@142@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
        (not (= i@141@01 j@142@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
            (not (= i@141@01 j@142@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@141@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@141@01 Int) (j@142@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
        (not (= i@141@01 j@142@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
            (not (= i@141@01 j@142@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@141@01) (Seq_index
    $t@121@01
    j@142@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@141@01) (Seq_index
    $t@121@01
    j@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@141@01 Int) (j@142@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
        (not (= i@141@01 j@142@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
            (not (= i@141@01 j@142@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@141@01) (Seq_index
    $t@121@01
    j@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@141@01 Int) (j@142@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
        (not (= i@141@01 j@142@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
            (not (= i@141@01 j@142@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@142@01) (Seq_index
    $t@121@01
    i@141@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@142@01) (Seq_index
    $t@121@01
    i@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@141@01 Int) (j@142@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
        (not (= i@141@01 j@142@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
            (not (= i@141@01 j@142@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@142@01) (Seq_index
    $t@121@01
    i@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@141@01 Int) (j@142@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
        (not (= i@141@01 j@142@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
            (not (= i@141@01 j@142@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
          (not (= i@141@01 j@142@01))))))
  :pattern ((Seq_index $t@121@01 i@141@01) (Seq_index $t@121@01 j@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(push) ; 4
(assert (not (forall ((i@141@01 Int) (j@142@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
        (not (= i@141@01 j@142@01))))
    (not (= (Seq_index $t@121@01 i@141@01) (Seq_index $t@121@01 j@142@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@141@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@142@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@141@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@142@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@141@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@142@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@141@01) (Seq_index
    $t@121@01
    j@142@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@141@01) (Seq_index
    $t@121@01
    j@142@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@141@01) (Seq_index
    $t@121@01
    j@142@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@142@01) (Seq_index
    $t@121@01
    i@141@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@142@01) (Seq_index
    $t@121@01
    i@141@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@142@01) (Seq_index
    $t@121@01
    i@141@01))
  :pattern ((Seq_index $t@121@01 i@141@01) (Seq_index $t@121@01 j@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@141@01 Int) (j@142@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@141@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@142@01)
        (not (= i@141@01 j@142@01))))
    (not (= (Seq_index $t@121@01 i@141@01) (Seq_index $t@121@01 j@142@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@141@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@142@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@141@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@142@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@141@01) (Seq_index
    $t@121@01
    j@142@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@141@01) (Seq_index
    $t@121@01
    j@142@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@142@01) (Seq_index
    $t@121@01
    i@141@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@142@01) (Seq_index
    $t@121@01
    i@141@01))
  :pattern ((Seq_index $t@121@01 i@141@01) (Seq_index $t@121@01 j@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111|)))
(declare-const i@143@01 Int)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@143@01))
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@143@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@143@01 (Seq_length $t@121@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@144@01 ($Ref) Int)
(declare-fun img@145@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@143@01 Int) (i2@143@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i1@143@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) i2@143@01)
      (= (Seq_index $t@121@01 i1@143@01) (Seq_index $t@121@01 i2@143@01)))
    (= i1@143@01 i2@143@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@143@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@143@01)
    (and
      (= (inv@144@01 (Seq_index $t@121@01 i@143@01)) i@143@01)
      (img@145@01 (Seq_index $t@121@01 i@143@01))))
  :pattern ((Seq_index $t@121@01 i@143@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@145@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@144@01 r)))
    (= (Seq_index $t@121@01 (inv@144@01 r)) r))
  :pattern ((inv@144@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@146@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@144@01 r))
      (img@145@01 r)
      (= r (Seq_index $t@121@01 (inv@144@01 r))))
    ($Perm.min
      (ite
        (and
          (img@131@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@130@01 r)))
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
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@131@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@130@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@146@01 r))
    $Perm.No)
  
  :qid |quant-u-22261|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@144@01 r))
      (img@145@01 r)
      (= r (Seq_index $t@121@01 (inv@144@01 r))))
    (= (- $Perm.Write (pTaken@146@01 r)) $Perm.No))
  
  :qid |quant-u-22262|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] a.array == old(a.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@9@01 $k@42@01) $k@56@01) $k@67@01) $k@83@01) $k@99@01)
    $k@118@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (Seq_equal $t@119@01 ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal $t@119@01 ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))
; [eval] b.array == old(b.array)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- (+ (+ (- (- $k@10@01 $k@43@01) $k@57@01) $k@70@01) $k@86@01) $k@100@01)
    $k@120@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(b.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (Seq_equal
  $t@121@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  $t@121@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))
(pop) ; 3
(push) ; 3
; [else-branch: 12 | !(end@7@01 - start@6@01 > 1)]
(assert (not (> (- end@7@01 start@6@01) 1)))
(pop) ; 3
; [eval] !(end - start > 1)
; [eval] end - start > 1
; [eval] end - start
(push) ; 3
(set-option :timeout 10)
(assert (not (> (- end@7@01 start@6@01) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> (- end@7@01 start@6@01) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | !(end@7@01 - start@6@01 > 1) | live]
; [else-branch: 31 | end@7@01 - start@6@01 > 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 31 | !(end@7@01 - start@6@01 > 1)]
(assert (not (> (- end@7@01 start@6@01) 1)))
(declare-const $k@147@01 $Perm)
(assert ($Perm.isReadVar $k@147@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@9@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@147@01 $k@9@01))
(assert (<= $Perm.No (- $k@9@01 $k@147@01)))
(assert (<= (- $k@9@01 $k@147@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@9@01 $k@147@01)) (not (= a@4@01 $Ref.null))))
(declare-const $k@148@01 $Perm)
(assert ($Perm.isReadVar $k@148@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@10@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@148@01 $k@10@01))
(assert (<= $Perm.No (- $k@10@01 $k@148@01)))
(assert (<= (- $k@10@01 $k@148@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@10@01 $k@148@01)) (not (= b@5@01 $Ref.null))))
; [eval] start >= 0
; [eval] end <= |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] |a.array| == |b.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@149@01 Int)
(declare-const j@150@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 32 | !(i@149@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 32 | i@149@01 in [start@6@01..end@7@01] | live]
(push) ; 6
; [then-branch: 32 | !(i@149@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 32 | i@149@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 33 | !(j@150@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 33 | j@150@01 in [start@6@01..end@7@01] | live]
(push) ; 8
; [then-branch: 33 | !(j@150@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 33 | j@150@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01))
; [eval] i != j
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01))))
(push) ; 5
; [then-branch: 34 | i@149@01 in [start@6@01..end@7@01] && j@150@01 in [start@6@01..end@7@01] && i@149@01 != j@150@01 | live]
; [else-branch: 34 | !(i@149@01 in [start@6@01..end@7@01] && j@150@01 in [start@6@01..end@7@01] && i@149@01 != j@150@01) | live]
(push) ; 6
; [then-branch: 34 | i@149@01 in [start@6@01..end@7@01] && j@150@01 in [start@6@01..end@7@01] && i@149@01 != j@150@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
    (not (= i@149@01 j@150@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@149@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@149@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= j@150@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@150@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 34 | !(i@149@01 in [start@6@01..end@7@01] && j@150@01 in [start@6@01..end@7@01] && i@149@01 != j@150@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
      (not (= i@149@01 j@150@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
      (not (= i@149@01 j@150@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
    (not (= i@149@01 j@150@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
        (not (= i@149@01 j@150@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
      (not (= i@149@01 j@150@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@149@01 Int) (j@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
        (not (= i@149@01 j@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
            (not (= i@149@01 j@150@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@149@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@150@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@149@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@149@01 Int) (j@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
        (not (= i@149@01 j@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
            (not (= i@149@01 j@150@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@149@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@149@01 Int) (j@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
        (not (= i@149@01 j@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
            (not (= i@149@01 j@150@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@149@01 Int) (j@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
        (not (= i@149@01 j@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
            (not (= i@149@01 j@150@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@149@01 Int) (j@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
        (not (= i@149@01 j@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
            (not (= i@149@01 j@150@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@150@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@150@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@149@01 Int) (j@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
        (not (= i@149@01 j@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
            (not (= i@149@01 j@150@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@150@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(assert (forall ((i@149@01 Int) (j@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
        (not (= i@149@01 j@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
            (not (= i@149@01 j@150@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
          (not (= i@149@01 j@150@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111-aux|)))
(push) ; 4
(assert (not (forall ((i@149@01 Int) (j@150@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
        (not (= i@149@01 j@150@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i@149@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          j@150@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@149@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@150@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@149@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@150@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@149@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@150@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@150@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@150@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@150@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@149@01 Int) (j@150@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@149@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@150@01)
        (not (= i@149@01 j@150@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i@149@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          j@150@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@149@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@150@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@149@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@150@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@150@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@150@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@149@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    j@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@21@11@21@111|)))
(declare-const i@151@01 Int)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@151@01))
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@151@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@151@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@152@01 ($Ref) Int)
(declare-fun img@153@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@151@01 Int) (i2@151@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i1@151@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) i2@151@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i1@151@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i2@151@01)))
    (= i1@151@01 i2@151@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@151@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@151@01)
    (and
      (=
        (inv@152@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          i@151@01))
        i@151@01)
      (img@153@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
        i@151@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
    i@151@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@153@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@152@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
        (inv@152@01 r))
      r))
  :pattern ((inv@152@01 r))
  :qid |value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@151@01 Int)) (!
  (=
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01)) i@151@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
      i@151@01))
  
  :qid |quant-u-22264|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@154@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@152@01 r))
      (img@153@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          (inv@152@01 r))))
    ($Perm.min
      (ite
        (and
          (img@15@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@14@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@155@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@152@01 r))
      (img@153@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          (inv@152@01 r))))
    ($Perm.min
      (ite
        (and
          (img@20@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@154@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@15@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@14@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@154@01 r))
    $Perm.No)
  
  :qid |quant-u-22266|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@152@01 r))
      (img@153@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@8@01))
          (inv@152@01 r))))
    (= (- $Perm.Write (pTaken@154@01 r)) $Perm.No))
  
  :qid |quant-u-22267|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
(declare-const i@156@01 Int)
(declare-const j@157@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 35 | !(i@156@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 35 | i@156@01 in [start@6@01..end@7@01] | live]
(push) ; 6
; [then-branch: 35 | !(i@156@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 35 | i@156@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 36 | !(j@157@01 in [start@6@01..end@7@01]) | live]
; [else-branch: 36 | j@157@01 in [start@6@01..end@7@01] | live]
(push) ; 8
; [then-branch: 36 | !(j@157@01 in [start@6@01..end@7@01])]
(assert (not (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 36 | j@157@01 in [start@6@01..end@7@01]]
(assert (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01))
; [eval] i != j
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01))))))
(assert (or
  (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
  (not (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01))))
(push) ; 5
; [then-branch: 37 | i@156@01 in [start@6@01..end@7@01] && j@157@01 in [start@6@01..end@7@01] && i@156@01 != j@157@01 | live]
; [else-branch: 37 | !(i@156@01 in [start@6@01..end@7@01] && j@157@01 in [start@6@01..end@7@01] && i@156@01 != j@157@01) | live]
(push) ; 6
; [then-branch: 37 | i@156@01 in [start@6@01..end@7@01] && j@157@01 in [start@6@01..end@7@01] && i@156@01 != j@157@01]
(assert (and
  (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
    (not (= i@156@01 j@157@01)))))
; [eval] b.array[i] != b.array[j]
; [eval] b.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@156@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  i@156@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b.array[j]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= j@157@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  j@157@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 37 | !(i@156@01 in [start@6@01..end@7@01] && j@157@01 in [start@6@01..end@7@01] && i@156@01 != j@157@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
      (not (= i@156@01 j@157@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
      (not (= i@156@01 j@157@01))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
    (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
    (not (= i@156@01 j@157@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
        (not (= i@156@01 j@157@01)))))
  (and
    (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
      (not (= i@156@01 j@157@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@156@01 Int) (j@157@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
        (not (= i@156@01 j@157@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
            (not (= i@156@01 j@157@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@156@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@157@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@156@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@157@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@156@01 Int) (j@157@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
        (not (= i@156@01 j@157@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
            (not (= i@156@01 j@157@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@156@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@157@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@156@01 Int) (j@157@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
        (not (= i@156@01 j@157@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
            (not (= i@156@01 j@157@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@156@01 Int) (j@157@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
        (not (= i@156@01 j@157@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
            (not (= i@156@01 j@157@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@156@01 Int) (j@157@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
        (not (= i@156@01 j@157@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
            (not (= i@156@01 j@157@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@157@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@157@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@156@01 Int) (j@157@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
        (not (= i@156@01 j@157@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
            (not (= i@156@01 j@157@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@157@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(assert (forall ((i@156@01 Int) (j@157@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (or
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)))))
    (or
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (not (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
        (not (= i@156@01 j@157@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
          (and
            (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
            (not (= i@156@01 j@157@01)))))
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
        (and
          (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
          (not (= i@156@01 j@157@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111-aux|)))
(push) ; 4
(assert (not (forall ((i@156@01 Int) (j@157@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
        (not (= i@156@01 j@157@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i@156@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          j@157@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@156@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@157@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@156@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@157@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@156@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@157@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@157@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@157@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@157@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@156@01 Int) (j@157@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i@156@01)
      (and
        (Seq_contains (Seq_range start@6@01 end@7@01) j@157@01)
        (not (= i@156@01 j@157@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i@156@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          j@157@01))))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@156@01) (Seq_contains
    (Seq_range start@6@01 end@7@01)
    j@157@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@156@01) (Seq_contains_trigger
    (Seq_range start@6@01 end@7@01)
    j@157@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :pattern ((Seq_contains (Seq_range start@6@01 end@7@01) j@157@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01))
  :pattern ((Seq_contains_trigger (Seq_range start@6@01 end@7@01) j@157@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@156@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    j@157@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@23@11@23@111|)))
(declare-const i@158@01 Int)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@6@01 end@7@01) i@158@01))
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@158@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@158@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@159@01 ($Ref) Int)
(declare-fun img@160@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@158@01 Int) (i2@158@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) i1@158@01)
      (Seq_contains (Seq_range start@6@01 end@7@01) i2@158@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i1@158@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i2@158@01)))
    (= i1@158@01 i2@158@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@158@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@6@01 end@7@01) i@158@01)
    (and
      (=
        (inv@159@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          i@158@01))
        i@158@01)
      (img@160@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
        i@158@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
    i@158@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@160@01 r)
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@159@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
        (inv@159@01 r))
      r))
  :pattern ((inv@159@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@161@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@159@01 r))
      (img@160@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          (inv@159@01 r))))
    ($Perm.min
      (ite
        (and
          (img@20@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
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
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@20@01 r)
          (Seq_contains (Seq_range start@6@01 end@7@01) (inv@19@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@161@01 r))
    $Perm.No)
  
  :qid |quant-u-22270|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@6@01 end@7@01) (inv@159@01 r))
      (img@160@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@8@01)))
          (inv@159@01 r))))
    (= (- $Perm.Write (pTaken@161@01 r)) $Perm.No))
  
  :qid |quant-u-22271|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] a.array == old(a.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] b.array == old(b.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(b.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 31 | end@7@01 - start@6@01 > 1]
(assert (> (- end@7@01 start@6@01) 1))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- merge ----------
(declare-const a@162@01 $Ref)
(declare-const b@163@01 $Ref)
(declare-const start@164@01 Int)
(declare-const middle@165@01 Int)
(declare-const end@166@01 Int)
(declare-const a@167@01 $Ref)
(declare-const b@168@01 $Ref)
(declare-const start@169@01 Int)
(declare-const middle@170@01 Int)
(declare-const end@171@01 Int)
(push) ; 1
(declare-const $t@172@01 $Snap)
(assert (= $t@172@01 ($Snap.combine ($Snap.first $t@172@01) ($Snap.second $t@172@01))))
(declare-const $k@173@01 $Perm)
(assert ($Perm.isReadVar $k@173@01))
(assert (<= $Perm.No $k@173@01))
(assert (<= $k@173@01 $Perm.Write))
(assert (=> (< $Perm.No $k@173@01) (not (= a@167@01 $Ref.null))))
(assert (=
  ($Snap.second $t@172@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@172@01))
    ($Snap.second ($Snap.second $t@172@01)))))
(declare-const $k@174@01 $Perm)
(assert ($Perm.isReadVar $k@174@01))
(push) ; 2
(set-option :timeout 10)
(assert (not (= a@167@01 b@168@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No $k@174@01))
(assert (<= $k@174@01 $Perm.Write))
(assert (=> (< $Perm.No $k@174@01) (not (= b@168@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@172@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@172@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@172@01))) $Snap.unit))
; [eval] 0 <= start
(assert (<= 0 start@169@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@172@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@172@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@172@01))))
  $Snap.unit))
; [eval] end <= |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<=
  end@171@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))
  $Snap.unit))
; [eval] |b.array| == |a.array|
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01))))
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))
  $Snap.unit))
; [eval] start < middle
(assert (< start@169@01 middle@170@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))))
  $Snap.unit))
; [eval] middle < end
(assert (< middle@170@01 end@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@175@01 Int)
(declare-const j@176@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 3
; [then-branch: 38 | !(i@175@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 38 | i@175@01 in [start@169@01..end@171@01] | live]
(push) ; 4
; [then-branch: 38 | !(i@175@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 38 | i@175@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 39 | !(j@176@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 39 | j@176@01 in [start@169@01..end@171@01] | live]
(push) ; 6
; [then-branch: 39 | !(j@176@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 39 | j@176@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01))))))
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01))))
(push) ; 3
; [then-branch: 40 | i@175@01 in [start@169@01..end@171@01] && j@176@01 in [start@169@01..end@171@01] && i@175@01 != j@176@01 | live]
; [else-branch: 40 | !(i@175@01 in [start@169@01..end@171@01] && j@176@01 in [start@169@01..end@171@01] && i@175@01 != j@176@01) | live]
(push) ; 4
; [then-branch: 40 | i@175@01 in [start@169@01..end@171@01] && j@176@01 in [start@169@01..end@171@01] && i@175@01 != j@176@01]
(assert (and
  (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
    (not (= i@175@01 j@176@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@175@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@175@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@176@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  j@176@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 40 | !(i@175@01 in [start@169@01..end@171@01] && j@176@01 in [start@169@01..end@171@01] && i@175@01 != j@176@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
      (not (= i@175@01 j@176@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
      (not (= i@175@01 j@176@01))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
    (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
    (not (= i@175@01 j@176@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
        (not (= i@175@01 j@176@01)))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
      (not (= i@175@01 j@176@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@175@01 Int) (j@176@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
        (not (= i@175@01 j@176@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
            (not (= i@175@01 j@176@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@175@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@176@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@175@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@176@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@175@01 Int) (j@176@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
        (not (= i@175@01 j@176@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
            (not (= i@175@01 j@176@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@175@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@176@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@175@01 Int) (j@176@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
        (not (= i@175@01 j@176@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
            (not (= i@175@01 j@176@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@175@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    j@176@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@175@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    j@176@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@175@01 Int) (j@176@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
        (not (= i@175@01 j@176@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
            (not (= i@175@01 j@176@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@175@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    j@176@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@175@01 Int) (j@176@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
        (not (= i@175@01 j@176@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
            (not (= i@175@01 j@176@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@176@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    i@175@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@176@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    i@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@175@01 Int) (j@176@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
        (not (= i@175@01 j@176@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
            (not (= i@175@01 j@176@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@176@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    i@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@175@01 Int) (j@176@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
        (not (= i@175@01 j@176@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
            (not (= i@175@01 j@176@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
          (not (= i@175@01 j@176@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    i@175@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    j@176@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112-aux|)))
(assert (forall ((i@175@01 Int) (j@176@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@175@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@176@01)
        (not (= i@175@01 j@176@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          i@175@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          j@176@01))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@175@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@176@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@175@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@176@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@175@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    j@176@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@175@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    j@176@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@176@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    i@175@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@176@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    i@175@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    i@175@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    j@176@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@80@12@80@112|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))))))))
(declare-const k@177@01 Int)
(push) ; 2
; [eval] (k in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) k@177@01))
; [eval] a.array[k]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= k@177@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  k@177@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@178@01 ($Ref) Int)
(declare-fun img@179@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((k1@177@01 Int) (k2@177@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) k1@177@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) k2@177@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          k1@177@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          k2@177@01)))
    (= k1@177@01 k2@177@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@177@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) k@177@01)
    (and
      (=
        (inv@178@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          k@177@01))
        k@177@01)
      (img@179@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
        k@177@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    k@177@01))
  :qid |quant-u-22273|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@179@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@178@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
        (inv@178@01 r))
      r))
  :pattern ((inv@178@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@177@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) k@177@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          k@177@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    k@177@01))
  :qid |value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
(declare-const i@180@01 Int)
(declare-const j@181@01 Int)
(push) ; 2
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 3
; [then-branch: 41 | !(i@180@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 41 | i@180@01 in [start@169@01..end@171@01] | live]
(push) ; 4
; [then-branch: 41 | !(i@180@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 41 | i@180@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 42 | !(j@181@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 42 | j@181@01 in [start@169@01..end@171@01] | live]
(push) ; 6
; [then-branch: 42 | !(j@181@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 42 | j@181@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01))))))
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01))))
(push) ; 3
; [then-branch: 43 | i@180@01 in [start@169@01..end@171@01] && j@181@01 in [start@169@01..end@171@01] && i@180@01 != j@181@01 | live]
; [else-branch: 43 | !(i@180@01 in [start@169@01..end@171@01] && j@181@01 in [start@169@01..end@171@01] && i@180@01 != j@181@01) | live]
(push) ; 4
; [then-branch: 43 | i@180@01 in [start@169@01..end@171@01] && j@181@01 in [start@169@01..end@171@01] && i@180@01 != j@181@01]
(assert (and
  (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
    (not (= i@180@01 j@181@01)))))
; [eval] b.array[i] != b.array[j]
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@180@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@180@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] b.array[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@181@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  j@181@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 43 | !(i@180@01 in [start@169@01..end@171@01] && j@181@01 in [start@169@01..end@171@01] && i@180@01 != j@181@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
      (not (= i@180@01 j@181@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
      (not (= i@180@01 j@181@01))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
    (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
    (not (= i@180@01 j@181@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
        (not (= i@180@01 j@181@01)))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
      (not (= i@180@01 j@181@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@180@01 Int) (j@181@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
        (not (= i@180@01 j@181@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
            (not (= i@180@01 j@181@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@180@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@181@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@180@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@180@01 Int) (j@181@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
        (not (= i@180@01 j@181@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
            (not (= i@180@01 j@181@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@180@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@180@01 Int) (j@181@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
        (not (= i@180@01 j@181@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
            (not (= i@180@01 j@181@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@180@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    j@181@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@180@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    j@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@180@01 Int) (j@181@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
        (not (= i@180@01 j@181@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
            (not (= i@180@01 j@181@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@180@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    j@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@180@01 Int) (j@181@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
        (not (= i@180@01 j@181@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
            (not (= i@180@01 j@181@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@181@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    i@180@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@181@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    i@180@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@180@01 Int) (j@181@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
        (not (= i@180@01 j@181@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
            (not (= i@180@01 j@181@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@181@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    i@180@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@180@01 Int) (j@181@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
        (not (= i@180@01 j@181@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
            (not (= i@180@01 j@181@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
          (not (= i@180@01 j@181@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    i@180@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    j@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112-aux|)))
(assert (forall ((i@180@01 Int) (j@181@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@180@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@181@01)
        (not (= i@180@01 j@181@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          i@180@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          j@181@01))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@180@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@181@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@180@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@181@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@180@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    j@181@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@180@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    j@181@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@181@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    i@180@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@181@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    i@180@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    i@180@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    j@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@82@12@82@112|)))
(declare-const l@182@01 Int)
(push) ; 2
; [eval] (l in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) l@182@01))
; [eval] b.array[l]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= l@182@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  l@182@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@183@01 ($Ref) Int)
(declare-fun img@184@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((l1@182@01 Int) (l2@182@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) l1@182@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) l2@182@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          l1@182@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          l2@182@01)))
    (= l1@182@01 l2@182@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((l@182@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) l@182@01)
    (and
      (=
        (inv@183@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          l@182@01))
        l@182@01)
      (img@184@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
        l@182@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    l@182@01))
  :qid |quant-u-22275|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@184@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@183@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
        (inv@183@01 r))
      r))
  :pattern ((inv@183@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((l@182@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) l@182@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          l@182@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    l@182@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
        l@182@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
        k@177@01))
    (=
      (and
        (img@184@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@183@01 r)))
      (and
        (img@179@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@178@01 r)))))
  
  :qid |quant-u-22276|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@185@01 $Snap)
(assert (= $t@185@01 ($Snap.combine ($Snap.first $t@185@01) ($Snap.second $t@185@01))))
(declare-const $k@186@01 $Perm)
(assert ($Perm.isReadVar $k@186@01))
(assert (<= $Perm.No $k@186@01))
(assert (<= $k@186@01 $Perm.Write))
(assert (=> (< $Perm.No $k@186@01) (not (= a@167@01 $Ref.null))))
(assert (=
  ($Snap.second $t@185@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@185@01))
    ($Snap.second ($Snap.second $t@185@01)))))
(declare-const $k@187@01 $Perm)
(assert ($Perm.isReadVar $k@187@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (= a@167@01 b@168@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No $k@187@01))
(assert (<= $k@187@01 $Perm.Write))
(assert (=> (< $Perm.No $k@187@01) (not (= b@168@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@185@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@185@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@185@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@185@01))) $Snap.unit))
; [eval] a.array == old(a.array)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@186@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@185@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@185@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@185@01))))
  $Snap.unit))
; [eval] b.array == old(b.array)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@187@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(b.array)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@188@01 Int)
(declare-const j@189@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 4
; [then-branch: 44 | !(i@188@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 44 | i@188@01 in [start@169@01..end@171@01] | live]
(push) ; 5
; [then-branch: 44 | !(i@188@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 44 | i@188@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 45 | !(j@189@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 45 | j@189@01 in [start@169@01..end@171@01] | live]
(push) ; 7
; [then-branch: 45 | !(j@189@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 45 | j@189@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01))))))
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01))))
(push) ; 4
; [then-branch: 46 | i@188@01 in [start@169@01..end@171@01] && j@189@01 in [start@169@01..end@171@01] && i@188@01 != j@189@01 | live]
; [else-branch: 46 | !(i@188@01 in [start@169@01..end@171@01] && j@189@01 in [start@169@01..end@171@01] && i@188@01 != j@189@01) | live]
(push) ; 5
; [then-branch: 46 | i@188@01 in [start@169@01..end@171@01] && j@189@01 in [start@169@01..end@171@01] && i@188@01 != j@189@01]
(assert (and
  (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
    (not (= i@188@01 j@189@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@186@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@188@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  i@188@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@186@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= j@189@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  j@189@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 46 | !(i@188@01 in [start@169@01..end@171@01] && j@189@01 in [start@169@01..end@171@01] && i@188@01 != j@189@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
      (not (= i@188@01 j@189@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
      (not (= i@188@01 j@189@01))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
    (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
    (not (= i@188@01 j@189@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
        (not (= i@188@01 j@189@01)))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
      (not (= i@188@01 j@189@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@188@01 Int) (j@189@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
        (not (= i@188@01 j@189@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
            (not (= i@188@01 j@189@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@188@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@189@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@188@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@188@01 Int) (j@189@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
        (not (= i@188@01 j@189@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
            (not (= i@188@01 j@189@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@188@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@188@01 Int) (j@189@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
        (not (= i@188@01 j@189@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
            (not (= i@188@01 j@189@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@188@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    j@189@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@188@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    j@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@188@01 Int) (j@189@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
        (not (= i@188@01 j@189@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
            (not (= i@188@01 j@189@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@188@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    j@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@188@01 Int) (j@189@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
        (not (= i@188@01 j@189@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
            (not (= i@188@01 j@189@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@189@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    i@188@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@189@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    i@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@188@01 Int) (j@189@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
        (not (= i@188@01 j@189@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
            (not (= i@188@01 j@189@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@189@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    i@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@188@01 Int) (j@189@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
        (not (= i@188@01 j@189@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
            (not (= i@188@01 j@189@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
          (not (= i@188@01 j@189@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    i@188@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    j@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@188@01 Int) (j@189@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@188@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@189@01)
        (not (= i@188@01 j@189@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
          i@188@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
          j@189@01))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@188@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@189@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@188@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@189@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@188@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    j@189@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@188@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    j@189@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@189@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    i@188@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@189@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    i@188@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    i@188@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    j@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))))))
(declare-const i@190@01 Int)
(push) ; 3
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@190@01))
; [eval] a.array[i]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@186@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@190@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  i@190@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@191@01 ($Ref) Int)
(declare-fun img@192@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@190@01 Int) (i2@190@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@190@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@190@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
          i1@190@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
          i2@190@01)))
    (= i1@190@01 i2@190@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@190@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@190@01)
    (and
      (=
        (inv@191@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
          i@190@01))
        i@190@01)
      (img@192@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
        i@190@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    i@190@01))
  :qid |quant-u-22278|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@192@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@191@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
        (inv@191@01 r))
      r))
  :pattern ((inv@191@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@190@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@190@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
          i@190@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
    i@190@01))
  :qid |value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
(declare-const i@193@01 Int)
(declare-const j@194@01 Int)
(push) ; 3
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 4
; [then-branch: 47 | !(i@193@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 47 | i@193@01 in [start@169@01..end@171@01] | live]
(push) ; 5
; [then-branch: 47 | !(i@193@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 47 | i@193@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 48 | !(j@194@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 48 | j@194@01 in [start@169@01..end@171@01] | live]
(push) ; 7
; [then-branch: 48 | !(j@194@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 48 | j@194@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01))))))
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01))))
(push) ; 4
; [then-branch: 49 | i@193@01 in [start@169@01..end@171@01] && j@194@01 in [start@169@01..end@171@01] && i@193@01 != j@194@01 | live]
; [else-branch: 49 | !(i@193@01 in [start@169@01..end@171@01] && j@194@01 in [start@169@01..end@171@01] && i@193@01 != j@194@01) | live]
(push) ; 5
; [then-branch: 49 | i@193@01 in [start@169@01..end@171@01] && j@194@01 in [start@169@01..end@171@01] && i@193@01 != j@194@01]
(assert (and
  (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
    (not (= i@193@01 j@194@01)))))
; [eval] b.array[i] != b.array[j]
; [eval] b.array[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@187@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@193@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  i@193@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] b.array[j]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@187@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= j@194@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  j@194@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 49 | !(i@193@01 in [start@169@01..end@171@01] && j@194@01 in [start@169@01..end@171@01] && i@193@01 != j@194@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
      (not (= i@193@01 j@194@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
      (not (= i@193@01 j@194@01))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
    (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
    (not (= i@193@01 j@194@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
        (not (= i@193@01 j@194@01)))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
      (not (= i@193@01 j@194@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@193@01 Int) (j@194@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
        (not (= i@193@01 j@194@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
            (not (= i@193@01 j@194@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@193@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@194@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@193@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@194@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@193@01 Int) (j@194@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
        (not (= i@193@01 j@194@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
            (not (= i@193@01 j@194@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@193@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@194@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@193@01 Int) (j@194@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
        (not (= i@193@01 j@194@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
            (not (= i@193@01 j@194@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@193@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    j@194@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@193@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    j@194@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@193@01 Int) (j@194@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
        (not (= i@193@01 j@194@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
            (not (= i@193@01 j@194@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@193@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    j@194@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@193@01 Int) (j@194@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
        (not (= i@193@01 j@194@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
            (not (= i@193@01 j@194@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@194@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    i@193@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@194@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    i@193@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@193@01 Int) (j@194@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
        (not (= i@193@01 j@194@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
            (not (= i@193@01 j@194@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@194@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    i@193@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@193@01 Int) (j@194@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
        (not (= i@193@01 j@194@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
            (not (= i@193@01 j@194@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
          (not (= i@193@01 j@194@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    i@193@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    j@194@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@193@01 Int) (j@194@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@193@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@194@01)
        (not (= i@193@01 j@194@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
          i@193@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
          j@194@01))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@193@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@194@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@193@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@194@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@193@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    j@194@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@193@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    j@194@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@194@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    i@193@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@194@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    i@193@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    i@193@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    j@194@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111|)))
(declare-const i@195@01 Int)
(push) ; 3
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@195@01))
; [eval] b.array[i]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@187@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@195@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  i@195@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@196@01 ($Ref) Int)
(declare-fun img@197@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@195@01 Int) (i2@195@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@195@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@195@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
          i1@195@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
          i2@195@01)))
    (= i1@195@01 i2@195@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@195@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@195@01)
    (and
      (=
        (inv@196@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
          i@195@01))
        i@195@01)
      (img@197@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
        i@195@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    i@195@01))
  :qid |quant-u-22280|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@197@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@196@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
        (inv@196@01 r))
      r))
  :pattern ((inv@196@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@195@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@195@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
          i@195@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
    i@195@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@185@01)))
        i@195@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@185@01))
        i@190@01))
    (=
      (and
        (img@197@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@196@01 r)))
      (and
        (img@192@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@191@01 r)))))
  
  :qid |quant-u-22281|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; var I: Int
(declare-const I@198@01 Int)
; [exec]
; var J: Int
(declare-const J@199@01 Int)
; [exec]
; var N: Int
(declare-const N@200@01 Int)
; [exec]
; I := start
; [exec]
; J := middle
; [exec]
; N := start
(declare-const I@201@01 Int)
(declare-const J@202@01 Int)
(declare-const N@203@01 Int)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@204@01 $Snap)
(assert (= $t@204@01 ($Snap.combine ($Snap.first $t@204@01) ($Snap.second $t@204@01))))
(declare-const $k@205@01 $Perm)
(assert ($Perm.isReadVar $k@205@01))
(assert (<= $Perm.No $k@205@01))
(assert (<= $k@205@01 $Perm.Write))
(assert (=> (< $Perm.No $k@205@01) (not (= a@167@01 $Ref.null))))
(assert (=
  ($Snap.second $t@204@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@204@01))
    ($Snap.second ($Snap.second $t@204@01)))))
(declare-const $k@206@01 $Perm)
(assert ($Perm.isReadVar $k@206@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (= a@167@01 b@168@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No $k@206@01))
(assert (<= $k@206@01 $Perm.Write))
(assert (=> (< $Perm.No $k@206@01) (not (= b@168@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@204@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@204@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@204@01))) $Snap.unit))
; [eval] 0 <= start
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@204@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@204@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@204@01))))
  $Snap.unit))
; [eval] end <= |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  end@171@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))
  $Snap.unit))
; [eval] N == I + J - middle
; [eval] I + J - middle
; [eval] I + J
(assert (= N@203@01 (- (+ I@201@01 J@202@01) middle@170@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))
  $Snap.unit))
; [eval] 0 <= start
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))
  $Snap.unit))
; [eval] start <= I
(assert (<= start@169@01 I@201@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))
  $Snap.unit))
; [eval] middle <= J
(assert (<= middle@170@01 J@202@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))
  $Snap.unit))
; [eval] J <= end
(assert (<= J@202@01 end@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))
  $Snap.unit))
; [eval] |a.array| == |b.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01)))
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))
  $Snap.unit))
; [eval] a.array == old(a.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))
  $Snap.unit))
; [eval] b.array == old(b.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(b.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))))))
(declare-const i@207@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@207@01))
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@207@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@207@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@208@01 ($Ref) Int)
(declare-fun img@209@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@207@01 Int) (i2@207@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@207@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@207@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i1@207@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i2@207@01)))
    (= i1@207@01 i2@207@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@207@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@207@01)
    (and
      (=
        (inv@208@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i@207@01))
        i@207@01)
      (img@209@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        i@207@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
    i@207@01))
  :qid |quant-u-22283|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@209@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        (inv@208@01 r))
      r))
  :pattern ((inv@208@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@207@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@207@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i@207@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
    i@207@01))
  :qid |value-permImpliesNonNull|)))
(declare-const i@210@01 Int)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@210@01))
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@210@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@210@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@211@01 ($Ref) Int)
(declare-fun img@212@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@210@01 Int) (i2@210@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@210@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@210@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i1@210@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i2@210@01)))
    (= i1@210@01 i2@210@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@210@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@210@01)
    (and
      (=
        (inv@211@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i@210@01))
        i@210@01)
      (img@212@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        i@210@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
    i@210@01))
  :qid |quant-u-22285|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@212@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        (inv@211@01 r))
      r))
  :pattern ((inv@211@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@210@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@210@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i@210@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
    i@210@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        i@210@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        i@207@01))
    (=
      (and
        (img@212@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
      (and
        (img@209@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))))
  
  :qid |quant-u-22286|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; Loop head block: Establish invariant
(declare-const $k@213@01 $Perm)
(assert ($Perm.isReadVar $k@213@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@173@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@213@01 $k@173@01))
(assert (<= $Perm.No (- $k@173@01 $k@213@01)))
(assert (<= (- $k@173@01 $k@213@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@173@01 $k@213@01)) (not (= a@167@01 $Ref.null))))
(declare-const $k@214@01 $Perm)
(assert ($Perm.isReadVar $k@214@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@174@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@214@01 $k@174@01))
(assert (<= $Perm.No (- $k@174@01 $k@214@01)))
(assert (<= (- $k@174@01 $k@214@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@174@01 $k@214@01)) (not (= b@168@01 $Ref.null))))
; [eval] 0 <= start
; [eval] end <= |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] N == I + J - middle
; [eval] I + J - middle
; [eval] I + J
(set-option :timeout 0)
(push) ; 4
(assert (not (= start@169@01 (- (+ start@169@01 middle@170@01) middle@170@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= start@169@01 (- (+ start@169@01 middle@170@01) middle@170@01)))
; [eval] 0 <= start
; [eval] start <= I
; [eval] middle <= J
; [eval] J <= end
(push) ; 4
(assert (not (<= middle@170@01 end@171@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= middle@170@01 end@171@01))
; [eval] |a.array| == |b.array|
; [eval] |a.array|
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (=
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01)))
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01)))
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01))))))
; [eval] a.array == old(a.array)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] b.array == old(b.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(b.array)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const i@215@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@215@01))
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@215@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@215@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@216@01 ($Ref) Int)
(declare-fun img@217@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@215@01 Int) (i2@215@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@215@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@215@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          i1@215@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          i2@215@01)))
    (= i1@215@01 i2@215@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@215@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@215@01)
    (and
      (=
        (inv@216@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          i@215@01))
        i@215@01)
      (img@217@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
        i@215@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
    i@215@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@217@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@216@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
        (inv@216@01 r))
      r))
  :pattern ((inv@216@01 r))
  :qid |value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@215@01 Int)) (!
  (=
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01)) i@215@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
      i@215@01))
  
  :qid |quant-u-22288|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@218@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@216@01 r))
      (img@217@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          (inv@216@01 r))))
    ($Perm.min
      (ite
        (and
          (img@179@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@178@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@219@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@216@01 r))
      (img@217@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          (inv@216@01 r))))
    ($Perm.min
      (ite
        (and
          (img@184@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@183@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@218@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@179@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@178@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@218@01 r))
    $Perm.No)
  
  :qid |quant-u-22290|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@216@01 r))
      (img@217@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))
          (inv@216@01 r))))
    (= (- $Perm.Write (pTaken@218@01 r)) $Perm.No))
  
  :qid |quant-u-22291|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@220@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@220@01))
; [eval] b.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@220@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@220@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@221@01 ($Ref) Int)
(declare-fun img@222@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@220@01 Int) (i2@220@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@220@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@220@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          i1@220@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          i2@220@01)))
    (= i1@220@01 i2@220@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@220@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@220@01)
    (and
      (=
        (inv@221@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          i@220@01))
        i@220@01)
      (img@222@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
        i@220@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
    i@220@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@221@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
        (inv@221@01 r))
      r))
  :pattern ((inv@221@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@223@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@221@01 r))
      (img@222@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          (inv@221@01 r))))
    ($Perm.min
      (ite
        (and
          (img@184@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@183@01 r)))
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
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@184@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@183@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@223@01 r))
    $Perm.No)
  
  :qid |quant-u-22294|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@221@01 r))
      (img@222@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))
          (inv@221@01 r))))
    (= (- $Perm.Write (pTaken@223@01 r)) $Perm.No))
  
  :qid |quant-u-22295|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Loop head block: Execute statements of loop head block (in invariant state)
(set-option :timeout 0)
(push) ; 4
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@212@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        (inv@211@01 r))
      r))
  :pattern ((inv@211@01 r))
  :qid |value-fctOfInv|)))
(assert (forall ((i@210@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@210@01)
    (and
      (=
        (inv@211@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i@210@01))
        i@210@01)
      (img@212@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        i@210@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
    i@210@01))
  :qid |quant-u-22285|)))
(assert (forall ((i@210@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@210@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i@210@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
    i@210@01))
  :qid |value-permImpliesNonNull|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@209@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        (inv@208@01 r))
      r))
  :pattern ((inv@208@01 r))
  :qid |value-fctOfInv|)))
(assert (forall ((i@207@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@207@01)
    (and
      (=
        (inv@208@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i@207@01))
        i@207@01)
      (img@209@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        i@207@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
    i@207@01))
  :qid |quant-u-22283|)))
(assert (forall ((i@207@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@207@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i@207@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
    i@207@01))
  :qid |value-permImpliesNonNull|)))
(assert ($Perm.isReadVar $k@205@01))
(assert ($Perm.isReadVar $k@206@01))
(assert (= $t@204@01 ($Snap.combine ($Snap.first $t@204@01) ($Snap.second $t@204@01))))
(assert (<= $Perm.No $k@205@01))
(assert (<= $k@205@01 $Perm.Write))
(assert (=> (< $Perm.No $k@205@01) (not (= a@167@01 $Ref.null))))
(assert (=
  ($Snap.second $t@204@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@204@01))
    ($Snap.second ($Snap.second $t@204@01)))))
(assert (<= $Perm.No $k@206@01))
(assert (<= $k@206@01 $Perm.Write))
(assert (=> (< $Perm.No $k@206@01) (not (= b@168@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@204@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@204@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@204@01))) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@204@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@204@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@204@01))))
  $Snap.unit))
(assert (<=
  end@171@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))
  $Snap.unit))
(assert (= N@203@01 (- (+ I@201@01 J@202@01) middle@170@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))
  $Snap.unit))
(assert (<= start@169@01 I@201@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))
  $Snap.unit))
(assert (<= middle@170@01 J@202@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))
  $Snap.unit))
(assert (<= J@202@01 end@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))
  $Snap.unit))
(assert (=
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01)))
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))
  $Snap.unit))
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))
  $Snap.unit))
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01))))))))))))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 5
; [eval] N < end
(pop) ; 5
(push) ; 5
; [eval] !(N < end)
; [eval] N < end
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] N < end
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< N@203@01 end@171@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< N@203@01 end@171@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 50 | N@203@01 < end@171@01 | live]
; [else-branch: 50 | !(N@203@01 < end@171@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 50 | N@203@01 < end@171@01]
(assert (< N@203@01 end@171@01))
; [eval] J == end || a.array[I].value < a.array[J].value
; [eval] J == end
(push) ; 6
; [then-branch: 51 | J@202@01 == end@171@01 | live]
; [else-branch: 51 | J@202@01 != end@171@01 | live]
(push) ; 7
; [then-branch: 51 | J@202@01 == end@171@01]
(assert (= J@202@01 end@171@01))
(pop) ; 7
(push) ; 7
; [else-branch: 51 | J@202@01 != end@171@01]
(assert (not (= J@202@01 end@171@01)))
; [eval] a.array[I].value < a.array[J].value
; [eval] a.array[I]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= I@201@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  I@201@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@224@01 $FVF<value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@209@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
    (=
      ($FVF.lookup_value (as sm@224@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@224@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@212@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
    (=
      ($FVF.lookup_value (as sm@224@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@224@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@225@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@225@01  $FPM) r)
    (+
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_value (as pm@225@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 8
(assert (not (<
  $Perm.No
  ($FVF.perm_value (as pm@225@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
    I@201@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[J]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= J@202@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  J@202@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@209@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
      (=
        ($FVF.lookup_value (as sm@224@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@224@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@212@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
      (=
        ($FVF.lookup_value (as sm@224@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@224@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
    :qid |qp.fvfValDef1|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@209@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          J@202@01))
        (Seq_contains
          (Seq_range start@169@01 end@171@01)
          (inv@208@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
            J@202@01))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@212@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          J@202@01))
        (Seq_contains
          (Seq_range start@169@01 end@171@01)
          (inv@211@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
            J@202@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@209@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
    (=
      ($FVF.lookup_value (as sm@224@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@224@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@212@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
    (=
      ($FVF.lookup_value (as sm@224@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@224@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@225@01  $FPM) r)
    (+
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_value (as pm@225@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(assert (or (not (= J@202@01 end@171@01)) (= J@202@01 end@171@01)))
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (or
    (= J@202@01 end@171@01)
    (<
      ($FVF.lookup_value (as sm@224@01  $FVF<value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        I@201@01))
      ($FVF.lookup_value (as sm@224@01  $FVF<value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        J@202@01)))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (or
  (= J@202@01 end@171@01)
  (<
    ($FVF.lookup_value (as sm@224@01  $FVF<value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
      I@201@01))
    ($FVF.lookup_value (as sm@224@01  $FVF<value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
      J@202@01))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 52 | J@202@01 == end@171@01 || Lookup(value, sm@224@01, First:($t@204@01)[I@201@01]) < Lookup(value, sm@224@01, First:($t@204@01)[J@202@01]) | live]
; [else-branch: 52 | !(J@202@01 == end@171@01 || Lookup(value, sm@224@01, First:($t@204@01)[I@201@01]) < Lookup(value, sm@224@01, First:($t@204@01)[J@202@01])) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 52 | J@202@01 == end@171@01 || Lookup(value, sm@224@01, First:($t@204@01)[I@201@01]) < Lookup(value, sm@224@01, First:($t@204@01)[J@202@01])]
(assert (or
  (= J@202@01 end@171@01)
  (<
    ($FVF.lookup_value (as sm@224@01  $FVF<value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
      I@201@01))
    ($FVF.lookup_value (as sm@224@01  $FVF<value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
      J@202@01)))))
; [exec]
; b.array[N].value := a.array[I].value
; [eval] b.array[N]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= N@203@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  N@203@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[I]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= I@201@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  I@201@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@209@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
      (=
        ($FVF.lookup_value (as sm@224@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@224@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@212@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
      (=
        ($FVF.lookup_value (as sm@224@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@224@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
    :qid |qp.fvfValDef1|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@209@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          I@201@01))
        (Seq_contains
          (Seq_range start@169@01 end@171@01)
          (inv@208@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
            I@201@01))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@212@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          I@201@01))
        (Seq_contains
          (Seq_range start@169@01 end@171@01)
          (inv@211@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
            I@201@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@226@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        N@203@01))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@227@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        N@203@01))
    ($Perm.min
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@226@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@226@01 r))
    $Perm.No)
  
  :qid |quant-u-22297|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@226@01 r) $Perm.No)
  
  :qid |quant-u-22298|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        N@203@01))
    (= (- $Perm.Write (pTaken@226@01 r)) $Perm.No))
  
  :qid |quant-u-22299|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@228@01 $FVF<value>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_value (as sm@228@01  $FVF<value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
    N@203@01))
  ($FVF.lookup_value (as sm@224@01  $FVF<value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
    I@201@01))))
; [exec]
; I := I + 1
; [eval] I + 1
(declare-const I@229@01 Int)
(assert (= I@229@01 (+ I@201@01 1)))
; [exec]
; N := N + 1
; [eval] N + 1
(declare-const N@230@01 Int)
(assert (= N@230@01 (+ N@203@01 1)))
; Loop head block: Re-establish invariant
(declare-const $k@231@01 $Perm)
(assert ($Perm.isReadVar $k@231@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= $k@205@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< $k@231@01 $k@205@01))
(assert (<= $Perm.No (- $k@205@01 $k@231@01)))
(assert (<= (- $k@205@01 $k@231@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@205@01 $k@231@01)) (not (= a@167@01 $Ref.null))))
(declare-const $k@232@01 $Perm)
(assert ($Perm.isReadVar $k@232@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= $k@206@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< $k@232@01 $k@206@01))
(assert (<= $Perm.No (- $k@206@01 $k@232@01)))
(assert (<= (- $k@206@01 $k@232@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@206@01 $k@232@01)) (not (= b@168@01 $Ref.null))))
; [eval] 0 <= start
; [eval] end <= |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] N == I + J - middle
; [eval] I + J - middle
; [eval] I + J
(set-option :timeout 0)
(push) ; 7
(assert (not (= N@230@01 (- (+ I@229@01 J@202@01) middle@170@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (= N@230@01 (- (+ I@229@01 J@202@01) middle@170@01)))
; [eval] 0 <= start
; [eval] start <= I
(push) ; 7
(assert (not (<= start@169@01 I@229@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= start@169@01 I@229@01))
; [eval] middle <= J
; [eval] J <= end
; [eval] |a.array| == |b.array|
; [eval] |a.array|
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a.array == old(a.array)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b.array == old(b.array)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(b.array)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const i@233@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@233@01))
; [eval] a.array[i]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i@233@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  i@233@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@234@01 ($Ref) Int)
(declare-fun img@235@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((i1@233@01 Int) (i2@233@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@233@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@233@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i1@233@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i2@233@01)))
    (= i1@233@01 i2@233@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@233@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@233@01)
    (and
      (=
        (inv@234@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i@233@01))
        i@233@01)
      (img@235@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        i@233@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
    i@233@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@235@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@234@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        (inv@234@01 r))
      r))
  :pattern ((inv@234@01 r))
  :qid |value-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((i@233@01 Int)) (!
  (=
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01)) i@233@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
      i@233@01))
  
  :qid |quant-u-22301|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@236@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@234@01 r))
      (img@235@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          (inv@234@01 r))))
    ($Perm.min
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@237@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@234@01 r))
      (img@235@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          (inv@234@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
            N@203@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@236@01 r)))
    $Perm.No))
(define-fun pTaken@238@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@234@01 r))
      (img@235@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          (inv@234@01 r))))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        (- $Perm.Write (pTaken@226@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@236@01 r)) (pTaken@237@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@236@01 r))
    $Perm.No)
  
  :qid |quant-u-22303|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@234@01 r))
      (img@235@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          (inv@234@01 r))))
    (= (- $Perm.Write (pTaken@236@01 r)) $Perm.No))
  
  :qid |quant-u-22304|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@239@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@239@01))
; [eval] b.array[i]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i@239@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  i@239@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@240@01 ($Ref) Int)
(declare-fun img@241@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((i1@239@01 Int) (i2@239@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@239@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@239@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i1@239@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i2@239@01)))
    (= i1@239@01 i2@239@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@239@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@239@01)
    (and
      (=
        (inv@240@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i@239@01))
        i@239@01)
      (img@241@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        i@239@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
    i@239@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@241@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@240@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        (inv@240@01 r))
      r))
  :pattern ((inv@240@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@242@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@240@01 r))
      (img@241@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          (inv@240@01 r))))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        (- $Perm.Write (pTaken@226@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@243@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@240@01 r))
      (img@241@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          (inv@240@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
            N@203@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@242@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        (- $Perm.Write (pTaken@226@01 r))
        $Perm.No)
      (pTaken@242@01 r))
    $Perm.No)
  
  :qid |quant-u-22307|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@240@01 r))
      (img@241@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          (inv@240@01 r))))
    (= (- $Perm.Write (pTaken@242@01 r)) $Perm.No))
  
  :qid |quant-u-22308|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          N@203@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          N@203@01))
      $Perm.Write
      $Perm.No)
    (pTaken@243@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
      N@203@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@240@01 r))
      (img@241@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          (inv@240@01 r))))
    (= (- (- $Perm.Write (pTaken@242@01 r)) (pTaken@243@01 r)) $Perm.No))
  
  :qid |quant-u-22310|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 52 | !(J@202@01 == end@171@01 || Lookup(value, sm@224@01, First:($t@204@01)[I@201@01]) < Lookup(value, sm@224@01, First:($t@204@01)[J@202@01]))]
(assert (not
  (or
    (= J@202@01 end@171@01)
    (<
      ($FVF.lookup_value (as sm@224@01  $FVF<value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        I@201@01))
      ($FVF.lookup_value (as sm@224@01  $FVF<value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        J@202@01))))))
(pop) ; 6
; [eval] !(J == end || a.array[I].value < a.array[J].value)
; [eval] J == end || a.array[I].value < a.array[J].value
; [eval] J == end
(push) ; 6
; [then-branch: 53 | J@202@01 == end@171@01 | live]
; [else-branch: 53 | J@202@01 != end@171@01 | live]
(push) ; 7
; [then-branch: 53 | J@202@01 == end@171@01]
(assert (= J@202@01 end@171@01))
(pop) ; 7
(push) ; 7
; [else-branch: 53 | J@202@01 != end@171@01]
(assert (not (= J@202@01 end@171@01)))
; [eval] a.array[I].value < a.array[J].value
; [eval] a.array[I]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= I@201@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  I@201@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@244@01 $FVF<value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@209@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
    (=
      ($FVF.lookup_value (as sm@244@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@244@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@212@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
    (=
      ($FVF.lookup_value (as sm@244@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@244@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
  :qid |qp.fvfValDef4|)))
(declare-const pm@245@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@245@01  $FPM) r)
    (+
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_value (as pm@245@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(push) ; 8
(assert (not (<
  $Perm.No
  ($FVF.perm_value (as pm@245@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
    I@201@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[J]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= J@202@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  J@202@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@209@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
      (=
        ($FVF.lookup_value (as sm@244@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@244@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@212@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
      (=
        ($FVF.lookup_value (as sm@244@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@244@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
    :qid |qp.fvfValDef4|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@209@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          J@202@01))
        (Seq_contains
          (Seq_range start@169@01 end@171@01)
          (inv@208@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
            J@202@01))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@212@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          J@202@01))
        (Seq_contains
          (Seq_range start@169@01 end@171@01)
          (inv@211@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
            J@202@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@209@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
    (=
      ($FVF.lookup_value (as sm@244@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@244@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@212@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
    (=
      ($FVF.lookup_value (as sm@244@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@244@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@245@01  $FPM) r)
    (+
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_value (as pm@245@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(push) ; 6
(set-option :timeout 10)
(assert (not (or
  (= J@202@01 end@171@01)
  (<
    ($FVF.lookup_value (as sm@244@01  $FVF<value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
      I@201@01))
    ($FVF.lookup_value (as sm@244@01  $FVF<value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
      J@202@01))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (or
    (= J@202@01 end@171@01)
    (<
      ($FVF.lookup_value (as sm@244@01  $FVF<value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        I@201@01))
      ($FVF.lookup_value (as sm@244@01  $FVF<value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        J@202@01)))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | !(J@202@01 == end@171@01 || Lookup(value, sm@244@01, First:($t@204@01)[I@201@01]) < Lookup(value, sm@244@01, First:($t@204@01)[J@202@01])) | live]
; [else-branch: 54 | J@202@01 == end@171@01 || Lookup(value, sm@244@01, First:($t@204@01)[I@201@01]) < Lookup(value, sm@244@01, First:($t@204@01)[J@202@01]) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 54 | !(J@202@01 == end@171@01 || Lookup(value, sm@244@01, First:($t@204@01)[I@201@01]) < Lookup(value, sm@244@01, First:($t@204@01)[J@202@01]))]
(assert (not
  (or
    (= J@202@01 end@171@01)
    (<
      ($FVF.lookup_value (as sm@244@01  $FVF<value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        I@201@01))
      ($FVF.lookup_value (as sm@244@01  $FVF<value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        J@202@01))))))
; [exec]
; b.array[N].value := a.array[J].value
; [eval] b.array[N]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= N@203@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  N@203@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[J]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= J@202@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  J@202@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@209@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
      (=
        ($FVF.lookup_value (as sm@244@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@244@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@212@01 r)
        (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
      (=
        ($FVF.lookup_value (as sm@244@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@244@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@204@01)))))))))))))) r))
    :qid |qp.fvfValDef4|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@209@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          J@202@01))
        (Seq_contains
          (Seq_range start@169@01 end@171@01)
          (inv@208@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
            J@202@01))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@212@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          J@202@01))
        (Seq_contains
          (Seq_range start@169@01 end@171@01)
          (inv@211@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
            J@202@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@246@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        N@203@01))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@247@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        N@203@01))
    ($Perm.min
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@246@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@246@01 r))
    $Perm.No)
  
  :qid |quant-u-22312|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@246@01 r) $Perm.No)
  
  :qid |quant-u-22313|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        N@203@01))
    (= (- $Perm.Write (pTaken@246@01 r)) $Perm.No))
  
  :qid |quant-u-22314|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@248@01 $FVF<value>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_value (as sm@248@01  $FVF<value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
    N@203@01))
  ($FVF.lookup_value (as sm@244@01  $FVF<value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
    J@202@01))))
; [exec]
; J := J + 1
; [eval] J + 1
(declare-const J@249@01 Int)
(assert (= J@249@01 (+ J@202@01 1)))
; [exec]
; N := N + 1
; [eval] N + 1
(declare-const N@250@01 Int)
(assert (= N@250@01 (+ N@203@01 1)))
; Loop head block: Re-establish invariant
(declare-const $k@251@01 $Perm)
(assert ($Perm.isReadVar $k@251@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= $k@205@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< $k@251@01 $k@205@01))
(assert (<= $Perm.No (- $k@205@01 $k@251@01)))
(assert (<= (- $k@205@01 $k@251@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@205@01 $k@251@01)) (not (= a@167@01 $Ref.null))))
(declare-const $k@252@01 $Perm)
(assert ($Perm.isReadVar $k@252@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= $k@206@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< $k@252@01 $k@206@01))
(assert (<= $Perm.No (- $k@206@01 $k@252@01)))
(assert (<= (- $k@206@01 $k@252@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@206@01 $k@252@01)) (not (= b@168@01 $Ref.null))))
; [eval] 0 <= start
; [eval] end <= |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] N == I + J - middle
; [eval] I + J - middle
; [eval] I + J
(set-option :timeout 0)
(push) ; 7
(assert (not (= N@250@01 (- (+ I@201@01 J@249@01) middle@170@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (= N@250@01 (- (+ I@201@01 J@249@01) middle@170@01)))
; [eval] 0 <= start
; [eval] start <= I
; [eval] middle <= J
(push) ; 7
(assert (not (<= middle@170@01 J@249@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= middle@170@01 J@249@01))
; [eval] J <= end
(push) ; 7
(assert (not (<= J@249@01 end@171@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= J@249@01 end@171@01))
; [eval] |a.array| == |b.array|
; [eval] |a.array|
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |b.array|
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a.array == old(a.array)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b.array == old(b.array)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(b.array)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const i@253@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@253@01))
; [eval] a.array[i]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i@253@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  i@253@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@254@01 ($Ref) Int)
(declare-fun img@255@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((i1@253@01 Int) (i2@253@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@253@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@253@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i1@253@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i2@253@01)))
    (= i1@253@01 i2@253@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@253@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@253@01)
    (and
      (=
        (inv@254@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          i@253@01))
        i@253@01)
      (img@255@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        i@253@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
    i@253@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@255@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@254@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
        (inv@254@01 r))
      r))
  :pattern ((inv@254@01 r))
  :qid |value-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((i@253@01 Int)) (!
  (=
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01)) i@253@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
      i@253@01))
  
  :qid |quant-u-22316|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@256@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@254@01 r))
      (img@255@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          (inv@254@01 r))))
    ($Perm.min
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@257@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@254@01 r))
      (img@255@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          (inv@254@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
            N@203@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@256@01 r)))
    $Perm.No))
(define-fun pTaken@258@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@254@01 r))
      (img@255@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          (inv@254@01 r))))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        (- $Perm.Write (pTaken@246@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@256@01 r)) (pTaken@257@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@256@01 r))
    $Perm.No)
  
  :qid |quant-u-22318|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@254@01 r))
      (img@255@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
          (inv@254@01 r))))
    (= (- $Perm.Write (pTaken@256@01 r)) $Perm.No))
  
  :qid |quant-u-22319|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@259@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@259@01))
; [eval] b.array[i]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i@259@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  i@259@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@260@01 ($Ref) Int)
(declare-fun img@261@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((i1@259@01 Int) (i2@259@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@259@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@259@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i1@259@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i2@259@01)))
    (= i1@259@01 i2@259@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@259@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@259@01)
    (and
      (=
        (inv@260@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          i@259@01))
        i@259@01)
      (img@261@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        i@259@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
    i@259@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@261@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@260@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
        (inv@260@01 r))
      r))
  :pattern ((inv@260@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@262@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@260@01 r))
      (img@261@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          (inv@260@01 r))))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        (- $Perm.Write (pTaken@246@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@263@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@260@01 r))
      (img@261@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          (inv@260@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
            N@203@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@262@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        (- $Perm.Write (pTaken@246@01 r))
        $Perm.No)
      (pTaken@262@01 r))
    $Perm.No)
  
  :qid |quant-u-22322|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@260@01 r))
      (img@261@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          (inv@260@01 r))))
    (= (- $Perm.Write (pTaken@262@01 r)) $Perm.No))
  
  :qid |quant-u-22323|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          N@203@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          N@203@01))
      $Perm.Write
      $Perm.No)
    (pTaken@263@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
      N@203@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@260@01 r))
      (img@261@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
          (inv@260@01 r))))
    (= (- (- $Perm.Write (pTaken@262@01 r)) (pTaken@263@01 r)) $Perm.No))
  
  :qid |quant-u-22325|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 54 | J@202@01 == end@171@01 || Lookup(value, sm@244@01, First:($t@204@01)[I@201@01]) < Lookup(value, sm@244@01, First:($t@204@01)[J@202@01])]
(assert (or
  (= J@202@01 end@171@01)
  (<
    ($FVF.lookup_value (as sm@244@01  $FVF<value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
      I@201@01))
    ($FVF.lookup_value (as sm@244@01  $FVF<value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))
      J@202@01)))))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 50 | !(N@203@01 < end@171@01)]
(assert (not (< N@203@01 end@171@01)))
(pop) ; 5
(declare-const $t@264@01 Seq<$Ref>)
(declare-const $t@265@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No $k@205@01)
    (Seq_equal
      $t@264@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01))))
  (=>
    (< $Perm.No (- $k@173@01 $k@213@01))
    (Seq_equal
      $t@264@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))))))
(assert (and
  (=>
    (< $Perm.No $k@206@01)
    (Seq_equal
      $t@265@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))))
  (=>
    (< $Perm.No (- $k@174@01 $k@214@01))
    (Seq_equal
      $t@265@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))))))
(assert (<= $Perm.No (+ $k@206@01 (- $k@174@01 $k@214@01))))
(assert (<= (+ $k@206@01 (- $k@174@01 $k@214@01)) $Perm.Write))
(assert (=>
  (< $Perm.No (+ $k@206@01 (- $k@174@01 $k@214@01)))
  (not (= b@168@01 $Ref.null))))
(assert (<= $Perm.No (+ $k@205@01 (- $k@173@01 $k@213@01))))
(assert (<= (+ $k@205@01 (- $k@173@01 $k@213@01)) $Perm.Write))
(assert (=>
  (< $Perm.No (+ $k@205@01 (- $k@173@01 $k@213@01)))
  (not (= a@167@01 $Ref.null))))
; [eval] !(N < end)
; [eval] N < end
(push) ; 5
(set-option :timeout 10)
(assert (not (< N@203@01 end@171@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< N@203@01 end@171@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | !(N@203@01 < end@171@01) | live]
; [else-branch: 55 | N@203@01 < end@171@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 55 | !(N@203@01 < end@171@01)]
(assert (not (< N@203@01 end@171@01)))
(declare-const $k@266@01 $Perm)
(assert ($Perm.isReadVar $k@266@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= (+ $k@205@01 (- $k@173@01 $k@213@01)) $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@266@01 (+ $k@205@01 (- $k@173@01 $k@213@01))))
(assert (<= $Perm.No (- (+ $k@205@01 (- $k@173@01 $k@213@01)) $k@266@01)))
(assert (<= (- (+ $k@205@01 (- $k@173@01 $k@213@01)) $k@266@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ $k@205@01 (- $k@173@01 $k@213@01)) $k@266@01))
  (not (= a@167@01 $Ref.null))))
(declare-const $k@267@01 $Perm)
(assert ($Perm.isReadVar $k@267@01))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= (+ $k@206@01 (- $k@174@01 $k@214@01)) $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@267@01 (+ $k@206@01 (- $k@174@01 $k@214@01))))
(assert (<= $Perm.No (- (+ $k@206@01 (- $k@174@01 $k@214@01)) $k@267@01)))
(assert (<= (- (+ $k@206@01 (- $k@174@01 $k@214@01)) $k@267@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ $k@206@01 (- $k@174@01 $k@214@01)) $k@267@01))
  (not (= b@168@01 $Ref.null))))
; [eval] a.array == old(a.array)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@205@01 (- $k@173@01 $k@213@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@173@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (Seq_equal $t@264@01 ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal $t@264@01 ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@172@01))))
; [eval] b.array == old(b.array)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@206@01 (- $k@174@01 $k@214@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(b.array)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@174@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (Seq_equal
  $t@265@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  $t@265@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@172@01)))))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@268@01 Int)
(declare-const j@269@01 Int)
(push) ; 6
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 56 | !(i@268@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 56 | i@268@01 in [start@169@01..end@171@01] | live]
(push) ; 8
; [then-branch: 56 | !(i@268@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 56 | i@268@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 9
; [then-branch: 57 | !(j@269@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 57 | j@269@01 in [start@169@01..end@171@01] | live]
(push) ; 10
; [then-branch: 57 | !(j@269@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 57 | j@269@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01))))))
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01))))
(push) ; 7
; [then-branch: 58 | i@268@01 in [start@169@01..end@171@01] && j@269@01 in [start@169@01..end@171@01] && i@268@01 != j@269@01 | live]
; [else-branch: 58 | !(i@268@01 in [start@169@01..end@171@01] && j@269@01 in [start@169@01..end@171@01] && i@268@01 != j@269@01) | live]
(push) ; 8
; [then-branch: 58 | i@268@01 in [start@169@01..end@171@01] && j@269@01 in [start@169@01..end@171@01] && i@268@01 != j@269@01]
(assert (and
  (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
    (not (= i@268@01 j@269@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@205@01 (- $k@173@01 $k@213@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= i@268@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i@268@01 (Seq_length $t@264@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@205@01 (- $k@173@01 $k@213@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= j@269@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< j@269@01 (Seq_length $t@264@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 58 | !(i@268@01 in [start@169@01..end@171@01] && j@269@01 in [start@169@01..end@171@01] && i@268@01 != j@269@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
      (not (= i@268@01 j@269@01))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
      (not (= i@268@01 j@269@01))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
    (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
    (not (= i@268@01 j@269@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
        (not (= i@268@01 j@269@01)))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
      (not (= i@268@01 j@269@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@268@01 Int) (j@269@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
        (not (= i@268@01 j@269@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
            (not (= i@268@01 j@269@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@268@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@269@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@268@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@269@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@268@01 Int) (j@269@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
        (not (= i@268@01 j@269@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
            (not (= i@268@01 j@269@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@268@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@269@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@268@01 Int) (j@269@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
        (not (= i@268@01 j@269@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
            (not (= i@268@01 j@269@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@268@01) (Seq_index
    $t@264@01
    j@269@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@268@01) (Seq_index
    $t@264@01
    j@269@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@268@01 Int) (j@269@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
        (not (= i@268@01 j@269@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
            (not (= i@268@01 j@269@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@268@01) (Seq_index
    $t@264@01
    j@269@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@268@01 Int) (j@269@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
        (not (= i@268@01 j@269@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
            (not (= i@268@01 j@269@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@269@01) (Seq_index
    $t@264@01
    i@268@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@269@01) (Seq_index
    $t@264@01
    i@268@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@268@01 Int) (j@269@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
        (not (= i@268@01 j@269@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
            (not (= i@268@01 j@269@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@269@01) (Seq_index
    $t@264@01
    i@268@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(assert (forall ((i@268@01 Int) (j@269@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
        (not (= i@268@01 j@269@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
            (not (= i@268@01 j@269@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
          (not (= i@268@01 j@269@01))))))
  :pattern ((Seq_index $t@264@01 i@268@01) (Seq_index $t@264@01 j@269@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111-aux|)))
(push) ; 6
(assert (not (forall ((i@268@01 Int) (j@269@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
        (not (= i@268@01 j@269@01))))
    (not (= (Seq_index $t@264@01 i@268@01) (Seq_index $t@264@01 j@269@01))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@268@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@269@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@268@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@269@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@268@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@269@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@268@01) (Seq_index
    $t@264@01
    j@269@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@268@01) (Seq_index
    $t@264@01
    j@269@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@268@01) (Seq_index
    $t@264@01
    j@269@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@269@01) (Seq_index
    $t@264@01
    i@268@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@269@01) (Seq_index
    $t@264@01
    i@268@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@269@01) (Seq_index
    $t@264@01
    i@268@01))
  :pattern ((Seq_index $t@264@01 i@268@01) (Seq_index $t@264@01 j@269@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@268@01 Int) (j@269@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@268@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@269@01)
        (not (= i@268@01 j@269@01))))
    (not (= (Seq_index $t@264@01 i@268@01) (Seq_index $t@264@01 j@269@01))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@268@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@269@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@268@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@269@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@268@01) (Seq_index
    $t@264@01
    j@269@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@268@01) (Seq_index
    $t@264@01
    j@269@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@269@01) (Seq_index
    $t@264@01
    i@268@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@269@01) (Seq_index
    $t@264@01
    i@268@01))
  :pattern ((Seq_index $t@264@01 i@268@01) (Seq_index $t@264@01 j@269@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@88@11@88@111|)))
(declare-const i@270@01 Int)
(push) ; 6
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@270@01))
; [eval] a.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@205@01 (- $k@173@01 $k@213@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@270@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@270@01 (Seq_length $t@264@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(declare-fun inv@271@01 ($Ref) Int)
(declare-fun img@272@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((i1@270@01 Int) (i2@270@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@270@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@270@01)
      (= (Seq_index $t@264@01 i1@270@01) (Seq_index $t@264@01 i2@270@01)))
    (= i1@270@01 i2@270@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@270@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@270@01)
    (and
      (= (inv@271@01 (Seq_index $t@264@01 i@270@01)) i@270@01)
      (img@272@01 (Seq_index $t@264@01 i@270@01))))
  :pattern ((Seq_index $t@264@01 i@270@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@272@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@271@01 r)))
    (= (Seq_index $t@264@01 (inv@271@01 r)) r))
  :pattern ((inv@271@01 r))
  :qid |value-fctOfInv|)))
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((i@270@01 Int)) (!
  (=
    (Seq_index $t@264@01 i@270@01)
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@204@01)) i@270@01))
  
  :qid |quant-u-22327|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((i@270@01 Int)) (!
  (=
    (Seq_index $t@264@01 i@270@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
      i@270@01))
  
  :qid |quant-u-22328|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@273@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@271@01 r))
      (img@272@01 r)
      (= r (Seq_index $t@264@01 (inv@271@01 r))))
    ($Perm.min
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@274@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@271@01 r))
      (img@272@01 r)
      (= r (Seq_index $t@264@01 (inv@271@01 r))))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@273@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@209@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@208@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@273@01 r))
    $Perm.No)
  
  :qid |quant-u-22330|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@271@01 r))
      (img@272@01 r)
      (= r (Seq_index $t@264@01 (inv@271@01 r))))
    (= (- $Perm.Write (pTaken@273@01 r)) $Perm.No))
  
  :qid |quant-u-22331|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), b.array[j] } { (j in [start..end)), b.array[i] } { b.array[i], b.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j])
(declare-const i@275@01 Int)
(declare-const j@276@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> b.array[i] != b.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 59 | !(i@275@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 59 | i@275@01 in [start@169@01..end@171@01] | live]
(push) ; 8
; [then-branch: 59 | !(i@275@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 59 | i@275@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 9
; [then-branch: 60 | !(j@276@01 in [start@169@01..end@171@01]) | live]
; [else-branch: 60 | j@276@01 in [start@169@01..end@171@01] | live]
(push) ; 10
; [then-branch: 60 | !(j@276@01 in [start@169@01..end@171@01])]
(assert (not (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 60 | j@276@01 in [start@169@01..end@171@01]]
(assert (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01))))))
(assert (or
  (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
  (not (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01))))
(push) ; 7
; [then-branch: 61 | i@275@01 in [start@169@01..end@171@01] && j@276@01 in [start@169@01..end@171@01] && i@275@01 != j@276@01 | live]
; [else-branch: 61 | !(i@275@01 in [start@169@01..end@171@01] && j@276@01 in [start@169@01..end@171@01] && i@275@01 != j@276@01) | live]
(push) ; 8
; [then-branch: 61 | i@275@01 in [start@169@01..end@171@01] && j@276@01 in [start@169@01..end@171@01] && i@275@01 != j@276@01]
(assert (and
  (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
    (not (= i@275@01 j@276@01)))))
; [eval] b.array[i] != b.array[j]
; [eval] b.array[i]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@206@01 (- $k@174@01 $k@214@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= i@275@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i@275@01 (Seq_length $t@265@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] b.array[j]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@206@01 (- $k@174@01 $k@214@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= j@276@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< j@276@01 (Seq_length $t@265@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 61 | !(i@275@01 in [start@169@01..end@171@01] && j@276@01 in [start@169@01..end@171@01] && i@275@01 != j@276@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
      (not (= i@275@01 j@276@01))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
      (not (= i@275@01 j@276@01))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
    (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
    (not (= i@275@01 j@276@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
        (not (= i@275@01 j@276@01)))))
  (and
    (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
      (not (= i@275@01 j@276@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@275@01 Int) (j@276@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
        (not (= i@275@01 j@276@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
            (not (= i@275@01 j@276@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@275@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@276@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@275@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@275@01 Int) (j@276@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
        (not (= i@275@01 j@276@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
            (not (= i@275@01 j@276@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@275@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@275@01 Int) (j@276@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
        (not (= i@275@01 j@276@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
            (not (= i@275@01 j@276@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@275@01) (Seq_index
    $t@265@01
    j@276@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@275@01) (Seq_index
    $t@265@01
    j@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@275@01 Int) (j@276@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
        (not (= i@275@01 j@276@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
            (not (= i@275@01 j@276@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@275@01) (Seq_index
    $t@265@01
    j@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@275@01 Int) (j@276@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
        (not (= i@275@01 j@276@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
            (not (= i@275@01 j@276@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@276@01) (Seq_index
    $t@265@01
    i@275@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@276@01) (Seq_index
    $t@265@01
    i@275@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@275@01 Int) (j@276@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
        (not (= i@275@01 j@276@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
            (not (= i@275@01 j@276@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@276@01) (Seq_index
    $t@265@01
    i@275@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(assert (forall ((i@275@01 Int) (j@276@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (or
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)))))
    (or
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (not (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
        (not (= i@275@01 j@276@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
          (and
            (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
            (not (= i@275@01 j@276@01)))))
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
        (and
          (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
          (not (= i@275@01 j@276@01))))))
  :pattern ((Seq_index $t@265@01 i@275@01) (Seq_index $t@265@01 j@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111-aux|)))
(push) ; 6
(assert (not (forall ((i@275@01 Int) (j@276@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
        (not (= i@275@01 j@276@01))))
    (not (= (Seq_index $t@265@01 i@275@01) (Seq_index $t@265@01 j@276@01))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@275@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@276@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@275@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@276@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@275@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@276@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@275@01) (Seq_index
    $t@265@01
    j@276@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@275@01) (Seq_index
    $t@265@01
    j@276@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@275@01) (Seq_index
    $t@265@01
    j@276@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@276@01) (Seq_index
    $t@265@01
    i@275@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@276@01) (Seq_index
    $t@265@01
    i@275@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@276@01) (Seq_index
    $t@265@01
    i@275@01))
  :pattern ((Seq_index $t@265@01 i@275@01) (Seq_index $t@265@01 j@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@275@01 Int) (j@276@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i@275@01)
      (and
        (Seq_contains (Seq_range start@169@01 end@171@01) j@276@01)
        (not (= i@275@01 j@276@01))))
    (not (= (Seq_index $t@265@01 i@275@01) (Seq_index $t@265@01 j@276@01))))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@275@01) (Seq_contains
    (Seq_range start@169@01 end@171@01)
    j@276@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@275@01) (Seq_contains_trigger
    (Seq_range start@169@01 end@171@01)
    j@276@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) i@275@01) (Seq_index
    $t@265@01
    j@276@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) i@275@01) (Seq_index
    $t@265@01
    j@276@01))
  :pattern ((Seq_contains (Seq_range start@169@01 end@171@01) j@276@01) (Seq_index
    $t@265@01
    i@275@01))
  :pattern ((Seq_contains_trigger (Seq_range start@169@01 end@171@01) j@276@01) (Seq_index
    $t@265@01
    i@275@01))
  :pattern ((Seq_index $t@265@01 i@275@01) (Seq_index $t@265@01 j@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/mergesort.vpr@90@11@90@111|)))
(declare-const i@277@01 Int)
(push) ; 6
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@169@01 end@171@01) i@277@01))
; [eval] b.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@206@01 (- $k@174@01 $k@214@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@277@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@277@01 (Seq_length $t@265@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(declare-fun inv@278@01 ($Ref) Int)
(declare-fun img@279@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((i1@277@01 Int) (i2@277@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) i1@277@01)
      (Seq_contains (Seq_range start@169@01 end@171@01) i2@277@01)
      (= (Seq_index $t@265@01 i1@277@01) (Seq_index $t@265@01 i2@277@01)))
    (= i1@277@01 i2@277@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@277@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@169@01 end@171@01) i@277@01)
    (and
      (= (inv@278@01 (Seq_index $t@265@01 i@277@01)) i@277@01)
      (img@279@01 (Seq_index $t@265@01 i@277@01))))
  :pattern ((Seq_index $t@265@01 i@277@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@279@01 r)
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@278@01 r)))
    (= (Seq_index $t@265@01 (inv@278@01 r)) r))
  :pattern ((inv@278@01 r))
  :qid |value-fctOfInv|)))
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((i@277@01 Int)) (!
  (=
    (Seq_index $t@265@01 i@277@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@204@01)))
      i@277@01))
  
  :qid |quant-u-22333|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@280@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@278@01 r))
      (img@279@01 r)
      (= r (Seq_index $t@265@01 (inv@278@01 r))))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range start@169@01 end@171@01) (inv@211@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@280@01 r))
    $Perm.No)
  
  :qid |quant-u-22335|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@169@01 end@171@01) (inv@278@01 r))
      (img@279@01 r)
      (= r (Seq_index $t@265@01 (inv@278@01 r))))
    (= (- $Perm.Write (pTaken@280@01 r)) $Perm.No))
  
  :qid |quant-u-22336|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 55 | N@203@01 < end@171@01]
(assert (< N@203@01 end@171@01))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
