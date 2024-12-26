(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:31:59
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
; ---------- parallel_max ----------
(declare-const a@0@01 $Ref)
(declare-const start@1@01 Int)
(declare-const end@2@01 Int)
(declare-const kperm@3@01 $Perm)
(declare-const mx@4@01 Int)
(declare-const pos@5@01 Int)
(declare-const a@6@01 $Ref)
(declare-const start@7@01 Int)
(declare-const end@8@01 Int)
(declare-const kperm@9@01 $Perm)
(declare-const mx@10@01 Int)
(declare-const pos@11@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(assert (= ($Snap.first $t@12@01) $Snap.unit))
; [eval] a != null
(assert (not (= a@6@01 $Ref.null)))
(assert (=
  ($Snap.second $t@12@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@01))
    ($Snap.second ($Snap.second $t@12@01)))))
(declare-const $k@13@01 $Perm)
(assert ($Perm.isReadVar $k@13@01))
(assert (<= $Perm.No $k@13@01))
(assert (<= $k@13@01 $Perm.Write))
(assert (=> (< $Perm.No $k@13@01) (not (= a@6@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@12@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@12@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@12@01))) $Snap.unit))
; [eval] 0 <= start
(assert (<= 0 start@7@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@12@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  $Snap.unit))
; [eval] start < end
(assert (< start@7@01 end@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  $Snap.unit))
; [eval] end < |a.array|
; [eval] |a.array|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<
  end@8@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  $Snap.unit))
; [eval] kperm >= none
(assert (>= kperm@9@01 $Perm.No))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@14@01 Int)
(declare-const j@15@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 3
; [then-branch: 0 | !(i@14@01 in [start@7@01..end@8@01]) | live]
; [else-branch: 0 | i@14@01 in [start@7@01..end@8@01] | live]
(push) ; 4
; [then-branch: 0 | !(i@14@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | i@14@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 1 | !(j@15@01 in [start@7@01..end@8@01]) | live]
; [else-branch: 1 | j@15@01 in [start@7@01..end@8@01] | live]
(push) ; 6
; [then-branch: 1 | !(j@15@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | j@15@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
  (not (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01))))))
(assert (or
  (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
  (not (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01))))
(push) ; 3
; [then-branch: 2 | i@14@01 in [start@7@01..end@8@01] && j@15@01 in [start@7@01..end@8@01] && i@14@01 != j@15@01 | live]
; [else-branch: 2 | !(i@14@01 in [start@7@01..end@8@01] && j@15@01 in [start@7@01..end@8@01] && i@14@01 != j@15@01) | live]
(push) ; 4
; [then-branch: 2 | i@14@01 in [start@7@01..end@8@01] && j@15@01 in [start@7@01..end@8@01] && i@14@01 != j@15@01]
(assert (and
  (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
    (not (= i@14@01 j@15@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@14@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@14@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@15@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  j@15@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(i@14@01 in [start@7@01..end@8@01] && j@15@01 in [start@7@01..end@8@01] && i@14@01 != j@15@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
      (not (= i@14@01 j@15@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
      (not (= i@14@01 j@15@01))))
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
    (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
    (not (= i@14@01 j@15@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
        (not (= i@14@01 j@15@01)))))
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
      (not (= i@14@01 j@15@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@14@01 Int) (j@15@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
        (not (= i@14@01 j@15@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
            (not (= i@14@01 j@15@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@14@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@15@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@14@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@15@12@15@112-aux|)))
(assert (forall ((i@14@01 Int) (j@15@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
        (not (= i@14@01 j@15@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
            (not (= i@14@01 j@15@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@14@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@15@12@15@112-aux|)))
(assert (forall ((i@14@01 Int) (j@15@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
        (not (= i@14@01 j@15@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
            (not (= i@14@01 j@15@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@14@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@15@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@14@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@15@12@15@112-aux|)))
(assert (forall ((i@14@01 Int) (j@15@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
        (not (= i@14@01 j@15@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
            (not (= i@14@01 j@15@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@14@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@15@12@15@112-aux|)))
(assert (forall ((i@14@01 Int) (j@15@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
        (not (= i@14@01 j@15@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
            (not (= i@14@01 j@15@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@15@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@14@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@15@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@15@12@15@112-aux|)))
(assert (forall ((i@14@01 Int) (j@15@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
        (not (= i@14@01 j@15@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
            (not (= i@14@01 j@15@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@15@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@15@12@15@112-aux|)))
(assert (forall ((i@14@01 Int) (j@15@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
        (not (= i@14@01 j@15@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
            (not (= i@14@01 j@15@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
          (not (= i@14@01 j@15@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@14@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@15@12@15@112-aux|)))
(assert (forall ((i@14@01 Int) (j@15@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@14@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@15@01)
        (not (= i@14@01 j@15@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i@14@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          j@15@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@14@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@15@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@14@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@15@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@14@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@15@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@14@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@15@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@15@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@14@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@15@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@14@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@14@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@15@12@15@112|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(declare-const i@16@01 Int)
(push) ; 2
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i@16@01))
; [eval] a.array[i]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@16@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  i@16@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@17@01 ($Ref) Int)
(declare-fun img@18@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((i@16@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) i@16@01)
    (or (= kperm@9@01 $Perm.No) (< $Perm.No kperm@9@01)))
  
  :qid |quant-u-10820|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@16@01 Int) (i2@16@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i1@16@01)
        (< $Perm.No kperm@9@01))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i2@16@01)
        (< $Perm.No kperm@9@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i1@16@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i2@16@01)))
    (= i1@16@01 i2@16@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@16@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@16@01)
      (< $Perm.No kperm@9@01))
    (and
      (=
        (inv@17@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i@16@01))
        i@16@01)
      (img@18@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i@16@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@16@01))
  :qid |quant-u-10821|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@18@01 r)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r))
        (< $Perm.No kperm@9@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        (inv@17@01 r))
      r))
  :pattern ((inv@17@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@16@01 Int)) (!
  (<= $Perm.No kperm@9@01)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@16@01))
  :qid |value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@16@01 Int)) (!
  (<= kperm@9@01 $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@16@01))
  :qid |value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@16@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@16@01)
      (< $Perm.No kperm@9@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i@16@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@16@01))
  :qid |value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  $Snap.unit))
; [eval] |a.array| >= 1
; [eval] |a.array|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (>=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01))))
  1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  $Snap.unit))
; [eval] none < kperm
(assert (< $Perm.No kperm@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  $Snap.unit))
; [eval] kperm < write
(assert (< kperm@9@01 $Perm.Write))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 ($Snap.combine ($Snap.first $t@19@01) ($Snap.second $t@19@01))))
(declare-const $k@20@01 $Perm)
(assert ($Perm.isReadVar $k@20@01))
(assert (<= $Perm.No $k@20@01))
(assert (<= $k@20@01 $Perm.Write))
(assert (=> (< $Perm.No $k@20@01) (not (= a@6@01 $Ref.null))))
(assert (=
  ($Snap.second $t@19@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@19@01))
    ($Snap.second ($Snap.second $t@19@01)))))
(assert (= ($Snap.first ($Snap.second $t@19@01)) $Snap.unit))
; [eval] end < |a.array|
; [eval] |a.array|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< end@8@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@19@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@19@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@19@01))) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@21@01 Int)
(declare-const j@22@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 4
; [then-branch: 3 | !(i@21@01 in [start@7@01..end@8@01]) | live]
; [else-branch: 3 | i@21@01 in [start@7@01..end@8@01] | live]
(push) ; 5
; [then-branch: 3 | !(i@21@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | i@21@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 4 | !(j@22@01 in [start@7@01..end@8@01]) | live]
; [else-branch: 4 | j@22@01 in [start@7@01..end@8@01] | live]
(push) ; 7
; [then-branch: 4 | !(j@22@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 4 | j@22@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
  (not (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01))))))
(assert (or
  (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
  (not (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01))))
(push) ; 4
; [then-branch: 5 | i@21@01 in [start@7@01..end@8@01] && j@22@01 in [start@7@01..end@8@01] && i@21@01 != j@22@01 | live]
; [else-branch: 5 | !(i@21@01 in [start@7@01..end@8@01] && j@22@01 in [start@7@01..end@8@01] && i@21@01 != j@22@01) | live]
(push) ; 5
; [then-branch: 5 | i@21@01 in [start@7@01..end@8@01] && j@22@01 in [start@7@01..end@8@01] && i@21@01 != j@22@01]
(assert (and
  (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
    (not (= i@21@01 j@22@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@21@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@21@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= j@22@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@22@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(i@21@01 in [start@7@01..end@8@01] && j@22@01 in [start@7@01..end@8@01] && i@21@01 != j@22@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
      (not (= i@21@01 j@22@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
      (not (= i@21@01 j@22@01))))
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
    (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
    (not (= i@21@01 j@22@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
        (not (= i@21@01 j@22@01)))))
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
      (not (= i@21@01 j@22@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@21@01 Int) (j@22@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
        (not (= i@21@01 j@22@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
            (not (= i@21@01 j@22@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@21@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@22@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@21@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@21@01 Int) (j@22@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
        (not (= i@21@01 j@22@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
            (not (= i@21@01 j@22@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@21@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@21@01 Int) (j@22@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
        (not (= i@21@01 j@22@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
            (not (= i@21@01 j@22@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@21@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    j@22@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@21@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    j@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@21@01 Int) (j@22@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
        (not (= i@21@01 j@22@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
            (not (= i@21@01 j@22@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@21@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    j@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@21@01 Int) (j@22@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
        (not (= i@21@01 j@22@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
            (not (= i@21@01 j@22@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@22@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@21@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@22@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@21@01 Int) (j@22@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
        (not (= i@21@01 j@22@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
            (not (= i@21@01 j@22@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@22@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@21@01 Int) (j@22@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
        (not (= i@21@01 j@22@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
            (not (= i@21@01 j@22@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
          (not (= i@21@01 j@22@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@21@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    j@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@21@01 Int) (j@22@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@21@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@22@01)
        (not (= i@21@01 j@22@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
          i@21@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
          j@22@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@21@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@22@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@21@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@22@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@21@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    j@22@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@21@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    j@22@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@22@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@21@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@22@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@21@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@21@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    j@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@19@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@19@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))))
(declare-const i@23@01 Int)
(push) ; 3
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i@23@01))
; [eval] a.array[i]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@23@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@23@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@24@01 ($Ref) Int)
(declare-fun img@25@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((i@23@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) i@23@01)
    (or (= kperm@9@01 $Perm.No) (< $Perm.No kperm@9@01)))
  
  :qid |quant-u-10822|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@23@01 Int) (i2@23@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i1@23@01)
        (< $Perm.No kperm@9@01))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i2@23@01)
        (< $Perm.No kperm@9@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
          i1@23@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
          i2@23@01)))
    (= i1@23@01 i2@23@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@23@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@23@01)
      (< $Perm.No kperm@9@01))
    (and
      (=
        (inv@24@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
          i@23@01))
        i@23@01)
      (img@25@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
        i@23@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@23@01))
  :qid |quant-u-10823|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@25@01 r)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@24@01 r))
        (< $Perm.No kperm@9@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
        (inv@24@01 r))
      r))
  :pattern ((inv@24@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@23@01 Int)) (!
  (<= $Perm.No kperm@9@01)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@23@01))
  :qid |value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@23@01 Int)) (!
  (<= kperm@9@01 $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@23@01))
  :qid |value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@23@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@23@01)
      (< $Perm.No kperm@9@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
          i@23@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    i@23@01))
  :qid |value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
  $Snap.unit))
; [eval] start <= pos
(assert (<= start@7@01 pos@11@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))
  $Snap.unit))
; [eval] pos < end
(assert (< pos@11@01 end@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))))
  $Snap.unit))
; [eval] a.array[pos].value == mx
; [eval] a.array[pos]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= pos@11@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  pos@11@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (ite
  (and
    (img@25@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
      pos@11@01))
    (Seq_contains
      (Seq_range start@7@01 end@8@01)
      (inv@24@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
        pos@11@01))))
  (< $Perm.No kperm@9@01)
  false)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@19@01))))) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    pos@11@01))
  mx@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))))
  $Snap.unit))
; [eval] (forall l: Int :: { (l in [start..end)) } { a.array[l] } (l in [start..end)) ==> a.array[l].value <= mx)
(declare-const l@26@01 Int)
(push) ; 3
; [eval] (l in [start..end)) ==> a.array[l].value <= mx
; [eval] (l in [start..end))
; [eval] [start..end)
(push) ; 4
; [then-branch: 6 | l@26@01 in [start@7@01..end@8@01] | live]
; [else-branch: 6 | !(l@26@01 in [start@7@01..end@8@01]) | live]
(push) ; 5
; [then-branch: 6 | l@26@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01))
; [eval] a.array[l].value <= mx
; [eval] a.array[l]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= l@26@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< l@26@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (ite
  (and
    (img@25@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
      l@26@01))
    (Seq_contains
      (Seq_range start@7@01 end@8@01)
      (inv@24@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
        l@26@01))))
  (< $Perm.No kperm@9@01)
  false)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 6 | !(l@26@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01))
  (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((l@26@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@26@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(assert (forall ((l@26@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(assert (forall ((l@26@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    l@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(assert (forall ((l@26@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) l@26@01)
    (<=
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@19@01))))) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
        l@26@01))
      mx@10@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@26@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@26@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@19@01))
    l@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71|)))
(pop) ; 2
(push) ; 2
; [exec]
; var middle: Int
(declare-const middle@27@01 Int)
; [exec]
; var ml: Int
(declare-const ml@28@01 Int)
; [exec]
; var mr: Int
(declare-const mr@29@01 Int)
; [exec]
; var kperm1: Perm
(declare-const kperm1@30@01 $Perm)
; [exec]
; var posl: Int
(declare-const posl@31@01 Int)
; [exec]
; var posr: Int
(declare-const posr@32@01 Int)
; [eval] end - start > 1
; [eval] end - start
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> (- end@8@01 start@7@01) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> (- end@8@01 start@7@01) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | end@8@01 - start@7@01 > 1 | live]
; [else-branch: 7 | !(end@8@01 - start@7@01 > 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | end@8@01 - start@7@01 > 1]
(assert (> (- end@8@01 start@7@01) 1))
; [exec]
; middle := start + (end - start) \ 2
; [eval] start + (end - start) \ 2
; [eval] (end - start) \ 2
; [eval] end - start
(declare-const middle@33@01 Int)
(assert (= middle@33@01 (+ start@7@01 (div (- end@8@01 start@7@01) 2))))
; [exec]
; exhale a != null
; [eval] a != null
; [exec]
; exhale acc(a.array, wildcard)
(declare-const $k@34@01 $Perm)
(assert ($Perm.isReadVar $k@34@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@13@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@34@01 $k@13@01))
(assert (<= $Perm.No (- $k@13@01 $k@34@01)))
(assert (<= (- $k@13@01 $k@34@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@13@01 $k@34@01)) (not (= a@6@01 $Ref.null))))
; [exec]
; exhale 0 <= start && (start < middle && middle < |a.array|)
; [eval] 0 <= start
; [eval] start < middle
(set-option :timeout 0)
(push) ; 4
(assert (not (< start@7@01 middle@33@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< start@7@01 middle@33@01))
; [eval] middle < |a.array|
; [eval] |a.array|
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- $k@13@01 $k@34@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (<
  middle@33@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<
  middle@33@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01))))))
