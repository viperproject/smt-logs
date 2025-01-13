(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:32:21
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
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<Integer_value> 0)
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
(declare-fun $SortWrappers.$FVF<Integer_value>To$Snap ($FVF<Integer_value>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<Integer_value> ($Snap) $FVF<Integer_value>)
(assert (forall ((x $FVF<Integer_value>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<Integer_value>($SortWrappers.$FVF<Integer_value>To$Snap x)))
    :pattern (($SortWrappers.$FVF<Integer_value>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<Integer_value>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<Integer_value>To$Snap($SortWrappers.$SnapTo$FVF<Integer_value> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<Integer_value> x))
    :qid |$Snap.$FVF<Integer_value>To$SnapTo$FVF<Integer_value>|
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
; /field_value_functions_declarations.smt2 [Integer_value: Int]
(declare-fun $FVF.domain_Integer_value ($FVF<Integer_value>) Set<$Ref>)
(declare-fun $FVF.lookup_Integer_value ($FVF<Integer_value> $Ref) Int)
(declare-fun $FVF.after_Integer_value ($FVF<Integer_value> $FVF<Integer_value>) Bool)
(declare-fun $FVF.loc_Integer_value (Int $Ref) Bool)
(declare-fun $FVF.perm_Integer_value ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Integer_value $FVF<Integer_value>)
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
; /field_value_functions_axioms.smt2 [Integer_value: Int]
(assert (forall ((vs $FVF<Integer_value>) (ws $FVF<Integer_value>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_Integer_value vs) ($FVF.domain_Integer_value ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_Integer_value vs))
            (= ($FVF.lookup_Integer_value vs x) ($FVF.lookup_Integer_value ws x)))
          :pattern (($FVF.lookup_Integer_value vs x) ($FVF.lookup_Integer_value ws x))
          :qid |qp.$FVF<Integer_value>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<Integer_value>To$Snap vs)
              ($SortWrappers.$FVF<Integer_value>To$Snap ws)
              )
    :qid |qp.$FVF<Integer_value>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_Integer_value pm r))
    :pattern (($FVF.perm_Integer_value pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_Integer_value f r) true)
    :pattern (($FVF.loc_Integer_value f r)))))
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
; ---------- loop_main_54 ----------
(declare-const this@0@01 $Ref)
(declare-const len@1@01 Int)
(declare-const ar@2@01 Seq<$Ref>)
(declare-const br@3@01 Seq<$Ref>)
(declare-const cr@4@01 Seq<$Ref>)
(declare-const this@5@01 $Ref)
(declare-const len@6@01 Int)
(declare-const ar@7@01 Seq<$Ref>)
(declare-const br@8@01 Seq<$Ref>)
(declare-const cr@9@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] 0 < len
(assert (< 0 len@6@01))
(assert (=
  ($Snap.second $t@10@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@10@01))
    ($Snap.second ($Snap.second $t@10@01)))))
(assert (= ($Snap.first ($Snap.second $t@10@01)) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (= (Seq_length ar@7@01) len@6@01))
(assert (=
  ($Snap.second ($Snap.second $t@10@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@10@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@10@01))) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), ar[j] } { (j in [0..len)), ar[i] } { ar[i], ar[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> ar[i] != ar[j])
(declare-const i@11@01 Int)
(declare-const j@12@01 Int)
(push) ; 2
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j) ==> ar[i] != ar[j]
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j)
; [eval] (i in [0..len))
; [eval] [0..len)
(push) ; 3
; [then-branch: 0 | !(i@11@01 in [0..len@6@01]) | live]
; [else-branch: 0 | i@11@01 in [0..len@6@01] | live]
(push) ; 4
; [then-branch: 0 | !(i@11@01 in [0..len@6@01])]
(assert (not (Seq_contains (Seq_range 0 len@6@01) i@11@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | i@11@01 in [0..len@6@01]]
(assert (Seq_contains (Seq_range 0 len@6@01) i@11@01))
; [eval] (j in [0..len))
; [eval] [0..len)
(push) ; 5
; [then-branch: 1 | !(j@12@01 in [0..len@6@01]) | live]
; [else-branch: 1 | j@12@01 in [0..len@6@01] | live]
(push) ; 6
; [then-branch: 1 | !(j@12@01 in [0..len@6@01])]
(assert (not (Seq_contains (Seq_range 0 len@6@01) j@12@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | j@12@01 in [0..len@6@01]]
(assert (Seq_contains (Seq_range 0 len@6@01) j@12@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 len@6@01) j@12@01)
  (not (Seq_contains (Seq_range 0 len@6@01) j@12@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 len@6@01) i@11@01)
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@11@01)
    (or
      (Seq_contains (Seq_range 0 len@6@01) j@12@01)
      (not (Seq_contains (Seq_range 0 len@6@01) j@12@01))))))
(assert (or
  (Seq_contains (Seq_range 0 len@6@01) i@11@01)
  (not (Seq_contains (Seq_range 0 len@6@01) i@11@01))))
(push) ; 3
; [then-branch: 2 | i@11@01 in [0..len@6@01] && j@12@01 in [0..len@6@01] && i@11@01 != j@12@01 | live]
; [else-branch: 2 | !(i@11@01 in [0..len@6@01] && j@12@01 in [0..len@6@01] && i@11@01 != j@12@01) | live]
(push) ; 4
; [then-branch: 2 | i@11@01 in [0..len@6@01] && j@12@01 in [0..len@6@01] && i@11@01 != j@12@01]
(assert (and
  (Seq_contains (Seq_range 0 len@6@01) i@11@01)
  (and (Seq_contains (Seq_range 0 len@6@01) j@12@01) (not (= i@11@01 j@12@01)))))
; [eval] ar[i] != ar[j]
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@11@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@11@01 (Seq_length ar@7@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] ar[j]
(push) ; 5
(assert (not (>= j@12@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@12@01 (Seq_length ar@7@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(i@11@01 in [0..len@6@01] && j@12@01 in [0..len@6@01] && i@11@01 != j@12@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@11@01)
    (and (Seq_contains (Seq_range 0 len@6@01) j@12@01) (not (= i@11@01 j@12@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@11@01)
    (and (Seq_contains (Seq_range 0 len@6@01) j@12@01) (not (= i@11@01 j@12@01))))
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@11@01)
    (Seq_contains (Seq_range 0 len@6@01) j@12@01)
    (not (= i@11@01 j@12@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) j@12@01)
        (not (= i@11@01 j@12@01)))))
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@11@01)
    (and (Seq_contains (Seq_range 0 len@6@01) j@12@01) (not (= i@11@01 j@12@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (Seq_contains (Seq_range 0 len@6@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@11@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@11@01) (Seq_contains
    (Seq_range 0 len@6@01)
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@11@01) (Seq_contains_trigger
    (Seq_range 0 len@6@01)
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (Seq_contains (Seq_range 0 len@6@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@11@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@11@01) (Seq_contains_trigger
    (Seq_range 0 len@6@01)
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (Seq_contains (Seq_range 0 len@6@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@11@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@11@01) (Seq_index
    ar@7@01
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@11@01) (Seq_index
    ar@7@01
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (Seq_contains (Seq_range 0 len@6@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@11@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@11@01) (Seq_index
    ar@7@01
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (Seq_contains (Seq_range 0 len@6@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@11@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) j@12@01) (Seq_index
    ar@7@01
    i@11@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) j@12@01) (Seq_index
    ar@7@01
    i@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (Seq_contains (Seq_range 0 len@6@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@11@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) j@12@01) (Seq_index
    ar@7@01
    i@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (Seq_contains (Seq_range 0 len@6@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@11@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@11@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_index ar@7@01 i@11@01) (Seq_index ar@7@01 j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@6@01) i@11@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) j@12@01)
        (not (= i@11@01 j@12@01))))
    (not (= (Seq_index ar@7@01 i@11@01) (Seq_index ar@7@01 j@12@01))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@11@01) (Seq_contains
    (Seq_range 0 len@6@01)
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@11@01) (Seq_contains_trigger
    (Seq_range 0 len@6@01)
    j@12@01))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@11@01) (Seq_index
    ar@7@01
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@11@01) (Seq_index
    ar@7@01
    j@12@01))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) j@12@01) (Seq_index
    ar@7@01
    i@11@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) j@12@01) (Seq_index
    ar@7@01
    i@11@01))
  :pattern ((Seq_index ar@7@01 i@11@01) (Seq_index ar@7@01 j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@10@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))
(declare-const i@13@01 Int)
(push) ; 2
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@6@01) i@13@01))
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@13@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@13@01 (Seq_length ar@7@01))))
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
      (Seq_contains (Seq_range 0 len@6@01) i1@13@01)
      (Seq_contains (Seq_range 0 len@6@01) i2@13@01)
      (= (Seq_index ar@7@01 i1@13@01) (Seq_index ar@7@01 i2@13@01)))
    (= i1@13@01 i2@13@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@13@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@13@01)
    (and
      (= (inv@14@01 (Seq_index ar@7@01 i@13@01)) i@13@01)
      (img@15@01 (Seq_index ar@7@01 i@13@01))))
  :pattern ((Seq_index ar@7@01 i@13@01))
  :qid |quant-u-9779|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@15@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@14@01 r)))
    (= (Seq_index ar@7@01 (inv@14@01 r)) r))
  :pattern ((inv@14@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@13@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@13@01)
    (not (= (Seq_index ar@7@01 i@13@01) $Ref.null)))
  :pattern ((Seq_index ar@7@01 i@13@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))
; [eval] ar[0]
(push) ; 2
(assert (not (< 0 (Seq_length ar@7@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@16@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@16@01  $FVF<Integer_value>) (Seq_index
    ar@7@01
    0))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))
(assert (<=
  $Perm.No
  (ite
    (= (Seq_index ar@7@01 0) (Seq_index ar@7@01 0))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (= (Seq_index ar@7@01 0) (Seq_index ar@7@01 0))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (Seq_index ar@7@01 0) (Seq_index ar@7@01 0))
  (not (= (Seq_index ar@7@01 0) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))))
(declare-const i@17@01 Int)
(push) ; 2
; [eval] (i in [0 + 1..|ar| - 1 + 1))
; [eval] [0 + 1..|ar| - 1 + 1)
; [eval] 0 + 1
; [eval] |ar| - 1 + 1
; [eval] |ar| - 1
; [eval] |ar|
(assert (Seq_contains (Seq_range 1 (+ (- (Seq_length ar@7@01) 1) 1)) i@17@01))
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@17@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@17@01 (Seq_length ar@7@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@18@01 ($Ref) Int)
(declare-fun img@19@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@17@01 Int) (i2@17@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 1 (+ (- (Seq_length ar@7@01) 1) 1)) i1@17@01)
      (Seq_contains (Seq_range 1 (+ (- (Seq_length ar@7@01) 1) 1)) i2@17@01)
      (= (Seq_index ar@7@01 i1@17@01) (Seq_index ar@7@01 i2@17@01)))
    (= i1@17@01 i2@17@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@17@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ (- (Seq_length ar@7@01) 1) 1)) i@17@01)
    (and
      (= (inv@18@01 (Seq_index ar@7@01 i@17@01)) i@17@01)
      (img@19@01 (Seq_index ar@7@01 i@17@01))))
  :pattern ((Seq_index ar@7@01 i@17@01))
  :qid |quant-u-9781|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@01 r)
      (Seq_contains (Seq_range 1 (+ (- (Seq_length ar@7@01) 1) 1)) (inv@18@01 r)))
    (= (Seq_index ar@7@01 (inv@18@01 r)) r))
  :pattern ((inv@18@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@17@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ (- (Seq_length ar@7@01) 1) 1)) i@17@01)
    (not (= (Seq_index ar@7@01 i@17@01) $Ref.null)))
  :pattern ((Seq_index ar@7@01 i@17@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ar@7@01 i@17@01) (Seq_index ar@7@01 i@13@01))
    (=
      (and
        (img@19@01 r)
        (Seq_contains
          (Seq_range 1 (+ (- (Seq_length ar@7@01) 1) 1))
          (inv@18@01 r)))
      (and (img@15@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@14@01 r)))))
  
  :qid |quant-u-9782|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@8@01) len@6@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), br[j] } { (j in [0..len)), br[i] } { br[i], br[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> br[i] != br[j])
(declare-const i@20@01 Int)
(declare-const j@21@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j) ==> br[i] != br[j]
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j)
; [eval] (i in [0..len))
; [eval] [0..len)
(push) ; 3
; [then-branch: 3 | !(i@20@01 in [0..len@6@01]) | live]
; [else-branch: 3 | i@20@01 in [0..len@6@01] | live]
(push) ; 4
; [then-branch: 3 | !(i@20@01 in [0..len@6@01])]
(assert (not (Seq_contains (Seq_range 0 len@6@01) i@20@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 3 | i@20@01 in [0..len@6@01]]
(assert (Seq_contains (Seq_range 0 len@6@01) i@20@01))
; [eval] (j in [0..len))
; [eval] [0..len)
(push) ; 5
; [then-branch: 4 | !(j@21@01 in [0..len@6@01]) | live]
; [else-branch: 4 | j@21@01 in [0..len@6@01] | live]
(push) ; 6
; [then-branch: 4 | !(j@21@01 in [0..len@6@01])]
(assert (not (Seq_contains (Seq_range 0 len@6@01) j@21@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 4 | j@21@01 in [0..len@6@01]]
(assert (Seq_contains (Seq_range 0 len@6@01) j@21@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 len@6@01) j@21@01)
  (not (Seq_contains (Seq_range 0 len@6@01) j@21@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 len@6@01) i@20@01)
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@20@01)
    (or
      (Seq_contains (Seq_range 0 len@6@01) j@21@01)
      (not (Seq_contains (Seq_range 0 len@6@01) j@21@01))))))
(assert (or
  (Seq_contains (Seq_range 0 len@6@01) i@20@01)
  (not (Seq_contains (Seq_range 0 len@6@01) i@20@01))))
