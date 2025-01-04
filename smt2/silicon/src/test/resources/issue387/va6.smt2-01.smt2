(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:25:22
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
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<f> 0)
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
(declare-fun $SortWrappers.$FVF<f>To$Snap ($FVF<f>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<f> ($Snap) $FVF<f>)
(assert (forall ((x $FVF<f>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<f>($SortWrappers.$FVF<f>To$Snap x)))
    :pattern (($SortWrappers.$FVF<f>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<f>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<f>To$Snap($SortWrappers.$SnapTo$FVF<f> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<f> x))
    :qid |$Snap.$FVF<f>To$SnapTo$FVF<f>|
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
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun fun06 ($Snap Seq<$Ref> Int Int) Int)
(declare-fun fun06%limited ($Snap Seq<$Ref> Int Int) Int)
(declare-fun fun06%stateless (Seq<$Ref> Int Int) Bool)
(declare-fun fun06%precondition ($Snap Seq<$Ref> Int Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P02%trigger ($Snap Seq<$Ref> Int) Bool)
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
; /field_value_functions_axioms.smt2 [f: Int]
(assert (forall ((vs $FVF<f>) (ws $FVF<f>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_f vs) ($FVF.domain_f ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_f vs))
            (= ($FVF.lookup_f vs x) ($FVF.lookup_f ws x)))
          :pattern (($FVF.lookup_f vs x) ($FVF.lookup_f ws x))
          :qid |qp.$FVF<f>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<f>To$Snap vs)
              ($SortWrappers.$FVF<f>To$Snap ws)
              )
    :qid |qp.$FVF<f>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_f pm r))
    :pattern (($FVF.perm_f pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_f f r) true)
    :pattern (($FVF.loc_f f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@7@00 ($Snap Seq<$Ref> Int Int $Ref) Int)
(declare-fun img@8@00 ($Snap Seq<$Ref> Int Int $Ref) Bool)
(declare-fun inv@10@00 ($Snap Seq<$Ref> Int Int $Ref) Int)
(declare-fun img@11@00 ($Snap Seq<$Ref> Int Int $Ref) Bool)
(declare-fun sm@12@00 ($Snap Seq<$Ref> Int Int) $FVF<f>)
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (n@1@00 Int) (i@2@00 Int)) (!
  (= (fun06%limited s@$ xs@0@00 n@1@00 i@2@00) (fun06 s@$ xs@0@00 n@1@00 i@2@00))
  :pattern ((fun06 s@$ xs@0@00 n@1@00 i@2@00))
  :qid |quant-u-5180|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (n@1@00 Int) (i@2@00 Int)) (!
  (fun06%stateless xs@0@00 n@1@00 i@2@00)
  :pattern ((fun06%limited s@$ xs@0@00 n@1@00 i@2@00))
  :qid |quant-u-5181|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (n@1@00 Int) (i@2@00 Int)) (!
  (and
    (forall ((j@6@00 Int)) (!
      (=>
        (and (<= 0 j@6@00) (< j@6@00 3))
        (and
          (=
            (inv@7@00 s@$ xs@0@00 n@1@00 i@2@00 (Seq_index xs@0@00 j@6@00))
            j@6@00)
          (img@8@00 s@$ xs@0@00 n@1@00 i@2@00 (Seq_index xs@0@00 j@6@00))))
      :pattern ((Seq_index xs@0@00 j@6@00))
      :qid |quant-u-5183|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@8@00 s@$ xs@0@00 n@1@00 i@2@00 r)
          (and
            (<= 0 (inv@7@00 s@$ xs@0@00 n@1@00 i@2@00 r))
            (< (inv@7@00 s@$ xs@0@00 n@1@00 i@2@00 r) 3)))
        (= (Seq_index xs@0@00 (inv@7@00 s@$ xs@0@00 n@1@00 i@2@00 r)) r))
      :pattern ((inv@7@00 s@$ xs@0@00 n@1@00 i@2@00 r))
      :qid |f-fctOfInv|))
    (forall ((j@9@00 Int)) (!
      (=>
        (and (<= 3 j@9@00) (< j@9@00 n@1@00))
        (and
          (=
            (inv@10@00 s@$ xs@0@00 n@1@00 i@2@00 (Seq_index xs@0@00 j@9@00))
            j@9@00)
          (img@11@00 s@$ xs@0@00 n@1@00 i@2@00 (Seq_index xs@0@00 j@9@00))))
      :pattern ((Seq_index xs@0@00 j@9@00))
      :qid |quant-u-5185|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@11@00 s@$ xs@0@00 n@1@00 i@2@00 r)
          (and
            (<= 3 (inv@10@00 s@$ xs@0@00 n@1@00 i@2@00 r))
            (< (inv@10@00 s@$ xs@0@00 n@1@00 i@2@00 r) n@1@00)))
        (= (Seq_index xs@0@00 (inv@10@00 s@$ xs@0@00 n@1@00 i@2@00 r)) r))
      :pattern ((inv@10@00 s@$ xs@0@00 n@1@00 i@2@00 r))
      :qid |f-fctOfInv|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@8@00 s@$ xs@0@00 n@1@00 i@2@00 r)
          (and
            (<= 0 (inv@7@00 s@$ xs@0@00 n@1@00 i@2@00 r))
            (< (inv@7@00 s@$ xs@0@00 n@1@00 i@2@00 r) 3)))
        (=
          ($FVF.lookup_f (sm@12@00 s@$ xs@0@00 n@1@00 i@2@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) r)))
      :pattern (($FVF.lookup_f (sm@12@00 s@$ xs@0@00 n@1@00 i@2@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) r))
      :qid |qp.fvfValDef0|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@11@00 s@$ xs@0@00 n@1@00 i@2@00 r)
          (and
            (<= 3 (inv@10@00 s@$ xs@0@00 n@1@00 i@2@00 r))
            (< (inv@10@00 s@$ xs@0@00 n@1@00 i@2@00 r) n@1@00)))
        (=
          ($FVF.lookup_f (sm@12@00 s@$ xs@0@00 n@1@00 i@2@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) r)))
      :pattern (($FVF.lookup_f (sm@12@00 s@$ xs@0@00 n@1@00 i@2@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) r))
      :qid |qp.fvfValDef1|))
    (=>
      (fun06%precondition s@$ xs@0@00 n@1@00 i@2@00)
      (=
        (fun06 s@$ xs@0@00 n@1@00 i@2@00)
        ($FVF.lookup_f (sm@12@00 s@$ xs@0@00 n@1@00 i@2@00) (Seq_index
          xs@0@00
          i@2@00)))))
  :pattern ((fun06 s@$ xs@0@00 n@1@00 i@2@00))
  :qid |quant-u-5187|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (n@1@00 Int) (i@2@00 Int)) (!
  true
  :pattern ((fun06 s@$ xs@0@00 n@1@00 i@2@00))
  :qid |quant-u-5188|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test05 ----------
(declare-const xs@0@01 Seq<$Ref>)
(declare-const n@1@01 Int)
(declare-const i@2@01 Int)
(declare-const xs@3@01 Seq<$Ref>)
(declare-const n@4@01 Int)
(declare-const i@5@01 Int)
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
; var v1: Int
(declare-const v1@6@01 Int)
; [exec]
; var v2: Int
(declare-const v2@7@01 Int)
; [exec]
; inhale acc(P02(xs, n), write)
(declare-const $t@8@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 6 < n
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 $Snap.unit))
; [eval] 6 < n
(assert (< 6 n@4@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale i == 4
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 $Snap.unit))
; [eval] i == 4
(assert (= i@5@01 4))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; unfold acc(P02(xs, n), write)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] |xs| == n
; [eval] |xs|
(assert (= (Seq_length xs@3@01) n@4@01))
(assert (=
  ($Snap.second $t@8@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@8@01))
    ($Snap.second ($Snap.second $t@8@01)))))
(assert (= ($Snap.first ($Snap.second $t@8@01)) $Snap.unit))
; [eval] 3 <= n
(assert (<= 3 n@4@01))
(assert (=
  ($Snap.second ($Snap.second $t@8@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@8@01))) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@11@01 Int)