; [exec]
; exhale (forall i1: Int ::(i1 in [start..middle)) ==>
;     acc(a.array[i1].value, 1 / 2 * kperm))
(declare-const i1@35@01 Int)
(push) ; 4
; [eval] (i1 in [start..middle))
; [eval] [start..middle)
(assert (Seq_contains (Seq_range start@7@01 middle@33@01) i1@35@01))
; [eval] 1 / 2 * kperm
; [eval] a.array[i1]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (- $k@13@01 $k@34@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i1@35@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i1@35@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@36@01 ($Ref) Int)
(declare-fun img@37@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((i1@35@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 middle@33@01) i1@35@01)
    (or
      (= (* (/ (to_real 1) (to_real 2)) kperm@9@01) $Perm.No)
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))))
  
  :qid |quant-u-10824|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i11@35@01 Int) (i12@35@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range start@7@01 middle@33@01) i11@35@01)
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
      (and
        (Seq_contains (Seq_range start@7@01 middle@33@01) i12@35@01)
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i11@35@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i12@35@01)))
    (= i11@35@01 i12@35@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@35@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 middle@33@01) i1@35@01)
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
    (and
      (=
        (inv@36@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i1@35@01))
        i1@35@01)
      (img@37@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i1@35@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i1@35@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@37@01 r)
      (and
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@36@01 r))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        (inv@36@01 r))
      r))
  :pattern ((inv@36@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@38@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@36@01 r))
      (img@37@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          (inv@36@01 r))))
    ($Perm.min
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        kperm@9@01
        $Perm.No)
      (* (/ (to_real 1) (to_real 2)) kperm@9@01))
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
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        kperm@9@01
        $Perm.No)
      (pTaken@38@01 r))
    $Perm.No)
  
  :qid |quant-u-10826|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@38@01 r) $Perm.No)
  
  :qid |quant-u-10827|))))
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
      (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@36@01 r))
      (img@37@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          (inv@36@01 r))))
    (= (- (* (/ (to_real 1) (to_real 2)) kperm@9@01) (pTaken@38@01 r)) $Perm.No))
  
  :qid |quant-u-10828|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale |a.array| >= 1
; [eval] |a.array| >= 1
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- $k@13@01 $k@34@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale none < 1 / 2 * kperm && 1 / 2 * kperm < write
; [eval] none < 1 / 2 * kperm
; [eval] 1 / 2 * kperm
(set-option :timeout 0)
(push) ; 4
(assert (not (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
; [eval] 1 / 2 * kperm < write
; [eval] 1 / 2 * kperm
(push) ; 4
(assert (not (< (* (/ (to_real 1) (to_real 2)) kperm@9@01) $Perm.Write)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< (* (/ (to_real 1) (to_real 2)) kperm@9@01) $Perm.Write))
; [exec]
; exhale a != null
; [eval] a != null
; [exec]
; exhale acc(a.array, wildcard)
(declare-const $k@39@01 $Perm)
(assert ($Perm.isReadVar $k@39@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (- $k@13@01 $k@34@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@39@01 (- $k@13@01 $k@34@01)))
(assert (<= $Perm.No (- (- $k@13@01 $k@34@01) $k@39@01)))
(assert (<= (- (- $k@13@01 $k@34@01) $k@39@01) $Perm.Write))
(assert (=> (< $Perm.No (- (- $k@13@01 $k@34@01) $k@39@01)) (not (= a@6@01 $Ref.null))))
; [exec]
; exhale 0 <= middle && (middle < end && end < |a.array|)
; [eval] 0 <= middle
(set-option :timeout 0)
(push) ; 4
(assert (not (<= 0 middle@33@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 middle@33@01))
; [eval] middle < end
(push) ; 4
(assert (not (< middle@33@01 end@8@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< middle@33@01 end@8@01))
; [eval] end < |a.array|
; [eval] |a.array|
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- (- $k@13@01 $k@34@01) $k@39@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale (forall i2: Int ::(i2 in [middle..end)) ==>
;     acc(a.array[i2].value, 1 / 2 * kperm))
(declare-const i2@40@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i2 in [middle..end))
; [eval] [middle..end)
(assert (Seq_contains (Seq_range middle@33@01 end@8@01) i2@40@01))
; [eval] 1 / 2 * kperm
; [eval] a.array[i2]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (- (- $k@13@01 $k@34@01) $k@39@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i2@40@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i2@40@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@41@01 ($Ref) Int)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((i2@40@01 Int)) (!
  (=>
    (Seq_contains (Seq_range middle@33@01 end@8@01) i2@40@01)
    (or
      (= (* (/ (to_real 1) (to_real 2)) kperm@9@01) $Perm.No)
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))))
  
  :qid |quant-u-10829|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i21@40@01 Int) (i22@40@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range middle@33@01 end@8@01) i21@40@01)
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
      (and
        (Seq_contains (Seq_range middle@33@01 end@8@01) i22@40@01)
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i21@40@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i22@40@01)))
    (= i21@40@01 i22@40@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i2@40@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range middle@33@01 end@8@01) i2@40@01)
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
    (and
      (=
        (inv@41@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i2@40@01))
        i2@40@01)
      (img@42@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i2@40@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i2@40@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@42@01 r)
      (and
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@41@01 r))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        (inv@41@01 r))
      r))
  :pattern ((inv@41@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@43@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@41@01 r))
      (img@42@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          (inv@41@01 r))))
    ($Perm.min
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (- kperm@9@01 (pTaken@38@01 r))
        $Perm.No)
      (* (/ (to_real 1) (to_real 2)) kperm@9@01))
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
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (- kperm@9@01 (pTaken@38@01 r))
        $Perm.No)
      (pTaken@43@01 r))
    $Perm.No)
  
  :qid |quant-u-10831|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@43@01 r) $Perm.No)
  
  :qid |quant-u-10832|))))
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
      (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@41@01 r))
      (img@42@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          (inv@41@01 r))))
    (= (- (* (/ (to_real 1) (to_real 2)) kperm@9@01) (pTaken@43@01 r)) $Perm.No))
  
  :qid |quant-u-10833|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale |a.array| >= 1