(push) ; 3
; [then-branch: 5 | i@20@01 in [0..len@6@01] && j@21@01 in [0..len@6@01] && i@20@01 != j@21@01 | live]
; [else-branch: 5 | !(i@20@01 in [0..len@6@01] && j@21@01 in [0..len@6@01] && i@20@01 != j@21@01) | live]
(push) ; 4
; [then-branch: 5 | i@20@01 in [0..len@6@01] && j@21@01 in [0..len@6@01] && i@20@01 != j@21@01]
(assert (and
  (Seq_contains (Seq_range 0 len@6@01) i@20@01)
  (and (Seq_contains (Seq_range 0 len@6@01) j@21@01) (not (= i@20@01 j@21@01)))))
; [eval] br[i] != br[j]
; [eval] br[i]
(push) ; 5
(assert (not (>= i@20@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@20@01 (Seq_length br@8@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] br[j]
(push) ; 5
(assert (not (>= j@21@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@21@01 (Seq_length br@8@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(i@20@01 in [0..len@6@01] && j@21@01 in [0..len@6@01] && i@20@01 != j@21@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@20@01)
    (and (Seq_contains (Seq_range 0 len@6@01) j@21@01) (not (= i@20@01 j@21@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@20@01)
    (and (Seq_contains (Seq_range 0 len@6@01) j@21@01) (not (= i@20@01 j@21@01))))
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@20@01)
    (Seq_contains (Seq_range 0 len@6@01) j@21@01)
    (not (= i@20@01 j@21@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) j@21@01)
        (not (= i@20@01 j@21@01)))))
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@20@01)
    (and (Seq_contains (Seq_range 0 len@6@01) j@21@01) (not (= i@20@01 j@21@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@20@01 Int) (j@21@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@21@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@20@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (Seq_contains (Seq_range 0 len@6@01) j@21@01)
        (not (= i@20@01 j@21@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@20@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@21@01)
            (not (= i@20@01 j@21@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@20@01) (Seq_contains
    (Seq_range 0 len@6@01)
    j@21@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@20@01) (Seq_contains_trigger
    (Seq_range 0 len@6@01)
    j@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@20@01 Int) (j@21@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@21@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@20@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (Seq_contains (Seq_range 0 len@6@01) j@21@01)
        (not (= i@20@01 j@21@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@20@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@21@01)
            (not (= i@20@01 j@21@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@20@01) (Seq_contains_trigger
    (Seq_range 0 len@6@01)
    j@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@20@01 Int) (j@21@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@21@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@20@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (Seq_contains (Seq_range 0 len@6@01) j@21@01)
        (not (= i@20@01 j@21@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@20@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@21@01)
            (not (= i@20@01 j@21@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@20@01) (Seq_index
    br@8@01
    j@21@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@20@01) (Seq_index
    br@8@01
    j@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@20@01 Int) (j@21@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@21@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@20@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (Seq_contains (Seq_range 0 len@6@01) j@21@01)
        (not (= i@20@01 j@21@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@20@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@21@01)
            (not (= i@20@01 j@21@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@20@01) (Seq_index
    br@8@01
    j@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@20@01 Int) (j@21@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@21@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@20@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (Seq_contains (Seq_range 0 len@6@01) j@21@01)
        (not (= i@20@01 j@21@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@20@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@21@01)
            (not (= i@20@01 j@21@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) j@21@01) (Seq_index
    br@8@01
    i@20@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) j@21@01) (Seq_index
    br@8@01
    i@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@20@01 Int) (j@21@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@21@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@20@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (Seq_contains (Seq_range 0 len@6@01) j@21@01)
        (not (= i@20@01 j@21@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@20@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@21@01)
            (not (= i@20@01 j@21@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) j@21@01) (Seq_index
    br@8@01
    i@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@20@01 Int) (j@21@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@21@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@20@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (Seq_contains (Seq_range 0 len@6@01) j@21@01)
        (not (= i@20@01 j@21@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@20@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@21@01)
            (not (= i@20@01 j@21@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@20@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@21@01)
          (not (= i@20@01 j@21@01))))))
  :pattern ((Seq_index br@8@01 i@20@01) (Seq_index br@8@01 j@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@20@01 Int) (j@21@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@6@01) i@20@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) j@21@01)
        (not (= i@20@01 j@21@01))))
    (not (= (Seq_index br@8@01 i@20@01) (Seq_index br@8@01 j@21@01))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@20@01) (Seq_contains
    (Seq_range 0 len@6@01)
    j@21@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@20@01) (Seq_contains_trigger
    (Seq_range 0 len@6@01)
    j@21@01))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@20@01) (Seq_index
    br@8@01
    j@21@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@20@01) (Seq_index
    br@8@01
    j@21@01))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) j@21@01) (Seq_index
    br@8@01
    i@20@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) j@21@01) (Seq_index
    br@8@01
    i@20@01))
  :pattern ((Seq_index br@8@01 i@20@01) (Seq_index br@8@01 j@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))))))
(declare-const i@22@01 Int)
(push) ; 2
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@6@01) i@22@01))
; [eval] br[i]
(push) ; 3
(assert (not (>= i@22@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@22@01 (Seq_length br@8@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@23@01 ($Ref) Int)
(declare-fun img@24@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@22@01 Int) (i2@22@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@6@01) i1@22@01)
      (Seq_contains (Seq_range 0 len@6@01) i2@22@01)
      (= (Seq_index br@8@01 i1@22@01) (Seq_index br@8@01 i2@22@01)))
    (= i1@22@01 i2@22@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@22@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@22@01)
    (and
      (= (inv@23@01 (Seq_index br@8@01 i@22@01)) i@22@01)
      (img@24@01 (Seq_index br@8@01 i@22@01))))
  :pattern ((Seq_index br@8@01 i@22@01))
  :qid |quant-u-9784|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@24@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@23@01 r)))
    (= (Seq_index br@8@01 (inv@23@01 r)) r))
  :pattern ((inv@23@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@22@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@22@01)
    (not (= (Seq_index br@8@01 i@22@01) $Ref.null)))
  :pattern ((Seq_index br@8@01 i@22@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@8@01 i@22@01) (Seq_index ar@7@01 i@17@01))
    (=
      (and (img@24@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@23@01 r)))
      (and
        (img@19@01 r)
        (Seq_contains
          (Seq_range 1 (+ (- (Seq_length ar@7@01) 1) 1))
          (inv@18@01 r)))))
  
  :qid |quant-u-9785|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@8@01 i@22@01) (Seq_index ar@7@01 i@13@01))
    (=
      (and (img@24@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@23@01 r)))
      (and (img@15@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@14@01 r)))))
  
  :qid |quant-u-9786|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@9@01) len@6@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), cr[j] } { (j in [0..len)), cr[i] } { cr[i], cr[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> cr[i] != cr[j])
(declare-const i@25@01 Int)
(declare-const j@26@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j) ==> cr[i] != cr[j]
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j)
; [eval] (i in [0..len))
; [eval] [0..len)
(push) ; 3
; [then-branch: 6 | !(i@25@01 in [0..len@6@01]) | live]
; [else-branch: 6 | i@25@01 in [0..len@6@01] | live]
(push) ; 4
; [then-branch: 6 | !(i@25@01 in [0..len@6@01])]
(assert (not (Seq_contains (Seq_range 0 len@6@01) i@25@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | i@25@01 in [0..len@6@01]]
(assert (Seq_contains (Seq_range 0 len@6@01) i@25@01))
; [eval] (j in [0..len))
; [eval] [0..len)
(push) ; 5
; [then-branch: 7 | !(j@26@01 in [0..len@6@01]) | live]
; [else-branch: 7 | j@26@01 in [0..len@6@01] | live]
(push) ; 6
; [then-branch: 7 | !(j@26@01 in [0..len@6@01])]
(assert (not (Seq_contains (Seq_range 0 len@6@01) j@26@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 7 | j@26@01 in [0..len@6@01]]
(assert (Seq_contains (Seq_range 0 len@6@01) j@26@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 len@6@01) j@26@01)
  (not (Seq_contains (Seq_range 0 len@6@01) j@26@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 len@6@01) i@25@01)
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@25@01)
    (or
      (Seq_contains (Seq_range 0 len@6@01) j@26@01)
      (not (Seq_contains (Seq_range 0 len@6@01) j@26@01))))))
(assert (or
  (Seq_contains (Seq_range 0 len@6@01) i@25@01)
  (not (Seq_contains (Seq_range 0 len@6@01) i@25@01))))
(push) ; 3
; [then-branch: 8 | i@25@01 in [0..len@6@01] && j@26@01 in [0..len@6@01] && i@25@01 != j@26@01 | live]
; [else-branch: 8 | !(i@25@01 in [0..len@6@01] && j@26@01 in [0..len@6@01] && i@25@01 != j@26@01) | live]
(push) ; 4
; [then-branch: 8 | i@25@01 in [0..len@6@01] && j@26@01 in [0..len@6@01] && i@25@01 != j@26@01]
(assert (and
  (Seq_contains (Seq_range 0 len@6@01) i@25@01)
  (and (Seq_contains (Seq_range 0 len@6@01) j@26@01) (not (= i@25@01 j@26@01)))))
; [eval] cr[i] != cr[j]
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@25@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@25@01 (Seq_length cr@9@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] cr[j]
(push) ; 5
(assert (not (>= j@26@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@26@01 (Seq_length cr@9@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 8 | !(i@25@01 in [0..len@6@01] && j@26@01 in [0..len@6@01] && i@25@01 != j@26@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@25@01)
    (and (Seq_contains (Seq_range 0 len@6@01) j@26@01) (not (= i@25@01 j@26@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@25@01)
    (and (Seq_contains (Seq_range 0 len@6@01) j@26@01) (not (= i@25@01 j@26@01))))
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@25@01)
    (Seq_contains (Seq_range 0 len@6@01) j@26@01)
    (not (= i@25@01 j@26@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) j@26@01)
        (not (= i@25@01 j@26@01)))))
  (and
    (Seq_contains (Seq_range 0 len@6@01) i@25@01)
    (and (Seq_contains (Seq_range 0 len@6@01) j@26@01) (not (= i@25@01 j@26@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@25@01 Int) (j@26@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@26@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@25@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (Seq_contains (Seq_range 0 len@6@01) j@26@01)
        (not (= i@25@01 j@26@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@25@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@26@01)
            (not (= i@25@01 j@26@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@25@01) (Seq_contains
    (Seq_range 0 len@6@01)
    j@26@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@25@01) (Seq_contains_trigger
    (Seq_range 0 len@6@01)
    j@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@25@01 Int) (j@26@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@26@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@25@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (Seq_contains (Seq_range 0 len@6@01) j@26@01)
        (not (= i@25@01 j@26@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@25@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@26@01)
            (not (= i@25@01 j@26@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@25@01) (Seq_contains_trigger
    (Seq_range 0 len@6@01)
    j@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@25@01 Int) (j@26@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@26@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@25@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (Seq_contains (Seq_range 0 len@6@01) j@26@01)
        (not (= i@25@01 j@26@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@25@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@26@01)
            (not (= i@25@01 j@26@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@25@01) (Seq_index
    cr@9@01
    j@26@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@25@01) (Seq_index
    cr@9@01
    j@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@25@01 Int) (j@26@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@26@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@25@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (Seq_contains (Seq_range 0 len@6@01) j@26@01)
        (not (= i@25@01 j@26@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@25@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@26@01)
            (not (= i@25@01 j@26@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@25@01) (Seq_index
    cr@9@01
    j@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@25@01 Int) (j@26@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@26@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@25@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (Seq_contains (Seq_range 0 len@6@01) j@26@01)
        (not (= i@25@01 j@26@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@25@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@26@01)
            (not (= i@25@01 j@26@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) j@26@01) (Seq_index
    cr@9@01
    i@25@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) j@26@01) (Seq_index
    cr@9@01
    i@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@25@01 Int) (j@26@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@26@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@25@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (Seq_contains (Seq_range 0 len@6@01) j@26@01)
        (not (= i@25@01 j@26@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@25@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@26@01)
            (not (= i@25@01 j@26@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) j@26@01) (Seq_index
    cr@9@01
    i@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@25@01 Int) (j@26@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (or
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (Seq_contains (Seq_range 0 len@6@01) j@26@01)))))
    (or
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (not (Seq_contains (Seq_range 0 len@6@01) i@25@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (Seq_contains (Seq_range 0 len@6@01) j@26@01)
        (not (= i@25@01 j@26@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@6@01) i@25@01)
          (and
            (Seq_contains (Seq_range 0 len@6@01) j@26@01)
            (not (= i@25@01 j@26@01)))))
      (and
        (Seq_contains (Seq_range 0 len@6@01) i@25@01)
        (and
          (Seq_contains (Seq_range 0 len@6@01) j@26@01)
          (not (= i@25@01 j@26@01))))))
  :pattern ((Seq_index cr@9@01 i@25@01) (Seq_index cr@9@01 j@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@25@01 Int) (j@26@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@6@01) i@25@01)
      (and
        (Seq_contains (Seq_range 0 len@6@01) j@26@01)
        (not (= i@25@01 j@26@01))))
    (not (= (Seq_index cr@9@01 i@25@01) (Seq_index cr@9@01 j@26@01))))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@25@01) (Seq_contains
    (Seq_range 0 len@6@01)
    j@26@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@25@01) (Seq_contains_trigger
    (Seq_range 0 len@6@01)
    j@26@01))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) i@25@01) (Seq_index
    cr@9@01
    j@26@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) i@25@01) (Seq_index
    cr@9@01
    j@26@01))
  :pattern ((Seq_contains (Seq_range 0 len@6@01) j@26@01) (Seq_index
    cr@9@01
    i@25@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@6@01) j@26@01) (Seq_index
    cr@9@01
    i@25@01))
  :pattern ((Seq_index cr@9@01 i@25@01) (Seq_index cr@9@01 j@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98|)))
(declare-const i@27@01 Int)
(push) ; 2
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@6@01) i@27@01))
; [eval] cr[i]
(push) ; 3
(assert (not (>= i@27@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@27@01 (Seq_length cr@9@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@28@01 ($Ref) Int)
(declare-fun img@29@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@27@01 Int) (i2@27@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@6@01) i1@27@01)
      (Seq_contains (Seq_range 0 len@6@01) i2@27@01)
      (= (Seq_index cr@9@01 i1@27@01) (Seq_index cr@9@01 i2@27@01)))
    (= i1@27@01 i2@27@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@27@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@27@01)
    (and
      (= (inv@28@01 (Seq_index cr@9@01 i@27@01)) i@27@01)
      (img@29@01 (Seq_index cr@9@01 i@27@01))))
  :pattern ((Seq_index cr@9@01 i@27@01))
  :qid |quant-u-9788|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@29@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@28@01 r)))
    (= (Seq_index cr@9@01 (inv@28@01 r)) r))
  :pattern ((inv@28@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@27@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@27@01)
    (not (= (Seq_index cr@9@01 i@27@01) $Ref.null)))
  :pattern ((Seq_index cr@9@01 i@27@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@9@01 i@27@01) (Seq_index br@8@01 i@22@01))
    (=
      (and (img@29@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@28@01 r)))
      (and (img@24@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@23@01 r)))))
  
  :qid |quant-u-9789|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@9@01 i@27@01) (Seq_index ar@7@01 i@17@01))
    (=
      (and (img@29@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@28@01 r)))
      (and
        (img@19@01 r)
        (Seq_contains
          (Seq_range 1 (+ (- (Seq_length ar@7@01) 1) 1))
          (inv@18@01 r)))))
  
  :qid |quant-u-9790|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@9@01 i@27@01) (Seq_index ar@7@01 i@13@01))
    (=
      (and (img@29@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@28@01 r)))
      (and (img@15@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@14@01 r)))))
  
  :qid |quant-u-9791|))))
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
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 ($Snap.combine ($Snap.first $t@30@01) ($Snap.second $t@30@01))))
(assert (= ($Snap.first $t@30@01) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second $t@30@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@30@01))
    ($Snap.second ($Snap.second $t@30@01)))))