(declare-const j@12@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 4
; [then-branch: 0 | !(i@11@01 >= 0) | live]
; [else-branch: 0 | i@11@01 >= 0 | live]
(push) ; 5
; [then-branch: 0 | !(i@11@01 >= 0)]
(assert (not (>= i@11@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | i@11@01 >= 0]
(assert (>= i@11@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 1 | !(i@11@01 < |xs@3@01|) | live]
; [else-branch: 1 | i@11@01 < |xs@3@01| | live]
(push) ; 7
; [then-branch: 1 | !(i@11@01 < |xs@3@01|)]
(assert (not (< i@11@01 (Seq_length xs@3@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 1 | i@11@01 < |xs@3@01|]
(assert (< i@11@01 (Seq_length xs@3@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 2 | !(j@12@01 >= 0) | live]
; [else-branch: 2 | j@12@01 >= 0 | live]
(push) ; 9
; [then-branch: 2 | !(j@12@01 >= 0)]
(assert (not (>= j@12@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 2 | j@12@01 >= 0]
(assert (>= j@12@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 3 | !(j@12@01 < |xs@3@01|) | live]
; [else-branch: 3 | j@12@01 < |xs@3@01| | live]
(push) ; 11
; [then-branch: 3 | !(j@12@01 < |xs@3@01|)]
(assert (not (< j@12@01 (Seq_length xs@3@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 3 | j@12@01 < |xs@3@01|]
(assert (< j@12@01 (Seq_length xs@3@01)))
; [eval] i != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@12@01 (Seq_length xs@3@01)) (not (< j@12@01 (Seq_length xs@3@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@12@01 0)
  (and
    (>= j@12@01 0)
    (or (< j@12@01 (Seq_length xs@3@01)) (not (< j@12@01 (Seq_length xs@3@01)))))))
(assert (or (>= j@12@01 0) (not (>= j@12@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@11@01 (Seq_length xs@3@01))
  (and
    (< i@11@01 (Seq_length xs@3@01))
    (=>
      (>= j@12@01 0)
      (and
        (>= j@12@01 0)
        (or
          (< j@12@01 (Seq_length xs@3@01))
          (not (< j@12@01 (Seq_length xs@3@01))))))
    (or (>= j@12@01 0) (not (>= j@12@01 0))))))
(assert (or (< i@11@01 (Seq_length xs@3@01)) (not (< i@11@01 (Seq_length xs@3@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@11@01 0)
  (and
    (>= i@11@01 0)
    (=>
      (< i@11@01 (Seq_length xs@3@01))
      (and
        (< i@11@01 (Seq_length xs@3@01))
        (=>
          (>= j@12@01 0)
          (and
            (>= j@12@01 0)
            (or
              (< j@12@01 (Seq_length xs@3@01))
              (not (< j@12@01 (Seq_length xs@3@01))))))
        (or (>= j@12@01 0) (not (>= j@12@01 0)))))
    (or (< i@11@01 (Seq_length xs@3@01)) (not (< i@11@01 (Seq_length xs@3@01)))))))
(assert (or (>= i@11@01 0) (not (>= i@11@01 0))))
(push) ; 4
; [then-branch: 4 | i@11@01 >= 0 && i@11@01 < |xs@3@01| && j@12@01 >= 0 && j@12@01 < |xs@3@01| && i@11@01 != j@12@01 | live]
; [else-branch: 4 | !(i@11@01 >= 0 && i@11@01 < |xs@3@01| && j@12@01 >= 0 && j@12@01 < |xs@3@01| && i@11@01 != j@12@01) | live]
(push) ; 5
; [then-branch: 4 | i@11@01 >= 0 && i@11@01 < |xs@3@01| && j@12@01 >= 0 && j@12@01 < |xs@3@01| && i@11@01 != j@12@01]
(assert (and
  (>= i@11@01 0)
  (and
    (< i@11@01 (Seq_length xs@3@01))
    (and
      (>= j@12@01 0)
      (and (< j@12@01 (Seq_length xs@3@01)) (not (= i@11@01 j@12@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(i@11@01 >= 0 && i@11@01 < |xs@3@01| && j@12@01 >= 0 && j@12@01 < |xs@3@01| && i@11@01 != j@12@01)]
(assert (not
  (and
    (>= i@11@01 0)
    (and
      (< i@11@01 (Seq_length xs@3@01))
      (and
        (>= j@12@01 0)
        (and (< j@12@01 (Seq_length xs@3@01)) (not (= i@11@01 j@12@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= i@11@01 0)
    (and
      (< i@11@01 (Seq_length xs@3@01))
      (and
        (>= j@12@01 0)
        (and (< j@12@01 (Seq_length xs@3@01)) (not (= i@11@01 j@12@01))))))
  (and
    (>= i@11@01 0)
    (< i@11@01 (Seq_length xs@3@01))
    (>= j@12@01 0)
    (< j@12@01 (Seq_length xs@3@01))
    (not (= i@11@01 j@12@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@11@01 0)
      (and
        (< i@11@01 (Seq_length xs@3@01))
        (and
          (>= j@12@01 0)
          (and (< j@12@01 (Seq_length xs@3@01)) (not (= i@11@01 j@12@01)))))))
  (and
    (>= i@11@01 0)
    (and
      (< i@11@01 (Seq_length xs@3@01))
      (and
        (>= j@12@01 0)
        (and (< j@12@01 (Seq_length xs@3@01)) (not (= i@11@01 j@12@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (>= i@11@01 0)
      (and
        (>= i@11@01 0)
        (=>
          (< i@11@01 (Seq_length xs@3@01))
          (and
            (< i@11@01 (Seq_length xs@3@01))
            (=>
              (>= j@12@01 0)
              (and
                (>= j@12@01 0)
                (or
                  (< j@12@01 (Seq_length xs@3@01))
                  (not (< j@12@01 (Seq_length xs@3@01))))))
            (or (>= j@12@01 0) (not (>= j@12@01 0)))))
        (or
          (< i@11@01 (Seq_length xs@3@01))
          (not (< i@11@01 (Seq_length xs@3@01))))))
    (or (>= i@11@01 0) (not (>= i@11@01 0)))
    (=>
      (and
        (>= i@11@01 0)
        (and
          (< i@11@01 (Seq_length xs@3@01))
          (and
            (>= j@12@01 0)
            (and (< j@12@01 (Seq_length xs@3@01)) (not (= i@11@01 j@12@01))))))
      (and
        (>= i@11@01 0)
        (< i@11@01 (Seq_length xs@3@01))
        (>= j@12@01 0)
        (< j@12@01 (Seq_length xs@3@01))
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (>= i@11@01 0)
          (and
            (< i@11@01 (Seq_length xs@3@01))
            (and
              (>= j@12@01 0)
              (and (< j@12@01 (Seq_length xs@3@01)) (not (= i@11@01 j@12@01)))))))
      (and
        (>= i@11@01 0)
        (and
          (< i@11@01 (Seq_length xs@3@01))
          (and
            (>= j@12@01 0)
            (and (< j@12@01 (Seq_length xs@3@01)) (not (= i@11@01 j@12@01))))))))
  :pattern ((Seq_index xs@3@01 i@11@01) (Seq_index xs@3@01 j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va6.vpr@6@7@6@101-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (=>
    (and
      (>= i@11@01 0)
      (and
        (< i@11@01 (Seq_length xs@3@01))
        (and
          (>= j@12@01 0)
          (and (< j@12@01 (Seq_length xs@3@01)) (not (= i@11@01 j@12@01))))))
    (not (= (Seq_index xs@3@01 i@11@01) (Seq_index xs@3@01 j@12@01))))
  :pattern ((Seq_index xs@3@01 i@11@01) (Seq_index xs@3@01 j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va6.vpr@6@7@6@101|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@8@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))
(declare-const j@13@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 5 | !(0 <= j@13@01) | live]
; [else-branch: 5 | 0 <= j@13@01 | live]
(push) ; 5
; [then-branch: 5 | !(0 <= j@13@01)]
(assert (not (<= 0 j@13@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | 0 <= j@13@01]
(assert (<= 0 j@13@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@13@01) (not (<= 0 j@13@01))))
(assert (and (<= 0 j@13@01) (< j@13@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@13@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@13@01 (Seq_length xs@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@14@01 ($Ref) Int)
(declare-fun img@15@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@13@01 Int)) (!
  (=>
    (and (<= 0 j@13@01) (< j@13@01 3))
    (or (<= 0 j@13@01) (not (<= 0 j@13@01))))
  :pattern ((Seq_index xs@3@01 j@13@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@13@01 Int) (j2@13@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@13@01) (< j1@13@01 3))
      (and (<= 0 j2@13@01) (< j2@13@01 3))
      (= (Seq_index xs@3@01 j1@13@01) (Seq_index xs@3@01 j2@13@01)))
    (= j1@13@01 j2@13@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@13@01 Int)) (!
  (=>
    (and (<= 0 j@13@01) (< j@13@01 3))
    (and
      (= (inv@14@01 (Seq_index xs@3@01 j@13@01)) j@13@01)
      (img@15@01 (Seq_index xs@3@01 j@13@01))))
  :pattern ((Seq_index xs@3@01 j@13@01))
  :qid |quant-u-5195|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@15@01 r) (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)))
    (= (Seq_index xs@3@01 (inv@14@01 r)) r))
  :pattern ((inv@14@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@13@01 Int)) (!
  (=>
    (and (<= 0 j@13@01) (< j@13@01 3))
    (not (= (Seq_index xs@3@01 j@13@01) $Ref.null)))
  :pattern ((Seq_index xs@3@01 j@13@01))
  :qid |f-permImpliesNonNull|)))
(declare-const j@16@01 Int)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 6 | !(3 <= j@16@01) | live]
; [else-branch: 6 | 3 <= j@16@01 | live]
(push) ; 5
; [then-branch: 6 | !(3 <= j@16@01)]
(assert (not (<= 3 j@16@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 3 <= j@16@01]
(assert (<= 3 j@16@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@16@01) (not (<= 3 j@16@01))))
(assert (and (<= 3 j@16@01) (< j@16@01 n@4@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@16@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@16@01 (Seq_length xs@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@17@01 ($Ref) Int)
(declare-fun img@18@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@16@01 Int)) (!
  (=>
    (and (<= 3 j@16@01) (< j@16@01 n@4@01))
    (or (<= 3 j@16@01) (not (<= 3 j@16@01))))
  :pattern ((Seq_index xs@3@01 j@16@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@16@01 Int) (j2@16@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@16@01) (< j1@16@01 n@4@01))
      (and (<= 3 j2@16@01) (< j2@16@01 n@4@01))
      (= (Seq_index xs@3@01 j1@16@01) (Seq_index xs@3@01 j2@16@01)))
    (= j1@16@01 j2@16@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@16@01 Int)) (!
  (=>
    (and (<= 3 j@16@01) (< j@16@01 n@4@01))
    (and
      (= (inv@17@01 (Seq_index xs@3@01 j@16@01)) j@16@01)
      (img@18@01 (Seq_index xs@3@01 j@16@01))))
  :pattern ((Seq_index xs@3@01 j@16@01))
  :qid |quant-u-5197|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@18@01 r) (and (<= 3 (inv@17@01 r)) (< (inv@17@01 r) n@4@01)))
    (= (Seq_index xs@3@01 (inv@17@01 r)) r))
  :pattern ((inv@17@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@16@01 Int)) (!
  (=>
    (and (<= 3 j@16@01) (< j@16@01 n@4@01))
    (not (= (Seq_index xs@3@01 j@16@01) $Ref.null)))
  :pattern ((Seq_index xs@3@01 j@16@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@3@01 j@16@01) (Seq_index xs@3@01 j@13@01))
    (=
      (and (img@18@01 r) (and (<= 3 (inv@17@01 r)) (< (inv@17@01 r) n@4@01)))
      (and (img@15@01 r) (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)))))
  
  :qid |quant-u-5198|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P02%trigger $t@8@01 xs@3@01 n@4@01))
; [exec]
; v1 := xs[i].f
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@5@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@5@01 (Seq_length xs@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@19@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@15@01 r) (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@19@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@19@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@18@01 r) (and (<= 3 (inv@17@01 r)) (< (inv@17@01 r) n@4@01)))
    (=
      ($FVF.lookup_f (as sm@19@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@19@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@20@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@20@01  $FPM) r)
    (+
      (ite
        (and (img@15@01 r) (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@18@01 r) (and (<= 3 (inv@17@01 r)) (< (inv@17@01 r) n@4@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@20@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@20@01  $FPM) (Seq_index xs@3@01 i@5@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const v1@21@01 Int)
(assert (= v1@21@01 ($FVF.lookup_f (as sm@19@01  $FVF<f>) (Seq_index xs@3@01 i@5@01))))
; [exec]
; fold acc(P02(xs, n), write)
; [eval] |xs| == n
; [eval] |xs|
; [eval] 3 <= n
; [eval] (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@22@01 Int)
(declare-const j@23@01 Int)
(push) ; 3
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 4
; [then-branch: 7 | !(i@22@01 >= 0) | live]
; [else-branch: 7 | i@22@01 >= 0 | live]
(push) ; 5
; [then-branch: 7 | !(i@22@01 >= 0)]
(assert (not (>= i@22@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | i@22@01 >= 0]
(assert (>= i@22@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 8 | !(i@22@01 < |xs@3@01|) | live]
; [else-branch: 8 | i@22@01 < |xs@3@01| | live]
(push) ; 7
; [then-branch: 8 | !(i@22@01 < |xs@3@01|)]
(assert (not (< i@22@01 (Seq_length xs@3@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 8 | i@22@01 < |xs@3@01|]
(assert (< i@22@01 (Seq_length xs@3@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 9 | !(j@23@01 >= 0) | live]
; [else-branch: 9 | j@23@01 >= 0 | live]
(push) ; 9
; [then-branch: 9 | !(j@23@01 >= 0)]
(assert (not (>= j@23@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 9 | j@23@01 >= 0]
(assert (>= j@23@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 10 | !(j@23@01 < |xs@3@01|) | live]
; [else-branch: 10 | j@23@01 < |xs@3@01| | live]
(push) ; 11
; [then-branch: 10 | !(j@23@01 < |xs@3@01|)]
(assert (not (< j@23@01 (Seq_length xs@3@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 10 | j@23@01 < |xs@3@01|]
(assert (< j@23@01 (Seq_length xs@3@01)))
; [eval] i != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@23@01 (Seq_length xs@3@01)) (not (< j@23@01 (Seq_length xs@3@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@23@01 0)
  (and
    (>= j@23@01 0)
    (or (< j@23@01 (Seq_length xs@3@01)) (not (< j@23@01 (Seq_length xs@3@01)))))))
(assert (or (>= j@23@01 0) (not (>= j@23@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@22@01 (Seq_length xs@3@01))
  (and
    (< i@22@01 (Seq_length xs@3@01))
    (=>
      (>= j@23@01 0)
      (and
        (>= j@23@01 0)
        (or
          (< j@23@01 (Seq_length xs@3@01))
          (not (< j@23@01 (Seq_length xs@3@01))))))
    (or (>= j@23@01 0) (not (>= j@23@01 0))))))
(assert (or (< i@22@01 (Seq_length xs@3@01)) (not (< i@22@01 (Seq_length xs@3@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@22@01 0)
  (and
    (>= i@22@01 0)
    (=>
      (< i@22@01 (Seq_length xs@3@01))
      (and
        (< i@22@01 (Seq_length xs@3@01))
        (=>
          (>= j@23@01 0)
          (and
            (>= j@23@01 0)
            (or
              (< j@23@01 (Seq_length xs@3@01))
              (not (< j@23@01 (Seq_length xs@3@01))))))
        (or (>= j@23@01 0) (not (>= j@23@01 0)))))
    (or (< i@22@01 (Seq_length xs@3@01)) (not (< i@22@01 (Seq_length xs@3@01)))))))
(assert (or (>= i@22@01 0) (not (>= i@22@01 0))))
(push) ; 4
; [then-branch: 11 | i@22@01 >= 0 && i@22@01 < |xs@3@01| && j@23@01 >= 0 && j@23@01 < |xs@3@01| && i@22@01 != j@23@01 | live]
; [else-branch: 11 | !(i@22@01 >= 0 && i@22@01 < |xs@3@01| && j@23@01 >= 0 && j@23@01 < |xs@3@01| && i@22@01 != j@23@01) | live]
(push) ; 5
; [then-branch: 11 | i@22@01 >= 0 && i@22@01 < |xs@3@01| && j@23@01 >= 0 && j@23@01 < |xs@3@01| && i@22@01 != j@23@01]
(assert (and
  (>= i@22@01 0)
  (and
    (< i@22@01 (Seq_length xs@3@01))
    (and
      (>= j@23@01 0)
      (and (< j@23@01 (Seq_length xs@3@01)) (not (= i@22@01 j@23@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(i@22@01 >= 0 && i@22@01 < |xs@3@01| && j@23@01 >= 0 && j@23@01 < |xs@3@01| && i@22@01 != j@23@01)]
(assert (not
  (and
    (>= i@22@01 0)
    (and
      (< i@22@01 (Seq_length xs@3@01))
      (and
        (>= j@23@01 0)
        (and (< j@23@01 (Seq_length xs@3@01)) (not (= i@22@01 j@23@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= i@22@01 0)
    (and
      (< i@22@01 (Seq_length xs@3@01))
      (and
        (>= j@23@01 0)
        (and (< j@23@01 (Seq_length xs@3@01)) (not (= i@22@01 j@23@01))))))
  (and
    (>= i@22@01 0)
    (< i@22@01 (Seq_length xs@3@01))
    (>= j@23@01 0)
    (< j@23@01 (Seq_length xs@3@01))
    (not (= i@22@01 j@23@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@22@01 0)
      (and
        (< i@22@01 (Seq_length xs@3@01))
        (and
          (>= j@23@01 0)
          (and (< j@23@01 (Seq_length xs@3@01)) (not (= i@22@01 j@23@01)))))))
  (and
    (>= i@22@01 0)
    (and
      (< i@22@01 (Seq_length xs@3@01))
      (and
        (>= j@23@01 0)
        (and (< j@23@01 (Seq_length xs@3@01)) (not (= i@22@01 j@23@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@22@01 Int) (j@23@01 Int)) (!
  (and
    (=>
      (>= i@22@01 0)
      (and
        (>= i@22@01 0)
        (=>
          (< i@22@01 (Seq_length xs@3@01))
          (and
            (< i@22@01 (Seq_length xs@3@01))
            (=>
              (>= j@23@01 0)
              (and
                (>= j@23@01 0)
                (or
                  (< j@23@01 (Seq_length xs@3@01))
                  (not (< j@23@01 (Seq_length xs@3@01))))))
            (or (>= j@23@01 0) (not (>= j@23@01 0)))))
        (or
          (< i@22@01 (Seq_length xs@3@01))
          (not (< i@22@01 (Seq_length xs@3@01))))))
    (or (>= i@22@01 0) (not (>= i@22@01 0)))
    (=>
      (and
        (>= i@22@01 0)
        (and
          (< i@22@01 (Seq_length xs@3@01))
          (and
            (>= j@23@01 0)
            (and (< j@23@01 (Seq_length xs@3@01)) (not (= i@22@01 j@23@01))))))
      (and
        (>= i@22@01 0)
        (< i@22@01 (Seq_length xs@3@01))
        (>= j@23@01 0)
        (< j@23@01 (Seq_length xs@3@01))
        (not (= i@22@01 j@23@01))))
    (or
      (not
        (and
          (>= i@22@01 0)
          (and
            (< i@22@01 (Seq_length xs@3@01))
            (and
              (>= j@23@01 0)
              (and (< j@23@01 (Seq_length xs@3@01)) (not (= i@22@01 j@23@01)))))))
      (and
        (>= i@22@01 0)
        (and
          (< i@22@01 (Seq_length xs@3@01))
          (and
            (>= j@23@01 0)
            (and (< j@23@01 (Seq_length xs@3@01)) (not (= i@22@01 j@23@01))))))))
  :pattern ((Seq_index xs@3@01 i@22@01) (Seq_index xs@3@01 j@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va6.vpr@6@7@6@101-aux|)))
(push) ; 3
(assert (not (forall ((i@22@01 Int) (j@23@01 Int)) (!
  (=>
    (and
      (>= i@22@01 0)
      (and
        (< i@22@01 (Seq_length xs@3@01))
        (and
          (>= j@23@01 0)
          (and (< j@23@01 (Seq_length xs@3@01)) (not (= i@22@01 j@23@01))))))
    (not (= (Seq_index xs@3@01 i@22@01) (Seq_index xs@3@01 j@23@01))))
  :pattern ((Seq_index xs@3@01 i@22@01) (Seq_index xs@3@01 j@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va6.vpr@6@7@6@101|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@22@01 Int) (j@23@01 Int)) (!
  (=>
    (and
      (>= i@22@01 0)
      (and
        (< i@22@01 (Seq_length xs@3@01))
        (and
          (>= j@23@01 0)
          (and (< j@23@01 (Seq_length xs@3@01)) (not (= i@22@01 j@23@01))))))
    (not (= (Seq_index xs@3@01 i@22@01) (Seq_index xs@3@01 j@23@01))))
  :pattern ((Seq_index xs@3@01 i@22@01) (Seq_index xs@3@01 j@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va6.vpr@6@7@6@101|)))
(declare-const j@24@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 12 | !(0 <= j@24@01) | live]
; [else-branch: 12 | 0 <= j@24@01 | live]
(push) ; 5
; [then-branch: 12 | !(0 <= j@24@01)]
(assert (not (<= 0 j@24@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | 0 <= j@24@01]
(assert (<= 0 j@24@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@24@01) (not (<= 0 j@24@01))))
(assert (and (<= 0 j@24@01) (< j@24@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@24@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@24@01 (Seq_length xs@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@25@01 ($Ref) Int)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@24@01 Int)) (!
  (=>
    (and (<= 0 j@24@01) (< j@24@01 3))
    (or (<= 0 j@24@01) (not (<= 0 j@24@01))))
  :pattern ((Seq_index xs@3@01 j@24@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@24@01 Int) (j2@24@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@24@01) (< j1@24@01 3))
      (and (<= 0 j2@24@01) (< j2@24@01 3))
      (= (Seq_index xs@3@01 j1@24@01) (Seq_index xs@3@01 j2@24@01)))
    (= j1@24@01 j2@24@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@24@01 Int)) (!
  (=>
    (and (<= 0 j@24@01) (< j@24@01 3))
    (and
      (= (inv@25@01 (Seq_index xs@3@01 j@24@01)) j@24@01)
      (img@26@01 (Seq_index xs@3@01 j@24@01))))
  :pattern ((Seq_index xs@3@01 j@24@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) 3)))
    (= (Seq_index xs@3@01 (inv@25@01 r)) r))
  :pattern ((inv@25@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@27@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) 3))
      (img@26@01 r)
      (= r (Seq_index xs@3@01 (inv@25@01 r))))
    ($Perm.min
      (ite
        (and (img@15@01 r) (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@28@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) 3))
      (img@26@01 r)
      (= r (Seq_index xs@3@01 (inv@25@01 r))))
    ($Perm.min
      (ite
        (and (img@18@01 r) (and (<= 3 (inv@17@01 r)) (< (inv@17@01 r) n@4@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@27@01 r)))
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
        (and (img@15@01 r) (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@27@01 r))
    $Perm.No)
  
  :qid |quant-u-5201|))))
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
      (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) 3))
      (img@26@01 r)
      (= r (Seq_index xs@3@01 (inv@25@01 r))))
    (= (- $Perm.Write (pTaken@27@01 r)) $Perm.No))
  
  :qid |quant-u-5202|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@29@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@29@01  $FVF<f>)))
      (and (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) 3)) (img@26@01 r)))
    (=>
      (and (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) 3)) (img@26@01 r))
      (Set_in r ($FVF.domain_f (as sm@29@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@29@01  $FVF<f>))))
  :qid |qp.fvfDomDef5|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) 3)) (img@26@01 r))
      (and (img@15@01 r) (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3))))
    (=
      ($FVF.lookup_f (as sm@29@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@29@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) 3)) (img@26@01 r))
      (and (img@18@01 r) (and (<= 3 (inv@17@01 r)) (< (inv@17@01 r) n@4@01))))
    (=
      ($FVF.lookup_f (as sm@29@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@29@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))) r))
  :qid |qp.fvfValDef4|)))
(declare-const j@30@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 13 | !(3 <= j@30@01) | live]
; [else-branch: 13 | 3 <= j@30@01 | live]
(push) ; 5
; [then-branch: 13 | !(3 <= j@30@01)]
(assert (not (<= 3 j@30@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | 3 <= j@30@01]
(assert (<= 3 j@30@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@30@01) (not (<= 3 j@30@01))))
(assert (and (<= 3 j@30@01) (< j@30@01 n@4@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@30@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@30@01 (Seq_length xs@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@31@01 ($Ref) Int)
(declare-fun img@32@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@30@01 Int)) (!
  (=>
    (and (<= 3 j@30@01) (< j@30@01 n@4@01))
    (or (<= 3 j@30@01) (not (<= 3 j@30@01))))
  :pattern ((Seq_index xs@3@01 j@30@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@30@01 Int) (j2@30@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@30@01) (< j1@30@01 n@4@01))
      (and (<= 3 j2@30@01) (< j2@30@01 n@4@01))
      (= (Seq_index xs@3@01 j1@30@01) (Seq_index xs@3@01 j2@30@01)))
    (= j1@30@01 j2@30@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@30@01 Int)) (!
  (=>
    (and (<= 3 j@30@01) (< j@30@01 n@4@01))
    (and
      (= (inv@31@01 (Seq_index xs@3@01 j@30@01)) j@30@01)
      (img@32@01 (Seq_index xs@3@01 j@30@01))))
  :pattern ((Seq_index xs@3@01 j@30@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (and (<= 3 (inv@31@01 r)) (< (inv@31@01 r) n@4@01)))
    (= (Seq_index xs@3@01 (inv@31@01 r)) r))
  :pattern ((inv@31@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@33@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@31@01 r)) (< (inv@31@01 r) n@4@01))
      (img@32@01 r)
      (= r (Seq_index xs@3@01 (inv@31@01 r))))
    ($Perm.min
      (ite
        (and (img@18@01 r) (and (<= 3 (inv@17@01 r)) (< (inv@17@01 r) n@4@01)))
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
        (and (img@18@01 r) (and (<= 3 (inv@17@01 r)) (< (inv@17@01 r) n@4@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@33@01 r))
    $Perm.No)
  
  :qid |quant-u-5205|))))
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
      (and (<= 3 (inv@31@01 r)) (< (inv@31@01 r) n@4@01))
      (img@32@01 r)
      (= r (Seq_index xs@3@01 (inv@31@01 r))))
    (= (- $Perm.Write (pTaken@33@01 r)) $Perm.No))
  
  :qid |quant-u-5206|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@34@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@34@01  $FVF<f>)))
      (and (and (<= 3 (inv@31@01 r)) (< (inv@31@01 r) n@4@01)) (img@32@01 r)))
    (=>
      (and (and (<= 3 (inv@31@01 r)) (< (inv@31@01 r) n@4@01)) (img@32@01 r))
      (Set_in r ($FVF.domain_f (as sm@34@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@34@01  $FVF<f>))))
  :qid |qp.fvfDomDef7|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 3 (inv@31@01 r)) (< (inv@31@01 r) n@4@01)) (img@32@01 r))
      (and (img@18@01 r) (and (<= 3 (inv@17@01 r)) (< (inv@17@01 r) n@4@01))))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (P02%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@29@01  $FVF<f>))
        ($SortWrappers.$FVF<f>To$Snap (as sm@34@01  $FVF<f>)))))) xs@3@01 n@4@01))
; [exec]
; assert v1 == fun06(xs, n, i)
; [eval] v1 == fun06(xs, n, i)
; [eval] fun06(xs, n, i)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 < i
(push) ; 4
(assert (not (< 0 i@5@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 0 i@5@01))
; [eval] i < n
(push) ; 4
(assert (not (< i@5@01 n@4@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< i@5@01 n@4@01))
(assert (fun06%precondition ($Snap.combine
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@29@01  $FVF<f>))
          ($SortWrappers.$FVF<f>To$Snap (as sm@34@01  $FVF<f>))))))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 n@4@01 i@5@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (< 0 i@5@01)
  (< i@5@01 n@4@01)
  (fun06%precondition ($Snap.combine
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@29@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@34@01  $FVF<f>))))))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 n@4@01 i@5@01)))
(push) ; 3
(assert (not (=
  v1@21@01
  (fun06 ($Snap.combine
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@29@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@34@01  $FVF<f>))))))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 n@4@01 i@5@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  v1@21@01
  (fun06 ($Snap.combine
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@29@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@34@01  $FVF<f>))))))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 n@4@01 i@5@01)))
; [exec]
; unfold acc(P02(xs, n), write)
; [eval] |xs| == n
; [eval] |xs|
; [eval] 3 <= n
; [eval] (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@35@01 Int)
(declare-const j@36@01 Int)
(push) ; 3
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 4
; [then-branch: 14 | !(i@35@01 >= 0) | live]
; [else-branch: 14 | i@35@01 >= 0 | live]
(push) ; 5
; [then-branch: 14 | !(i@35@01 >= 0)]
(assert (not (>= i@35@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | i@35@01 >= 0]
(assert (>= i@35@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 15 | !(i@35@01 < |xs@3@01|) | live]
; [else-branch: 15 | i@35@01 < |xs@3@01| | live]
(push) ; 7
; [then-branch: 15 | !(i@35@01 < |xs@3@01|)]
(assert (not (< i@35@01 (Seq_length xs@3@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 15 | i@35@01 < |xs@3@01|]
(assert (< i@35@01 (Seq_length xs@3@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 16 | !(j@36@01 >= 0) | live]
; [else-branch: 16 | j@36@01 >= 0 | live]
(push) ; 9
; [then-branch: 16 | !(j@36@01 >= 0)]
(assert (not (>= j@36@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 16 | j@36@01 >= 0]
(assert (>= j@36@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 17 | !(j@36@01 < |xs@3@01|) | live]
; [else-branch: 17 | j@36@01 < |xs@3@01| | live]
(push) ; 11
; [then-branch: 17 | !(j@36@01 < |xs@3@01|)]
(assert (not (< j@36@01 (Seq_length xs@3@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 17 | j@36@01 < |xs@3@01|]
(assert (< j@36@01 (Seq_length xs@3@01)))
; [eval] i != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@36@01 (Seq_length xs@3@01)) (not (< j@36@01 (Seq_length xs@3@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@36@01 0)
  (and
    (>= j@36@01 0)
    (or (< j@36@01 (Seq_length xs@3@01)) (not (< j@36@01 (Seq_length xs@3@01)))))))
(assert (or (>= j@36@01 0) (not (>= j@36@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@35@01 (Seq_length xs@3@01))
  (and
    (< i@35@01 (Seq_length xs@3@01))
    (=>
      (>= j@36@01 0)
      (and
        (>= j@36@01 0)
        (or
          (< j@36@01 (Seq_length xs@3@01))
          (not (< j@36@01 (Seq_length xs@3@01))))))
    (or (>= j@36@01 0) (not (>= j@36@01 0))))))
(assert (or (< i@35@01 (Seq_length xs@3@01)) (not (< i@35@01 (Seq_length xs@3@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@35@01 0)
  (and
    (>= i@35@01 0)
    (=>
      (< i@35@01 (Seq_length xs@3@01))
      (and
        (< i@35@01 (Seq_length xs@3@01))
        (=>
          (>= j@36@01 0)
          (and
            (>= j@36@01 0)
            (or
              (< j@36@01 (Seq_length xs@3@01))
              (not (< j@36@01 (Seq_length xs@3@01))))))
        (or (>= j@36@01 0) (not (>= j@36@01 0)))))
    (or (< i@35@01 (Seq_length xs@3@01)) (not (< i@35@01 (Seq_length xs@3@01)))))))
(assert (or (>= i@35@01 0) (not (>= i@35@01 0))))
(push) ; 4
; [then-branch: 18 | i@35@01 >= 0 && i@35@01 < |xs@3@01| && j@36@01 >= 0 && j@36@01 < |xs@3@01| && i@35@01 != j@36@01 | live]
; [else-branch: 18 | !(i@35@01 >= 0 && i@35@01 < |xs@3@01| && j@36@01 >= 0 && j@36@01 < |xs@3@01| && i@35@01 != j@36@01) | live]
(push) ; 5
; [then-branch: 18 | i@35@01 >= 0 && i@35@01 < |xs@3@01| && j@36@01 >= 0 && j@36@01 < |xs@3@01| && i@35@01 != j@36@01]
(assert (and
  (>= i@35@01 0)
  (and
    (< i@35@01 (Seq_length xs@3@01))
    (and
      (>= j@36@01 0)
      (and (< j@36@01 (Seq_length xs@3@01)) (not (= i@35@01 j@36@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 18 | !(i@35@01 >= 0 && i@35@01 < |xs@3@01| && j@36@01 >= 0 && j@36@01 < |xs@3@01| && i@35@01 != j@36@01)]
(assert (not
  (and
    (>= i@35@01 0)
    (and
      (< i@35@01 (Seq_length xs@3@01))
      (and
        (>= j@36@01 0)
        (and (< j@36@01 (Seq_length xs@3@01)) (not (= i@35@01 j@36@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= i@35@01 0)
    (and
      (< i@35@01 (Seq_length xs@3@01))
      (and
        (>= j@36@01 0)
        (and (< j@36@01 (Seq_length xs@3@01)) (not (= i@35@01 j@36@01))))))
  (and
    (>= i@35@01 0)
    (< i@35@01 (Seq_length xs@3@01))
    (>= j@36@01 0)
    (< j@36@01 (Seq_length xs@3@01))
    (not (= i@35@01 j@36@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@35@01 0)
      (and
        (< i@35@01 (Seq_length xs@3@01))
        (and
          (>= j@36@01 0)
          (and (< j@36@01 (Seq_length xs@3@01)) (not (= i@35@01 j@36@01)))))))
  (and
    (>= i@35@01 0)
    (and
      (< i@35@01 (Seq_length xs@3@01))
      (and
        (>= j@36@01 0)
        (and (< j@36@01 (Seq_length xs@3@01)) (not (= i@35@01 j@36@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@35@01 Int) (j@36@01 Int)) (!
  (and
    (=>
      (>= i@35@01 0)
      (and
        (>= i@35@01 0)
        (=>
          (< i@35@01 (Seq_length xs@3@01))
          (and
            (< i@35@01 (Seq_length xs@3@01))
            (=>
              (>= j@36@01 0)
              (and
                (>= j@36@01 0)
                (or
                  (< j@36@01 (Seq_length xs@3@01))
                  (not (< j@36@01 (Seq_length xs@3@01))))))
            (or (>= j@36@01 0) (not (>= j@36@01 0)))))
        (or
          (< i@35@01 (Seq_length xs@3@01))
          (not (< i@35@01 (Seq_length xs@3@01))))))
    (or (>= i@35@01 0) (not (>= i@35@01 0)))
    (=>
      (and
        (>= i@35@01 0)
        (and
          (< i@35@01 (Seq_length xs@3@01))
          (and
            (>= j@36@01 0)
            (and (< j@36@01 (Seq_length xs@3@01)) (not (= i@35@01 j@36@01))))))
      (and
        (>= i@35@01 0)
        (< i@35@01 (Seq_length xs@3@01))
        (>= j@36@01 0)
        (< j@36@01 (Seq_length xs@3@01))
        (not (= i@35@01 j@36@01))))
    (or
      (not
        (and
          (>= i@35@01 0)
          (and
            (< i@35@01 (Seq_length xs@3@01))
            (and
              (>= j@36@01 0)
              (and (< j@36@01 (Seq_length xs@3@01)) (not (= i@35@01 j@36@01)))))))
      (and
        (>= i@35@01 0)
        (and
          (< i@35@01 (Seq_length xs@3@01))
          (and
            (>= j@36@01 0)
            (and (< j@36@01 (Seq_length xs@3@01)) (not (= i@35@01 j@36@01))))))))
  :pattern ((Seq_index xs@3@01 i@35@01) (Seq_index xs@3@01 j@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va6.vpr@6@7@6@101-aux|)))
(assert (forall ((i@35@01 Int) (j@36@01 Int)) (!
  (=>
    (and
      (>= i@35@01 0)
      (and
        (< i@35@01 (Seq_length xs@3@01))
        (and
          (>= j@36@01 0)
          (and (< j@36@01 (Seq_length xs@3@01)) (not (= i@35@01 j@36@01))))))
    (not (= (Seq_index xs@3@01 i@35@01) (Seq_index xs@3@01 j@36@01))))
  :pattern ((Seq_index xs@3@01 i@35@01) (Seq_index xs@3@01 j@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va6.vpr@6@7@6@101|)))
(declare-const j@37@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 19 | !(0 <= j@37@01) | live]
; [else-branch: 19 | 0 <= j@37@01 | live]
(push) ; 5
; [then-branch: 19 | !(0 <= j@37@01)]
(assert (not (<= 0 j@37@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | 0 <= j@37@01]
(assert (<= 0 j@37@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@37@01) (not (<= 0 j@37@01))))
(assert (and (<= 0 j@37@01) (< j@37@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@37@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@37@01 (Seq_length xs@3@01))))
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
(assert (forall ((j@37@01 Int)) (!
  (=>
    (and (<= 0 j@37@01) (< j@37@01 3))
    (or (<= 0 j@37@01) (not (<= 0 j@37@01))))
  :pattern ((Seq_index xs@3@01 j@37@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@37@01 Int) (j2@37@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@37@01) (< j1@37@01 3))
      (and (<= 0 j2@37@01) (< j2@37@01 3))
      (= (Seq_index xs@3@01 j1@37@01) (Seq_index xs@3@01 j2@37@01)))
    (= j1@37@01 j2@37@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@37@01 Int)) (!
  (=>
    (and (<= 0 j@37@01) (< j@37@01 3))
    (and
      (= (inv@38@01 (Seq_index xs@3@01 j@37@01)) j@37@01)
      (img@39@01 (Seq_index xs@3@01 j@37@01))))
  :pattern ((Seq_index xs@3@01 j@37@01))
  :qid |quant-u-5208|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) 3)))
    (= (Seq_index xs@3@01 (inv@38@01 r)) r))
  :pattern ((inv@38@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@37@01 Int)) (!
  (=>
    (and (<= 0 j@37@01) (< j@37@01 3))
    (not (= (Seq_index xs@3@01 j@37@01) $Ref.null)))
  :pattern ((Seq_index xs@3@01 j@37@01))
  :qid |f-permImpliesNonNull|)))
(declare-const j@40@01 Int)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 20 | !(3 <= j@40@01) | live]
; [else-branch: 20 | 3 <= j@40@01 | live]
(push) ; 5
; [then-branch: 20 | !(3 <= j@40@01)]
(assert (not (<= 3 j@40@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 20 | 3 <= j@40@01]
(assert (<= 3 j@40@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@40@01) (not (<= 3 j@40@01))))
(assert (and (<= 3 j@40@01) (< j@40@01 n@4@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@40@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@40@01 (Seq_length xs@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@41@01 ($Ref) Int)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@40@01 Int)) (!
  (=>
    (and (<= 3 j@40@01) (< j@40@01 n@4@01))
    (or (<= 3 j@40@01) (not (<= 3 j@40@01))))
  :pattern ((Seq_index xs@3@01 j@40@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@40@01 Int) (j2@40@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@40@01) (< j1@40@01 n@4@01))
      (and (<= 3 j2@40@01) (< j2@40@01 n@4@01))
      (= (Seq_index xs@3@01 j1@40@01) (Seq_index xs@3@01 j2@40@01)))
    (= j1@40@01 j2@40@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@40@01 Int)) (!
  (=>
    (and (<= 3 j@40@01) (< j@40@01 n@4@01))
    (and
      (= (inv@41@01 (Seq_index xs@3@01 j@40@01)) j@40@01)
      (img@42@01 (Seq_index xs@3@01 j@40@01))))
  :pattern ((Seq_index xs@3@01 j@40@01))
  :qid |quant-u-5210|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@42@01 r) (and (<= 3 (inv@41@01 r)) (< (inv@41@01 r) n@4@01)))
    (= (Seq_index xs@3@01 (inv@41@01 r)) r))
  :pattern ((inv@41@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@40@01 Int)) (!
  (=>
    (and (<= 3 j@40@01) (< j@40@01 n@4@01))
    (not (= (Seq_index xs@3@01 j@40@01) $Ref.null)))
  :pattern ((Seq_index xs@3@01 j@40@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@3@01 j@40@01) (Seq_index xs@3@01 j@37@01))
    (=
      (and (img@42@01 r) (and (<= 3 (inv@41@01 r)) (< (inv@41@01 r) n@4@01)))
      (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) 3)))))
  
  :qid |quant-u-5211|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; xs[i].f := 0
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@5@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@5@01 (Seq_length xs@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@43@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@3@01 i@5@01))
    ($Perm.min
      (ite
        (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@44@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@3@01 i@5@01))
    ($Perm.min
      (ite
        (and (img@42@01 r) (and (<= 3 (inv@41@01 r)) (< (inv@41@01 r) n@4@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@43@01 r)))
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
        (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@43@01 r))
    $Perm.No)
  
  :qid |quant-u-5213|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@43@01 r) $Perm.No)
  
  :qid |quant-u-5214|))))
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
    (= r (Seq_index xs@3@01 i@5@01))
    (= (- $Perm.Write (pTaken@43@01 r)) $Perm.No))
  
  :qid |quant-u-5215|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@42@01 r) (and (<= 3 (inv@41@01 r)) (< (inv@41@01 r) n@4@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@44@01 r))
    $Perm.No)
  
  :qid |quant-u-5216|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@44@01 r) $Perm.No)
  
  :qid |quant-u-5217|))))
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
    (= r (Seq_index xs@3@01 i@5@01))
    (= (- (- $Perm.Write (pTaken@43@01 r)) (pTaken@44@01 r)) $Perm.No))
  
  :qid |quant-u-5218|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@45@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@45@01  $FVF<f>) (Seq_index xs@3@01 i@5@01)) 0))
; [exec]
; fold acc(P02(xs, n), write)
; [eval] |xs| == n
; [eval] |xs|
; [eval] 3 <= n
; [eval] (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@46@01 Int)
(declare-const j@47@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 4
; [then-branch: 21 | !(i@46@01 >= 0) | live]
; [else-branch: 21 | i@46@01 >= 0 | live]
(push) ; 5
; [then-branch: 21 | !(i@46@01 >= 0)]
(assert (not (>= i@46@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | i@46@01 >= 0]
(assert (>= i@46@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 22 | !(i@46@01 < |xs@3@01|) | live]
; [else-branch: 22 | i@46@01 < |xs@3@01| | live]
(push) ; 7
; [then-branch: 22 | !(i@46@01 < |xs@3@01|)]
(assert (not (< i@46@01 (Seq_length xs@3@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 22 | i@46@01 < |xs@3@01|]
(assert (< i@46@01 (Seq_length xs@3@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 23 | !(j@47@01 >= 0) | live]
; [else-branch: 23 | j@47@01 >= 0 | live]
(push) ; 9
; [then-branch: 23 | !(j@47@01 >= 0)]
(assert (not (>= j@47@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 23 | j@47@01 >= 0]
(assert (>= j@47@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 24 | !(j@47@01 < |xs@3@01|) | live]
; [else-branch: 24 | j@47@01 < |xs@3@01| | live]
(push) ; 11
; [then-branch: 24 | !(j@47@01 < |xs@3@01|)]
(assert (not (< j@47@01 (Seq_length xs@3@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 24 | j@47@01 < |xs@3@01|]
(assert (< j@47@01 (Seq_length xs@3@01)))
; [eval] i != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@47@01 (Seq_length xs@3@01)) (not (< j@47@01 (Seq_length xs@3@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@47@01 0)
  (and
    (>= j@47@01 0)
    (or (< j@47@01 (Seq_length xs@3@01)) (not (< j@47@01 (Seq_length xs@3@01)))))))
(assert (or (>= j@47@01 0) (not (>= j@47@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@46@01 (Seq_length xs@3@01))
  (and
    (< i@46@01 (Seq_length xs@3@01))
    (=>
      (>= j@47@01 0)
      (and
        (>= j@47@01 0)
        (or
          (< j@47@01 (Seq_length xs@3@01))
          (not (< j@47@01 (Seq_length xs@3@01))))))
    (or (>= j@47@01 0) (not (>= j@47@01 0))))))
(assert (or (< i@46@01 (Seq_length xs@3@01)) (not (< i@46@01 (Seq_length xs@3@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@46@01 0)
  (and
    (>= i@46@01 0)
    (=>
      (< i@46@01 (Seq_length xs@3@01))
      (and
        (< i@46@01 (Seq_length xs@3@01))
        (=>
          (>= j@47@01 0)
          (and
            (>= j@47@01 0)
            (or
              (< j@47@01 (Seq_length xs@3@01))
              (not (< j@47@01 (Seq_length xs@3@01))))))
        (or (>= j@47@01 0) (not (>= j@47@01 0)))))
    (or (< i@46@01 (Seq_length xs@3@01)) (not (< i@46@01 (Seq_length xs@3@01)))))))
(assert (or (>= i@46@01 0) (not (>= i@46@01 0))))
(push) ; 4
; [then-branch: 25 | i@46@01 >= 0 && i@46@01 < |xs@3@01| && j@47@01 >= 0 && j@47@01 < |xs@3@01| && i@46@01 != j@47@01 | live]
; [else-branch: 25 | !(i@46@01 >= 0 && i@46@01 < |xs@3@01| && j@47@01 >= 0 && j@47@01 < |xs@3@01| && i@46@01 != j@47@01) | live]
(push) ; 5
; [then-branch: 25 | i@46@01 >= 0 && i@46@01 < |xs@3@01| && j@47@01 >= 0 && j@47@01 < |xs@3@01| && i@46@01 != j@47@01]
(assert (and
  (>= i@46@01 0)
  (and
    (< i@46@01 (Seq_length xs@3@01))
    (and
      (>= j@47@01 0)
      (and (< j@47@01 (Seq_length xs@3@01)) (not (= i@46@01 j@47@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 25 | !(i@46@01 >= 0 && i@46@01 < |xs@3@01| && j@47@01 >= 0 && j@47@01 < |xs@3@01| && i@46@01 != j@47@01)]
(assert (not
  (and
    (>= i@46@01 0)
    (and
      (< i@46@01 (Seq_length xs@3@01))
      (and
        (>= j@47@01 0)
        (and (< j@47@01 (Seq_length xs@3@01)) (not (= i@46@01 j@47@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= i@46@01 0)
    (and
      (< i@46@01 (Seq_length xs@3@01))
      (and
        (>= j@47@01 0)
        (and (< j@47@01 (Seq_length xs@3@01)) (not (= i@46@01 j@47@01))))))
  (and
    (>= i@46@01 0)
    (< i@46@01 (Seq_length xs@3@01))
    (>= j@47@01 0)
    (< j@47@01 (Seq_length xs@3@01))
    (not (= i@46@01 j@47@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@46@01 0)
      (and
        (< i@46@01 (Seq_length xs@3@01))
        (and
          (>= j@47@01 0)
          (and (< j@47@01 (Seq_length xs@3@01)) (not (= i@46@01 j@47@01)))))))
  (and
    (>= i@46@01 0)
    (and
      (< i@46@01 (Seq_length xs@3@01))
      (and
        (>= j@47@01 0)
        (and (< j@47@01 (Seq_length xs@3@01)) (not (= i@46@01 j@47@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@46@01 Int) (j@47@01 Int)) (!
  (and
    (=>
      (>= i@46@01 0)
      (and
        (>= i@46@01 0)
        (=>
          (< i@46@01 (Seq_length xs@3@01))
          (and
            (< i@46@01 (Seq_length xs@3@01))
            (=>
              (>= j@47@01 0)
              (and
                (>= j@47@01 0)
                (or
                  (< j@47@01 (Seq_length xs@3@01))
                  (not (< j@47@01 (Seq_length xs@3@01))))))
            (or (>= j@47@01 0) (not (>= j@47@01 0)))))
        (or
          (< i@46@01 (Seq_length xs@3@01))
          (not (< i@46@01 (Seq_length xs@3@01))))))
    (or (>= i@46@01 0) (not (>= i@46@01 0)))
    (=>
      (and
        (>= i@46@01 0)
        (and
          (< i@46@01 (Seq_length xs@3@01))
          (and
            (>= j@47@01 0)
            (and (< j@47@01 (Seq_length xs@3@01)) (not (= i@46@01 j@47@01))))))
      (and
        (>= i@46@01 0)
        (< i@46@01 (Seq_length xs@3@01))
        (>= j@47@01 0)
        (< j@47@01 (Seq_length xs@3@01))
        (not (= i@46@01 j@47@01))))
    (or
      (not
        (and
          (>= i@46@01 0)
          (and
            (< i@46@01 (Seq_length xs@3@01))
            (and
              (>= j@47@01 0)
              (and (< j@47@01 (Seq_length xs@3@01)) (not (= i@46@01 j@47@01)))))))
      (and
        (>= i@46@01 0)
        (and
          (< i@46@01 (Seq_length xs@3@01))
          (and
            (>= j@47@01 0)
            (and (< j@47@01 (Seq_length xs@3@01)) (not (= i@46@01 j@47@01))))))))
  :pattern ((Seq_index xs@3@01 i@46@01) (Seq_index xs@3@01 j@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va6.vpr@6@7@6@101-aux|)))
(push) ; 3
(assert (not (forall ((i@46@01 Int) (j@47@01 Int)) (!
  (=>
    (and
      (>= i@46@01 0)
      (and
        (< i@46@01 (Seq_length xs@3@01))
        (and
          (>= j@47@01 0)
          (and (< j@47@01 (Seq_length xs@3@01)) (not (= i@46@01 j@47@01))))))
    (not (= (Seq_index xs@3@01 i@46@01) (Seq_index xs@3@01 j@47@01))))
  :pattern ((Seq_index xs@3@01 i@46@01) (Seq_index xs@3@01 j@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va6.vpr@6@7@6@101|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@46@01 Int) (j@47@01 Int)) (!
  (=>
    (and
      (>= i@46@01 0)
      (and
        (< i@46@01 (Seq_length xs@3@01))
        (and
          (>= j@47@01 0)
          (and (< j@47@01 (Seq_length xs@3@01)) (not (= i@46@01 j@47@01))))))
    (not (= (Seq_index xs@3@01 i@46@01) (Seq_index xs@3@01 j@47@01))))
  :pattern ((Seq_index xs@3@01 i@46@01) (Seq_index xs@3@01 j@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va6.vpr@6@7@6@101|)))
(declare-const j@48@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 26 | !(0 <= j@48@01) | live]
; [else-branch: 26 | 0 <= j@48@01 | live]
(push) ; 5
; [then-branch: 26 | !(0 <= j@48@01)]
(assert (not (<= 0 j@48@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | 0 <= j@48@01]
(assert (<= 0 j@48@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@48@01) (not (<= 0 j@48@01))))
(assert (and (<= 0 j@48@01) (< j@48@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@48@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@48@01 (Seq_length xs@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@49@01 ($Ref) Int)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@48@01 Int)) (!
  (=>
    (and (<= 0 j@48@01) (< j@48@01 3))
    (or (<= 0 j@48@01) (not (<= 0 j@48@01))))
  :pattern ((Seq_index xs@3@01 j@48@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@48@01 Int) (j2@48@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@48@01) (< j1@48@01 3))
      (and (<= 0 j2@48@01) (< j2@48@01 3))
      (= (Seq_index xs@3@01 j1@48@01) (Seq_index xs@3@01 j2@48@01)))
    (= j1@48@01 j2@48@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@48@01 Int)) (!
  (=>
    (and (<= 0 j@48@01) (< j@48@01 3))
    (and
      (= (inv@49@01 (Seq_index xs@3@01 j@48@01)) j@48@01)
      (img@50@01 (Seq_index xs@3@01 j@48@01))))
  :pattern ((Seq_index xs@3@01 j@48@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@01 r) (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3)))
    (= (Seq_index xs@3@01 (inv@49@01 r)) r))
  :pattern ((inv@49@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@51@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3))
      (img@50@01 r)
      (= r (Seq_index xs@3@01 (inv@49@01 r))))
    ($Perm.min
      (ite
        (and (img@42@01 r) (and (<= 3 (inv@41@01 r)) (< (inv@41@01 r) n@4@01)))
        (- $Perm.Write (pTaken@44@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@52@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3))
      (img@50@01 r)
      (= r (Seq_index xs@3@01 (inv@49@01 r))))
    ($Perm.min
      (ite
        (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@51@01 r)))
    $Perm.No))
(define-fun pTaken@53@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3))
      (img@50@01 r)
      (= r (Seq_index xs@3@01 (inv@49@01 r))))
    ($Perm.min
      (ite (= r (Seq_index xs@3@01 i@5@01)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@51@01 r)) (pTaken@52@01 r)))
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
        (and (img@42@01 r) (and (<= 3 (inv@41@01 r)) (< (inv@41@01 r) n@4@01)))
        (- $Perm.Write (pTaken@44@01 r))
        $Perm.No)
      (pTaken@51@01 r))
    $Perm.No)
  
  :qid |quant-u-5221|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@51@01 r) $Perm.No)
  
  :qid |quant-u-5222|))))
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
      (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3))
      (img@50@01 r)
      (= r (Seq_index xs@3@01 (inv@49@01 r))))
    (= (- $Perm.Write (pTaken@51@01 r)) $Perm.No))
  
  :qid |quant-u-5223|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@52@01 r))
    $Perm.No)
  
  :qid |quant-u-5224|))))
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
      (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3))
      (img@50@01 r)
      (= r (Seq_index xs@3@01 (inv@49@01 r))))
    (= (- (- $Perm.Write (pTaken@51@01 r)) (pTaken@52@01 r)) $Perm.No))
  
  :qid |quant-u-5225|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@54@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@54@01  $FVF<f>)))
      (and (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3)) (img@50@01 r)))
    (=>
      (and (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3)) (img@50@01 r))
      (Set_in r ($FVF.domain_f (as sm@54@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@54@01  $FVF<f>))))
  :qid |qp.fvfDomDef11|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3)) (img@50@01 r))
      (= r (Seq_index xs@3@01 i@5@01)))
    (=
      ($FVF.lookup_f (as sm@54@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@54@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3)) (img@50@01 r))
      (ite
        (and (img@42@01 r) (and (<= 3 (inv@41@01 r)) (< (inv@41@01 r) n@4@01)))
        (< $Perm.No (- $Perm.Write (pTaken@44@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@54@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@54@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@49@01 r)) (< (inv@49@01 r) 3)) (img@50@01 r))
      (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) 3))))
    (=
      ($FVF.lookup_f (as sm@54@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@29@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@54@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@29@01  $FVF<f>) r))
  :qid |qp.fvfValDef10|)))