; [eval] |a.array| >= 1
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (- (- $k@13@01 $k@34@01) $k@39@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale none < 1 / 2 * kperm && 1 / 2 * kperm < write
; [eval] none < 1 / 2 * kperm
; [eval] 1 / 2 * kperm
; [eval] 1 / 2 * kperm < write
; [eval] 1 / 2 * kperm
; [exec]
; inhale acc(a.array, wildcard)
(declare-const $k@44@01 $Perm)
(assert ($Perm.isReadVar $k@44@01))
(declare-const $t@45@01 Seq<$Ref>)
(declare-const $t@46@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No (- (- $k@13@01 $k@34@01) $k@39@01))
    (Seq_equal
      $t@46@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))
  (=> (< $Perm.No $k@44@01) (Seq_equal $t@46@01 $t@45@01))))
(assert (<= $Perm.No (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01)))
(assert (<= (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $Perm.Write))
(assert (=>
  (< $Perm.No (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01))
  (not (= a@6@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale middle < |a.array|
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 $Snap.unit))
; [eval] middle < |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< middle@33@01 (Seq_length $t@46@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i3: Int ::(i3 in [start..middle)) ==>
;     acc(a.array[i3].value, 1 / 2 * kperm))
(declare-const i3@48@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i3 in [start..middle))
; [eval] [start..middle)
(assert (Seq_contains (Seq_range start@7@01 middle@33@01) i3@48@01))
; [eval] a.array[i3]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i3@48@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i3@48@01 (Seq_length $t@46@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] 1 / 2 * kperm
(pop) ; 4
(declare-const $t@49@01 $FVF<value>)
(declare-fun inv@50@01 ($Ref) Int)
(declare-fun img@51@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((i3@48@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 middle@33@01) i3@48@01)
    (or
      (= (* (/ (to_real 1) (to_real 2)) kperm@9@01) $Perm.No)
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))))
  
  :qid |quant-u-10834|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i31@48@01 Int) (i32@48@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range start@7@01 middle@33@01) i31@48@01)
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
      (and
        (Seq_contains (Seq_range start@7@01 middle@33@01) i32@48@01)
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
      (= (Seq_index $t@46@01 i31@48@01) (Seq_index $t@46@01 i32@48@01)))
    (= i31@48@01 i32@48@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i3@48@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 middle@33@01) i3@48@01)
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
    (and
      (= (inv@50@01 (Seq_index $t@46@01 i3@48@01)) i3@48@01)
      (img@51@01 (Seq_index $t@46@01 i3@48@01))))
  :pattern ((Seq_index $t@46@01 i3@48@01))
  :qid |quant-u-10835|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@51@01 r)
      (and
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))))
    (= (Seq_index $t@46@01 (inv@50@01 r)) r))
  :pattern ((inv@50@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i3@48@01 Int)) (!
  (<= $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
  :pattern ((Seq_index $t@46@01 i3@48@01))
  :qid |value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i3@48@01 Int)) (!
  (<= (* (/ (to_real 1) (to_real 2)) kperm@9@01) $Perm.Write)
  :pattern ((Seq_index $t@46@01 i3@48@01))
  :qid |value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i3@48@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 middle@33@01) i3@48@01)
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
    (not (= (Seq_index $t@46@01 i3@48@01) $Ref.null)))
  :pattern ((Seq_index $t@46@01 i3@48@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index $t@46@01 i3@48@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i@16@01))
    (=
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))))
  
  :qid |quant-u-10836|))))
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
; inhale start <= posl && posl < middle
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 ($Snap.combine ($Snap.first $t@52@01) ($Snap.second $t@52@01))))
(assert (= ($Snap.first $t@52@01) $Snap.unit))
; [eval] start <= posl
(assert (<= start@7@01 posl@31@01))
(assert (= ($Snap.second $t@52@01) $Snap.unit))
; [eval] posl < middle
(assert (< posl@31@01 middle@33@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale a.array[posl].value == ml
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 $Snap.unit))
; [eval] a.array[posl].value == ml
; [eval] a.array[posl]
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= posl@31@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< posl@31@01 (Seq_length $t@46@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@54@01 $FVF<value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@54@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@54@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@54@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@54@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@55@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@55@01  $FPM) r)
    (+
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r))
        $Perm.No)
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No)))
  :pattern (($FVF.perm_value (as pm@55@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 4
(assert (not (<
  $Perm.No
  ($FVF.perm_value (as pm@55@01  $FPM) (Seq_index $t@46@01 posl@31@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value (as sm@54@01  $FVF<value>) (Seq_index $t@46@01 posl@31@01))
  ml@28@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall l1: Int ::
;     { (l1 in [start..middle)) }
;     { a.array[l1] }
;     (l1 in [start..middle)) ==> a.array[l1].value <= ml)
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 $Snap.unit))
; [eval] (forall l1: Int :: { (l1 in [start..middle)) } { a.array[l1] } (l1 in [start..middle)) ==> a.array[l1].value <= ml)
(declare-const l1@57@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (l1 in [start..middle)) ==> a.array[l1].value <= ml
; [eval] (l1 in [start..middle))
; [eval] [start..middle)
(push) ; 5
; [then-branch: 8 | l1@57@01 in [start@7@01..middle@33@01] | live]
; [else-branch: 8 | !(l1@57@01 in [start@7@01..middle@33@01]) | live]
(push) ; 6
; [then-branch: 8 | l1@57@01 in [start@7@01..middle@33@01]]
(assert (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01))
; [eval] a.array[l1].value <= ml
; [eval] a.array[l1]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= l1@57@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< l1@57@01 (Seq_length $t@46@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@54@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@54@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@54@01  $FVF<value>) r)
        ($FVF.lookup_value $t@49@01 r)))
    :pattern (($FVF.lookup_value (as sm@54@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@49@01 r))
    :qid |qp.fvfValDef1|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@18@01 (Seq_index $t@46@01 l1@57@01))
        (Seq_contains
          (Seq_range start@7@01 end@8@01)
          (inv@17@01 (Seq_index $t@46@01 l1@57@01))))
      (-
        (- kperm@9@01 (pTaken@38@01 (Seq_index $t@46@01 l1@57@01)))
        (pTaken@43@01 (Seq_index $t@46@01 l1@57@01)))
      $Perm.No)
    (ite
      (and
        (img@51@01 (Seq_index $t@46@01 l1@57@01))
        (Seq_contains
          (Seq_range start@7@01 middle@33@01)
          (inv@50@01 (Seq_index $t@46@01 l1@57@01))))
      (* (/ (to_real 1) (to_real 2)) kperm@9@01)
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 8 | !(l1@57@01 in [start@7@01..middle@33@01])]
(assert (not (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@54@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@54@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@54@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@54@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef1|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01))
  (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@54@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@54@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@54@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@54@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef1|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((l1@57@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01))
    (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01))
  :pattern ((Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 middle@33@01) l1@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@60@17@60@84-aux|)))
(assert (forall ((l1@57@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01))
    (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 middle@33@01) l1@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@60@17@60@84-aux|)))
(assert (forall ((l1@57@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01))
    (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01))
  :pattern ((Seq_index $t@46@01 l1@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@60@17@60@84-aux|)))
(assert (forall ((l1@57@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01)
    (<=
      ($FVF.lookup_value (as sm@54@01  $FVF<value>) (Seq_index $t@46@01 l1@57@01))
      ml@28@01))
  :pattern ((Seq_contains (Seq_range start@7@01 middle@33@01) l1@57@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 middle@33@01) l1@57@01))
  :pattern ((Seq_index $t@46@01 l1@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@60@17@60@84|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(a.array, wildcard)
(declare-const $k@58@01 $Perm)
(assert ($Perm.isReadVar $k@58@01))
(declare-const $t@59@01 Seq<$Ref>)
(declare-const $t@60@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01))
    (Seq_equal $t@60@01 $t@46@01))
  (=> (< $Perm.No $k@58@01) (Seq_equal $t@60@01 $t@59@01))))