(declare-const i@31@01 Int)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@6@01) i@31@01))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@31@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@31@01 (Seq_length ar@7@01))))
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
      (Seq_contains (Seq_range 0 len@6@01) i1@31@01)
      (Seq_contains (Seq_range 0 len@6@01) i2@31@01)
      (= (Seq_index ar@7@01 i1@31@01) (Seq_index ar@7@01 i2@31@01)))
    (= i1@31@01 i2@31@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@31@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@31@01)
    (and
      (= (inv@32@01 (Seq_index ar@7@01 i@31@01)) i@31@01)
      (img@33@01 (Seq_index ar@7@01 i@31@01))))
  :pattern ((Seq_index ar@7@01 i@31@01))
  :qid |quant-u-9793|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@33@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@32@01 r)))
    (= (Seq_index ar@7@01 (inv@32@01 r)) r))
  :pattern ((inv@32@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@31@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@31@01)
    (not (= (Seq_index ar@7@01 i@31@01) $Ref.null)))
  :pattern ((Seq_index ar@7@01 i@31@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@30@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@30@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@30@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@30@01))) $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@30@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01)))))))
(declare-const i@34@01 Int)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@6@01) i@34@01))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@34@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@34@01 (Seq_length br@8@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@35@01 ($Ref) Int)
(declare-fun img@36@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@34@01 Int) (i2@34@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@6@01) i1@34@01)
      (Seq_contains (Seq_range 0 len@6@01) i2@34@01)
      (= (Seq_index br@8@01 i1@34@01) (Seq_index br@8@01 i2@34@01)))
    (= i1@34@01 i2@34@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@34@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@34@01)
    (and
      (= (inv@35@01 (Seq_index br@8@01 i@34@01)) i@34@01)
      (img@36@01 (Seq_index br@8@01 i@34@01))))
  :pattern ((Seq_index br@8@01 i@34@01))
  :qid |quant-u-9795|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@36@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@35@01 r)))
    (= (Seq_index br@8@01 (inv@35@01 r)) r))
  :pattern ((inv@35@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@34@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@34@01)
    (not (= (Seq_index br@8@01 i@34@01) $Ref.null)))
  :pattern ((Seq_index br@8@01 i@34@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@8@01 i@34@01) (Seq_index ar@7@01 i@31@01))
    (=
      (and (img@36@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@35@01 r)))
      (and (img@33@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@32@01 r)))))
  
  :qid |quant-u-9796|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01)))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(declare-const i@37@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@6@01) i@37@01))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@37@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@37@01 (Seq_length cr@9@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@38@01 ($Ref) Int)
(declare-fun img@39@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@37@01 Int) (i2@37@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@6@01) i1@37@01)
      (Seq_contains (Seq_range 0 len@6@01) i2@37@01)
      (= (Seq_index cr@9@01 i1@37@01) (Seq_index cr@9@01 i2@37@01)))
    (= i1@37@01 i2@37@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@37@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@37@01)
    (and
      (= (inv@38@01 (Seq_index cr@9@01 i@37@01)) i@37@01)
      (img@39@01 (Seq_index cr@9@01 i@37@01))))
  :pattern ((Seq_index cr@9@01 i@37@01))
  :qid |quant-u-9798|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@39@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@38@01 r)))
    (= (Seq_index cr@9@01 (inv@38@01 r)) r))
  :pattern ((inv@38@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@37@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@6@01) i@37@01)
    (not (= (Seq_index cr@9@01 i@37@01) $Ref.null)))
  :pattern ((Seq_index cr@9@01 i@37@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@9@01 i@37@01) (Seq_index br@8@01 i@34@01))
    (=
      (and (img@39@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@38@01 r)))
      (and (img@36@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@35@01 r)))))
  
  :qid |quant-u-9799|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@9@01 i@37@01) (Seq_index ar@7@01 i@31@01))
    (=
      (and (img@39@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@38@01 r)))
      (and (img@33@01 r) (Seq_contains (Seq_range 0 len@6@01) (inv@32@01 r)))))
  
  :qid |quant-u-9800|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- recv_body_96 ----------
(declare-const this@40@01 $Ref)
(declare-const ar@41@01 Seq<$Ref>)
(declare-const i@42@01 Int)
(declare-const this@43@01 $Ref)
(declare-const ar@44@01 Seq<$Ref>)
(declare-const i@45@01 Int)
(push) ; 1
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 ($Snap.combine ($Snap.first $t@46@01) ($Snap.second $t@46@01))))
(assert (= ($Snap.first $t@46@01) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@45@01))
(assert (= ($Snap.second $t@46@01) $Snap.unit))
; [eval] i < |ar|
; [eval] |ar|
(assert (< i@45@01 (Seq_length ar@44@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@45@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@47@01 Int)
(assert (not (= (Seq_index ar@44@01 i@45@01) $Ref.null)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- send_body_106 ----------
(declare-const this@48@01 $Ref)
(declare-const ar@49@01 Seq<$Ref>)
(declare-const i@50@01 Int)
(declare-const this@51@01 $Ref)
(declare-const ar@52@01 Seq<$Ref>)
(declare-const i@53@01 Int)
(push) ; 1
(declare-const $t@54@01 $Snap)
(assert (= $t@54@01 ($Snap.combine ($Snap.first $t@54@01) ($Snap.second $t@54@01))))
(assert (= ($Snap.first $t@54@01) $Snap.unit))
; [eval] -1 <= i
; [eval] -1
(assert (<= (- 0 1) i@53@01))
(assert (=
  ($Snap.second $t@54@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@54@01))
    ($Snap.second ($Snap.second $t@54@01)))))
(assert (= ($Snap.first ($Snap.second $t@54@01)) $Snap.unit))
; [eval] i + 1 < |ar|
; [eval] i + 1
; [eval] |ar|
(assert (< (+ i@53@01 1) (Seq_length ar@52@01)))
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 2
(assert (not (>= (+ i@53@01 1) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@52@01 (+ i@53@01 1)) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- loop_body_54 ----------
(declare-const this@55@01 $Ref)
(declare-const len@56@01 Int)
(declare-const ar@57@01 Seq<$Ref>)
(declare-const br@58@01 Seq<$Ref>)
(declare-const i@59@01 Int)
(declare-const cr@60@01 Seq<$Ref>)
(declare-const this@61@01 $Ref)
(declare-const len@62@01 Int)
(declare-const ar@63@01 Seq<$Ref>)
(declare-const br@64@01 Seq<$Ref>)
(declare-const i@65@01 Int)
(declare-const cr@66@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 ($Snap.combine ($Snap.first $t@67@01) ($Snap.second $t@67@01))))
(assert (= ($Snap.first $t@67@01) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@65@01))
(assert (=
  ($Snap.second $t@67@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@67@01))
    ($Snap.second ($Snap.second $t@67@01)))))
(assert (= ($Snap.first ($Snap.second $t@67@01)) $Snap.unit))
; [eval] i < len
(assert (< i@65@01 len@62@01))
(assert (=
  ($Snap.second ($Snap.second $t@67@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@67@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@67@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (= (Seq_length ar@63@01) len@62@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@67@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@67@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
; [eval] ar[i]
(push) ; 2
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@63@01 i@65@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
; [eval] i == 0
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= i@65@01 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= i@65@01 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | i@65@01 == 0 | live]
; [else-branch: 9 | i@65@01 != 0 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 9 | i@65@01 == 0]
(assert (= i@65@01 0))
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
; [eval] i < |ar| - 1
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@65@01 (- (Seq_length ar@63@01) 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@65@01 (- (Seq_length ar@63@01) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | i@65@01 < |ar@63@01| - 1 | live]
; [else-branch: 10 | !(i@65@01 < |ar@63@01| - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 10 | i@65@01 < |ar@63@01| - 1]
(assert (< i@65@01 (- (Seq_length ar@63@01) 1)))
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 4
(assert (not (>= (+ i@65@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (+ i@65@01 1) (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index ar@63@01 (+ i@65@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@63@01 (+ i@65@01 1)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@64@01) len@62@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))))
; [eval] br[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 (+ i@65@01 1)) (Seq_index br@64@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index br@64@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index br@64@01 i@65@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@66@01) len@62@01))
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 (+ i@65@01 1)) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index cr@66@01 i@65@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(assert (= ($Snap.first $t@68@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@68@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@68@01))
    ($Snap.second ($Snap.second $t@68@01)))))
(assert (= ($Snap.first ($Snap.second $t@68@01)) $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second $t@68@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@68@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@68@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@68@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index br@64@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@65@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | i@65@01 > 0 | dead]
; [else-branch: 11 | !(i@65@01 > 0) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 11 | !(i@65@01 > 0)]
(assert (not (> i@65@01 0)))
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@65@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@65@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | !(i@65@01 > 0) | live]
; [else-branch: 12 | i@65@01 > 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 12 | !(i@65@01 > 0)]
(assert (not (> i@65@01 0)))
; [exec]
; ar[i].Integer_value := br[i].Integer_value + 1
; [eval] ar[i]
(push) ; 6
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] br[i].Integer_value + 1
; [eval] br[i]
(push) ; 6
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const Integer_value@69@01 Int)
(assert (=
  Integer_value@69@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
    1)))
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@66@01 i@65@01) (Seq_index ar@63@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index ar@63@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 (+ i@65@01 1)) (Seq_index ar@63@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@65@01 (- len@62@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@65@01 (- len@62@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | i@65@01 < len@62@01 - 1 | live]
; [else-branch: 13 | !(i@65@01 < len@62@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 13 | i@65@01 < len@62@01 - 1]
(assert (< i@65@01 (- len@62@01 1)))
; [exec]
; cr[i].Integer_value := ar[i + 1].Integer_value + 2
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] ar[i + 1].Integer_value + 2
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@65@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (+ i@65@01 1) (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const Integer_value@70@01 Int)
(assert (=
  Integer_value@70@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
    2)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 (+ i@65@01 1)) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; send_body_106(this, ar, i)
; [eval] -1 <= i
; [eval] -1
(set-option :timeout 0)
(push) ; 7
(assert (not (<= (- 0 1) i@65@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= (- 0 1) i@65@01))
; [eval] i + 1 < |ar|
; [eval] i + 1
; [eval] |ar|
(push) ; 7
(assert (not (< (+ i@65@01 1) (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< (+ i@65@01 1) (Seq_length ar@63@01)))
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@65@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] 0 <= i
; [eval] i < len
; [eval] |ar| == len
; [eval] |ar|
; [eval] ar[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |br| == len
; [eval] |br|
; [eval] br[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@65@01 (- len@62@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | !(i@65@01 < len@62@01 - 1) | dead]
; [else-branch: 14 | i@65@01 < len@62@01 - 1 | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 14 | i@65@01 < len@62@01 - 1]
(assert (< i@65@01 (- len@62@01 1)))
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 10 | !(i@65@01 < |ar@63@01| - 1)]
(assert (not (< i@65@01 (- (Seq_length ar@63@01) 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@64@01) len@62@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index br@64@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index br@64@01 i@65@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@66@01) len@62@01))
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index cr@66@01 i@65@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@71@01 $Snap)
(assert (= $t@71@01 ($Snap.combine ($Snap.first $t@71@01) ($Snap.second $t@71@01))))
(assert (= ($Snap.first $t@71@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@71@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@71@01))
    ($Snap.second ($Snap.second $t@71@01)))))
(assert (= ($Snap.first ($Snap.second $t@71@01)) $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second $t@71@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@71@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@71@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@71@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@71@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01)))))))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01)))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01)))))))))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index br@64@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@01)))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@65@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | i@65@01 > 0 | dead]
; [else-branch: 15 | !(i@65@01 > 0) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 15 | !(i@65@01 > 0)]
(assert (not (> i@65@01 0)))
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@65@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@65@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | !(i@65@01 > 0) | live]
; [else-branch: 16 | i@65@01 > 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 16 | !(i@65@01 > 0)]
(assert (not (> i@65@01 0)))
; [exec]
; ar[i].Integer_value := br[i].Integer_value + 1
; [eval] ar[i]
(push) ; 6
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] br[i].Integer_value + 1
; [eval] br[i]
(push) ; 6
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const Integer_value@72@01 Int)
(assert (=
  Integer_value@72@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
    1)))
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@66@01 i@65@01) (Seq_index ar@63@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index ar@63@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@65@01 (- len@62@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | i@65@01 < len@62@01 - 1 | dead]
; [else-branch: 17 | !(i@65@01 < len@62@01 - 1) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 17 | !(i@65@01 < len@62@01 - 1)]
(assert (not (< i@65@01 (- len@62@01 1))))
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@65@01 (- len@62@01 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@65@01 (- len@62@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | !(i@65@01 < len@62@01 - 1) | live]
; [else-branch: 18 | i@65@01 < len@62@01 - 1 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 18 | !(i@65@01 < len@62@01 - 1)]
(assert (not (< i@65@01 (- len@62@01 1))))
; [eval] 0 <= i
; [eval] i < len
; [eval] |ar| == len
; [eval] |ar|
; [eval] ar[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |br| == len
; [eval] |br|
; [eval] br[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 9 | i@65@01 != 0]
(assert (not (= i@65@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
; [eval] i < |ar| - 1
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@65@01 (- (Seq_length ar@63@01) 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@65@01 (- (Seq_length ar@63@01) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | i@65@01 < |ar@63@01| - 1 | live]
; [else-branch: 19 | !(i@65@01 < |ar@63@01| - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 19 | i@65@01 < |ar@63@01| - 1]
(assert (< i@65@01 (- (Seq_length ar@63@01) 1)))
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 4
(assert (not (>= (+ i@65@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (+ i@65@01 1) (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index ar@63@01 (+ i@65@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@63@01 (+ i@65@01 1)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@64@01) len@62@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))))
; [eval] br[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 (+ i@65@01 1)) (Seq_index br@64@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index br@64@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index br@64@01 i@65@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@66@01) len@62@01))
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 (+ i@65@01 1)) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index cr@66@01 i@65@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 ($Snap.combine ($Snap.first $t@73@01) ($Snap.second $t@73@01))))
(assert (= ($Snap.first $t@73@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@73@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@73@01))
    ($Snap.second ($Snap.second $t@73@01)))))
(assert (= ($Snap.first ($Snap.second $t@73@01)) $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second $t@73@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@73@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@73@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@73@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@73@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))))))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index br@64@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@65@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | i@65@01 > 0 | live]
; [else-branch: 20 | !(i@65@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 20 | i@65@01 > 0]
(assert (> i@65@01 0))
; [exec]
; recv_body_96(this, ar, i)
; [eval] 0 <= i
; [eval] i < |ar|
; [eval] |ar|
(push) ; 6
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< i@65@01 (Seq_length ar@63@01)))
; [eval] ar[i]
(push) ; 6
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@74@01 Int)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
  $t@74@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; ar[i].Integer_value := br[i].Integer_value + 1