(declare-const j@55@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 27 | !(3 <= j@55@01) | live]
; [else-branch: 27 | 3 <= j@55@01 | live]
(push) ; 5
; [then-branch: 27 | !(3 <= j@55@01)]
(assert (not (<= 3 j@55@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 27 | 3 <= j@55@01]
(assert (<= 3 j@55@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@55@01) (not (<= 3 j@55@01))))
(assert (and (<= 3 j@55@01) (< j@55@01 n@4@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@55@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@55@01 (Seq_length xs@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@56@01 ($Ref) Int)
(declare-fun img@57@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@55@01 Int)) (!
  (=>
    (and (<= 3 j@55@01) (< j@55@01 n@4@01))
    (or (<= 3 j@55@01) (not (<= 3 j@55@01))))
  :pattern ((Seq_index xs@3@01 j@55@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@55@01 Int) (j2@55@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@55@01) (< j1@55@01 n@4@01))
      (and (<= 3 j2@55@01) (< j2@55@01 n@4@01))
      (= (Seq_index xs@3@01 j1@55@01) (Seq_index xs@3@01 j2@55@01)))
    (= j1@55@01 j2@55@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@55@01 Int)) (!
  (=>
    (and (<= 3 j@55@01) (< j@55@01 n@4@01))
    (and
      (= (inv@56@01 (Seq_index xs@3@01 j@55@01)) j@55@01)
      (img@57@01 (Seq_index xs@3@01 j@55@01))))
  :pattern ((Seq_index xs@3@01 j@55@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@57@01 r) (and (<= 3 (inv@56@01 r)) (< (inv@56@01 r) n@4@01)))
    (= (Seq_index xs@3@01 (inv@56@01 r)) r))
  :pattern ((inv@56@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@58@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@56@01 r)) (< (inv@56@01 r) n@4@01))
      (img@57@01 r)
      (= r (Seq_index xs@3@01 (inv@56@01 r))))
    ($Perm.min
      (ite
        (and (img@42@01 r) (and (<= 3 (inv@41@01 r)) (< (inv@41@01 r) n@4@01)))
        (- $Perm.Write (pTaken@44@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@59@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@56@01 r)) (< (inv@56@01 r) n@4@01))
      (img@57@01 r)
      (= r (Seq_index xs@3@01 (inv@56@01 r))))
    ($Perm.min
      (ite (= r (Seq_index xs@3@01 i@5@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@58@01 r)))
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
        (and (img@42@01 r) (and (<= 3 (inv@41@01 r)) (< (inv@41@01 r) n@4@01)))
        (- $Perm.Write (pTaken@44@01 r))
        $Perm.No)
      (pTaken@58@01 r))
    $Perm.No)
  
  :qid |quant-u-5228|))))
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
      (and (<= 3 (inv@56@01 r)) (< (inv@56@01 r) n@4@01))
      (img@57@01 r)
      (= r (Seq_index xs@3@01 (inv@56@01 r))))
    (= (- $Perm.Write (pTaken@58@01 r)) $Perm.No))
  
  :qid |quant-u-5229|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index xs@3@01 i@5@01) (Seq_index xs@3@01 i@5@01))
      $Perm.Write
      $Perm.No)
    (pTaken@59@01 (Seq_index xs@3@01 i@5@01)))
  $Perm.No)))
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
      (and (<= 3 (inv@56@01 r)) (< (inv@56@01 r) n@4@01))
      (img@57@01 r)
      (= r (Seq_index xs@3@01 (inv@56@01 r))))
    (= (- (- $Perm.Write (pTaken@58@01 r)) (pTaken@59@01 r)) $Perm.No))
  
  :qid |quant-u-5231|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@60@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@60@01  $FVF<f>)))
      (and (and (<= 3 (inv@56@01 r)) (< (inv@56@01 r) n@4@01)) (img@57@01 r)))
    (=>
      (and (and (<= 3 (inv@56@01 r)) (< (inv@56@01 r) n@4@01)) (img@57@01 r))
      (Set_in r ($FVF.domain_f (as sm@60@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@60@01  $FVF<f>))))
  :qid |qp.fvfDomDef14|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 3 (inv@56@01 r)) (< (inv@56@01 r) n@4@01)) (img@57@01 r))
      (= r (Seq_index xs@3@01 i@5@01)))
    (=
      ($FVF.lookup_f (as sm@60@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 3 (inv@56@01 r)) (< (inv@56@01 r) n@4@01)) (img@57@01 r))
      (ite
        (and (img@42@01 r) (and (<= 3 (inv@41@01 r)) (< (inv@41@01 r) n@4@01)))
        (< $Perm.No (- $Perm.Write (pTaken@44@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@60@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :qid |qp.fvfValDef13|)))
(assert (P02%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@54@01  $FVF<f>))
        ($SortWrappers.$FVF<f>To$Snap (as sm@60@01  $FVF<f>)))))) xs@3@01 n@4@01))