(assert (<= $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01)))
(assert (<= (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01) $Perm.Write))
(assert (=>
  (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))
  (not (= a@6@01 $Ref.null))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale middle < |a.array|
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 $Snap.unit))
; [eval] middle < |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< middle@33@01 (Seq_length $t@60@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i5: Int ::(i5 in [middle..end)) ==>
;     acc(a.array[i5].value, 1 / 2 * kperm))
(declare-const i5@62@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i5 in [middle..end))
; [eval] [middle..end)
(assert (Seq_contains (Seq_range middle@33@01 end@8@01) i5@62@01))
; [eval] a.array[i5]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i5@62@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i5@62@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] 1 / 2 * kperm
(pop) ; 4
(declare-const $t@63@01 $FVF<value>)
(declare-fun inv@64@01 ($Ref) Int)
(declare-fun img@65@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((i5@62@01 Int)) (!
  (=>
    (Seq_contains (Seq_range middle@33@01 end@8@01) i5@62@01)
    (or
      (= (* (/ (to_real 1) (to_real 2)) kperm@9@01) $Perm.No)
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))))
  
  :qid |quant-u-10837|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i51@62@01 Int) (i52@62@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range middle@33@01 end@8@01) i51@62@01)
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
      (and
        (Seq_contains (Seq_range middle@33@01 end@8@01) i52@62@01)
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
      (= (Seq_index $t@60@01 i51@62@01) (Seq_index $t@60@01 i52@62@01)))
    (= i51@62@01 i52@62@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i5@62@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range middle@33@01 end@8@01) i5@62@01)
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
    (and
      (= (inv@64@01 (Seq_index $t@60@01 i5@62@01)) i5@62@01)
      (img@65@01 (Seq_index $t@60@01 i5@62@01))))
  :pattern ((Seq_index $t@60@01 i5@62@01))
  :qid |quant-u-10838|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@65@01 r)
      (and
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))))
    (= (Seq_index $t@60@01 (inv@64@01 r)) r))
  :pattern ((inv@64@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i5@62@01 Int)) (!
  (<= $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
  :pattern ((Seq_index $t@60@01 i5@62@01))
  :qid |value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i5@62@01 Int)) (!
  (<= (* (/ (to_real 1) (to_real 2)) kperm@9@01) $Perm.Write)
  :pattern ((Seq_index $t@60@01 i5@62@01))
  :qid |value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i5@62@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range middle@33@01 end@8@01) i5@62@01)
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01)))
    (not (= (Seq_index $t@60@01 i5@62@01) $Ref.null)))
  :pattern ((Seq_index $t@60@01 i5@62@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index $t@60@01 i5@62@01) (Seq_index $t@46@01 i3@48@01))
    (=
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))))
  
  :qid |quant-u-10839|))))
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
    (=
      (Seq_index $t@60@01 i5@62@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i@16@01))
    (=
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))))
  
  :qid |quant-u-10840|))))
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
; inhale middle <= posr && posr < end
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 ($Snap.combine ($Snap.first $t@66@01) ($Snap.second $t@66@01))))
(assert (= ($Snap.first $t@66@01) $Snap.unit))
; [eval] middle <= posr
(assert (<= middle@33@01 posr@32@01))
(assert (= ($Snap.second $t@66@01) $Snap.unit))
; [eval] posr < end
(assert (< posr@32@01 end@8@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale a.array[posr].value == mr
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 $Snap.unit))
; [eval] a.array[posr].value == mr
; [eval] a.array[posr]
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= posr@32@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< posr@32@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@68@01 $FVF<value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
(declare-const pm@69@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@69@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@18@01 r)
            (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
          (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r))
          $Perm.No)
        (ite
          (and
            (img@51@01 r)
            (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
          (* (/ (to_real 1) (to_real 2)) kperm@9@01)
          $Perm.No))
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No)))
  :pattern (($FVF.perm_value (as pm@69@01  $FPM) r))
  :qid |qp.resPrmSumDef6|)))
(push) ; 4
(assert (not (<
  $Perm.No
  ($FVF.perm_value (as pm@69@01  $FPM) (Seq_index $t@60@01 posr@32@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 posr@32@01))
  mr@29@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall l2: Int ::
;     { (l2 in [middle..end)) }
;     { a.array[l2] }
;     (l2 in [middle..end)) ==> a.array[l2].value <= mr)
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 $Snap.unit))
; [eval] (forall l2: Int :: { (l2 in [middle..end)) } { a.array[l2] } (l2 in [middle..end)) ==> a.array[l2].value <= mr)
(declare-const l2@71@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (l2 in [middle..end)) ==> a.array[l2].value <= mr
; [eval] (l2 in [middle..end))
; [eval] [middle..end)
(push) ; 5
; [then-branch: 9 | l2@71@01 in [middle@33@01..end@8@01] | live]
; [else-branch: 9 | !(l2@71@01 in [middle@33@01..end@8@01]) | live]
(push) ; 6
; [then-branch: 9 | l2@71@01 in [middle@33@01..end@8@01]]
(assert (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01))
; [eval] a.array[l2].value <= mr
; [eval] a.array[l2]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= l2@71@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< l2@71@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@49@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@49@01 r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@63@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@63@01 r))
    :qid |qp.fvfValDef5|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@18@01 (Seq_index $t@60@01 l2@71@01))
          (Seq_contains
            (Seq_range start@7@01 end@8@01)
            (inv@17@01 (Seq_index $t@60@01 l2@71@01))))
        (-
          (- kperm@9@01 (pTaken@38@01 (Seq_index $t@60@01 l2@71@01)))
          (pTaken@43@01 (Seq_index $t@60@01 l2@71@01)))
        $Perm.No)
      (ite
        (and
          (img@51@01 (Seq_index $t@60@01 l2@71@01))
          (Seq_contains
            (Seq_range start@7@01 middle@33@01)
            (inv@50@01 (Seq_index $t@60@01 l2@71@01))))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No))
    (ite
      (and
        (img@65@01 (Seq_index $t@60@01 l2@71@01))
        (Seq_contains
          (Seq_range middle@33@01 end@8@01)
          (inv@64@01 (Seq_index $t@60@01 l2@71@01))))
      (* (/ (to_real 1) (to_real 2)) kperm@9@01)
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 9 | !(l2@71@01 in [middle@33@01..end@8@01])]
(assert (not (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01))
  (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((l2@71@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01))
    (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01))
  :pattern ((Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01))
  :pattern ((Seq_contains_trigger (Seq_range middle@33@01 end@8@01) l2@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@68@17@68@82-aux|)))
(assert (forall ((l2@71@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01))
    (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01))
  :pattern ((Seq_contains_trigger (Seq_range middle@33@01 end@8@01) l2@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@68@17@68@82-aux|)))
(assert (forall ((l2@71@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01))
    (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01))
  :pattern ((Seq_index $t@60@01 l2@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@68@17@68@82-aux|)))
(assert (forall ((l2@71@01 Int)) (!
  (=>
    (Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01)
    (<=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 l2@71@01))
      mr@29@01))
  :pattern ((Seq_contains (Seq_range middle@33@01 end@8@01) l2@71@01))
  :pattern ((Seq_contains_trigger (Seq_range middle@33@01 end@8@01) l2@71@01))
  :pattern ((Seq_index $t@60@01 l2@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@68@17@68@82|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; mx := (ml > mr ? ml : mr)
; [eval] (ml > mr ? ml : mr)
; [eval] ml > mr
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> ml@28@01 mr@29@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (> ml@28@01 mr@29@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | ml@28@01 > mr@29@01 | live]
; [else-branch: 10 | !(ml@28@01 > mr@29@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 10 | ml@28@01 > mr@29@01]
(assert (> ml@28@01 mr@29@01))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | !(ml@28@01 > mr@29@01)]
(assert (not (> ml@28@01 mr@29@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (> ml@28@01 mr@29@01)) (> ml@28@01 mr@29@01)))
(declare-const mx@72@01 Int)
(assert (= mx@72@01 (ite (> ml@28@01 mr@29@01) ml@28@01 mr@29@01)))
; [eval] mx == ml
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= mx@72@01 ml@28@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= mx@72@01 ml@28@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | mx@72@01 == ml@28@01 | live]
; [else-branch: 11 | mx@72@01 != ml@28@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 11 | mx@72@01 == ml@28@01]
(assert (= mx@72@01 ml@28@01))
; [exec]
; pos := posl
; [exec]
; assert (forall i6: Int ::
;     { (i6 in [start..end)) }
;     { old(a.array[i6]) }
;     (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value))
; [eval] (forall i6: Int :: { (i6 in [start..end)) } { old(a.array[i6]) } (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value))
(declare-const i6@73@01 Int)
(push) ; 5
; [eval] (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value)
; [eval] (i6 in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 12 | i6@73@01 in [start@7@01..end@8@01] | live]
; [else-branch: 12 | !(i6@73@01 in [start@7@01..end@8@01]) | live]
(push) ; 7
; [then-branch: 12 | i6@73@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
; [eval] a.array[i6].value == old(a.array[i6].value)
; [eval] a.array[i6]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i6@73@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< i6@73@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@49@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@49@01 r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@63@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@63@01 r))
    :qid |qp.fvfValDef5|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@18@01 (Seq_index $t@60@01 i6@73@01))
          (Seq_contains
            (Seq_range start@7@01 end@8@01)
            (inv@17@01 (Seq_index $t@60@01 i6@73@01))))
        (-
          (- kperm@9@01 (pTaken@38@01 (Seq_index $t@60@01 i6@73@01)))
          (pTaken@43@01 (Seq_index $t@60@01 i6@73@01)))
        $Perm.No)
      (ite
        (and
          (img@51@01 (Seq_index $t@60@01 i6@73@01))
          (Seq_contains
            (Seq_range start@7@01 middle@33@01)
            (inv@50@01 (Seq_index $t@60@01 i6@73@01))))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No))
    (ite
      (and
        (img@65@01 (Seq_index $t@60@01 i6@73@01))
        (Seq_contains
          (Seq_range middle@33@01 end@8@01)
          (inv@64@01 (Seq_index $t@60@01 i6@73@01))))
      (* (/ (to_real 1) (to_real 2)) kperm@9@01)
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array[i6].value)
; [eval] a.array[i6]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i6@73@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  i6@73@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (ite
  (and
    (img@18@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
      i6@73@01))
    (Seq_contains
      (Seq_range start@7@01 end@8@01)
      (inv@17@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i6@73@01))))
  (< $Perm.No kperm@9@01)
  false)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 12 | !(i6@73@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
  (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i6@73@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95-aux|)))