; [eval] ar[i]
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] br[i].Integer_value + 1
; [eval] br[i]
(push) ; 6
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const Integer_value@75@01 Int)
(assert (=
  Integer_value@75@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
    1)))
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@66@01 i@65@01) (Seq_index ar@63@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index ar@63@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 (+ i@65@01 1)) (Seq_index ar@63@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@65@01 (- len@62@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@65@01 (- len@62@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | i@65@01 < len@62@01 - 1 | live]
; [else-branch: 21 | !(i@65@01 < len@62@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 21 | i@65@01 < len@62@01 - 1]
(assert (< i@65@01 (- len@62@01 1)))
; [exec]
; cr[i].Integer_value := ar[i + 1].Integer_value + 2
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] ar[i + 1].Integer_value + 2
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@65@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (+ i@65@01 1) (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const Integer_value@76@01 Int)
(assert (=
  Integer_value@76@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
    2)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 (+ i@65@01 1)) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; send_body_106(this, ar, i)
; [eval] -1 <= i
; [eval] -1
(set-option :timeout 0)
(push) ; 7
(assert (not (<= (- 0 1) i@65@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= (- 0 1) i@65@01))
; [eval] i + 1 < |ar|
; [eval] i + 1
; [eval] |ar|
(push) ; 7
(assert (not (< (+ i@65@01 1) (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< (+ i@65@01 1) (Seq_length ar@63@01)))
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@65@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] 0 <= i
; [eval] i < len
; [eval] |ar| == len
; [eval] |ar|
; [eval] ar[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |br| == len
; [eval] |br|
; [eval] br[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@65@01 (- len@62@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | !(i@65@01 < len@62@01 - 1) | dead]
; [else-branch: 22 | i@65@01 < len@62@01 - 1 | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 22 | i@65@01 < len@62@01 - 1]
(assert (< i@65@01 (- len@62@01 1)))
(pop) ; 6
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | !(i@65@01 > 0) | dead]
; [else-branch: 23 | i@65@01 > 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 23 | i@65@01 > 0]
(assert (> i@65@01 0))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 19 | !(i@65@01 < |ar@63@01| - 1)]
(assert (not (< i@65@01 (- (Seq_length ar@63@01) 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@64@01) len@62@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index br@64@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index br@64@01 i@65@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@66@01) len@62@01))
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index cr@66@01 i@65@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 ($Snap.combine ($Snap.first $t@77@01) ($Snap.second $t@77@01))))
(assert (= ($Snap.first $t@77@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@77@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@77@01))
    ($Snap.second ($Snap.second $t@77@01)))))
(assert (= ($Snap.first ($Snap.second $t@77@01)) $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second $t@77@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@77@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@77@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@77@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@77@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index br@64@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@63@01 i@65@01) (Seq_index cr@66@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@65@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | i@65@01 > 0 | live]
; [else-branch: 24 | !(i@65@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 24 | i@65@01 > 0]
(assert (> i@65@01 0))
; [exec]
; recv_body_96(this, ar, i)
; [eval] 0 <= i
; [eval] i < |ar|
; [eval] |ar|
(push) ; 6
(assert (not (< i@65@01 (Seq_length ar@63@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< i@65@01 (Seq_length ar@63@01)))
; [eval] ar[i]
(push) ; 6
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@78@01 Int)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
  $t@78@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; ar[i].Integer_value := br[i].Integer_value + 1
; [eval] ar[i]
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] br[i].Integer_value + 1
; [eval] br[i]
(push) ; 6
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const Integer_value@79@01 Int)
(assert (=
  Integer_value@79@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
    1)))
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@66@01 i@65@01) (Seq_index ar@63@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@64@01 i@65@01) (Seq_index ar@63@01 i@65@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@65@01 (- len@62@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | i@65@01 < len@62@01 - 1 | dead]
; [else-branch: 25 | !(i@65@01 < len@62@01 - 1) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 25 | !(i@65@01 < len@62@01 - 1)]
(assert (not (< i@65@01 (- len@62@01 1))))
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@65@01 (- len@62@01 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@65@01 (- len@62@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | !(i@65@01 < len@62@01 - 1) | live]
; [else-branch: 26 | i@65@01 < len@62@01 - 1 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 26 | !(i@65@01 < len@62@01 - 1)]
(assert (not (< i@65@01 (- len@62@01 1))))
; [eval] 0 <= i
; [eval] i < len
; [eval] |ar| == len
; [eval] |ar|
; [eval] ar[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |br| == len
; [eval] |br|
; [eval] br[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length br@64@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@65@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@65@01 (Seq_length cr@66@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@65@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | !(i@65@01 > 0) | dead]
; [else-branch: 27 | i@65@01 > 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 27 | i@65@01 > 0]
(assert (> i@65@01 0))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- zero_array ----------
(declare-const this@80@01 $Ref)
(declare-const ar@81@01 Seq<$Ref>)
(declare-const br@82@01 Seq<$Ref>)
(declare-const cr@83@01 Seq<$Ref>)
(declare-const len@84@01 Int)
(declare-const sys__result@85@01 Int)
(declare-const this@86@01 $Ref)
(declare-const ar@87@01 Seq<$Ref>)
(declare-const br@88@01 Seq<$Ref>)
(declare-const cr@89@01 Seq<$Ref>)
(declare-const len@90@01 Int)
(declare-const sys__result@91@01 Int)
(push) ; 1
(declare-const $t@92@01 $Snap)
(assert (= $t@92@01 ($Snap.combine ($Snap.first $t@92@01) ($Snap.second $t@92@01))))
(assert (= ($Snap.first $t@92@01) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (= (Seq_length ar@87@01) len@90@01))
(assert (=
  ($Snap.second $t@92@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@92@01))
    ($Snap.second ($Snap.second $t@92@01)))))
(assert (= ($Snap.first ($Snap.second $t@92@01)) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), ar[j] } { (j in [0..len)), ar[i] } { ar[i], ar[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> ar[i] != ar[j])
(declare-const i@93@01 Int)
(declare-const j@94@01 Int)
(push) ; 2
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j) ==> ar[i] != ar[j]
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j)
; [eval] (i in [0..len))
; [eval] [0..len)
(push) ; 3
; [then-branch: 28 | !(i@93@01 in [0..len@90@01]) | live]
; [else-branch: 28 | i@93@01 in [0..len@90@01] | live]
(push) ; 4
; [then-branch: 28 | !(i@93@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) i@93@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 28 | i@93@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) i@93@01))
; [eval] (j in [0..len))
; [eval] [0..len)
(push) ; 5
; [then-branch: 29 | !(j@94@01 in [0..len@90@01]) | live]
; [else-branch: 29 | j@94@01 in [0..len@90@01] | live]
(push) ; 6
; [then-branch: 29 | !(j@94@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) j@94@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 29 | j@94@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) j@94@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) j@94@01)
  (not (Seq_contains (Seq_range 0 len@90@01) j@94@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 len@90@01) i@93@01)
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@93@01)
    (or
      (Seq_contains (Seq_range 0 len@90@01) j@94@01)
      (not (Seq_contains (Seq_range 0 len@90@01) j@94@01))))))
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) i@93@01)
  (not (Seq_contains (Seq_range 0 len@90@01) i@93@01))))
(push) ; 3
; [then-branch: 30 | i@93@01 in [0..len@90@01] && j@94@01 in [0..len@90@01] && i@93@01 != j@94@01 | live]
; [else-branch: 30 | !(i@93@01 in [0..len@90@01] && j@94@01 in [0..len@90@01] && i@93@01 != j@94@01) | live]
(push) ; 4
; [then-branch: 30 | i@93@01 in [0..len@90@01] && j@94@01 in [0..len@90@01] && i@93@01 != j@94@01]
(assert (and
  (Seq_contains (Seq_range 0 len@90@01) i@93@01)
  (and (Seq_contains (Seq_range 0 len@90@01) j@94@01) (not (= i@93@01 j@94@01)))))
