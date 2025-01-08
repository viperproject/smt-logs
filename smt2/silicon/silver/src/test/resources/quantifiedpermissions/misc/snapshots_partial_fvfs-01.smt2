(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:16:27
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
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap Seq<$Ref>) Bool)
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
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test ----------
(declare-const xs@0@01 Seq<$Ref>)
(declare-const xs@1@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (= ($Snap.first $t@2@01) $Snap.unit))
; [eval] 6 < |xs|
; [eval] |xs|
(assert (< 6 (Seq_length xs@1@01)))
(assert (=
  ($Snap.second $t@2@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@2@01))
    ($Snap.second ($Snap.second $t@2@01)))))
(assert (= ($Snap.first ($Snap.second $t@2@01)) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@3@01 Int)
(declare-const j@4@01 Int)
(push) ; 2
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 3
; [then-branch: 0 | !(i@3@01 in [0..|xs@1@01|]) | live]
; [else-branch: 0 | i@3@01 in [0..|xs@1@01|] | live]
(push) ; 4
; [then-branch: 0 | !(i@3@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | i@3@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 5
; [then-branch: 1 | !(j@4@01 in [0..|xs@1@01|]) | live]
; [else-branch: 1 | j@4@01 in [0..|xs@1@01|] | live]
(push) ; 6
; [then-branch: 1 | !(j@4@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | j@4@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01))))
(push) ; 3
; [then-branch: 2 | i@3@01 in [0..|xs@1@01|] && j@4@01 in [0..|xs@1@01|] && i@3@01 != j@4@01 | live]
; [else-branch: 2 | !(i@3@01 in [0..|xs@1@01|] && j@4@01 in [0..|xs@1@01|] && i@3@01 != j@4@01) | live]
(push) ; 4
; [then-branch: 2 | i@3@01 in [0..|xs@1@01|] && j@4@01 in [0..|xs@1@01|] && i@3@01 != j@4@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
    (not (= i@3@01 j@4@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@3@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@3@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@4@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@4@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(i@3@01 in [0..|xs@1@01|] && j@4@01 in [0..|xs@1@01|] && i@3@01 != j@4@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
      (not (= i@3@01 j@4@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
      (not (= i@3@01 j@4@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
    (not (= i@3@01 j@4@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
        (not (= i@3@01 j@4@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
      (not (= i@3@01 j@4@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@3@01 Int) (j@4@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
        (not (= i@3@01 j@4@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
            (not (= i@3@01 j@4@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@4@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@3@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@14@12@14@98-aux|)))
(assert (forall ((i@3@01 Int) (j@4@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
        (not (= i@3@01 j@4@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
            (not (= i@3@01 j@4@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@3@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@14@12@14@98-aux|)))
(assert (forall ((i@3@01 Int) (j@4@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
        (not (= i@3@01 j@4@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
            (not (= i@3@01 j@4@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01) (Seq_index
    xs@1@01
    j@4@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@3@01) (Seq_index
    xs@1@01
    j@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@14@12@14@98-aux|)))
(assert (forall ((i@3@01 Int) (j@4@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
        (not (= i@3@01 j@4@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
            (not (= i@3@01 j@4@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@3@01) (Seq_index
    xs@1@01
    j@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@14@12@14@98-aux|)))
(assert (forall ((i@3@01 Int) (j@4@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
        (not (= i@3@01 j@4@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
            (not (= i@3@01 j@4@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01) (Seq_index
    xs@1@01
    i@3@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@4@01) (Seq_index
    xs@1@01
    i@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@14@12@14@98-aux|)))
(assert (forall ((i@3@01 Int) (j@4@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
        (not (= i@3@01 j@4@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
            (not (= i@3@01 j@4@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@4@01) (Seq_index
    xs@1@01
    i@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@14@12@14@98-aux|)))
(assert (forall ((i@3@01 Int) (j@4@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
        (not (= i@3@01 j@4@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
            (not (= i@3@01 j@4@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
          (not (= i@3@01 j@4@01))))))
  :pattern ((Seq_index xs@1@01 i@3@01) (Seq_index xs@1@01 j@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@14@12@14@98-aux|)))
(assert (forall ((i@3@01 Int) (j@4@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
        (not (= i@3@01 j@4@01))))
    (not (= (Seq_index xs@1@01 i@3@01) (Seq_index xs@1@01 j@4@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@4@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@3@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@4@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01) (Seq_index
    xs@1@01
    j@4@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@3@01) (Seq_index
    xs@1@01
    j@4@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01) (Seq_index
    xs@1@01
    i@3@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@4@01) (Seq_index
    xs@1@01
    i@3@01))
  :pattern ((Seq_index xs@1@01 i@3@01) (Seq_index xs@1@01 j@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@14@12@14@98|)))
(assert (=
  ($Snap.second ($Snap.second $t@2@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@2@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))
(declare-const i@5@01 Int)
(push) ; 2
; [eval] 0 <= i && i < 3
; [eval] 0 <= i
(push) ; 3
; [then-branch: 3 | !(0 <= i@5@01) | live]
; [else-branch: 3 | 0 <= i@5@01 | live]
(push) ; 4
; [then-branch: 3 | !(0 <= i@5@01)]
(assert (not (<= 0 i@5@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 3 | 0 <= i@5@01]
(assert (<= 0 i@5@01))
; [eval] i < 3
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@5@01) (not (<= 0 i@5@01))))
(assert (and (<= 0 i@5@01) (< i@5@01 3)))
; [eval] xs[i]
(push) ; 3
(assert (not (>= i@5@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@5@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@6@01 ($Ref) Int)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@5@01 Int)) (!
  (=> (and (<= 0 i@5@01) (< i@5@01 3)) (or (<= 0 i@5@01) (not (<= 0 i@5@01))))
  :pattern ((Seq_index xs@1@01 i@5@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@5@01 Int) (i2@5@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@5@01) (< i1@5@01 3))
      (and (<= 0 i2@5@01) (< i2@5@01 3))
      (= (Seq_index xs@1@01 i1@5@01) (Seq_index xs@1@01 i2@5@01)))
    (= i1@5@01 i2@5@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@5@01 Int)) (!
  (=>
    (and (<= 0 i@5@01) (< i@5@01 3))
    (and
      (= (inv@6@01 (Seq_index xs@1@01 i@5@01)) i@5@01)
      (img@7@01 (Seq_index xs@1@01 i@5@01))))
  :pattern ((Seq_index xs@1@01 i@5@01))
  :qid |quant-u-11922|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
    (= (Seq_index xs@1@01 (inv@6@01 r)) r))
  :pattern ((inv@6@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@5@01 Int)) (!
  (=>
    (and (<= 0 i@5@01) (< i@5@01 3))
    (not (= (Seq_index xs@1@01 i@5@01) $Ref.null)))
  :pattern ((Seq_index xs@1@01 i@5@01))
  :qid |f-permImpliesNonNull|)))
(declare-const i@8@01 Int)
(push) ; 2
; [eval] 3 <= i && i < 6
; [eval] 3 <= i
(push) ; 3
; [then-branch: 4 | !(3 <= i@8@01) | live]
; [else-branch: 4 | 3 <= i@8@01 | live]
(push) ; 4
; [then-branch: 4 | !(3 <= i@8@01)]
(assert (not (<= 3 i@8@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 4 | 3 <= i@8@01]
(assert (<= 3 i@8@01))
; [eval] i < 6
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 i@8@01) (not (<= 3 i@8@01))))
(assert (and (<= 3 i@8@01) (< i@8@01 6)))
; [eval] xs[i]
(push) ; 3
(assert (not (>= i@8@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@8@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@9@01 ($Ref) Int)
(declare-fun img@10@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@8@01 Int)) (!
  (=> (and (<= 3 i@8@01) (< i@8@01 6)) (or (<= 3 i@8@01) (not (<= 3 i@8@01))))
  :pattern ((Seq_index xs@1@01 i@8@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@8@01 Int) (i2@8@01 Int)) (!
  (=>
    (and
      (and (<= 3 i1@8@01) (< i1@8@01 6))
      (and (<= 3 i2@8@01) (< i2@8@01 6))
      (= (Seq_index xs@1@01 i1@8@01) (Seq_index xs@1@01 i2@8@01)))
    (= i1@8@01 i2@8@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@8@01 Int)) (!
  (=>
    (and (<= 3 i@8@01) (< i@8@01 6))
    (and
      (= (inv@9@01 (Seq_index xs@1@01 i@8@01)) i@8@01)
      (img@10@01 (Seq_index xs@1@01 i@8@01))))
  :pattern ((Seq_index xs@1@01 i@8@01))
  :qid |quant-u-11924|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
    (= (Seq_index xs@1@01 (inv@9@01 r)) r))
  :pattern ((inv@9@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@8@01 Int)) (!
  (=>
    (and (<= 3 i@8@01) (< i@8@01 6))
    (not (= (Seq_index xs@1@01 i@8@01) $Ref.null)))
  :pattern ((Seq_index xs@1@01 i@8@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@1@01 i@8@01) (Seq_index xs@1@01 i@5@01))
    (=
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
      (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))))
  
  :qid |quant-u-11925|))))
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
(pop) ; 2
(push) ; 2
; [exec]
; fold acc(P(xs), write)
; [eval] 3 < |xs|
; [eval] |xs|
(push) ; 3
(assert (not (< 3 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< 3 (Seq_length xs@1@01)))
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@11@01 Int)
(declare-const j@12@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 5 | !(i@11@01 in [0..|xs@1@01|]) | live]
; [else-branch: 5 | i@11@01 in [0..|xs@1@01|] | live]
(push) ; 5
; [then-branch: 5 | !(i@11@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | i@11@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 6 | !(j@12@01 in [0..|xs@1@01|]) | live]
; [else-branch: 6 | j@12@01 in [0..|xs@1@01|] | live]
(push) ; 7
; [then-branch: 6 | !(j@12@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 6 | j@12@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01))))
(push) ; 4
; [then-branch: 7 | i@11@01 in [0..|xs@1@01|] && j@12@01 in [0..|xs@1@01|] && i@11@01 != j@12@01 | live]
; [else-branch: 7 | !(i@11@01 in [0..|xs@1@01|] && j@12@01 in [0..|xs@1@01|] && i@11@01 != j@12@01) | live]
(push) ; 5
; [then-branch: 7 | i@11@01 in [0..|xs@1@01|] && j@12@01 in [0..|xs@1@01|] && i@11@01 != j@12@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
    (not (= i@11@01 j@12@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@11@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@11@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@12@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@12@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 7 | !(i@11@01 in [0..|xs@1@01|] && j@12@01 in [0..|xs@1@01|] && i@11@01 != j@12@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
      (not (= i@11@01 j@12@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
      (not (= i@11@01 j@12@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
    (not (= i@11@01 j@12@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
        (not (= i@11@01 j@12@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
      (not (= i@11@01 j@12@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_index
    xs@1@01
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_index
    xs@1@01
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_index
    xs@1@01
    j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01) (Seq_index
    xs@1@01
    i@11@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@12@01) (Seq_index
    xs@1@01
    i@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@12@01) (Seq_index
    xs@1@01
    i@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
        (not (= i@11@01 j@12@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
            (not (= i@11@01 j@12@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
          (not (= i@11@01 j@12@01))))))
  :pattern ((Seq_index xs@1@01 i@11@01) (Seq_index xs@1@01 j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(push) ; 3
(assert (not (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
        (not (= i@11@01 j@12@01))))
    (not (= (Seq_index xs@1@01 i@11@01) (Seq_index xs@1@01 j@12@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@12@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_index
    xs@1@01
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_index
    xs@1@01
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_index
    xs@1@01
    j@12@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01) (Seq_index
    xs@1@01
    i@11@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@12@01) (Seq_index
    xs@1@01
    i@11@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@12@01) (Seq_index
    xs@1@01
    i@11@01))
  :pattern ((Seq_index xs@1@01 i@11@01) (Seq_index xs@1@01 j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01)
        (not (= i@11@01 j@12@01))))
    (not (= (Seq_index xs@1@01 i@11@01) (Seq_index xs@1@01 j@12@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@12@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_index
    xs@1@01
    j@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@11@01) (Seq_index
    xs@1@01
    j@12@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@12@01) (Seq_index
    xs@1@01
    i@11@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@12@01) (Seq_index
    xs@1@01
    i@11@01))
  :pattern ((Seq_index xs@1@01 i@11@01) (Seq_index xs@1@01 j@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93|)))
(declare-const i@13@01 Int)
(push) ; 3
; [eval] 0 <= i && i < 3
; [eval] 0 <= i
(push) ; 4
; [then-branch: 8 | !(0 <= i@13@01) | live]
; [else-branch: 8 | 0 <= i@13@01 | live]
(push) ; 5
; [then-branch: 8 | !(0 <= i@13@01)]
(assert (not (<= 0 i@13@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 8 | 0 <= i@13@01]
(assert (<= 0 i@13@01))
; [eval] i < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@13@01) (not (<= 0 i@13@01))))
(assert (and (<= 0 i@13@01) (< i@13@01 3)))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@13@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@13@01 (Seq_length xs@1@01))))
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
(assert (forall ((i@13@01 Int)) (!
  (=>
    (and (<= 0 i@13@01) (< i@13@01 3))
    (or (<= 0 i@13@01) (not (<= 0 i@13@01))))
  :pattern ((Seq_index xs@1@01 i@13@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@13@01 Int) (i2@13@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@13@01) (< i1@13@01 3))
      (and (<= 0 i2@13@01) (< i2@13@01 3))
      (= (Seq_index xs@1@01 i1@13@01) (Seq_index xs@1@01 i2@13@01)))
    (= i1@13@01 i2@13@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@13@01 Int)) (!
  (=>
    (and (<= 0 i@13@01) (< i@13@01 3))
    (and
      (= (inv@14@01 (Seq_index xs@1@01 i@13@01)) i@13@01)
      (img@15@01 (Seq_index xs@1@01 i@13@01))))
  :pattern ((Seq_index xs@1@01 i@13@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@15@01 r) (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)))
    (= (Seq_index xs@1@01 (inv@14@01 r)) r))
  :pattern ((inv@14@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@16@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3))
      (img@15@01 r)
      (= r (Seq_index xs@1@01 (inv@14@01 r))))
    ($Perm.min
      (ite
        (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@17@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3))
      (img@15@01 r)
      (= r (Seq_index xs@1@01 (inv@14@01 r))))
    ($Perm.min
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@16@01 r)))
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
        (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@16@01 r))
    $Perm.No)
  
  :qid |quant-u-11928|))))
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
      (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3))
      (img@15@01 r)
      (= r (Seq_index xs@1@01 (inv@14@01 r))))
    (= (- $Perm.Write (pTaken@16@01 r)) $Perm.No))
  
  :qid |quant-u-11929|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@18@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@18@01  $FVF<f>)))
      (and (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)) (img@15@01 r)))
    (=>
      (and (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)) (img@15@01 r))
      (Set_in r ($FVF.domain_f (as sm@18@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@18@01  $FVF<f>))))
  :qid |qp.fvfDomDef2|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)) (img@15@01 r))
      (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3))))
    (=
      ($FVF.lookup_f (as sm@18@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@18@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)) (img@15@01 r))
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6))))
    (=
      ($FVF.lookup_f (as sm@18@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@18@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef1|)))
(assert (P%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@18@01  $FVF<f>)))) xs@1@01))
; [exec]
; unfold acc(P(xs), write)
; [eval] 3 < |xs|
; [eval] |xs|
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@19@01 Int)
(declare-const j@20@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 9 | !(i@19@01 in [0..|xs@1@01|]) | live]
; [else-branch: 9 | i@19@01 in [0..|xs@1@01|] | live]
(push) ; 5
; [then-branch: 9 | !(i@19@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | i@19@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 10 | !(j@20@01 in [0..|xs@1@01|]) | live]
; [else-branch: 10 | j@20@01 in [0..|xs@1@01|] | live]
(push) ; 7
; [then-branch: 10 | !(j@20@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 10 | j@20@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01))))
(push) ; 4
; [then-branch: 11 | i@19@01 in [0..|xs@1@01|] && j@20@01 in [0..|xs@1@01|] && i@19@01 != j@20@01 | live]
; [else-branch: 11 | !(i@19@01 in [0..|xs@1@01|] && j@20@01 in [0..|xs@1@01|] && i@19@01 != j@20@01) | live]
(push) ; 5
; [then-branch: 11 | i@19@01 in [0..|xs@1@01|] && j@20@01 in [0..|xs@1@01|] && i@19@01 != j@20@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
    (not (= i@19@01 j@20@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@19@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@19@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@20@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@20@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(i@19@01 in [0..|xs@1@01|] && j@20@01 in [0..|xs@1@01|] && i@19@01 != j@20@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
      (not (= i@19@01 j@20@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
      (not (= i@19@01 j@20@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
    (not (= i@19@01 j@20@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
        (not (= i@19@01 j@20@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
      (not (= i@19@01 j@20@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@19@01 Int) (j@20@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
        (not (= i@19@01 j@20@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
            (not (= i@19@01 j@20@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@20@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@19@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@19@01 Int) (j@20@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
        (not (= i@19@01 j@20@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
            (not (= i@19@01 j@20@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@19@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@19@01 Int) (j@20@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
        (not (= i@19@01 j@20@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
            (not (= i@19@01 j@20@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01) (Seq_index
    xs@1@01
    j@20@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@19@01) (Seq_index
    xs@1@01
    j@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@19@01 Int) (j@20@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
        (not (= i@19@01 j@20@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
            (not (= i@19@01 j@20@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@19@01) (Seq_index
    xs@1@01
    j@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@19@01 Int) (j@20@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
        (not (= i@19@01 j@20@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
            (not (= i@19@01 j@20@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01) (Seq_index
    xs@1@01
    i@19@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@20@01) (Seq_index
    xs@1@01
    i@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@19@01 Int) (j@20@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
        (not (= i@19@01 j@20@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
            (not (= i@19@01 j@20@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@20@01) (Seq_index
    xs@1@01
    i@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@19@01 Int) (j@20@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
        (not (= i@19@01 j@20@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
            (not (= i@19@01 j@20@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
          (not (= i@19@01 j@20@01))))))
  :pattern ((Seq_index xs@1@01 i@19@01) (Seq_index xs@1@01 j@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@19@01 Int) (j@20@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01)
        (not (= i@19@01 j@20@01))))
    (not (= (Seq_index xs@1@01 i@19@01) (Seq_index xs@1@01 j@20@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@20@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@19@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@20@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@19@01) (Seq_index
    xs@1@01
    j@20@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@19@01) (Seq_index
    xs@1@01
    j@20@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@20@01) (Seq_index
    xs@1@01
    i@19@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@20@01) (Seq_index
    xs@1@01
    i@19@01))
  :pattern ((Seq_index xs@1@01 i@19@01) (Seq_index xs@1@01 j@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93|)))
(declare-const i@21@01 Int)
(push) ; 3
; [eval] 0 <= i && i < 3
; [eval] 0 <= i
(push) ; 4
; [then-branch: 12 | !(0 <= i@21@01) | live]
; [else-branch: 12 | 0 <= i@21@01 | live]
(push) ; 5
; [then-branch: 12 | !(0 <= i@21@01)]
(assert (not (<= 0 i@21@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | 0 <= i@21@01]
(assert (<= 0 i@21@01))
; [eval] i < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@21@01) (not (<= 0 i@21@01))))
(assert (and (<= 0 i@21@01) (< i@21@01 3)))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@21@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@21@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@22@01 ($Ref) Int)
(declare-fun img@23@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@21@01 Int)) (!
  (=>
    (and (<= 0 i@21@01) (< i@21@01 3))
    (or (<= 0 i@21@01) (not (<= 0 i@21@01))))
  :pattern ((Seq_index xs@1@01 i@21@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@21@01 Int) (i2@21@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@21@01) (< i1@21@01 3))
      (and (<= 0 i2@21@01) (< i2@21@01 3))
      (= (Seq_index xs@1@01 i1@21@01) (Seq_index xs@1@01 i2@21@01)))
    (= i1@21@01 i2@21@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@21@01 Int)) (!
  (=>
    (and (<= 0 i@21@01) (< i@21@01 3))
    (and
      (= (inv@22@01 (Seq_index xs@1@01 i@21@01)) i@21@01)
      (img@23@01 (Seq_index xs@1@01 i@21@01))))
  :pattern ((Seq_index xs@1@01 i@21@01))
  :qid |quant-u-11931|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@23@01 r) (and (<= 0 (inv@22@01 r)) (< (inv@22@01 r) 3)))
    (= (Seq_index xs@1@01 (inv@22@01 r)) r))
  :pattern ((inv@22@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@21@01 Int)) (!
  (=>
    (and (<= 0 i@21@01) (< i@21@01 3))
    (not (= (Seq_index xs@1@01 i@21@01) $Ref.null)))
  :pattern ((Seq_index xs@1@01 i@21@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@1@01 i@21@01) (Seq_index xs@1@01 i@8@01))
    (=
      (and (img@23@01 r) (and (<= 0 (inv@22@01 r)) (< (inv@22@01 r) 3)))
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))))
  
  :qid |quant-u-11932|))))
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
; xs[4].f := 0
; [eval] xs[4]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 4 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@24@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@1@01 4))
    ($Perm.min
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@25@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@1@01 4))
    ($Perm.min
      (ite
        (and (img@23@01 r) (and (<= 0 (inv@22@01 r)) (< (inv@22@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@24@01 r)))
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
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        $Perm.Write
        $Perm.No)
      (pTaken@24@01 r))
    $Perm.No)
  
  :qid |quant-u-11934|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@24@01 r) $Perm.No)
  
  :qid |quant-u-11935|))))
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
  (=> (= r (Seq_index xs@1@01 4)) (= (- $Perm.Write (pTaken@24@01 r)) $Perm.No))
  
  :qid |quant-u-11936|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@26@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@26@01  $FVF<f>) (Seq_index xs@1@01 4)) 0))
; [exec]
; fold acc(P(xs), write)
; [eval] 3 < |xs|
; [eval] |xs|
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@27@01 Int)
(declare-const j@28@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 13 | !(i@27@01 in [0..|xs@1@01|]) | live]
; [else-branch: 13 | i@27@01 in [0..|xs@1@01|] | live]
(push) ; 5
; [then-branch: 13 | !(i@27@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | i@27@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 14 | !(j@28@01 in [0..|xs@1@01|]) | live]
; [else-branch: 14 | j@28@01 in [0..|xs@1@01|] | live]
(push) ; 7
; [then-branch: 14 | !(j@28@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 14 | j@28@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01))))
(push) ; 4
; [then-branch: 15 | i@27@01 in [0..|xs@1@01|] && j@28@01 in [0..|xs@1@01|] && i@27@01 != j@28@01 | live]
; [else-branch: 15 | !(i@27@01 in [0..|xs@1@01|] && j@28@01 in [0..|xs@1@01|] && i@27@01 != j@28@01) | live]
(push) ; 5
; [then-branch: 15 | i@27@01 in [0..|xs@1@01|] && j@28@01 in [0..|xs@1@01|] && i@27@01 != j@28@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
    (not (= i@27@01 j@28@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@27@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@27@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@28@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@28@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 15 | !(i@27@01 in [0..|xs@1@01|] && j@28@01 in [0..|xs@1@01|] && i@27@01 != j@28@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
      (not (= i@27@01 j@28@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
      (not (= i@27@01 j@28@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
    (not (= i@27@01 j@28@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
        (not (= i@27@01 j@28@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
      (not (= i@27@01 j@28@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@27@01 Int) (j@28@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
        (not (= i@27@01 j@28@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
            (not (= i@27@01 j@28@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@28@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@27@01 Int) (j@28@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
        (not (= i@27@01 j@28@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
            (not (= i@27@01 j@28@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@27@01 Int) (j@28@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
        (not (= i@27@01 j@28@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
            (not (= i@27@01 j@28@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_index
    xs@1@01
    j@28@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_index
    xs@1@01
    j@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@27@01 Int) (j@28@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
        (not (= i@27@01 j@28@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
            (not (= i@27@01 j@28@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_index
    xs@1@01
    j@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@27@01 Int) (j@28@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
        (not (= i@27@01 j@28@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
            (not (= i@27@01 j@28@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01) (Seq_index
    xs@1@01
    i@27@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@28@01) (Seq_index
    xs@1@01
    i@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@27@01 Int) (j@28@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
        (not (= i@27@01 j@28@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
            (not (= i@27@01 j@28@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@28@01) (Seq_index
    xs@1@01
    i@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@27@01 Int) (j@28@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
        (not (= i@27@01 j@28@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
            (not (= i@27@01 j@28@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
          (not (= i@27@01 j@28@01))))))
  :pattern ((Seq_index xs@1@01 i@27@01) (Seq_index xs@1@01 j@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(push) ; 3
(assert (not (forall ((i@27@01 Int) (j@28@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
        (not (= i@27@01 j@28@01))))
    (not (= (Seq_index xs@1@01 i@27@01) (Seq_index xs@1@01 j@28@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@28@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@28@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@28@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_index
    xs@1@01
    j@28@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_index
    xs@1@01
    j@28@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_index
    xs@1@01
    j@28@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01) (Seq_index
    xs@1@01
    i@27@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@28@01) (Seq_index
    xs@1@01
    i@27@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@28@01) (Seq_index
    xs@1@01
    i@27@01))
  :pattern ((Seq_index xs@1@01 i@27@01) (Seq_index xs@1@01 j@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@27@01 Int) (j@28@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01)
        (not (= i@27@01 j@28@01))))
    (not (= (Seq_index xs@1@01 i@27@01) (Seq_index xs@1@01 j@28@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@28@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@28@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_index
    xs@1@01
    j@28@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@27@01) (Seq_index
    xs@1@01
    j@28@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@28@01) (Seq_index
    xs@1@01
    i@27@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@28@01) (Seq_index
    xs@1@01
    i@27@01))
  :pattern ((Seq_index xs@1@01 i@27@01) (Seq_index xs@1@01 j@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93|)))
(declare-const i@29@01 Int)
(push) ; 3
; [eval] 0 <= i && i < 3
; [eval] 0 <= i
(push) ; 4
; [then-branch: 16 | !(0 <= i@29@01) | live]
; [else-branch: 16 | 0 <= i@29@01 | live]
(push) ; 5
; [then-branch: 16 | !(0 <= i@29@01)]
(assert (not (<= 0 i@29@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | 0 <= i@29@01]
(assert (<= 0 i@29@01))
; [eval] i < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@29@01) (not (<= 0 i@29@01))))
(assert (and (<= 0 i@29@01) (< i@29@01 3)))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@29@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@29@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@30@01 ($Ref) Int)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 3))
    (or (<= 0 i@29@01) (not (<= 0 i@29@01))))
  :pattern ((Seq_index xs@1@01 i@29@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@29@01 Int) (i2@29@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@29@01) (< i1@29@01 3))
      (and (<= 0 i2@29@01) (< i2@29@01 3))
      (= (Seq_index xs@1@01 i1@29@01) (Seq_index xs@1@01 i2@29@01)))
    (= i1@29@01 i2@29@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 3))
    (and
      (= (inv@30@01 (Seq_index xs@1@01 i@29@01)) i@29@01)
      (img@31@01 (Seq_index xs@1@01 i@29@01))))
  :pattern ((Seq_index xs@1@01 i@29@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) 3)))
    (= (Seq_index xs@1@01 (inv@30@01 r)) r))
  :pattern ((inv@30@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@32@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) 3))
      (img@31@01 r)
      (= r (Seq_index xs@1@01 (inv@30@01 r))))
    ($Perm.min
      (ite
        (and (img@23@01 r) (and (<= 0 (inv@22@01 r)) (< (inv@22@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@33@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) 3))
      (img@31@01 r)
      (= r (Seq_index xs@1@01 (inv@30@01 r))))
    ($Perm.min
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        (- $Perm.Write (pTaken@24@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@32@01 r)))
    $Perm.No))
(define-fun pTaken@34@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) 3))
      (img@31@01 r)
      (= r (Seq_index xs@1@01 (inv@30@01 r))))
    ($Perm.min
      (ite (= r (Seq_index xs@1@01 4)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@32@01 r)) (pTaken@33@01 r)))
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
        (and (img@23@01 r) (and (<= 0 (inv@22@01 r)) (< (inv@22@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@32@01 r))
    $Perm.No)
  
  :qid |quant-u-11939|))))
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
      (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) 3))
      (img@31@01 r)
      (= r (Seq_index xs@1@01 (inv@30@01 r))))
    (= (- $Perm.Write (pTaken@32@01 r)) $Perm.No))
  
  :qid |quant-u-11940|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@35@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@35@01  $FVF<f>)))
      (and (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) 3)) (img@31@01 r)))
    (=>
      (and (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) 3)) (img@31@01 r))
      (Set_in r ($FVF.domain_f (as sm@35@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@35@01  $FVF<f>))))
  :qid |qp.fvfDomDef6|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) 3)) (img@31@01 r))
      (= r (Seq_index xs@1@01 4)))
    (=
      ($FVF.lookup_f (as sm@35@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@26@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@35@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@26@01  $FVF<f>) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) 3)) (img@31@01 r))
      (and (img@23@01 r) (and (<= 0 (inv@22@01 r)) (< (inv@22@01 r) 3))))
    (=
      ($FVF.lookup_f (as sm@35@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@18@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@35@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@18@01  $FVF<f>) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) 3)) (img@31@01 r))
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        (< $Perm.No (- $Perm.Write (pTaken@24@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@35@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@35@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef5|)))
(assert (P%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@35@01  $FVF<f>)))) xs@1@01))
; [exec]
; unfold acc(P(xs), write)
; [eval] 3 < |xs|
; [eval] |xs|
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@36@01 Int)
(declare-const j@37@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 17 | !(i@36@01 in [0..|xs@1@01|]) | live]
; [else-branch: 17 | i@36@01 in [0..|xs@1@01|] | live]
(push) ; 5
; [then-branch: 17 | !(i@36@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 17 | i@36@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 18 | !(j@37@01 in [0..|xs@1@01|]) | live]
; [else-branch: 18 | j@37@01 in [0..|xs@1@01|] | live]
(push) ; 7
; [then-branch: 18 | !(j@37@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 18 | j@37@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01))))
(push) ; 4
; [then-branch: 19 | i@36@01 in [0..|xs@1@01|] && j@37@01 in [0..|xs@1@01|] && i@36@01 != j@37@01 | live]
; [else-branch: 19 | !(i@36@01 in [0..|xs@1@01|] && j@37@01 in [0..|xs@1@01|] && i@36@01 != j@37@01) | live]
(push) ; 5
; [then-branch: 19 | i@36@01 in [0..|xs@1@01|] && j@37@01 in [0..|xs@1@01|] && i@36@01 != j@37@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
    (not (= i@36@01 j@37@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@36@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@36@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@37@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@37@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 19 | !(i@36@01 in [0..|xs@1@01|] && j@37@01 in [0..|xs@1@01|] && i@36@01 != j@37@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
      (not (= i@36@01 j@37@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
      (not (= i@36@01 j@37@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
    (not (= i@36@01 j@37@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
        (not (= i@36@01 j@37@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
      (not (= i@36@01 j@37@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@36@01 Int) (j@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
        (not (= i@36@01 j@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
            (not (= i@36@01 j@37@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@37@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@36@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@36@01 Int) (j@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
        (not (= i@36@01 j@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
            (not (= i@36@01 j@37@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@36@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@36@01 Int) (j@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
        (not (= i@36@01 j@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
            (not (= i@36@01 j@37@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01) (Seq_index
    xs@1@01
    j@37@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@36@01) (Seq_index
    xs@1@01
    j@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@36@01 Int) (j@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
        (not (= i@36@01 j@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
            (not (= i@36@01 j@37@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@36@01) (Seq_index
    xs@1@01
    j@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@36@01 Int) (j@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
        (not (= i@36@01 j@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
            (not (= i@36@01 j@37@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01) (Seq_index
    xs@1@01
    i@36@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@37@01) (Seq_index
    xs@1@01
    i@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@36@01 Int) (j@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
        (not (= i@36@01 j@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
            (not (= i@36@01 j@37@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@37@01) (Seq_index
    xs@1@01
    i@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@36@01 Int) (j@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
        (not (= i@36@01 j@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
            (not (= i@36@01 j@37@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
          (not (= i@36@01 j@37@01))))))
  :pattern ((Seq_index xs@1@01 i@36@01) (Seq_index xs@1@01 j@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93-aux|)))
(assert (forall ((i@36@01 Int) (j@37@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01)
        (not (= i@36@01 j@37@01))))
    (not (= (Seq_index xs@1@01 i@36@01) (Seq_index xs@1@01 j@37@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@37@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@36@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@37@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@36@01) (Seq_index
    xs@1@01
    j@37@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@36@01) (Seq_index
    xs@1@01
    j@37@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@37@01) (Seq_index
    xs@1@01
    i@36@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@37@01) (Seq_index
    xs@1@01
    i@36@01))
  :pattern ((Seq_index xs@1@01 i@36@01) (Seq_index xs@1@01 j@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/snapshots_partial_fvfs.vpr@8@7@8@93|)))
(declare-const i@38@01 Int)
(push) ; 3
; [eval] 0 <= i && i < 3
; [eval] 0 <= i
(push) ; 4
; [then-branch: 20 | !(0 <= i@38@01) | live]
; [else-branch: 20 | 0 <= i@38@01 | live]
(push) ; 5
; [then-branch: 20 | !(0 <= i@38@01)]
(assert (not (<= 0 i@38@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 20 | 0 <= i@38@01]
(assert (<= 0 i@38@01))
; [eval] i < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@38@01) (not (<= 0 i@38@01))))
(assert (and (<= 0 i@38@01) (< i@38@01 3)))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@38@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@38@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@39@01 ($Ref) Int)
(declare-fun img@40@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@38@01 Int)) (!
  (=>
    (and (<= 0 i@38@01) (< i@38@01 3))
    (or (<= 0 i@38@01) (not (<= 0 i@38@01))))
  :pattern ((Seq_index xs@1@01 i@38@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@38@01 Int) (i2@38@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@38@01) (< i1@38@01 3))
      (and (<= 0 i2@38@01) (< i2@38@01 3))
      (= (Seq_index xs@1@01 i1@38@01) (Seq_index xs@1@01 i2@38@01)))
    (= i1@38@01 i2@38@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@38@01 Int)) (!
  (=>
    (and (<= 0 i@38@01) (< i@38@01 3))
    (and
      (= (inv@39@01 (Seq_index xs@1@01 i@38@01)) i@38@01)
      (img@40@01 (Seq_index xs@1@01 i@38@01))))
  :pattern ((Seq_index xs@1@01 i@38@01))
  :qid |quant-u-11942|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
    (= (Seq_index xs@1@01 (inv@39@01 r)) r))
  :pattern ((inv@39@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@38@01 Int)) (!
  (=>
    (and (<= 0 i@38@01) (< i@38@01 3))
    (not (= (Seq_index xs@1@01 i@38@01) $Ref.null)))
  :pattern ((Seq_index xs@1@01 i@38@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@1@01 i@38@01) (Seq_index xs@1@01 i@8@01))
    (=
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))))
  
  :qid |quant-u-11943|))))
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
; assert xs[4].f == old(xs[4].f)
; [eval] xs[4].f == old(xs[4].f)
; [eval] xs[4]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 4 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@41@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@1@01 4))
    (=
      ($FVF.lookup_f (as sm@41@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@26@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@41@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@26@01  $FVF<f>) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
      (< $Perm.No (- $Perm.Write (pTaken@24@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@41@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@41@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@41@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@35@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@41@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@35@01  $FVF<f>) r))
  :qid |qp.fvfValDef9|)))
(declare-const pm@42@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@42@01  $FPM) r)
    (+
      (+
        (ite (= r (Seq_index xs@1@01 4)) $Perm.Write $Perm.No)
        (ite
          (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
          (- $Perm.Write (pTaken@24@01 r))
          $Perm.No))
      (ite
        (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@42@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@42@01  $FPM) (Seq_index xs@1@01 4)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(xs[4].f)
; [eval] xs[4]
(push) ; 3
(assert (not (< 4 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@43@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
    (=
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef12|)))
(declare-const pm@44@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@44@01  $FPM) r)
    (+
      (ite
        (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@44@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@44@01  $FPM) (Seq_index xs@1@01 4)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (=
  ($FVF.lookup_f (as sm@41@01  $FVF<f>) (Seq_index xs@1@01 4))
  ($FVF.lookup_f (as sm@43@01  $FVF<f>) (Seq_index xs@1@01 4)))))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@1@01 i@8@01) (Seq_index xs@1@01 i@38@01))
    (=
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))))
  
  :qid |quant-u-11944|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@45@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@1@01 4))
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@26@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@26@01  $FVF<f>) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
      (< $Perm.No (- $Perm.Write (pTaken@24@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@35@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@35@01  $FVF<f>) r))
  :qid |qp.fvfValDef16|)))
(declare-const pm@46@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@46@01  $FPM) r)
    (+
      (+
        (ite (= r (Seq_index xs@1@01 4)) $Perm.Write $Perm.No)
        (ite
          (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
          (- $Perm.Write (pTaken@24@01 r))
          $Perm.No))
      (ite
        (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@46@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
(assert (<= ($FVF.perm_f (as pm@46@01  $FPM) (Seq_index xs@1@01 4)) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@46@01  $FPM) r) $Perm.Write)
  :pattern ((inv@9@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@46@01  $FPM) r) $Perm.Write)
  :pattern ((inv@39@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] xs[4].f == old(xs[4].f)
; [eval] xs[4]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 4 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@47@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@35@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@35@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
      (< $Perm.No (- $Perm.Write (pTaken@24@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@1@01 4))
    (=
      ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@26@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@26@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(declare-const pm@48@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@48@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
          (- $Perm.Write (pTaken@24@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@1@01 4)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@48@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@48@01  $FPM) (Seq_index xs@1@01 4)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(xs[4].f)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@1@01 i@5@01) (Seq_index xs@1@01 i@8@01))
    (=
      (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))))
  
  :qid |quant-u-11945|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@49@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
    (=
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef23|)))
(declare-const pm@50@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@50@01  $FPM) r)
    (+
      (ite
        (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@50@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@50@01  $FPM) r) $Perm.Write)
  :pattern ((inv@6@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@50@01  $FPM) r) $Perm.Write)
  :pattern ((inv@9@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] xs[4]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 4 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@51@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
    (=
      ($FVF.lookup_f (as sm@51@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@51@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@51@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@51@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef26|)))
(declare-const pm@52@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@52@01  $FPM) r)
    (+
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@52@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@52@01  $FPM) (Seq_index xs@1@01 4)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (=
  ($FVF.lookup_f (as sm@47@01  $FVF<f>) (Seq_index xs@1@01 4))
  ($FVF.lookup_f (as sm@51@01  $FVF<f>) (Seq_index xs@1@01 4)))))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@1@01 i@8@01) (Seq_index xs@1@01 i@38@01))
    (=
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))))
  
  :qid |quant-u-11946|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@53@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@1@01 4))
    (=
      ($FVF.lookup_f (as sm@53@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@26@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@53@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@26@01  $FVF<f>) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
      (< $Perm.No (- $Perm.Write (pTaken@24@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@53@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@53@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@53@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@35@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@53@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@35@01  $FVF<f>) r))
  :qid |qp.fvfValDef30|)))
(declare-const pm@54@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@54@01  $FPM) r)
    (+
      (+
        (ite (= r (Seq_index xs@1@01 4)) $Perm.Write $Perm.No)
        (ite
          (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
          (- $Perm.Write (pTaken@24@01 r))
          $Perm.No))
      (ite
        (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@54@01  $FPM) r))
  :qid |qp.resPrmSumDef31|)))
(assert (<= ($FVF.perm_f (as pm@54@01  $FPM) (Seq_index xs@1@01 4)) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@54@01  $FPM) r) $Perm.Write)
  :pattern ((inv@9@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@54@01  $FPM) r) $Perm.Write)
  :pattern ((inv@39@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] xs[4].f == old(xs[4].f)
; [eval] xs[4]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 4 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index xs@1@01 4))
      (=
        ($FVF.lookup_f (as sm@53@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@26@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@53@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@26@01  $FVF<f>) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        (< $Perm.No (- $Perm.Write (pTaken@24@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@53@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@53@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
      (=
        ($FVF.lookup_f (as sm@53@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@35@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@53@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@35@01  $FVF<f>) r))
    :qid |qp.fvfValDef30|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= (Seq_index xs@1@01 4) (Seq_index xs@1@01 4)) $Perm.Write $Perm.No)
      (ite
        (and
          (img@10@01 (Seq_index xs@1@01 4))
          (and
            (<= 3 (inv@9@01 (Seq_index xs@1@01 4)))
            (< (inv@9@01 (Seq_index xs@1@01 4)) 6)))
        (- $Perm.Write (pTaken@24@01 (Seq_index xs@1@01 4)))
        $Perm.No))
    (ite
      (and
        (img@40@01 (Seq_index xs@1@01 4))
        (and
          (<= 0 (inv@39@01 (Seq_index xs@1@01 4)))
          (< (inv@39@01 (Seq_index xs@1@01 4)) 3)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(xs[4].f)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@1@01 i@5@01) (Seq_index xs@1@01 i@8@01))
    (=
      (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))))
  
  :qid |quant-u-11947|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@55@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@55@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
    (=
      ($FVF.lookup_f (as sm@55@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef33|)))
(declare-const pm@56@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@56@01  $FPM) r)
    (+
      (ite
        (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef34|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@56@01  $FPM) r) $Perm.Write)
  :pattern ((inv@6@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@56@01  $FPM) r) $Perm.Write)
  :pattern ((inv@9@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] xs[4]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 4 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@57@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
    (=
      ($FVF.lookup_f (as sm@57@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@57@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@57@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@57@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef36|)))
(declare-const pm@58@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@58@01  $FPM) r)
    (+
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@58@01  $FPM) r))
  :qid |qp.resPrmSumDef37|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@58@01  $FPM) (Seq_index xs@1@01 4)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (=
  ($FVF.lookup_f (as sm@53@01  $FVF<f>) (Seq_index xs@1@01 4))
  ($FVF.lookup_f (as sm@57@01  $FVF<f>) (Seq_index xs@1@01 4)))))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@1@01 i@8@01) (Seq_index xs@1@01 i@38@01))
    (=
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))))
  
  :qid |quant-u-11948|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] xs[4].f == old(xs[4].f)
; [eval] xs[4]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 4 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@59@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@35@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@35@01  $FVF<f>) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
      (< $Perm.No (- $Perm.Write (pTaken@24@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@1@01 4))
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@26@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@26@01  $FVF<f>) r))
  :qid |qp.fvfValDef40|)))
(declare-const pm@60@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@60@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
          (- $Perm.Write (pTaken@24@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@1@01 4)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@60@01  $FPM) r))
  :qid |qp.resPrmSumDef41|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@60@01  $FPM) (Seq_index xs@1@01 4)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(xs[4].f)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@1@01 i@5@01) (Seq_index xs@1@01 i@8@01))
    (=
      (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
      (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))))
  
  :qid |quant-u-11949|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@61@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef43|)))
(declare-const pm@62@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@62@01  $FPM) r)
    (+
      (ite
        (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@62@01  $FPM) r))
  :qid |qp.resPrmSumDef44|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@62@01  $FPM) r) $Perm.Write)
  :pattern ((inv@6@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@62@01  $FPM) r) $Perm.Write)
  :pattern ((inv@9@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] xs[4]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 4 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@63@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
    (=
      ($FVF.lookup_f (as sm@63@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@63@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@63@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@63@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@2@01)))) r))
  :qid |qp.fvfValDef46|)))
(declare-const pm@64@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@64@01  $FPM) r)
    (+
      (ite
        (and (img@10@01 r) (and (<= 3 (inv@9@01 r)) (< (inv@9@01 r) 6)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@7@01 r) (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) 3)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef47|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@64@01  $FPM) (Seq_index xs@1@01 4)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (=
  ($FVF.lookup_f (as sm@59@01  $FVF<f>) (Seq_index xs@1@01 4))
  ($FVF.lookup_f (as sm@63@01  $FVF<f>) (Seq_index xs@1@01 4)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