(assert (forall ((i6@73@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95-aux|)))
(assert (forall ((i6@73@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i6@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95-aux|)))
(push) ; 5
(assert (not (forall ((i6@73@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 i6@73@01))
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i6@73@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@73@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@73@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i6@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i6@73@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 i6@73@01))
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i6@73@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i6@73@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@73@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i6@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95|)))
(declare-const $k@74@01 $Perm)
(assert ($Perm.isReadVar $k@74@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< $k@74@01 (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01)))
(assert (<=
  $Perm.No
  (- (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01) $k@74@01)))
(assert (<=
  (- (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01) $k@74@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (- (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01) $k@74@01))
  (not (= a@6@01 $Ref.null))))
; [eval] end < |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (< end@8@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< end@8@01 (Seq_length $t@60@01)))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@75@01 Int)
(declare-const j@76@01 Int)
(push) ; 5
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 13 | !(i@75@01 in [start@7@01..end@8@01]) | live]
; [else-branch: 13 | i@75@01 in [start@7@01..end@8@01] | live]
(push) ; 7
; [then-branch: 13 | !(i@75@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 13 | i@75@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 8
; [then-branch: 14 | !(j@76@01 in [start@7@01..end@8@01]) | live]
; [else-branch: 14 | j@76@01 in [start@7@01..end@8@01] | live]
(push) ; 9
; [then-branch: 14 | !(j@76@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 14 | j@76@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01))
; [eval] i != j
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
  (not (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01))))))
(assert (or
  (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
  (not (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01))))
(push) ; 6
; [then-branch: 15 | i@75@01 in [start@7@01..end@8@01] && j@76@01 in [start@7@01..end@8@01] && i@75@01 != j@76@01 | live]
; [else-branch: 15 | !(i@75@01 in [start@7@01..end@8@01] && j@76@01 in [start@7@01..end@8@01] && i@75@01 != j@76@01) | live]
(push) ; 7
; [then-branch: 15 | i@75@01 in [start@7@01..end@8@01] && j@76@01 in [start@7@01..end@8@01] && i@75@01 != j@76@01]
(assert (and
  (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
    (not (= i@75@01 j@76@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i@75@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< i@75@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= j@76@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< j@76@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 15 | !(i@75@01 in [start@7@01..end@8@01] && j@76@01 in [start@7@01..end@8@01] && i@75@01 != j@76@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
      (not (= i@75@01 j@76@01))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
      (not (= i@75@01 j@76@01))))
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
    (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
    (not (= i@75@01 j@76@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
        (not (= i@75@01 j@76@01)))))
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
      (not (= i@75@01 j@76@01))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@75@01 Int) (j@76@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
        (not (= i@75@01 j@76@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
            (not (= i@75@01 j@76@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@75@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@76@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@75@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@75@01 Int) (j@76@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
        (not (= i@75@01 j@76@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
            (not (= i@75@01 j@76@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@75@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@75@01 Int) (j@76@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
        (not (= i@75@01 j@76@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
            (not (= i@75@01 j@76@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@75@01) (Seq_index
    $t@60@01
    j@76@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@75@01) (Seq_index
    $t@60@01
    j@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@75@01 Int) (j@76@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
        (not (= i@75@01 j@76@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
            (not (= i@75@01 j@76@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@75@01) (Seq_index
    $t@60@01
    j@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@75@01 Int) (j@76@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
        (not (= i@75@01 j@76@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
            (not (= i@75@01 j@76@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@76@01) (Seq_index
    $t@60@01
    i@75@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@76@01) (Seq_index
    $t@60@01
    i@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@75@01 Int) (j@76@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
        (not (= i@75@01 j@76@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
            (not (= i@75@01 j@76@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@76@01) (Seq_index
    $t@60@01
    i@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@75@01 Int) (j@76@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
        (not (= i@75@01 j@76@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
            (not (= i@75@01 j@76@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
          (not (= i@75@01 j@76@01))))))
  :pattern ((Seq_index $t@60@01 i@75@01) (Seq_index $t@60@01 j@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(push) ; 5
(assert (not (forall ((i@75@01 Int) (j@76@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
        (not (= i@75@01 j@76@01))))
    (not (= (Seq_index $t@60@01 i@75@01) (Seq_index $t@60@01 j@76@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@75@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@76@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@75@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@76@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@75@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@76@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@75@01) (Seq_index
    $t@60@01
    j@76@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@75@01) (Seq_index
    $t@60@01
    j@76@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@75@01) (Seq_index
    $t@60@01
    j@76@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@76@01) (Seq_index
    $t@60@01
    i@75@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@76@01) (Seq_index
    $t@60@01
    i@75@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@76@01) (Seq_index
    $t@60@01
    i@75@01))
  :pattern ((Seq_index $t@60@01 i@75@01) (Seq_index $t@60@01 j@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@75@01 Int) (j@76@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@75@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@76@01)
        (not (= i@75@01 j@76@01))))
    (not (= (Seq_index $t@60@01 i@75@01) (Seq_index $t@60@01 j@76@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@75@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@76@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@75@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@76@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@75@01) (Seq_index
    $t@60@01
    j@76@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@75@01) (Seq_index
    $t@60@01
    j@76@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@76@01) (Seq_index
    $t@60@01
    i@75@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@76@01) (Seq_index
    $t@60@01
    i@75@01))
  :pattern ((Seq_index $t@60@01 i@75@01) (Seq_index $t@60@01 j@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111|)))
(declare-const i@77@01 Int)
(push) ; 5
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i@77@01))
; [eval] a.array[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@77@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@77@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@78@01 ($Ref) Int)
(declare-fun img@79@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((i@77@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) i@77@01)
    (or (= kperm@9@01 $Perm.No) (< $Perm.No kperm@9@01)))
  
  :qid |quant-u-10841|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((i1@77@01 Int) (i2@77@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i1@77@01)
        (< $Perm.No kperm@9@01))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i2@77@01)
        (< $Perm.No kperm@9@01))
      (= (Seq_index $t@60@01 i1@77@01) (Seq_index $t@60@01 i2@77@01)))
    (= i1@77@01 i2@77@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@77@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@77@01)
      (< $Perm.No kperm@9@01))
    (and
      (= (inv@78@01 (Seq_index $t@60@01 i@77@01)) i@77@01)
      (img@79@01 (Seq_index $t@60@01 i@77@01))))
  :pattern ((Seq_index $t@60@01 i@77@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@79@01 r)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@78@01 r))
        (< $Perm.No kperm@9@01)))
    (= (Seq_index $t@60@01 (inv@78@01 r)) r))
  :pattern ((inv@78@01 r))
  :qid |value-fctOfInv|)))
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((i@77@01 Int)) (!
  (=
    (Seq_index $t@60@01 i@77@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
      i@77@01))
  
  :qid |quant-u-10842|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((i@77@01 Int)) (!
  (= (Seq_index $t@60@01 i@77@01) (Seq_index $t@46@01 i@77@01))
  
  :qid |quant-u-10843|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@80@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@78@01 r))
      (img@79@01 r)
      (= r (Seq_index $t@60@01 (inv@78@01 r))))
    ($Perm.min
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r))
        $Perm.No)
      kperm@9@01)
    $Perm.No))
(define-fun pTaken@81@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@78@01 r))
      (img@79@01 r)
      (= r (Seq_index $t@60@01 (inv@78@01 r))))
    ($Perm.min
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No)
      (- kperm@9@01 (pTaken@80@01 r)))
    $Perm.No))
(define-fun pTaken@82@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@78@01 r))
      (img@79@01 r)
      (= r (Seq_index $t@60@01 (inv@78@01 r))))
    ($Perm.min
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No)
      (- (- kperm@9@01 (pTaken@80@01 r)) (pTaken@81@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r))
        $Perm.No)
      (pTaken@80@01 r))
    $Perm.No)
  
  :qid |quant-u-10845|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@78@01 r))
      (img@79@01 r)
      (= r (Seq_index $t@60@01 (inv@78@01 r))))
    (= (- kperm@9@01 (pTaken@80@01 r)) $Perm.No))
  
  :qid |quant-u-10846|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No)
      (pTaken@81@01 r))
    $Perm.No)
  
  :qid |quant-u-10847|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@78@01 r))
      (img@79@01 r)
      (= r (Seq_index $t@60@01 (inv@78@01 r))))
    (= (- (- kperm@9@01 (pTaken@80@01 r)) (pTaken@81@01 r)) $Perm.No))
  
  :qid |quant-u-10848|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No)
      (pTaken@82@01 r))
    $Perm.No)
  
  :qid |quant-u-10849|))))
(check-sat)
; unsat
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@78@01 r))
      (img@79@01 r)
      (= r (Seq_index $t@60@01 (inv@78@01 r))))
    (=
      (- (- (- kperm@9@01 (pTaken@80@01 r)) (pTaken@81@01 r)) (pTaken@82@01 r))
      $Perm.No))
  
  :qid |quant-u-10850|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] start <= pos
; [eval] pos < end
(set-option :timeout 0)
(push) ; 5
(assert (not (< posl@31@01 end@8@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< posl@31@01 end@8@01))
; [eval] a.array[pos].value == mx
; [eval] a.array[pos]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= posl@31@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< posl@31@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@49@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@49@01 r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@63@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@63@01 r))
    :qid |qp.fvfValDef5|))))