; [eval] ar[i] != ar[j]
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@93@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@93@01 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] ar[j]
(push) ; 5
(assert (not (>= j@94@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@94@01 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 30 | !(i@93@01 in [0..len@90@01] && j@94@01 in [0..len@90@01] && i@93@01 != j@94@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@93@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@94@01)
      (not (= i@93@01 j@94@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@93@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@94@01)
      (not (= i@93@01 j@94@01))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@93@01)
    (Seq_contains (Seq_range 0 len@90@01) j@94@01)
    (not (= i@93@01 j@94@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@94@01)
        (not (= i@93@01 j@94@01)))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@93@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@94@01)
      (not (= i@93@01 j@94@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@93@01 Int) (j@94@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@94@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@93@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (Seq_contains (Seq_range 0 len@90@01) j@94@01)
        (not (= i@93@01 j@94@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@93@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@94@01)
            (not (= i@93@01 j@94@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@93@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@94@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@93@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@78@12@78@96-aux|)))
(assert (forall ((i@93@01 Int) (j@94@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@94@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@93@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (Seq_contains (Seq_range 0 len@90@01) j@94@01)
        (not (= i@93@01 j@94@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@93@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@94@01)
            (not (= i@93@01 j@94@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@93@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@78@12@78@96-aux|)))
(assert (forall ((i@93@01 Int) (j@94@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@94@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@93@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (Seq_contains (Seq_range 0 len@90@01) j@94@01)
        (not (= i@93@01 j@94@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@93@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@94@01)
            (not (= i@93@01 j@94@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@93@01) (Seq_index
    ar@87@01
    j@94@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@93@01) (Seq_index
    ar@87@01
    j@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@78@12@78@96-aux|)))
(assert (forall ((i@93@01 Int) (j@94@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@94@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@93@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (Seq_contains (Seq_range 0 len@90@01) j@94@01)
        (not (= i@93@01 j@94@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@93@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@94@01)
            (not (= i@93@01 j@94@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@93@01) (Seq_index
    ar@87@01
    j@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@78@12@78@96-aux|)))
(assert (forall ((i@93@01 Int) (j@94@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@94@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@93@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (Seq_contains (Seq_range 0 len@90@01) j@94@01)
        (not (= i@93@01 j@94@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@93@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@94@01)
            (not (= i@93@01 j@94@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@94@01) (Seq_index
    ar@87@01
    i@93@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@94@01) (Seq_index
    ar@87@01
    i@93@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@78@12@78@96-aux|)))
(assert (forall ((i@93@01 Int) (j@94@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@94@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@93@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (Seq_contains (Seq_range 0 len@90@01) j@94@01)
        (not (= i@93@01 j@94@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@93@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@94@01)
            (not (= i@93@01 j@94@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@94@01) (Seq_index
    ar@87@01
    i@93@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@78@12@78@96-aux|)))
(assert (forall ((i@93@01 Int) (j@94@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@94@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@93@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (Seq_contains (Seq_range 0 len@90@01) j@94@01)
        (not (= i@93@01 j@94@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@93@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@94@01)
            (not (= i@93@01 j@94@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@93@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@94@01)
          (not (= i@93@01 j@94@01))))))
  :pattern ((Seq_index ar@87@01 i@93@01) (Seq_index ar@87@01 j@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@78@12@78@96-aux|)))
(assert (forall ((i@93@01 Int) (j@94@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@93@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@94@01)
        (not (= i@93@01 j@94@01))))
    (not (= (Seq_index ar@87@01 i@93@01) (Seq_index ar@87@01 j@94@01))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@93@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@94@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@93@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@94@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@93@01) (Seq_index
    ar@87@01
    j@94@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@93@01) (Seq_index
    ar@87@01
    j@94@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@94@01) (Seq_index
    ar@87@01
    i@93@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@94@01) (Seq_index
    ar@87@01
    i@93@01))
  :pattern ((Seq_index ar@87@01 i@93@01) (Seq_index ar@87@01 j@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@78@12@78@96|)))
(assert (=
  ($Snap.second ($Snap.second $t@92@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@92@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))
(declare-const i@95@01 Int)
(push) ; 2
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@95@01))
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@95@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@95@01 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@96@01 ($Ref) Int)
(declare-fun img@97@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@95@01 Int) (i2@95@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@95@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@95@01)
      (= (Seq_index ar@87@01 i1@95@01) (Seq_index ar@87@01 i2@95@01)))
    (= i1@95@01 i2@95@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@95@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@95@01)
    (and
      (= (inv@96@01 (Seq_index ar@87@01 i@95@01)) i@95@01)
      (img@97@01 (Seq_index ar@87@01 i@95@01))))
  :pattern ((Seq_index ar@87@01 i@95@01))
  :qid |quant-u-9802|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@97@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@96@01 r)))
    (= (Seq_index ar@87@01 (inv@96@01 r)) r))
  :pattern ((inv@96@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@95@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@95@01)
    (not (= (Seq_index ar@87@01 i@95@01) $Ref.null)))
  :pattern ((Seq_index ar@87@01 i@95@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@92@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@92@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@92@01))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@88@01) len@90@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), br[j] } { (j in [0..len)), br[i] } { br[i], br[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> br[i] != br[j])
(declare-const i@98@01 Int)
(declare-const j@99@01 Int)
(push) ; 2
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j) ==> br[i] != br[j]
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j)
; [eval] (i in [0..len))
; [eval] [0..len)
(push) ; 3
; [then-branch: 31 | !(i@98@01 in [0..len@90@01]) | live]
; [else-branch: 31 | i@98@01 in [0..len@90@01] | live]
(push) ; 4
; [then-branch: 31 | !(i@98@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) i@98@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 31 | i@98@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) i@98@01))
; [eval] (j in [0..len))
; [eval] [0..len)
(push) ; 5
; [then-branch: 32 | !(j@99@01 in [0..len@90@01]) | live]
; [else-branch: 32 | j@99@01 in [0..len@90@01] | live]
(push) ; 6
; [then-branch: 32 | !(j@99@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) j@99@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 32 | j@99@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) j@99@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) j@99@01)
  (not (Seq_contains (Seq_range 0 len@90@01) j@99@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 len@90@01) i@98@01)
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@98@01)
    (or
      (Seq_contains (Seq_range 0 len@90@01) j@99@01)
      (not (Seq_contains (Seq_range 0 len@90@01) j@99@01))))))
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) i@98@01)
  (not (Seq_contains (Seq_range 0 len@90@01) i@98@01))))
(push) ; 3
; [then-branch: 33 | i@98@01 in [0..len@90@01] && j@99@01 in [0..len@90@01] && i@98@01 != j@99@01 | live]
; [else-branch: 33 | !(i@98@01 in [0..len@90@01] && j@99@01 in [0..len@90@01] && i@98@01 != j@99@01) | live]
(push) ; 4
; [then-branch: 33 | i@98@01 in [0..len@90@01] && j@99@01 in [0..len@90@01] && i@98@01 != j@99@01]
(assert (and
  (Seq_contains (Seq_range 0 len@90@01) i@98@01)
  (and (Seq_contains (Seq_range 0 len@90@01) j@99@01) (not (= i@98@01 j@99@01)))))
; [eval] br[i] != br[j]
; [eval] br[i]
(push) ; 5
(assert (not (>= i@98@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@98@01 (Seq_length br@88@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] br[j]
(push) ; 5
(assert (not (>= j@99@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@99@01 (Seq_length br@88@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 33 | !(i@98@01 in [0..len@90@01] && j@99@01 in [0..len@90@01] && i@98@01 != j@99@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@98@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@99@01)
      (not (= i@98@01 j@99@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@98@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@99@01)
      (not (= i@98@01 j@99@01))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@98@01)
    (Seq_contains (Seq_range 0 len@90@01) j@99@01)
    (not (= i@98@01 j@99@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@99@01)
        (not (= i@98@01 j@99@01)))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@98@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@99@01)
      (not (= i@98@01 j@99@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (Seq_contains (Seq_range 0 len@90@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@98@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@98@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@98@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@81@12@81@96-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (Seq_contains (Seq_range 0 len@90@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@98@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@98@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@81@12@81@96-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (Seq_contains (Seq_range 0 len@90@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@98@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@98@01) (Seq_index
    br@88@01
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@98@01) (Seq_index
    br@88@01
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@81@12@81@96-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (Seq_contains (Seq_range 0 len@90@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@98@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@98@01) (Seq_index
    br@88@01
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@81@12@81@96-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (Seq_contains (Seq_range 0 len@90@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@98@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@99@01) (Seq_index
    br@88@01
    i@98@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@99@01) (Seq_index
    br@88@01
    i@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@81@12@81@96-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (Seq_contains (Seq_range 0 len@90@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@98@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@99@01) (Seq_index
    br@88@01
    i@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@81@12@81@96-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@99@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@98@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (Seq_contains (Seq_range 0 len@90@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@98@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@99@01)
            (not (= i@98@01 j@99@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@98@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@99@01)
          (not (= i@98@01 j@99@01))))))
  :pattern ((Seq_index br@88@01 i@98@01) (Seq_index br@88@01 j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@81@12@81@96-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@98@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@99@01)
        (not (= i@98@01 j@99@01))))
    (not (= (Seq_index br@88@01 i@98@01) (Seq_index br@88@01 j@99@01))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@98@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@98@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@99@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@98@01) (Seq_index
    br@88@01
    j@99@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@98@01) (Seq_index
    br@88@01
    j@99@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@99@01) (Seq_index
    br@88@01
    i@98@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@99@01) (Seq_index
    br@88@01
    i@98@01))
  :pattern ((Seq_index br@88@01 i@98@01) (Seq_index br@88@01 j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@81@12@81@96|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))))))
(declare-const i@100@01 Int)
(push) ; 2
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@100@01))
; [eval] br[i]
(push) ; 3
(assert (not (>= i@100@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@100@01 (Seq_length br@88@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@101@01 ($Ref) Int)
(declare-fun img@102@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@100@01 Int) (i2@100@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@100@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@100@01)
      (= (Seq_index br@88@01 i1@100@01) (Seq_index br@88@01 i2@100@01)))
    (= i1@100@01 i2@100@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@100@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@100@01)
    (and
      (= (inv@101@01 (Seq_index br@88@01 i@100@01)) i@100@01)
      (img@102@01 (Seq_index br@88@01 i@100@01))))
  :pattern ((Seq_index br@88@01 i@100@01))
  :qid |quant-u-9804|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@102@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@101@01 r)))
    (= (Seq_index br@88@01 (inv@101@01 r)) r))
  :pattern ((inv@101@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@100@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@100@01)
    (not (= (Seq_index br@88@01 i@100@01) $Ref.null)))
  :pattern ((Seq_index br@88@01 i@100@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@88@01 i@100@01) (Seq_index ar@87@01 i@95@01))
    (=
      (and (img@102@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@101@01 r)))
      (and (img@97@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@96@01 r)))))
  
  :qid |quant-u-9805|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@89@01) len@90@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), cr[j] } { (j in [0..len)), cr[i] } { cr[i], cr[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> cr[i] != cr[j])
(declare-const i@103@01 Int)
(declare-const j@104@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j) ==> cr[i] != cr[j]
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j)
; [eval] (i in [0..len))
; [eval] [0..len)
(push) ; 3
; [then-branch: 34 | !(i@103@01 in [0..len@90@01]) | live]
; [else-branch: 34 | i@103@01 in [0..len@90@01] | live]
(push) ; 4
; [then-branch: 34 | !(i@103@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) i@103@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 34 | i@103@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) i@103@01))
; [eval] (j in [0..len))
; [eval] [0..len)
(push) ; 5
; [then-branch: 35 | !(j@104@01 in [0..len@90@01]) | live]
; [else-branch: 35 | j@104@01 in [0..len@90@01] | live]
(push) ; 6
; [then-branch: 35 | !(j@104@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) j@104@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 35 | j@104@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) j@104@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) j@104@01)
  (not (Seq_contains (Seq_range 0 len@90@01) j@104@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 len@90@01) i@103@01)
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@103@01)
    (or
      (Seq_contains (Seq_range 0 len@90@01) j@104@01)
      (not (Seq_contains (Seq_range 0 len@90@01) j@104@01))))))
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) i@103@01)
  (not (Seq_contains (Seq_range 0 len@90@01) i@103@01))))
(push) ; 3
; [then-branch: 36 | i@103@01 in [0..len@90@01] && j@104@01 in [0..len@90@01] && i@103@01 != j@104@01 | live]
; [else-branch: 36 | !(i@103@01 in [0..len@90@01] && j@104@01 in [0..len@90@01] && i@103@01 != j@104@01) | live]
(push) ; 4
; [then-branch: 36 | i@103@01 in [0..len@90@01] && j@104@01 in [0..len@90@01] && i@103@01 != j@104@01]
(assert (and
  (Seq_contains (Seq_range 0 len@90@01) i@103@01)
  (and
    (Seq_contains (Seq_range 0 len@90@01) j@104@01)
    (not (= i@103@01 j@104@01)))))
; [eval] cr[i] != cr[j]
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@103@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@103@01 (Seq_length cr@89@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] cr[j]
(push) ; 5
(assert (not (>= j@104@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@104@01 (Seq_length cr@89@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 36 | !(i@103@01 in [0..len@90@01] && j@104@01 in [0..len@90@01] && i@103@01 != j@104@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@103@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@104@01)
      (not (= i@103@01 j@104@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@103@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@104@01)
      (not (= i@103@01 j@104@01))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@103@01)
    (Seq_contains (Seq_range 0 len@90@01) j@104@01)
    (not (= i@103@01 j@104@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@104@01)
        (not (= i@103@01 j@104@01)))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@103@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@104@01)
      (not (= i@103@01 j@104@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@103@01 Int) (j@104@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@104@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@103@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (Seq_contains (Seq_range 0 len@90@01) j@104@01)
        (not (= i@103@01 j@104@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@103@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@104@01)
            (not (= i@103@01 j@104@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@103@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@104@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@103@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@84@12@84@96-aux|)))
(assert (forall ((i@103@01 Int) (j@104@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@104@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@103@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (Seq_contains (Seq_range 0 len@90@01) j@104@01)
        (not (= i@103@01 j@104@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@103@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@104@01)
            (not (= i@103@01 j@104@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@103@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@84@12@84@96-aux|)))
(assert (forall ((i@103@01 Int) (j@104@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@104@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@103@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (Seq_contains (Seq_range 0 len@90@01) j@104@01)
        (not (= i@103@01 j@104@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@103@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@104@01)
            (not (= i@103@01 j@104@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@103@01) (Seq_index
    cr@89@01
    j@104@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@103@01) (Seq_index
    cr@89@01
    j@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@84@12@84@96-aux|)))
(assert (forall ((i@103@01 Int) (j@104@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@104@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@103@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (Seq_contains (Seq_range 0 len@90@01) j@104@01)
        (not (= i@103@01 j@104@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@103@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@104@01)
            (not (= i@103@01 j@104@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@103@01) (Seq_index
    cr@89@01
    j@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@84@12@84@96-aux|)))
(assert (forall ((i@103@01 Int) (j@104@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@104@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@103@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (Seq_contains (Seq_range 0 len@90@01) j@104@01)
        (not (= i@103@01 j@104@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@103@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@104@01)
            (not (= i@103@01 j@104@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@104@01) (Seq_index
    cr@89@01
    i@103@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@104@01) (Seq_index
    cr@89@01
    i@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@84@12@84@96-aux|)))
(assert (forall ((i@103@01 Int) (j@104@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@104@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@103@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (Seq_contains (Seq_range 0 len@90@01) j@104@01)
        (not (= i@103@01 j@104@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@103@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@104@01)
            (not (= i@103@01 j@104@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@104@01) (Seq_index
    cr@89@01
    i@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@84@12@84@96-aux|)))
(assert (forall ((i@103@01 Int) (j@104@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@104@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@103@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (Seq_contains (Seq_range 0 len@90@01) j@104@01)
        (not (= i@103@01 j@104@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@103@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@104@01)
            (not (= i@103@01 j@104@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@103@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@104@01)
          (not (= i@103@01 j@104@01))))))
  :pattern ((Seq_index cr@89@01 i@103@01) (Seq_index cr@89@01 j@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@84@12@84@96-aux|)))
(assert (forall ((i@103@01 Int) (j@104@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@103@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@104@01)
        (not (= i@103@01 j@104@01))))
    (not (= (Seq_index cr@89@01 i@103@01) (Seq_index cr@89@01 j@104@01))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@103@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@104@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@103@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@104@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@103@01) (Seq_index
    cr@89@01
    j@104@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@103@01) (Seq_index
    cr@89@01
    j@104@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@104@01) (Seq_index
    cr@89@01
    i@103@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@104@01) (Seq_index
    cr@89@01
    i@103@01))
  :pattern ((Seq_index cr@89@01 i@103@01) (Seq_index cr@89@01 j@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@84@12@84@96|)))
(declare-const i@105@01 Int)
(push) ; 2
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@105@01))
; [eval] cr[i]
(push) ; 3
(assert (not (>= i@105@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@105@01 (Seq_length cr@89@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@106@01 ($Ref) Int)
(declare-fun img@107@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@105@01 Int) (i2@105@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@105@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@105@01)
      (= (Seq_index cr@89@01 i1@105@01) (Seq_index cr@89@01 i2@105@01)))
    (= i1@105@01 i2@105@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@105@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@105@01)
    (and
      (= (inv@106@01 (Seq_index cr@89@01 i@105@01)) i@105@01)
      (img@107@01 (Seq_index cr@89@01 i@105@01))))
  :pattern ((Seq_index cr@89@01 i@105@01))
  :qid |quant-u-9807|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@107@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@106@01 r)))
    (= (Seq_index cr@89@01 (inv@106@01 r)) r))
  :pattern ((inv@106@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@105@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@105@01)
    (not (= (Seq_index cr@89@01 i@105@01) $Ref.null)))
  :pattern ((Seq_index cr@89@01 i@105@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@89@01 i@105@01) (Seq_index br@88@01 i@100@01))
    (=
      (and (img@107@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@106@01 r)))
      (and (img@102@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@101@01 r)))))
  
  :qid |quant-u-9808|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@89@01 i@105@01) (Seq_index ar@87@01 i@95@01))
    (=
      (and (img@107@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@106@01 r)))
      (and (img@97@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@96@01 r)))))
  
  :qid |quant-u-9809|))))
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
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 ($Snap.combine ($Snap.first $t@108@01) ($Snap.second $t@108@01))))
(assert (= ($Snap.first $t@108@01) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second $t@108@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@108@01))
    ($Snap.second ($Snap.second $t@108@01)))))
(declare-const i@109@01 Int)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@109@01))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@109@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@109@01 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@110@01 ($Ref) Int)
(declare-fun img@111@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@109@01 Int) (i2@109@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@109@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@109@01)
      (= (Seq_index ar@87@01 i1@109@01) (Seq_index ar@87@01 i2@109@01)))
    (= i1@109@01 i2@109@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@109@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@109@01)
    (and
      (= (inv@110@01 (Seq_index ar@87@01 i@109@01)) i@109@01)
      (img@111@01 (Seq_index ar@87@01 i@109@01))))
  :pattern ((Seq_index ar@87@01 i@109@01))
  :qid |quant-u-9811|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@111@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@110@01 r)))
    (= (Seq_index ar@87@01 (inv@110@01 r)) r))
  :pattern ((inv@110@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@109@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@109@01)
    (not (= (Seq_index ar@87@01 i@109@01) $Ref.null)))
  :pattern ((Seq_index ar@87@01 i@109@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@108@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@108@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@108@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@108@01))) $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@108@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@108@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01)))))))