; [exec]
; v2 := fun06(xs, n, i)
; [eval] fun06(xs, n, i)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 < i
; [eval] i < n
(assert (fun06%precondition ($Snap.combine
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@54@01  $FVF<f>))
          ($SortWrappers.$FVF<f>To$Snap (as sm@60@01  $FVF<f>))))))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 n@4@01 i@5@01))
(pop) ; 3
; Joined path conditions
(assert (fun06%precondition ($Snap.combine
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@54@01  $FVF<f>))
          ($SortWrappers.$FVF<f>To$Snap (as sm@60@01  $FVF<f>))))))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 n@4@01 i@5@01))
(declare-const v2@61@01 Int)
(assert (=
  v2@61@01
  (fun06 ($Snap.combine
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@54@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@60@01  $FVF<f>))))))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 n@4@01 i@5@01)))
; [exec]
; assert v2 == 0
; [eval] v2 == 0
(push) ; 3
(assert (not (= v2@61@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= v2@61@01 0))
; [exec]
; assert v2 == v1
; [eval] v2 == v1
(push) ; 3
(assert (not (= v2@61@01 v1@21@01)))
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
; [eval] v2 == v1
(set-option :timeout 0)
(push) ; 3
(assert (not (= v2@61@01 v1@21@01)))
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
; [eval] v2 == v1
(set-option :timeout 0)
(push) ; 3
(assert (not (= v2@61@01 v1@21@01)))
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
; [eval] v2 == v1
(set-option :timeout 0)
(push) ; 3
(assert (not (= v2@61@01 v1@21@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