(push) ; 5
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@18@01 (Seq_index $t@60@01 posl@31@01))
          (Seq_contains
            (Seq_range start@7@01 end@8@01)
            (inv@17@01 (Seq_index $t@60@01 posl@31@01))))
        (-
          (- kperm@9@01 (pTaken@38@01 (Seq_index $t@60@01 posl@31@01)))
          (pTaken@43@01 (Seq_index $t@60@01 posl@31@01)))
        $Perm.No)
      (ite
        (and
          (img@51@01 (Seq_index $t@60@01 posl@31@01))
          (Seq_contains
            (Seq_range start@7@01 middle@33@01)
            (inv@50@01 (Seq_index $t@60@01 posl@31@01))))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No))
    (ite
      (and
        (img@65@01 (Seq_index $t@60@01 posl@31@01))
        (Seq_contains
          (Seq_range middle@33@01 end@8@01)
          (inv@64@01 (Seq_index $t@60@01 posl@31@01))))
      (* (/ (to_real 1) (to_real 2)) kperm@9@01)
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (=
  ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 posl@31@01))
  mx@72@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 posl@31@01))
  mx@72@01))
; [eval] (forall l: Int :: { (l in [start..end)) } { a.array[l] } (l in [start..end)) ==> a.array[l].value <= mx)
(declare-const l@83@01 Int)
(push) ; 5
; [eval] (l in [start..end)) ==> a.array[l].value <= mx
; [eval] (l in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 16 | l@83@01 in [start@7@01..end@8@01] | live]
; [else-branch: 16 | !(l@83@01 in [start@7@01..end@8@01]) | live]
(push) ; 7
; [then-branch: 16 | l@83@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
; [eval] a.array[l].value <= mx
; [eval] a.array[l]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= l@83@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< l@83@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@49@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@49@01 r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@63@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@63@01 r))
    :qid |qp.fvfValDef5|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@18@01 (Seq_index $t@60@01 l@83@01))
          (Seq_contains
            (Seq_range start@7@01 end@8@01)
            (inv@17@01 (Seq_index $t@60@01 l@83@01))))
        (-
          (- kperm@9@01 (pTaken@38@01 (Seq_index $t@60@01 l@83@01)))
          (pTaken@43@01 (Seq_index $t@60@01 l@83@01)))
        $Perm.No)
      (ite
        (and
          (img@51@01 (Seq_index $t@60@01 l@83@01))
          (Seq_contains
            (Seq_range start@7@01 middle@33@01)
            (inv@50@01 (Seq_index $t@60@01 l@83@01))))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No))
    (ite
      (and
        (img@65@01 (Seq_index $t@60@01 l@83@01))
        (Seq_contains
          (Seq_range middle@33@01 end@8@01)
          (inv@64@01 (Seq_index $t@60@01 l@83@01))))
      (* (/ (to_real 1) (to_real 2)) kperm@9@01)
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 16 | !(l@83@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
  (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((l@83@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(assert (forall ((l@83@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(assert (forall ((l@83@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
  :pattern ((Seq_index $t@60@01 l@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(push) ; 5
(assert (not (forall ((l@83@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01)
    (<=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 l@83@01))
      mx@72@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@83@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@83@01))
  :pattern ((Seq_index $t@60@01 l@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((l@83@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) l@83@01)
    (<=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 l@83@01))
      mx@72@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@83@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@83@01))
  :pattern ((Seq_index $t@60@01 l@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71|)))
(pop) ; 4
(push) ; 4
; [else-branch: 11 | mx@72@01 != ml@28@01]
(assert (not (= mx@72@01 ml@28@01)))
(pop) ; 4
; [eval] !(mx == ml)
; [eval] mx == ml
(push) ; 4
(set-option :timeout 10)
(assert (not (= mx@72@01 ml@28@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= mx@72@01 ml@28@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | mx@72@01 != ml@28@01 | live]
; [else-branch: 17 | mx@72@01 == ml@28@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 17 | mx@72@01 != ml@28@01]
(assert (not (= mx@72@01 ml@28@01)))
; [exec]
; pos := posr
; [exec]
; assert (forall i6: Int ::
;     { (i6 in [start..end)) }
;     { old(a.array[i6]) }
;     (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value))
; [eval] (forall i6: Int :: { (i6 in [start..end)) } { old(a.array[i6]) } (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value))
(declare-const i6@84@01 Int)
(push) ; 5
; [eval] (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value)
; [eval] (i6 in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 18 | i6@84@01 in [start@7@01..end@8@01] | live]
; [else-branch: 18 | !(i6@84@01 in [start@7@01..end@8@01]) | live]
(push) ; 7
; [then-branch: 18 | i6@84@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
; [eval] a.array[i6].value == old(a.array[i6].value)
; [eval] a.array[i6]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i6@84@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< i6@84@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@49@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@49@01 r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@63@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@63@01 r))
    :qid |qp.fvfValDef5|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@18@01 (Seq_index $t@60@01 i6@84@01))
          (Seq_contains
            (Seq_range start@7@01 end@8@01)
            (inv@17@01 (Seq_index $t@60@01 i6@84@01))))
        (-
          (- kperm@9@01 (pTaken@38@01 (Seq_index $t@60@01 i6@84@01)))
          (pTaken@43@01 (Seq_index $t@60@01 i6@84@01)))
        $Perm.No)
      (ite
        (and
          (img@51@01 (Seq_index $t@60@01 i6@84@01))
          (Seq_contains
            (Seq_range start@7@01 middle@33@01)
            (inv@50@01 (Seq_index $t@60@01 i6@84@01))))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No))
    (ite
      (and
        (img@65@01 (Seq_index $t@60@01 i6@84@01))
        (Seq_contains
          (Seq_range middle@33@01 end@8@01)
          (inv@64@01 (Seq_index $t@60@01 i6@84@01))))
      (* (/ (to_real 1) (to_real 2)) kperm@9@01)
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; [eval] old(a.array[i6].value)
; [eval] a.array[i6]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i6@84@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  i6@84@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (ite
  (and
    (img@18@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
      i6@84@01))
    (Seq_contains
      (Seq_range start@7@01 end@8@01)
      (inv@17@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i6@84@01))))
  (< $Perm.No kperm@9@01)
  false)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 18 | !(i6@84@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
  (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i6@84@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95-aux|)))
(assert (forall ((i6@84@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95-aux|)))
(assert (forall ((i6@84@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i6@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95-aux|)))
(push) ; 5
(assert (not (forall ((i6@84@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 i6@84@01))
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i6@84@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@84@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@84@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i6@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95|))))
(check-sat)
; unsat
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i6@84@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 i6@84@01))
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i6@84@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i6@84@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@84@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i6@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95|)))
(declare-const $k@85@01 $Perm)
(assert ($Perm.isReadVar $k@85@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< $k@85@01 (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01)))
(assert (<=
  $Perm.No
  (- (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01) $k@85@01)))
(assert (<=
  (- (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01) $k@85@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (- (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01) $k@85@01))
  (not (= a@6@01 $Ref.null))))
; [eval] end < |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (< end@8@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< end@8@01 (Seq_length $t@60@01)))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@86@01 Int)
(declare-const j@87@01 Int)
(push) ; 5
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 19 | !(i@86@01 in [start@7@01..end@8@01]) | live]
; [else-branch: 19 | i@86@01 in [start@7@01..end@8@01] | live]
(push) ; 7
; [then-branch: 19 | !(i@86@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 19 | i@86@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 8
; [then-branch: 20 | !(j@87@01 in [start@7@01..end@8@01]) | live]
; [else-branch: 20 | j@87@01 in [start@7@01..end@8@01] | live]
(push) ; 9
; [then-branch: 20 | !(j@87@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 20 | j@87@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01))
; [eval] i != j
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
  (not (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01))))))