(declare-const i@112@01 Int)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@112@01))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@112@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@112@01 (Seq_length br@88@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@113@01 ($Ref) Int)
(declare-fun img@114@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@112@01 Int) (i2@112@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@112@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@112@01)
      (= (Seq_index br@88@01 i1@112@01) (Seq_index br@88@01 i2@112@01)))
    (= i1@112@01 i2@112@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@112@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@112@01)
    (and
      (= (inv@113@01 (Seq_index br@88@01 i@112@01)) i@112@01)
      (img@114@01 (Seq_index br@88@01 i@112@01))))
  :pattern ((Seq_index br@88@01 i@112@01))
  :qid |quant-u-9813|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@114@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@113@01 r)))
    (= (Seq_index br@88@01 (inv@113@01 r)) r))
  :pattern ((inv@113@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@112@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@112@01)
    (not (= (Seq_index br@88@01 i@112@01) $Ref.null)))
  :pattern ((Seq_index br@88@01 i@112@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@88@01 i@112@01) (Seq_index ar@87@01 i@109@01))
    (=
      (and (img@114@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@113@01 r)))
      (and (img@111@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@110@01 r)))))
  
  :qid |quant-u-9814|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01)))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(declare-const i@115@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@115@01))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@115@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@115@01 (Seq_length cr@89@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@116@01 ($Ref) Int)
(declare-fun img@117@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@115@01 Int) (i2@115@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@115@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@115@01)
      (= (Seq_index cr@89@01 i1@115@01) (Seq_index cr@89@01 i2@115@01)))
    (= i1@115@01 i2@115@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@115@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@115@01)
    (and
      (= (inv@116@01 (Seq_index cr@89@01 i@115@01)) i@115@01)
      (img@117@01 (Seq_index cr@89@01 i@115@01))))
  :pattern ((Seq_index cr@89@01 i@115@01))
  :qid |quant-u-9816|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@117@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@116@01 r)))
    (= (Seq_index cr@89@01 (inv@116@01 r)) r))
  :pattern ((inv@116@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@115@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@115@01)
    (not (= (Seq_index cr@89@01 i@115@01) $Ref.null)))
  :pattern ((Seq_index cr@89@01 i@115@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@89@01 i@115@01) (Seq_index br@88@01 i@112@01))
    (=
      (and (img@117@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@116@01 r)))
      (and (img@114@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@113@01 r)))))
  
  :qid |quant-u-9817|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@89@01 i@115@01) (Seq_index ar@87@01 i@109@01))
    (=
      (and (img@117@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@116@01 r)))
      (and (img@111@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@110@01 r)))))
  
  :qid |quant-u-9818|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; assert |ar| == len
; [eval] |ar| == len
; [eval] |ar|
; [exec]
; assert |br| == len
; [eval] |br| == len
; [eval] |br|
; [exec]
; assert |cr| == len
; [eval] |cr| == len
; [eval] |cr|
; [exec]
; inhale 0 < len
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 $Snap.unit))
; [eval] 0 < len
(assert (< 0 len@90@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; loop_main_54(this, len, ar, br, cr)
; [eval] 0 < len
; [eval] |ar| == len
; [eval] |ar|
; [eval] (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), ar[j] } { (j in [0..len)), ar[i] } { ar[i], ar[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> ar[i] != ar[j])
(declare-const i@119@01 Int)
(declare-const j@120@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j) ==> ar[i] != ar[j]
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j)
; [eval] (i in [0..len))
; [eval] [0..len)
(push) ; 4
; [then-branch: 37 | !(i@119@01 in [0..len@90@01]) | live]
; [else-branch: 37 | i@119@01 in [0..len@90@01] | live]
(push) ; 5
; [then-branch: 37 | !(i@119@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) i@119@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 37 | i@119@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) i@119@01))
; [eval] (j in [0..len))
; [eval] [0..len)
(push) ; 6
; [then-branch: 38 | !(j@120@01 in [0..len@90@01]) | live]
; [else-branch: 38 | j@120@01 in [0..len@90@01] | live]
(push) ; 7
; [then-branch: 38 | !(j@120@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) j@120@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 38 | j@120@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) j@120@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) j@120@01)
  (not (Seq_contains (Seq_range 0 len@90@01) j@120@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 len@90@01) i@119@01)
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@119@01)
    (or
      (Seq_contains (Seq_range 0 len@90@01) j@120@01)
      (not (Seq_contains (Seq_range 0 len@90@01) j@120@01))))))
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) i@119@01)
  (not (Seq_contains (Seq_range 0 len@90@01) i@119@01))))
(push) ; 4
; [then-branch: 39 | i@119@01 in [0..len@90@01] && j@120@01 in [0..len@90@01] && i@119@01 != j@120@01 | live]
; [else-branch: 39 | !(i@119@01 in [0..len@90@01] && j@120@01 in [0..len@90@01] && i@119@01 != j@120@01) | live]
(push) ; 5
; [then-branch: 39 | i@119@01 in [0..len@90@01] && j@120@01 in [0..len@90@01] && i@119@01 != j@120@01]
(assert (and
  (Seq_contains (Seq_range 0 len@90@01) i@119@01)
  (and
    (Seq_contains (Seq_range 0 len@90@01) j@120@01)
    (not (= i@119@01 j@120@01)))))
; [eval] ar[i] != ar[j]
; [eval] ar[i]
(push) ; 6
(assert (not (>= i@119@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@119@01 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] ar[j]
(push) ; 6
(assert (not (>= j@120@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@120@01 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 39 | !(i@119@01 in [0..len@90@01] && j@120@01 in [0..len@90@01] && i@119@01 != j@120@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@119@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@120@01)
      (not (= i@119@01 j@120@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@119@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@120@01)
      (not (= i@119@01 j@120@01))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@119@01)
    (Seq_contains (Seq_range 0 len@90@01) j@120@01)
    (not (= i@119@01 j@120@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@120@01)
        (not (= i@119@01 j@120@01)))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@119@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@120@01)
      (not (= i@119@01 j@120@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@120@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@119@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (Seq_contains (Seq_range 0 len@90@01) j@120@01)
        (not (= i@119@01 j@120@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@119@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@120@01)
            (not (= i@119@01 j@120@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@119@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@120@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@119@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@120@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@119@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (Seq_contains (Seq_range 0 len@90@01) j@120@01)
        (not (= i@119@01 j@120@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@119@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@120@01)
            (not (= i@119@01 j@120@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@119@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@120@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@119@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (Seq_contains (Seq_range 0 len@90@01) j@120@01)
        (not (= i@119@01 j@120@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@119@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@120@01)
            (not (= i@119@01 j@120@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@119@01) (Seq_index
    ar@87@01
    j@120@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@119@01) (Seq_index
    ar@87@01
    j@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@120@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@119@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (Seq_contains (Seq_range 0 len@90@01) j@120@01)
        (not (= i@119@01 j@120@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@119@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@120@01)
            (not (= i@119@01 j@120@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@119@01) (Seq_index
    ar@87@01
    j@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@120@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@119@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (Seq_contains (Seq_range 0 len@90@01) j@120@01)
        (not (= i@119@01 j@120@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@119@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@120@01)
            (not (= i@119@01 j@120@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@120@01) (Seq_index
    ar@87@01
    i@119@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@120@01) (Seq_index
    ar@87@01
    i@119@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@120@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@119@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (Seq_contains (Seq_range 0 len@90@01) j@120@01)
        (not (= i@119@01 j@120@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@119@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@120@01)
            (not (= i@119@01 j@120@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@120@01) (Seq_index
    ar@87@01
    i@119@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@120@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@119@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (Seq_contains (Seq_range 0 len@90@01) j@120@01)
        (not (= i@119@01 j@120@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@119@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@120@01)
            (not (= i@119@01 j@120@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@119@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@120@01)
          (not (= i@119@01 j@120@01))))))
  :pattern ((Seq_index ar@87@01 i@119@01) (Seq_index ar@87@01 j@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98-aux|)))
(push) ; 3
(assert (not (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@120@01)
        (not (= i@119@01 j@120@01))))
    (not (= (Seq_index ar@87@01 i@119@01) (Seq_index ar@87@01 j@120@01))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@119@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@120@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@119@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@120@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@119@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@120@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@119@01) (Seq_index
    ar@87@01
    j@120@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@119@01) (Seq_index
    ar@87@01
    j@120@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@119@01) (Seq_index
    ar@87@01
    j@120@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@120@01) (Seq_index
    ar@87@01
    i@119@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@120@01) (Seq_index
    ar@87@01
    i@119@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@120@01) (Seq_index
    ar@87@01
    i@119@01))
  :pattern ((Seq_index ar@87@01 i@119@01) (Seq_index ar@87@01 j@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@119@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@120@01)
        (not (= i@119@01 j@120@01))))
    (not (= (Seq_index ar@87@01 i@119@01) (Seq_index ar@87@01 j@120@01))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@119@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@120@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@119@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@120@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@119@01) (Seq_index
    ar@87@01
    j@120@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@119@01) (Seq_index
    ar@87@01
    j@120@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@120@01) (Seq_index
    ar@87@01
    i@119@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@120@01) (Seq_index
    ar@87@01
    i@119@01))
  :pattern ((Seq_index ar@87@01 i@119@01) (Seq_index ar@87@01 j@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@14@12@14@98|)))
(declare-const i@121@01 Int)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@121@01))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@121@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@121@01 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@122@01 ($Ref) Int)
(declare-fun img@123@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@121@01 Int) (i2@121@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@121@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@121@01)
      (= (Seq_index ar@87@01 i1@121@01) (Seq_index ar@87@01 i2@121@01)))
    (= i1@121@01 i2@121@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@121@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@121@01)
    (and
      (= (inv@122@01 (Seq_index ar@87@01 i@121@01)) i@121@01)
      (img@123@01 (Seq_index ar@87@01 i@121@01))))
  :pattern ((Seq_index ar@87@01 i@121@01))
  :qid |Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@123@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@122@01 r)))
    (= (Seq_index ar@87@01 (inv@122@01 r)) r))
  :pattern ((inv@122@01 r))
  :qid |Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@121@01 Int)) (!
  (= (Seq_index ar@87@01 i@121@01) (Seq_index br@88@01 i@121@01))
  
  :qid |quant-u-9820|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@121@01 Int)) (!
  (= (Seq_index ar@87@01 i@121@01) (Seq_index cr@89@01 i@121@01))
  
  :qid |quant-u-9821|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@124@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@122@01 r))
      (img@123@01 r)
      (= r (Seq_index ar@87@01 (inv@122@01 r))))
    ($Perm.min
      (ite
        (and (img@97@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@96@01 r)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@125@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@122@01 r))
      (img@123@01 r)
      (= r (Seq_index ar@87@01 (inv@122@01 r))))
    ($Perm.min
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@101@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@124@01 r)))
    $Perm.No))
(define-fun pTaken@126@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@122@01 r))
      (img@123@01 r)
      (= r (Seq_index ar@87@01 (inv@122@01 r))))
    ($Perm.min
      (ite
        (and
          (img@107@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@106@01 r)))
        $Perm.Write
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@124@01 r)) (pTaken@125@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@97@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@96@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@124@01 r))
    $Perm.No)
  
  :qid |quant-u-9823|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@124@01 r) $Perm.No)
  
  :qid |quant-u-9824|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@122@01 r))
      (img@123@01 r)
      (= r (Seq_index ar@87@01 (inv@122@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@124@01 r)) $Perm.No))
  
  :qid |quant-u-9825|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] ar[0]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 0 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@127@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ar@87@01 0))
    ($Perm.min
      (ite
        (and (img@97@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@96@01 r)))
        (- $Perm.Write (pTaken@124@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@128@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ar@87@01 0))
    ($Perm.min
      (ite
        (and
          (img@107@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@106@01 r)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@127@01 r)))
    $Perm.No))
(define-fun pTaken@129@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ar@87@01 0))
    ($Perm.min
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@101@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@127@01 r)) (pTaken@128@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@97@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@96@01 r)))
        (- $Perm.Write (pTaken@124@01 r))
        $Perm.No)
      (pTaken@127@01 r))
    $Perm.No)
  
  :qid |quant-u-9827|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@127@01 r) $Perm.No)
  
  :qid |quant-u-9828|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index ar@87@01 0))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@127@01 r)) $Perm.No))
  
  :qid |quant-u-9829|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@130@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0 + 1..|ar| - 1 + 1))
; [eval] [0 + 1..|ar| - 1 + 1)
; [eval] 0 + 1
; [eval] |ar| - 1 + 1
; [eval] |ar| - 1
; [eval] |ar|
(assert (Seq_contains (Seq_range 1 (+ (- (Seq_length ar@87@01) 1) 1)) i@130@01))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@130@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@130@01 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@131@01 ($Ref) Int)
(declare-fun img@132@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@130@01 Int) (i2@130@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 1 (+ (- (Seq_length ar@87@01) 1) 1)) i1@130@01)
      (Seq_contains (Seq_range 1 (+ (- (Seq_length ar@87@01) 1) 1)) i2@130@01)
      (= (Seq_index ar@87@01 i1@130@01) (Seq_index ar@87@01 i2@130@01)))
    (= i1@130@01 i2@130@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@130@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ (- (Seq_length ar@87@01) 1) 1)) i@130@01)
    (and
      (= (inv@131@01 (Seq_index ar@87@01 i@130@01)) i@130@01)
      (img@132@01 (Seq_index ar@87@01 i@130@01))))
  :pattern ((Seq_index ar@87@01 i@130@01))
  :qid |Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@132@01 r)
      (Seq_contains
        (Seq_range 1 (+ (- (Seq_length ar@87@01) 1) 1))
        (inv@131@01 r)))
    (= (Seq_index ar@87@01 (inv@131@01 r)) r))
  :pattern ((inv@131@01 r))
  :qid |Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@130@01 Int)) (!
  (= (Seq_index ar@87@01 i@130@01) (Seq_index br@88@01 i@130@01))
  
  :qid |quant-u-9831|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@130@01 Int)) (!
  (= (Seq_index ar@87@01 i@130@01) (Seq_index cr@89@01 i@130@01))
  
  :qid |quant-u-9832|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@133@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains
        (Seq_range 1 (+ (- (Seq_length ar@87@01) 1) 1))
        (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index ar@87@01 (inv@131@01 r))))
    ($Perm.min
      (ite
        (and (img@97@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@96@01 r)))
        (- (- $Perm.Write (pTaken@124@01 r)) (pTaken@127@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@134@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains
        (Seq_range 1 (+ (- (Seq_length ar@87@01) 1) 1))
        (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index ar@87@01 (inv@131@01 r))))
    ($Perm.min
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@101@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@133@01 r)))
    $Perm.No))
(define-fun pTaken@135@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains
        (Seq_range 1 (+ (- (Seq_length ar@87@01) 1) 1))
        (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index ar@87@01 (inv@131@01 r))))
    ($Perm.min
      (ite
        (and
          (img@107@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@106@01 r)))
        $Perm.Write
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@133@01 r)) (pTaken@134@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@97@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@96@01 r)))
        (- (- $Perm.Write (pTaken@124@01 r)) (pTaken@127@01 r))
        $Perm.No)
      (pTaken@133@01 r))
    $Perm.No)
  
  :qid |quant-u-9834|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range 1 (+ (- (Seq_length ar@87@01) 1) 1))
        (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index ar@87@01 (inv@131@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@133@01 r)) $Perm.No))
  
  :qid |quant-u-9835|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |br| == len
; [eval] |br|
; [eval] (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), br[j] } { (j in [0..len)), br[i] } { br[i], br[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> br[i] != br[j])
(declare-const i@136@01 Int)
(declare-const j@137@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j) ==> br[i] != br[j]
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j)
; [eval] (i in [0..len))
; [eval] [0..len)
(push) ; 4
; [then-branch: 40 | !(i@136@01 in [0..len@90@01]) | live]
; [else-branch: 40 | i@136@01 in [0..len@90@01] | live]
(push) ; 5
; [then-branch: 40 | !(i@136@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) i@136@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 40 | i@136@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) i@136@01))
; [eval] (j in [0..len))
; [eval] [0..len)
(push) ; 6
; [then-branch: 41 | !(j@137@01 in [0..len@90@01]) | live]
; [else-branch: 41 | j@137@01 in [0..len@90@01] | live]
(push) ; 7
; [then-branch: 41 | !(j@137@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) j@137@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 41 | j@137@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) j@137@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) j@137@01)
  (not (Seq_contains (Seq_range 0 len@90@01) j@137@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 len@90@01) i@136@01)
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@136@01)
    (or
      (Seq_contains (Seq_range 0 len@90@01) j@137@01)
      (not (Seq_contains (Seq_range 0 len@90@01) j@137@01))))))
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) i@136@01)
  (not (Seq_contains (Seq_range 0 len@90@01) i@136@01))))
(push) ; 4
; [then-branch: 42 | i@136@01 in [0..len@90@01] && j@137@01 in [0..len@90@01] && i@136@01 != j@137@01 | live]
; [else-branch: 42 | !(i@136@01 in [0..len@90@01] && j@137@01 in [0..len@90@01] && i@136@01 != j@137@01) | live]
(push) ; 5
; [then-branch: 42 | i@136@01 in [0..len@90@01] && j@137@01 in [0..len@90@01] && i@136@01 != j@137@01]
(assert (and
  (Seq_contains (Seq_range 0 len@90@01) i@136@01)
  (and
    (Seq_contains (Seq_range 0 len@90@01) j@137@01)
    (not (= i@136@01 j@137@01)))))
; [eval] br[i] != br[j]
; [eval] br[i]
(push) ; 6
(assert (not (>= i@136@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@136@01 (Seq_length br@88@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] br[j]
(push) ; 6
(assert (not (>= j@137@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@137@01 (Seq_length br@88@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 42 | !(i@136@01 in [0..len@90@01] && j@137@01 in [0..len@90@01] && i@136@01 != j@137@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@136@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@137@01)
      (not (= i@136@01 j@137@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@136@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@137@01)
      (not (= i@136@01 j@137@01))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@136@01)
    (Seq_contains (Seq_range 0 len@90@01) j@137@01)
    (not (= i@136@01 j@137@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@137@01)
        (not (= i@136@01 j@137@01)))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@136@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@137@01)
      (not (= i@136@01 j@137@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@136@01 Int) (j@137@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@137@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@136@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (Seq_contains (Seq_range 0 len@90@01) j@137@01)
        (not (= i@136@01 j@137@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@136@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@137@01)
            (not (= i@136@01 j@137@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@136@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@137@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@136@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@136@01 Int) (j@137@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@137@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@136@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (Seq_contains (Seq_range 0 len@90@01) j@137@01)
        (not (= i@136@01 j@137@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@136@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@137@01)
            (not (= i@136@01 j@137@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@136@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@136@01 Int) (j@137@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@137@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@136@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (Seq_contains (Seq_range 0 len@90@01) j@137@01)
        (not (= i@136@01 j@137@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@136@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@137@01)
            (not (= i@136@01 j@137@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@136@01) (Seq_index
    br@88@01
    j@137@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@136@01) (Seq_index
    br@88@01
    j@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@136@01 Int) (j@137@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@137@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@136@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (Seq_contains (Seq_range 0 len@90@01) j@137@01)
        (not (= i@136@01 j@137@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@136@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@137@01)
            (not (= i@136@01 j@137@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@136@01) (Seq_index
    br@88@01
    j@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@136@01 Int) (j@137@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@137@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@136@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (Seq_contains (Seq_range 0 len@90@01) j@137@01)
        (not (= i@136@01 j@137@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@136@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@137@01)
            (not (= i@136@01 j@137@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@137@01) (Seq_index
    br@88@01
    i@136@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@137@01) (Seq_index
    br@88@01
    i@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@136@01 Int) (j@137@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@137@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@136@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (Seq_contains (Seq_range 0 len@90@01) j@137@01)
        (not (= i@136@01 j@137@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@136@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@137@01)
            (not (= i@136@01 j@137@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@137@01) (Seq_index
    br@88@01
    i@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(assert (forall ((i@136@01 Int) (j@137@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@137@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@136@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (Seq_contains (Seq_range 0 len@90@01) j@137@01)
        (not (= i@136@01 j@137@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@136@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@137@01)
            (not (= i@136@01 j@137@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@136@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@137@01)
          (not (= i@136@01 j@137@01))))))
  :pattern ((Seq_index br@88@01 i@136@01) (Seq_index br@88@01 j@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98-aux|)))
(push) ; 3
(assert (not (forall ((i@136@01 Int) (j@137@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@137@01)
        (not (= i@136@01 j@137@01))))
    (not (= (Seq_index br@88@01 i@136@01) (Seq_index br@88@01 j@137@01))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@136@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@137@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@136@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@137@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@136@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@137@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@136@01) (Seq_index
    br@88@01
    j@137@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@136@01) (Seq_index
    br@88@01
    j@137@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@136@01) (Seq_index
    br@88@01
    j@137@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@137@01) (Seq_index
    br@88@01
    i@136@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@137@01) (Seq_index
    br@88@01
    i@136@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@137@01) (Seq_index
    br@88@01
    i@136@01))
  :pattern ((Seq_index br@88@01 i@136@01) (Seq_index br@88@01 j@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@136@01 Int) (j@137@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@136@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@137@01)
        (not (= i@136@01 j@137@01))))
    (not (= (Seq_index br@88@01 i@136@01) (Seq_index br@88@01 j@137@01))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@136@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@137@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@136@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@137@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@136@01) (Seq_index
    br@88@01
    j@137@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@136@01) (Seq_index
    br@88@01
    j@137@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@137@01) (Seq_index
    br@88@01
    i@136@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@137@01) (Seq_index
    br@88@01
    i@136@01))
  :pattern ((Seq_index br@88@01 i@136@01) (Seq_index br@88@01 j@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@19@12@19@98|)))
(declare-const i@138@01 Int)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@138@01))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@138@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@138@01 (Seq_length br@88@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@139@01 ($Ref) Int)
(declare-fun img@140@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@138@01 Int) (i2@138@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@138@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@138@01)
      (= (Seq_index br@88@01 i1@138@01) (Seq_index br@88@01 i2@138@01)))
    (= i1@138@01 i2@138@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@138@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@138@01)
    (and
      (= (inv@139@01 (Seq_index br@88@01 i@138@01)) i@138@01)
      (img@140@01 (Seq_index br@88@01 i@138@01))))
  :pattern ((Seq_index br@88@01 i@138@01))
  :qid |Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@140@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@139@01 r)))
    (= (Seq_index br@88@01 (inv@139@01 r)) r))
  :pattern ((inv@139@01 r))
  :qid |Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@138@01 Int)) (!
  (= (Seq_index br@88@01 i@138@01) (Seq_index cr@89@01 i@138@01))
  
  :qid |quant-u-9837|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@141@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@139@01 r))
      (img@140@01 r)
      (= r (Seq_index br@88@01 (inv@139@01 r))))
    ($Perm.min
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@101@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@142@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@139@01 r))
      (img@140@01 r)
      (= r (Seq_index br@88@01 (inv@139@01 r))))
    ($Perm.min
      (ite
        (and
          (img@107@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@106@01 r)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@141@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@101@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@141@01 r))
    $Perm.No)
  
  :qid |quant-u-9839|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@139@01 r))
      (img@140@01 r)
      (= r (Seq_index br@88@01 (inv@139@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@141@01 r)) $Perm.No))
  
  :qid |quant-u-9840|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |cr| == len
; [eval] |cr|
; [eval] (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), cr[j] } { (j in [0..len)), cr[i] } { cr[i], cr[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> cr[i] != cr[j])
(declare-const i@143@01 Int)
(declare-const j@144@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j) ==> cr[i] != cr[j]
; [eval] (i in [0..len)) && ((j in [0..len)) && i != j)
; [eval] (i in [0..len))
; [eval] [0..len)
(push) ; 4
; [then-branch: 43 | !(i@143@01 in [0..len@90@01]) | live]
; [else-branch: 43 | i@143@01 in [0..len@90@01] | live]
(push) ; 5
; [then-branch: 43 | !(i@143@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) i@143@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 43 | i@143@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) i@143@01))
; [eval] (j in [0..len))
; [eval] [0..len)
(push) ; 6
; [then-branch: 44 | !(j@144@01 in [0..len@90@01]) | live]
; [else-branch: 44 | j@144@01 in [0..len@90@01] | live]
(push) ; 7
; [then-branch: 44 | !(j@144@01 in [0..len@90@01])]
(assert (not (Seq_contains (Seq_range 0 len@90@01) j@144@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 44 | j@144@01 in [0..len@90@01]]
(assert (Seq_contains (Seq_range 0 len@90@01) j@144@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) j@144@01)
  (not (Seq_contains (Seq_range 0 len@90@01) j@144@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 len@90@01) i@143@01)
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@143@01)
    (or
      (Seq_contains (Seq_range 0 len@90@01) j@144@01)
      (not (Seq_contains (Seq_range 0 len@90@01) j@144@01))))))
(assert (or
  (Seq_contains (Seq_range 0 len@90@01) i@143@01)
  (not (Seq_contains (Seq_range 0 len@90@01) i@143@01))))
(push) ; 4
; [then-branch: 45 | i@143@01 in [0..len@90@01] && j@144@01 in [0..len@90@01] && i@143@01 != j@144@01 | live]
; [else-branch: 45 | !(i@143@01 in [0..len@90@01] && j@144@01 in [0..len@90@01] && i@143@01 != j@144@01) | live]
(push) ; 5
; [then-branch: 45 | i@143@01 in [0..len@90@01] && j@144@01 in [0..len@90@01] && i@143@01 != j@144@01]
(assert (and
  (Seq_contains (Seq_range 0 len@90@01) i@143@01)
  (and
    (Seq_contains (Seq_range 0 len@90@01) j@144@01)
    (not (= i@143@01 j@144@01)))))
; [eval] cr[i] != cr[j]
; [eval] cr[i]
(push) ; 6
(assert (not (>= i@143@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@143@01 (Seq_length cr@89@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] cr[j]
(push) ; 6
(assert (not (>= j@144@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@144@01 (Seq_length cr@89@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 45 | !(i@143@01 in [0..len@90@01] && j@144@01 in [0..len@90@01] && i@143@01 != j@144@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@143@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@144@01)
      (not (= i@143@01 j@144@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@143@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@144@01)
      (not (= i@143@01 j@144@01))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@143@01)
    (Seq_contains (Seq_range 0 len@90@01) j@144@01)
    (not (= i@143@01 j@144@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@144@01)
        (not (= i@143@01 j@144@01)))))
  (and
    (Seq_contains (Seq_range 0 len@90@01) i@143@01)
    (and
      (Seq_contains (Seq_range 0 len@90@01) j@144@01)
      (not (= i@143@01 j@144@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@144@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@143@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (Seq_contains (Seq_range 0 len@90@01) j@144@01)
        (not (= i@143@01 j@144@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@143@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@144@01)
            (not (= i@143@01 j@144@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@143@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@144@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@143@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@144@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@143@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (Seq_contains (Seq_range 0 len@90@01) j@144@01)
        (not (= i@143@01 j@144@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@143@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@144@01)
            (not (= i@143@01 j@144@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@143@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@144@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@143@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (Seq_contains (Seq_range 0 len@90@01) j@144@01)
        (not (= i@143@01 j@144@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@143@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@144@01)
            (not (= i@143@01 j@144@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@143@01) (Seq_index
    cr@89@01
    j@144@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@143@01) (Seq_index
    cr@89@01
    j@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@144@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@143@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (Seq_contains (Seq_range 0 len@90@01) j@144@01)
        (not (= i@143@01 j@144@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@143@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@144@01)
            (not (= i@143@01 j@144@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@143@01) (Seq_index
    cr@89@01
    j@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@144@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@143@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (Seq_contains (Seq_range 0 len@90@01) j@144@01)
        (not (= i@143@01 j@144@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@143@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@144@01)
            (not (= i@143@01 j@144@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@144@01) (Seq_index
    cr@89@01
    i@143@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@144@01) (Seq_index
    cr@89@01
    i@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@144@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@143@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (Seq_contains (Seq_range 0 len@90@01) j@144@01)
        (not (= i@143@01 j@144@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@143@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@144@01)
            (not (= i@143@01 j@144@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@144@01) (Seq_index
    cr@89@01
    i@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(assert (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (or
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (Seq_contains (Seq_range 0 len@90@01) j@144@01)))))
    (or
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (not (Seq_contains (Seq_range 0 len@90@01) i@143@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (Seq_contains (Seq_range 0 len@90@01) j@144@01)
        (not (= i@143@01 j@144@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 len@90@01) i@143@01)
          (and
            (Seq_contains (Seq_range 0 len@90@01) j@144@01)
            (not (= i@143@01 j@144@01)))))
      (and
        (Seq_contains (Seq_range 0 len@90@01) i@143@01)
        (and
          (Seq_contains (Seq_range 0 len@90@01) j@144@01)
          (not (= i@143@01 j@144@01))))))
  :pattern ((Seq_index cr@89@01 i@143@01) (Seq_index cr@89@01 j@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98-aux|)))
(push) ; 3
(assert (not (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@144@01)
        (not (= i@143@01 j@144@01))))
    (not (= (Seq_index cr@89@01 i@143@01) (Seq_index cr@89@01 j@144@01))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@143@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@144@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@143@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@144@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@143@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@144@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@143@01) (Seq_index
    cr@89@01
    j@144@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@143@01) (Seq_index
    cr@89@01
    j@144@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@143@01) (Seq_index
    cr@89@01
    j@144@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@144@01) (Seq_index
    cr@89@01
    i@143@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@144@01) (Seq_index
    cr@89@01
    i@143@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@144@01) (Seq_index
    cr@89@01
    i@143@01))
  :pattern ((Seq_index cr@89@01 i@143@01) (Seq_index cr@89@01 j@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i@143@01)
      (and
        (Seq_contains (Seq_range 0 len@90@01) j@144@01)
        (not (= i@143@01 j@144@01))))
    (not (= (Seq_index cr@89@01 i@143@01) (Seq_index cr@89@01 j@144@01))))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@143@01) (Seq_contains
    (Seq_range 0 len@90@01)
    j@144@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@143@01) (Seq_contains_trigger
    (Seq_range 0 len@90@01)
    j@144@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) i@143@01) (Seq_index
    cr@89@01
    j@144@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) i@143@01) (Seq_index
    cr@89@01
    j@144@01))
  :pattern ((Seq_contains (Seq_range 0 len@90@01) j@144@01) (Seq_index
    cr@89@01
    i@143@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 len@90@01) j@144@01) (Seq_index
    cr@89@01
    i@143@01))
  :pattern ((Seq_index cr@89@01 i@143@01) (Seq_index cr@89@01 j@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/back.vpr@22@12@22@98|)))
(declare-const i@145@01 Int)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@145@01))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@145@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@145@01 (Seq_length cr@89@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@146@01 ($Ref) Int)
(declare-fun img@147@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@145@01 Int) (i2@145@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@145@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@145@01)
      (= (Seq_index cr@89@01 i1@145@01) (Seq_index cr@89@01 i2@145@01)))
    (= i1@145@01 i2@145@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@145@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@145@01)
    (and
      (= (inv@146@01 (Seq_index cr@89@01 i@145@01)) i@145@01)
      (img@147@01 (Seq_index cr@89@01 i@145@01))))
  :pattern ((Seq_index cr@89@01 i@145@01))
  :qid |Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@147@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@146@01 r)))
    (= (Seq_index cr@89@01 (inv@146@01 r)) r))
  :pattern ((inv@146@01 r))
  :qid |Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@148@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@146@01 r))
      (img@147@01 r)
      (= r (Seq_index cr@89@01 (inv@146@01 r))))
    ($Perm.min
      (ite
        (and
          (img@107@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@106@01 r)))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@107@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@106@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@148@01 r))
    $Perm.No)
  
  :qid |quant-u-9843|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@146@01 r))
      (img@147@01 r)
      (= r (Seq_index cr@89@01 (inv@146@01 r))))
    (= (- $Perm.Write (pTaken@148@01 r)) $Perm.No))
  
  :qid |quant-u-9844|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 ($Snap.combine ($Snap.first $t@149@01) ($Snap.second $t@149@01))))
(assert (= ($Snap.first $t@149@01) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second $t@149@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@149@01))
    ($Snap.second ($Snap.second $t@149@01)))))