(assert (or
  (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
  (not (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01))))
(push) ; 6
; [then-branch: 21 | i@86@01 in [start@7@01..end@8@01] && j@87@01 in [start@7@01..end@8@01] && i@86@01 != j@87@01 | live]
; [else-branch: 21 | !(i@86@01 in [start@7@01..end@8@01] && j@87@01 in [start@7@01..end@8@01] && i@86@01 != j@87@01) | live]
(push) ; 7
; [then-branch: 21 | i@86@01 in [start@7@01..end@8@01] && j@87@01 in [start@7@01..end@8@01] && i@86@01 != j@87@01]
(assert (and
  (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
    (not (= i@86@01 j@87@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< i@86@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= j@87@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< j@87@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 21 | !(i@86@01 in [start@7@01..end@8@01] && j@87@01 in [start@7@01..end@8@01] && i@86@01 != j@87@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
      (not (= i@86@01 j@87@01))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
      (not (= i@86@01 j@87@01))))
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
    (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
    (not (= i@86@01 j@87@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
        (not (= i@86@01 j@87@01)))))
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
      (not (= i@86@01 j@87@01))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@86@01 Int) (j@87@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
        (not (= i@86@01 j@87@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
            (not (= i@86@01 j@87@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@86@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@87@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@86@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@86@01 Int) (j@87@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
        (not (= i@86@01 j@87@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
            (not (= i@86@01 j@87@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@86@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@86@01 Int) (j@87@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
        (not (= i@86@01 j@87@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
            (not (= i@86@01 j@87@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@86@01) (Seq_index
    $t@60@01
    j@87@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@86@01) (Seq_index
    $t@60@01
    j@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@86@01 Int) (j@87@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
        (not (= i@86@01 j@87@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
            (not (= i@86@01 j@87@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@86@01) (Seq_index
    $t@60@01
    j@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@86@01 Int) (j@87@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
        (not (= i@86@01 j@87@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
            (not (= i@86@01 j@87@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@87@01) (Seq_index
    $t@60@01
    i@86@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@87@01) (Seq_index
    $t@60@01
    i@86@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@86@01 Int) (j@87@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
        (not (= i@86@01 j@87@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
            (not (= i@86@01 j@87@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@87@01) (Seq_index
    $t@60@01
    i@86@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@86@01 Int) (j@87@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
        (not (= i@86@01 j@87@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
            (not (= i@86@01 j@87@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
          (not (= i@86@01 j@87@01))))))
  :pattern ((Seq_index $t@60@01 i@86@01) (Seq_index $t@60@01 j@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(push) ; 5
(assert (not (forall ((i@86@01 Int) (j@87@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
        (not (= i@86@01 j@87@01))))
    (not (= (Seq_index $t@60@01 i@86@01) (Seq_index $t@60@01 j@87@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@86@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@87@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@86@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@87@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@86@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@87@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@86@01) (Seq_index
    $t@60@01
    j@87@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@86@01) (Seq_index
    $t@60@01
    j@87@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@86@01) (Seq_index
    $t@60@01
    j@87@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@87@01) (Seq_index
    $t@60@01
    i@86@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@87@01) (Seq_index
    $t@60@01
    i@86@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@87@01) (Seq_index
    $t@60@01
    i@86@01))
  :pattern ((Seq_index $t@60@01 i@86@01) (Seq_index $t@60@01 j@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@86@01 Int) (j@87@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@86@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@87@01)
        (not (= i@86@01 j@87@01))))
    (not (= (Seq_index $t@60@01 i@86@01) (Seq_index $t@60@01 j@87@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@86@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@87@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@86@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@87@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@86@01) (Seq_index
    $t@60@01
    j@87@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@86@01) (Seq_index
    $t@60@01
    j@87@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@87@01) (Seq_index
    $t@60@01
    i@86@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@87@01) (Seq_index
    $t@60@01
    i@86@01))
  :pattern ((Seq_index $t@60@01 i@86@01) (Seq_index $t@60@01 j@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111|)))
(declare-const i@88@01 Int)
(push) ; 5
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i@88@01))
; [eval] a.array[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@88@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@88@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@89@01 ($Ref) Int)
(declare-fun img@90@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((i@88@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) i@88@01)
    (or (= kperm@9@01 $Perm.No) (< $Perm.No kperm@9@01)))
  
  :qid |quant-u-10851|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((i1@88@01 Int) (i2@88@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i1@88@01)
        (< $Perm.No kperm@9@01))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i2@88@01)
        (< $Perm.No kperm@9@01))
      (= (Seq_index $t@60@01 i1@88@01) (Seq_index $t@60@01 i2@88@01)))
    (= i1@88@01 i2@88@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@88@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@88@01)
      (< $Perm.No kperm@9@01))
    (and
      (= (inv@89@01 (Seq_index $t@60@01 i@88@01)) i@88@01)
      (img@90@01 (Seq_index $t@60@01 i@88@01))))
  :pattern ((Seq_index $t@60@01 i@88@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@90@01 r)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@89@01 r))
        (< $Perm.No kperm@9@01)))
    (= (Seq_index $t@60@01 (inv@89@01 r)) r))
  :pattern ((inv@89@01 r))
  :qid |value-fctOfInv|)))
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((i@88@01 Int)) (!
  (=
    (Seq_index $t@60@01 i@88@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
      i@88@01))
  
  :qid |quant-u-10852|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((i@88@01 Int)) (!
  (= (Seq_index $t@60@01 i@88@01) (Seq_index $t@46@01 i@88@01))
  
  :qid |quant-u-10853|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@91@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@89@01 r))
      (img@90@01 r)
      (= r (Seq_index $t@60@01 (inv@89@01 r))))
    ($Perm.min
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r))
        $Perm.No)
      kperm@9@01)
    $Perm.No))
(define-fun pTaken@92@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@89@01 r))
      (img@90@01 r)
      (= r (Seq_index $t@60@01 (inv@89@01 r))))
    ($Perm.min
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No)
      (- kperm@9@01 (pTaken@91@01 r)))
    $Perm.No))
(define-fun pTaken@93@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@89@01 r))
      (img@90@01 r)
      (= r (Seq_index $t@60@01 (inv@89@01 r))))
    ($Perm.min
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No)
      (- (- kperm@9@01 (pTaken@91@01 r)) (pTaken@92@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r))
        $Perm.No)
      (pTaken@91@01 r))
    $Perm.No)
  
  :qid |quant-u-10855|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@89@01 r))
      (img@90@01 r)
      (= r (Seq_index $t@60@01 (inv@89@01 r))))
    (= (- kperm@9@01 (pTaken@91@01 r)) $Perm.No))
  
  :qid |quant-u-10856|))))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No)
      (pTaken@92@01 r))
    $Perm.No)
  
  :qid |quant-u-10857|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@89@01 r))
      (img@90@01 r)
      (= r (Seq_index $t@60@01 (inv@89@01 r))))
    (= (- (- kperm@9@01 (pTaken@91@01 r)) (pTaken@92@01 r)) $Perm.No))
  
  :qid |quant-u-10858|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No)
      (pTaken@93@01 r))
    $Perm.No)
  
  :qid |quant-u-10859|))))
(check-sat)
; unsat
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@89@01 r))
      (img@90@01 r)
      (= r (Seq_index $t@60@01 (inv@89@01 r))))
    (=
      (- (- (- kperm@9@01 (pTaken@91@01 r)) (pTaken@92@01 r)) (pTaken@93@01 r))
      $Perm.No))
  
  :qid |quant-u-10860|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] start <= pos
(set-option :timeout 0)
(push) ; 5
(assert (not (<= start@7@01 posr@32@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= start@7@01 posr@32@01))
; [eval] pos < end
; [eval] a.array[pos].value == mx
; [eval] a.array[pos]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= posr@32@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< posr@32@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@49@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@49@01 r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@63@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@63@01 r))
    :qid |qp.fvfValDef5|))))
(push) ; 5
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@18@01 (Seq_index $t@60@01 posr@32@01))
          (Seq_contains
            (Seq_range start@7@01 end@8@01)
            (inv@17@01 (Seq_index $t@60@01 posr@32@01))))
        (-
          (- kperm@9@01 (pTaken@38@01 (Seq_index $t@60@01 posr@32@01)))
          (pTaken@43@01 (Seq_index $t@60@01 posr@32@01)))
        $Perm.No)
      (ite
        (and
          (img@51@01 (Seq_index $t@60@01 posr@32@01))
          (Seq_contains
            (Seq_range start@7@01 middle@33@01)
            (inv@50@01 (Seq_index $t@60@01 posr@32@01))))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No))
    (ite
      (and
        (img@65@01 (Seq_index $t@60@01 posr@32@01))
        (Seq_contains
          (Seq_range middle@33@01 end@8@01)
          (inv@64@01 (Seq_index $t@60@01 posr@32@01))))
      (* (/ (to_real 1) (to_real 2)) kperm@9@01)
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (=
  ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 posr@32@01))
  mx@72@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 posr@32@01))
  mx@72@01))
; [eval] (forall l: Int :: { (l in [start..end)) } { a.array[l] } (l in [start..end)) ==> a.array[l].value <= mx)
(declare-const l@94@01 Int)
(push) ; 5
; [eval] (l in [start..end)) ==> a.array[l].value <= mx
; [eval] (l in [start..end))
; [eval] [start..end)
(push) ; 6
; [then-branch: 22 | l@94@01 in [start@7@01..end@8@01] | live]
; [else-branch: 22 | !(l@94@01 in [start@7@01..end@8@01]) | live]
(push) ; 7
; [then-branch: 22 | l@94@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
; [eval] a.array[l].value <= mx
; [eval] a.array[l]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (+ (- (- $k@13@01 $k@34@01) $k@39@01) $k@44@01) $k@58@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= l@94@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< l@94@01 (Seq_length $t@60@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@51@01 r)
          (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@49@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@49@01 r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@65@01 r)
          (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
        false)
      (=
        ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
        ($FVF.lookup_value $t@63@01 r)))
    :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@63@01 r))
    :qid |qp.fvfValDef5|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@18@01 (Seq_index $t@60@01 l@94@01))
          (Seq_contains
            (Seq_range start@7@01 end@8@01)
            (inv@17@01 (Seq_index $t@60@01 l@94@01))))
        (-
          (- kperm@9@01 (pTaken@38@01 (Seq_index $t@60@01 l@94@01)))
          (pTaken@43@01 (Seq_index $t@60@01 l@94@01)))
        $Perm.No)
      (ite
        (and
          (img@51@01 (Seq_index $t@60@01 l@94@01))
          (Seq_contains
            (Seq_range start@7@01 middle@33@01)
            (inv@50@01 (Seq_index $t@60@01 l@94@01))))
        (* (/ (to_real 1) (to_real 2)) kperm@9@01)
        $Perm.No))
    (ite
      (and
        (img@65@01 (Seq_index $t@60@01 l@94@01))
        (Seq_contains
          (Seq_range middle@33@01 end@8@01)
          (inv@64@01 (Seq_index $t@60@01 l@94@01))))
      (* (/ (to_real 1) (to_real 2)) kperm@9@01)
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 22 | !(l@94@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
  (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@18@01 r)
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
      (< $Perm.No (- (- kperm@9@01 (pTaken@38@01 r)) (pTaken@43@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@51@01 r)
        (Seq_contains (Seq_range start@7@01 middle@33@01) (inv@50@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@49@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@49@01 r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@65@01 r)
        (Seq_contains (Seq_range middle@33@01 end@8@01) (inv@64@01 r)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) kperm@9@01))
      false)
    (=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) r)
      ($FVF.lookup_value $t@63@01 r)))
  :pattern (($FVF.lookup_value (as sm@68@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@63@01 r))
  :qid |qp.fvfValDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((l@94@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(assert (forall ((l@94@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(assert (forall ((l@94@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
  :pattern ((Seq_index $t@60@01 l@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(push) ; 5
(assert (not (forall ((l@94@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01)
    (<=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 l@94@01))
      mx@72@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@94@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@94@01))
  :pattern ((Seq_index $t@60@01 l@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((l@94@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) l@94@01)
    (<=
      ($FVF.lookup_value (as sm@68@01  $FVF<value>) (Seq_index $t@60@01 l@94@01))
      mx@72@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@94@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@94@01))
  :pattern ((Seq_index $t@60@01 l@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71|)))
(pop) ; 4
(push) ; 4
; [else-branch: 17 | mx@72@01 == ml@28@01]
(assert (= mx@72@01 ml@28@01))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 7 | !(end@8@01 - start@7@01 > 1)]
(assert (not (> (- end@8@01 start@7@01) 1)))
(pop) ; 3
; [eval] !(end - start > 1)
; [eval] end - start > 1
; [eval] end - start
(push) ; 3
(set-option :timeout 10)
(assert (not (> (- end@8@01 start@7@01) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> (- end@8@01 start@7@01) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | !(end@8@01 - start@7@01 > 1) | live]
; [else-branch: 23 | end@8@01 - start@7@01 > 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 23 | !(end@8@01 - start@7@01 > 1)]
(assert (not (> (- end@8@01 start@7@01) 1)))
; [exec]
; mx := a.array[start].value
; [eval] a.array[start]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= start@7@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  start@7@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (ite
  (and
    (img@18@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
      start@7@01))
    (Seq_contains
      (Seq_range start@7@01 end@8@01)
      (inv@17@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        start@7@01))))
  (< $Perm.No kperm@9@01)
  false)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const mx@95@01 Int)
(assert (=
  mx@95@01
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    start@7@01))))
; [exec]
; pos := start
; [exec]
; assert (forall i6: Int ::
;     { (i6 in [start..end)) }
;     { old(a.array[i6]) }
;     (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value))
; [eval] (forall i6: Int :: { (i6 in [start..end)) } { old(a.array[i6]) } (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value))
(declare-const i6@96@01 Int)
(push) ; 4
; [eval] (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value)
; [eval] (i6 in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 24 | i6@96@01 in [start@7@01..end@8@01] | live]
; [else-branch: 24 | !(i6@96@01 in [start@7@01..end@8@01]) | live]
(push) ; 6
; [then-branch: 24 | i6@96@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01))
; [eval] a.array[i6].value == old(a.array[i6].value)
; [eval] a.array[i6]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i6@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  i6@96@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (ite
  (and
    (img@18@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
      i6@96@01))
    (Seq_contains
      (Seq_range start@7@01 end@8@01)
      (inv@17@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i6@96@01))))
  (< $Perm.No kperm@9@01)
  false)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.array[i6].value)
; [eval] a.array[i6]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i6@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  i6@96@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (ite
  (and
    (img@18@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
      i6@96@01))
    (Seq_contains
      (Seq_range start@7@01 end@8@01)
      (inv@17@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i6@96@01))))
  (< $Perm.No kperm@9@01)
  false)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 24 | !(i6@96@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01))
  (Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01)))
; [eval] old(a.array[i6])
; [eval] a.array[i6]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i6@96@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i6@96@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95-aux|)))
(assert (forall ((i6@96@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i6@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95-aux|)))
(assert (forall ((i6@96@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) i6@96@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@78@12@78@95-aux|)))
(declare-const $k@97@01 $Perm)
(assert ($Perm.isReadVar $k@97@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@13@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@97@01 $k@13@01))
(assert (<= $Perm.No (- $k@13@01 $k@97@01)))
(assert (<= (- $k@13@01 $k@97@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@13@01 $k@97@01)) (not (= a@6@01 $Ref.null))))
; [eval] end < |a.array|
; [eval] |a.array|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
(declare-const i@98@01 Int)
(declare-const j@99@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 25 | !(i@98@01 in [start@7@01..end@8@01]) | live]
; [else-branch: 25 | i@98@01 in [start@7@01..end@8@01] | live]
(push) ; 6
; [then-branch: 25 | !(i@98@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 25 | i@98@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 7
; [then-branch: 26 | !(j@99@01 in [start@7@01..end@8@01]) | live]
; [else-branch: 26 | j@99@01 in [start@7@01..end@8@01] | live]
(push) ; 8
; [then-branch: 26 | !(j@99@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 26 | j@99@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01))
; [eval] i != j
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
  (not (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01))))))
(assert (or
  (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
  (not (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01))))
(push) ; 5
; [then-branch: 27 | i@98@01 in [start@7@01..end@8@01] && j@99@01 in [start@7@01..end@8@01] && i@98@01 != j@99@01 | live]
; [else-branch: 27 | !(i@98@01 in [start@7@01..end@8@01] && j@99@01 in [start@7@01..end@8@01] && i@98@01 != j@99@01) | live]
(push) ; 6
; [then-branch: 27 | i@98@01 in [start@7@01..end@8@01] && j@99@01 in [start@7@01..end@8@01] && i@98@01 != j@99@01]
(assert (and
  (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
    (not (= i@98@01 j@99@01)))))
; [eval] a.array[i] != a.array[j]
; [eval] a.array[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@98@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  i@98@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a.array[j]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= j@99@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  j@99@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 27 | !(i@98@01 in [start@7@01..end@8@01] && j@99@01 in [start@7@01..end@8@01] && i@98@01 != j@99@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
      (not (= i@98@01 j@99@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
      (not (= i@98@01 j@99@01))))
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
    (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
    (not (= i@98@01 j@99@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
        (not (= i@98@01 j@99@01)))))
  (and
    (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
      (not (= i@98@01 j@99@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@98@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@98@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@98@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@99@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@99@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@99@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (or
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (not (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
          (and
            (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
        (and
          (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111-aux|)))
(push) ; 4
(assert (not (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i@98@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          j@99@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@98@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@98@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@98@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@99@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@99@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@99@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@99@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@98@01)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i@98@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          j@99@01))))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@98@01) (Seq_contains
    (Seq_range start@7@01 end@8@01)
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@98@01) (Seq_contains_trigger
    (Seq_range start@7@01 end@8@01)
    j@99@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) j@99@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) j@99@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@21@11@21@111|)))
(declare-const i@100@01 Int)
(push) ; 4
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@7@01 end@8@01) i@100@01))
; [eval] a.array[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@100@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@100@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@101@01 ($Ref) Int)
(declare-fun img@102@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((i@100@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) i@100@01)
    (or (= kperm@9@01 $Perm.No) (< $Perm.No kperm@9@01)))
  
  :qid |quant-u-10861|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@100@01 Int) (i2@100@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i1@100@01)
        (< $Perm.No kperm@9@01))
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) i2@100@01)
        (< $Perm.No kperm@9@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i1@100@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i2@100@01)))
    (= i1@100@01 i2@100@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@100@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) i@100@01)
      (< $Perm.No kperm@9@01))
    (and
      (=
        (inv@101@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          i@100@01))
        i@100@01)
      (img@102@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        i@100@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    i@100@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@102@01 r)
      (and
        (Seq_contains (Seq_range start@7@01 end@8@01) (inv@101@01 r))
        (< $Perm.No kperm@9@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        (inv@101@01 r))
      r))
  :pattern ((inv@101@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@103@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@101@01 r))
      (img@102@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          (inv@101@01 r))))
    ($Perm.min
      (ite
        (and
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        kperm@9@01
        $Perm.No)
      kperm@9@01)
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
          (img@18@01 r)
          (Seq_contains (Seq_range start@7@01 end@8@01) (inv@17@01 r)))
        kperm@9@01
        $Perm.No)
      (pTaken@103@01 r))
    $Perm.No)
  
  :qid |quant-u-10863|))))
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
      (Seq_contains (Seq_range start@7@01 end@8@01) (inv@101@01 r))
      (img@102@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
          (inv@101@01 r))))
    (= (- kperm@9@01 (pTaken@103@01 r)) $Perm.No))
  
  :qid |quant-u-10864|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] start <= pos
; [eval] pos < end
; [eval] a.array[pos].value == mx
; [eval] a.array[pos]
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= start@7@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  start@7@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (ite
  (and
    (img@18@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
      start@7@01))
    (Seq_contains
      (Seq_range start@7@01 end@8@01)
      (inv@17@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        start@7@01))))
  (< $Perm.No kperm@9@01)
  false)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    start@7@01))
  mx@95@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    start@7@01))
  mx@95@01))
; [eval] (forall l: Int :: { (l in [start..end)) } { a.array[l] } (l in [start..end)) ==> a.array[l].value <= mx)
(declare-const l@104@01 Int)
(push) ; 4
; [eval] (l in [start..end)) ==> a.array[l].value <= mx
; [eval] (l in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 28 | l@104@01 in [start@7@01..end@8@01] | live]
; [else-branch: 28 | !(l@104@01 in [start@7@01..end@8@01]) | live]
(push) ; 6
; [then-branch: 28 | l@104@01 in [start@7@01..end@8@01]]
(assert (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
; [eval] a.array[l].value <= mx
; [eval] a.array[l]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= l@104@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  l@104@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (ite
  (and
    (img@18@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
      l@104@01))
    (Seq_contains
      (Seq_range start@7@01 end@8@01)
      (inv@17@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        l@104@01))))
  (< $Perm.No kperm@9@01)
  false)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 28 | !(l@104@01 in [start@7@01..end@8@01])]
(assert (not (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
  (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((l@104@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(assert (forall ((l@104@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(assert (forall ((l@104@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
    (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    l@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71-aux|)))
(push) ; 4
(assert (not (forall ((l@104@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01)
    (<=
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        l@104@01))
      mx@95@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@104@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@104@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    l@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((l@104@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@7@01 end@8@01) l@104@01)
    (<=
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
        l@104@01))
      mx@95@01))
  :pattern ((Seq_contains (Seq_range start@7@01 end@8@01) l@104@01))
  :pattern ((Seq_contains_trigger (Seq_range start@7@01 end@8@01) l@104@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second $t@12@01)))
    l@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.vpr@25@12@25@71|)))
(pop) ; 3
(push) ; 3
; [else-branch: 23 | end@8@01 - start@7@01 > 1]
(assert (> (- end@8@01 start@7@01) 1))
(pop) ; 3
(pop) ; 2
(pop) ; 1