(declare-const i@150@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@150@01))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@150@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@150@01 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@151@01 ($Ref) Int)
(declare-fun img@152@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@150@01 Int) (i2@150@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@150@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@150@01)
      (= (Seq_index ar@87@01 i1@150@01) (Seq_index ar@87@01 i2@150@01)))
    (= i1@150@01 i2@150@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@150@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@150@01)
    (and
      (= (inv@151@01 (Seq_index ar@87@01 i@150@01)) i@150@01)
      (img@152@01 (Seq_index ar@87@01 i@150@01))))
  :pattern ((Seq_index ar@87@01 i@150@01))
  :qid |quant-u-9846|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@152@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@151@01 r)))
    (= (Seq_index ar@87@01 (inv@151@01 r)) r))
  :pattern ((inv@151@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@150@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@150@01)
    (not (= (Seq_index ar@87@01 i@150@01) $Ref.null)))
  :pattern ((Seq_index ar@87@01 i@150@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@149@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@149@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@149@01))) $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@149@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@149@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))
(declare-const i@153@01 Int)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@153@01))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@153@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@153@01 (Seq_length br@88@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@154@01 ($Ref) Int)
(declare-fun img@155@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@153@01 Int) (i2@153@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@153@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@153@01)
      (= (Seq_index br@88@01 i1@153@01) (Seq_index br@88@01 i2@153@01)))
    (= i1@153@01 i2@153@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@153@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@153@01)
    (and
      (= (inv@154@01 (Seq_index br@88@01 i@153@01)) i@153@01)
      (img@155@01 (Seq_index br@88@01 i@153@01))))
  :pattern ((Seq_index br@88@01 i@153@01))
  :qid |quant-u-9848|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@155@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@154@01 r)))
    (= (Seq_index br@88@01 (inv@154@01 r)) r))
  :pattern ((inv@154@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@153@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@153@01)
    (not (= (Seq_index br@88@01 i@153@01) $Ref.null)))
  :pattern ((Seq_index br@88@01 i@153@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@88@01 i@153@01) (Seq_index ar@87@01 i@150@01))
    (=
      (and (img@155@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@154@01 r)))
      (and (img@152@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@151@01 r)))))
  
  :qid |quant-u-9849|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(declare-const i@156@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@156@01))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@156@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@156@01 (Seq_length cr@89@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@157@01 ($Ref) Int)
(declare-fun img@158@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@156@01 Int) (i2@156@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@156@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@156@01)
      (= (Seq_index cr@89@01 i1@156@01) (Seq_index cr@89@01 i2@156@01)))
    (= i1@156@01 i2@156@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@156@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@156@01)
    (and
      (= (inv@157@01 (Seq_index cr@89@01 i@156@01)) i@156@01)
      (img@158@01 (Seq_index cr@89@01 i@156@01))))
  :pattern ((Seq_index cr@89@01 i@156@01))
  :qid |quant-u-9851|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@158@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@157@01 r)))
    (= (Seq_index cr@89@01 (inv@157@01 r)) r))
  :pattern ((inv@157@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@156@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@156@01)
    (not (= (Seq_index cr@89@01 i@156@01) $Ref.null)))
  :pattern ((Seq_index cr@89@01 i@156@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@89@01 i@156@01) (Seq_index br@88@01 i@153@01))
    (=
      (and (img@158@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@157@01 r)))
      (and (img@155@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@154@01 r)))))
  
  :qid |quant-u-9852|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@89@01 i@156@01) (Seq_index ar@87@01 i@150@01))
    (=
      (and (img@158@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@157@01 r)))
      (and (img@152@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@151@01 r)))))
  
  :qid |quant-u-9853|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |ar| == len
; [eval] |ar|
(declare-const i@159@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@159@01))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@159@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@159@01 (Seq_length ar@87@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@160@01 ($Ref) Int)
(declare-fun img@161@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@159@01 Int) (i2@159@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@159@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@159@01)
      (= (Seq_index ar@87@01 i1@159@01) (Seq_index ar@87@01 i2@159@01)))
    (= i1@159@01 i2@159@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@159@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@159@01)
    (and
      (= (inv@160@01 (Seq_index ar@87@01 i@159@01)) i@159@01)
      (img@161@01 (Seq_index ar@87@01 i@159@01))))
  :pattern ((Seq_index ar@87@01 i@159@01))
  :qid |Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@161@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@160@01 r)))
    (= (Seq_index ar@87@01 (inv@160@01 r)) r))
  :pattern ((inv@160@01 r))
  :qid |Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@159@01 Int)) (!
  (= (Seq_index ar@87@01 i@159@01) (Seq_index br@88@01 i@159@01))
  
  :qid |quant-u-9855|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@159@01 Int)) (!
  (= (Seq_index ar@87@01 i@159@01) (Seq_index cr@89@01 i@159@01))
  
  :qid |quant-u-9856|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@162@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@160@01 r))
      (img@161@01 r)
      (= r (Seq_index ar@87@01 (inv@160@01 r))))
    ($Perm.min
      (ite
        (and
          (img@152@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@151@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@163@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@160@01 r))
      (img@161@01 r)
      (= r (Seq_index ar@87@01 (inv@160@01 r))))
    ($Perm.min
      (ite
        (and
          (img@155@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@154@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@162@01 r)))
    $Perm.No))
(define-fun pTaken@164@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@160@01 r))
      (img@161@01 r)
      (= r (Seq_index ar@87@01 (inv@160@01 r))))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@157@01 r)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@162@01 r)) (pTaken@163@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@152@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@151@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@162@01 r))
    $Perm.No)
  
  :qid |quant-u-9858|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@160@01 r))
      (img@161@01 r)
      (= r (Seq_index ar@87@01 (inv@160@01 r))))
    (= (- $Perm.Write (pTaken@162@01 r)) $Perm.No))
  
  :qid |quant-u-9859|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |br| == len
; [eval] |br|
(declare-const i@165@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@165@01))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@165@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@165@01 (Seq_length br@88@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@166@01 ($Ref) Int)
(declare-fun img@167@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@165@01 Int) (i2@165@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@165@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@165@01)
      (= (Seq_index br@88@01 i1@165@01) (Seq_index br@88@01 i2@165@01)))
    (= i1@165@01 i2@165@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@165@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@165@01)
    (and
      (= (inv@166@01 (Seq_index br@88@01 i@165@01)) i@165@01)
      (img@167@01 (Seq_index br@88@01 i@165@01))))
  :pattern ((Seq_index br@88@01 i@165@01))
  :qid |Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@167@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@166@01 r)))
    (= (Seq_index br@88@01 (inv@166@01 r)) r))
  :pattern ((inv@166@01 r))
  :qid |Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@165@01 Int)) (!
  (= (Seq_index br@88@01 i@165@01) (Seq_index cr@89@01 i@165@01))
  
  :qid |quant-u-9861|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@168@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@166@01 r))
      (img@167@01 r)
      (= r (Seq_index br@88@01 (inv@166@01 r))))
    ($Perm.min
      (ite
        (and
          (img@155@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@154@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@169@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@166@01 r))
      (img@167@01 r)
      (= r (Seq_index br@88@01 (inv@166@01 r))))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@157@01 r)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@168@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@155@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@154@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@168@01 r))
    $Perm.No)
  
  :qid |quant-u-9863|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@166@01 r))
      (img@167@01 r)
      (= r (Seq_index br@88@01 (inv@166@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@168@01 r)) $Perm.No))
  
  :qid |quant-u-9864|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |cr| == len
; [eval] |cr|
(declare-const i@170@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..len))
; [eval] [0..len)
(assert (Seq_contains (Seq_range 0 len@90@01) i@170@01))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@170@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@170@01 (Seq_length cr@89@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@171@01 ($Ref) Int)
(declare-fun img@172@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@170@01 Int) (i2@170@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) i1@170@01)
      (Seq_contains (Seq_range 0 len@90@01) i2@170@01)
      (= (Seq_index cr@89@01 i1@170@01) (Seq_index cr@89@01 i2@170@01)))
    (= i1@170@01 i2@170@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@170@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 len@90@01) i@170@01)
    (and
      (= (inv@171@01 (Seq_index cr@89@01 i@170@01)) i@170@01)
      (img@172@01 (Seq_index cr@89@01 i@170@01))))
  :pattern ((Seq_index cr@89@01 i@170@01))
  :qid |Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@172@01 r) (Seq_contains (Seq_range 0 len@90@01) (inv@171@01 r)))
    (= (Seq_index cr@89@01 (inv@171@01 r)) r))
  :pattern ((inv@171@01 r))
  :qid |Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@173@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@171@01 r))
      (img@172@01 r)
      (= r (Seq_index cr@89@01 (inv@171@01 r))))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@157@01 r)))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@158@01 r)
          (Seq_contains (Seq_range 0 len@90@01) (inv@157@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@173@01 r))
    $Perm.No)
  
  :qid |quant-u-9867|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 len@90@01) (inv@171@01 r))
      (img@172@01 r)
      (= r (Seq_index cr@89@01 (inv@171@01 r))))
    (= (- $Perm.Write (pTaken@173@01 r)) $Perm.No))
  
  :qid |quant-u-9868|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
