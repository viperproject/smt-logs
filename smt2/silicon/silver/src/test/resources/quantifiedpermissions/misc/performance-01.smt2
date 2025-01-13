(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:32:49
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
; ---------- init ----------
(declare-const xs@0@01 Seq<$Ref>)
(declare-const xs@1@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (= ($Snap.first $t@2@01) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@3@01 Int)
(declare-const j@4@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 0 | !(i@3@01 in [0..|xs@1@01|]) | live]
; [else-branch: 0 | i@3@01 in [0..|xs@1@01|] | live]
(push) ; 5
; [then-branch: 0 | !(i@3@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | i@3@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 1 | !(j@4@01 in [0..|xs@1@01|]) | live]
; [else-branch: 1 | j@4@01 in [0..|xs@1@01|] | live]
(push) ; 7
; [then-branch: 1 | !(j@4@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 1 | j@4@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01))))
(pop) ; 5
(pop) ; 4
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
(push) ; 4
; [then-branch: 2 | i@3@01 in [0..|xs@1@01|] && j@4@01 in [0..|xs@1@01|] && i@3@01 != j@4@01 | live]
; [else-branch: 2 | !(i@3@01 in [0..|xs@1@01|] && j@4@01 in [0..|xs@1@01|] && i@3@01 != j@4@01) | live]
(push) ; 5
; [then-branch: 2 | i@3@01 in [0..|xs@1@01|] && j@4@01 in [0..|xs@1@01|] && i@3@01 != j@4@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
    (not (= i@3@01 j@4@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@3@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@3@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@4@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@4@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 2 | !(i@3@01 in [0..|xs@1@01|] && j@4@01 in [0..|xs@1@01|] && i@3@01 != j@4@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@3@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@4@01)
      (not (= i@3@01 j@4@01))))))
(pop) ; 5
(pop) ; 4
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
(pop) ; 3
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97|)))
(declare-const i@5@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@5@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@5@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@5@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@6@01 ($Ref) Int)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@5@01 Int) (i2@5@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i1@5@01)
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i2@5@01)
      (= (Seq_index xs@1@01 i1@5@01) (Seq_index xs@1@01 i2@5@01)))
    (= i1@5@01 i2@5@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@5@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@5@01)
    (and
      (= (inv@6@01 (Seq_index xs@1@01 i@5@01)) i@5@01)
      (img@7@01 (Seq_index xs@1@01 i@5@01))))
  :pattern ((Seq_index xs@1@01 i@5@01))
  :qid |quant-u-11790|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@7@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) (inv@6@01 r)))
    (= (Seq_index xs@1@01 (inv@6@01 r)) r))
  :pattern ((inv@6@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@5@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@5@01)
    (not (= (Seq_index xs@1@01 i@5@01) $Ref.null)))
  :pattern ((Seq_index xs@1@01 i@5@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale (forall i: Int, j: Int ::
;     { (i in [0..|xs|)), (j in [0..|xs|)) }
;     { (i in [0..|xs|)), xs[j] }
;     { (j in [0..|xs|)), xs[i] }
;     { xs[i], xs[j] }
;     (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@9@01 Int)
(declare-const j@10@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 3 | !(i@9@01 in [0..|xs@1@01|]) | live]
; [else-branch: 3 | i@9@01 in [0..|xs@1@01|] | live]
(push) ; 5
; [then-branch: 3 | !(i@9@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | i@9@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 4 | !(j@10@01 in [0..|xs@1@01|]) | live]
; [else-branch: 4 | j@10@01 in [0..|xs@1@01|] | live]
(push) ; 7
; [then-branch: 4 | !(j@10@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 4 | j@10@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01))))
(push) ; 4
; [then-branch: 5 | i@9@01 in [0..|xs@1@01|] && j@10@01 in [0..|xs@1@01|] && i@9@01 != j@10@01 | live]
; [else-branch: 5 | !(i@9@01 in [0..|xs@1@01|] && j@10@01 in [0..|xs@1@01|] && i@9@01 != j@10@01) | live]
(push) ; 5
; [then-branch: 5 | i@9@01 in [0..|xs@1@01|] && j@10@01 in [0..|xs@1@01|] && i@9@01 != j@10@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
    (not (= i@9@01 j@10@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@9@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@9@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@10@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@10@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(i@9@01 in [0..|xs@1@01|] && j@10@01 in [0..|xs@1@01|] && i@9@01 != j@10@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
      (not (= i@9@01 j@10@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
      (not (= i@9@01 j@10@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
    (not (= i@9@01 j@10@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
        (not (= i@9@01 j@10@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
      (not (= i@9@01 j@10@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@9@01 Int) (j@10@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
        (not (= i@9@01 j@10@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
            (not (= i@9@01 j@10@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@10@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@9@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@10@10@10@96-aux|)))
(assert (forall ((i@9@01 Int) (j@10@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
        (not (= i@9@01 j@10@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
            (not (= i@9@01 j@10@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@9@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@10@10@10@96-aux|)))
(assert (forall ((i@9@01 Int) (j@10@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
        (not (= i@9@01 j@10@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
            (not (= i@9@01 j@10@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01) (Seq_index
    xs@1@01
    j@10@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@9@01) (Seq_index
    xs@1@01
    j@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@10@10@10@96-aux|)))
(assert (forall ((i@9@01 Int) (j@10@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
        (not (= i@9@01 j@10@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
            (not (= i@9@01 j@10@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@9@01) (Seq_index
    xs@1@01
    j@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@10@10@10@96-aux|)))
(assert (forall ((i@9@01 Int) (j@10@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
        (not (= i@9@01 j@10@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
            (not (= i@9@01 j@10@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01) (Seq_index
    xs@1@01
    i@9@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@10@01) (Seq_index
    xs@1@01
    i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@10@10@10@96-aux|)))
(assert (forall ((i@9@01 Int) (j@10@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
        (not (= i@9@01 j@10@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
            (not (= i@9@01 j@10@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@10@01) (Seq_index
    xs@1@01
    i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@10@10@10@96-aux|)))
(assert (forall ((i@9@01 Int) (j@10@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
        (not (= i@9@01 j@10@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
            (not (= i@9@01 j@10@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
          (not (= i@9@01 j@10@01))))))
  :pattern ((Seq_index xs@1@01 i@9@01) (Seq_index xs@1@01 j@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@10@10@10@96-aux|)))
(assert (forall ((i@9@01 Int) (j@10@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01)
        (not (= i@9@01 j@10@01))))
    (not (= (Seq_index xs@1@01 i@9@01) (Seq_index xs@1@01 j@10@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@10@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@9@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@10@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@9@01) (Seq_index
    xs@1@01
    j@10@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@9@01) (Seq_index
    xs@1@01
    j@10@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@10@01) (Seq_index
    xs@1@01
    i@9@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@10@01) (Seq_index
    xs@1@01
    i@9@01))
  :pattern ((Seq_index xs@1@01 i@9@01) (Seq_index xs@1@01 j@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@10@10@10@96|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::(i in [0..|xs|)) ==> acc(xs[i].f, write))
(declare-const i@11@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@11@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@11@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@12@01 $FVF<f>)
(declare-fun inv@13@01 ($Ref) Int)
(declare-fun img@14@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@11@01 Int) (i2@11@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i1@11@01)
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i2@11@01)
      (= (Seq_index xs@1@01 i1@11@01) (Seq_index xs@1@01 i2@11@01)))
    (= i1@11@01 i2@11@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@11@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
    (and
      (= (inv@13@01 (Seq_index xs@1@01 i@11@01)) i@11@01)
      (img@14@01 (Seq_index xs@1@01 i@11@01))))
  :pattern ((Seq_index xs@1@01 i@11@01))
  :qid |quant-u-11792|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@14@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) (inv@13@01 r)))
    (= (Seq_index xs@1@01 (inv@13@01 r)) r))
  :pattern ((inv@13@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@11@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@11@01)
    (not (= (Seq_index xs@1@01 i@11@01) $Ref.null)))
  :pattern ((Seq_index xs@1@01 i@11@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@15@01 Int)
(declare-const j@16@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 6 | !(i@15@01 in [0..|xs@1@01|]) | live]
; [else-branch: 6 | i@15@01 in [0..|xs@1@01|] | live]
(push) ; 5
; [then-branch: 6 | !(i@15@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | i@15@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 7 | !(j@16@01 in [0..|xs@1@01|]) | live]
; [else-branch: 7 | j@16@01 in [0..|xs@1@01|] | live]
(push) ; 7
; [then-branch: 7 | !(j@16@01 in [0..|xs@1@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 7 | j@16@01 in [0..|xs@1@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01))))
(push) ; 4
; [then-branch: 8 | i@15@01 in [0..|xs@1@01|] && j@16@01 in [0..|xs@1@01|] && i@15@01 != j@16@01 | live]
; [else-branch: 8 | !(i@15@01 in [0..|xs@1@01|] && j@16@01 in [0..|xs@1@01|] && i@15@01 != j@16@01) | live]
(push) ; 5
; [then-branch: 8 | i@15@01 in [0..|xs@1@01|] && j@16@01 in [0..|xs@1@01|] && i@15@01 != j@16@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
    (not (= i@15@01 j@16@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@15@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@15@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@16@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@16@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 8 | !(i@15@01 in [0..|xs@1@01|] && j@16@01 in [0..|xs@1@01|] && i@15@01 != j@16@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
      (not (= i@15@01 j@16@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
      (not (= i@15@01 j@16@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
    (not (= i@15@01 j@16@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
        (not (= i@15@01 j@16@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
      (not (= i@15@01 j@16@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
        (not (= i@15@01 j@16@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
            (not (= i@15@01 j@16@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
        (not (= i@15@01 j@16@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
            (not (= i@15@01 j@16@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
        (not (= i@15@01 j@16@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
            (not (= i@15@01 j@16@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_index
    xs@1@01
    j@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_index
    xs@1@01
    j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
        (not (= i@15@01 j@16@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
            (not (= i@15@01 j@16@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_index
    xs@1@01
    j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
        (not (= i@15@01 j@16@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
            (not (= i@15@01 j@16@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01) (Seq_index
    xs@1@01
    i@15@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@16@01) (Seq_index
    xs@1@01
    i@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
        (not (= i@15@01 j@16@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
            (not (= i@15@01 j@16@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@16@01) (Seq_index
    xs@1@01
    i@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
        (not (= i@15@01 j@16@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
            (not (= i@15@01 j@16@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
          (not (= i@15@01 j@16@01))))))
  :pattern ((Seq_index xs@1@01 i@15@01) (Seq_index xs@1@01 j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(push) ; 3
(assert (not (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
        (not (= i@15@01 j@16@01))))
    (not (= (Seq_index xs@1@01 i@15@01) (Seq_index xs@1@01 j@16@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@16@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_index
    xs@1@01
    j@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_index
    xs@1@01
    j@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_index
    xs@1@01
    j@16@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01) (Seq_index
    xs@1@01
    i@15@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@16@01) (Seq_index
    xs@1@01
    i@15@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@16@01) (Seq_index
    xs@1@01
    i@15@01))
  :pattern ((Seq_index xs@1@01 i@15@01) (Seq_index xs@1@01 j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01)
        (not (= i@15@01 j@16@01))))
    (not (= (Seq_index xs@1@01 i@15@01) (Seq_index xs@1@01 j@16@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@1@01))
    j@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@1@01))
    j@16@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_index
    xs@1@01
    j@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) i@15@01) (Seq_index
    xs@1@01
    j@16@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@1@01)) j@16@01) (Seq_index
    xs@1@01
    i@15@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@1@01)) j@16@01) (Seq_index
    xs@1@01
    i@15@01))
  :pattern ((Seq_index xs@1@01 i@15@01) (Seq_index xs@1@01 j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97|)))
(declare-const i@17@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@17@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@17@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@17@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@18@01 ($Ref) Int)
(declare-fun img@19@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@17@01 Int) (i2@17@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i1@17@01)
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i2@17@01)
      (= (Seq_index xs@1@01 i1@17@01) (Seq_index xs@1@01 i2@17@01)))
    (= i1@17@01 i2@17@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@17@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) i@17@01)
    (and
      (= (inv@18@01 (Seq_index xs@1@01 i@17@01)) i@17@01)
      (img@19@01 (Seq_index xs@1@01 i@17@01))))
  :pattern ((Seq_index xs@1@01 i@17@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) (inv@18@01 r)))
    (= (Seq_index xs@1@01 (inv@18@01 r)) r))
  :pattern ((inv@18@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@20@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) (inv@18@01 r))
      (img@19@01 r)
      (= r (Seq_index xs@1@01 (inv@18@01 r))))
    ($Perm.min
      (ite
        (and
          (img@14@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) (inv@13@01 r)))
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
          (img@14@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) (inv@13@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@20@01 r))
    $Perm.No)
  
  :qid |quant-u-11795|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs@1@01)) (inv@18@01 r))
      (img@19@01 r)
      (= r (Seq_index xs@1@01 (inv@18@01 r))))
    (= (- $Perm.Write (pTaken@20@01 r)) $Perm.No))
  
  :qid |quant-u-11796|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- leak ----------
(declare-const xs@21@01 Seq<$Ref>)
(declare-const p@22@01 $Perm)
(declare-const xs@23@01 Seq<$Ref>)
(declare-const p@24@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 ($Snap.combine ($Snap.first $t@25@01) ($Snap.second $t@25@01))))
(assert (= ($Snap.first $t@25@01) $Snap.unit))
; [eval] p >= none
(assert (>= p@24@01 $Perm.No))
(assert (=
  ($Snap.second $t@25@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@25@01))
    ($Snap.second ($Snap.second $t@25@01)))))
(assert (= ($Snap.first ($Snap.second $t@25@01)) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@26@01 Int)
(declare-const j@27@01 Int)
(push) ; 2
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 3
; [then-branch: 9 | !(i@26@01 in [0..|xs@23@01|]) | live]
; [else-branch: 9 | i@26@01 in [0..|xs@23@01|] | live]
(push) ; 4
; [then-branch: 9 | !(i@26@01 in [0..|xs@23@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 9 | i@26@01 in [0..|xs@23@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 5
; [then-branch: 10 | !(j@27@01 in [0..|xs@23@01|]) | live]
; [else-branch: 10 | j@27@01 in [0..|xs@23@01|] | live]
(push) ; 6
; [then-branch: 10 | !(j@27@01 in [0..|xs@23@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 10 | j@27@01 in [0..|xs@23@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01))))
(push) ; 3
; [then-branch: 11 | i@26@01 in [0..|xs@23@01|] && j@27@01 in [0..|xs@23@01|] && i@26@01 != j@27@01 | live]
; [else-branch: 11 | !(i@26@01 in [0..|xs@23@01|] && j@27@01 in [0..|xs@23@01|] && i@26@01 != j@27@01) | live]
(push) ; 4
; [then-branch: 11 | i@26@01 in [0..|xs@23@01|] && j@27@01 in [0..|xs@23@01|] && i@26@01 != j@27@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
    (not (= i@26@01 j@27@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@26@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@26@01 (Seq_length xs@23@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@27@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@27@01 (Seq_length xs@23@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 11 | !(i@26@01 in [0..|xs@23@01|] && j@27@01 in [0..|xs@23@01|] && i@26@01 != j@27@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
      (not (= i@26@01 j@27@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
      (not (= i@26@01 j@27@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
    (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
    (not (= i@26@01 j@27@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
        (not (= i@26@01 j@27@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
      (not (= i@26@01 j@27@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@26@01 Int) (j@27@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
        (not (= i@26@01 j@27@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
            (not (= i@26@01 j@27@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@23@01))
    j@27@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@23@01)) i@26@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@23@01))
    j@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@26@01 Int) (j@27@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
        (not (= i@26@01 j@27@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
            (not (= i@26@01 j@27@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@23@01)) i@26@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@23@01))
    j@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@26@01 Int) (j@27@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
        (not (= i@26@01 j@27@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
            (not (= i@26@01 j@27@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01) (Seq_index
    xs@23@01
    j@27@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@23@01)) i@26@01) (Seq_index
    xs@23@01
    j@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@26@01 Int) (j@27@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
        (not (= i@26@01 j@27@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
            (not (= i@26@01 j@27@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@23@01)) i@26@01) (Seq_index
    xs@23@01
    j@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@26@01 Int) (j@27@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
        (not (= i@26@01 j@27@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
            (not (= i@26@01 j@27@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01) (Seq_index
    xs@23@01
    i@26@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@23@01)) j@27@01) (Seq_index
    xs@23@01
    i@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@26@01 Int) (j@27@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
        (not (= i@26@01 j@27@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
            (not (= i@26@01 j@27@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@23@01)) j@27@01) (Seq_index
    xs@23@01
    i@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@26@01 Int) (j@27@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
        (not (= i@26@01 j@27@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
            (not (= i@26@01 j@27@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
          (not (= i@26@01 j@27@01))))))
  :pattern ((Seq_index xs@23@01 i@26@01) (Seq_index xs@23@01 j@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@26@01 Int) (j@27@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01)
        (not (= i@26@01 j@27@01))))
    (not (= (Seq_index xs@23@01 i@26@01) (Seq_index xs@23@01 j@27@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@23@01))
    j@27@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@23@01)) i@26@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@23@01))
    j@27@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@26@01) (Seq_index
    xs@23@01
    j@27@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@23@01)) i@26@01) (Seq_index
    xs@23@01
    j@27@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@23@01)) j@27@01) (Seq_index
    xs@23@01
    i@26@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@23@01)) j@27@01) (Seq_index
    xs@23@01
    i@26@01))
  :pattern ((Seq_index xs@23@01 i@26@01) (Seq_index xs@23@01 j@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|)))
(declare-const i@28@01 Int)
(push) ; 2
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@28@01))
; [eval] xs[i]
(push) ; 3
(assert (not (>= i@28@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@28@01 (Seq_length xs@23@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@29@01 ($Ref) Int)
(declare-fun img@30@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((i@28@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@28@01)
    (or (= p@24@01 $Perm.No) (< $Perm.No p@24@01)))
  
  :qid |quant-u-11797|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@28@01 Int) (i2@28@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i1@28@01)
        (< $Perm.No p@24@01))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i2@28@01)
        (< $Perm.No p@24@01))
      (= (Seq_index xs@23@01 i1@28@01) (Seq_index xs@23@01 i2@28@01)))
    (= i1@28@01 i2@28@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@28@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@28@01)
      (< $Perm.No p@24@01))
    (and
      (= (inv@29@01 (Seq_index xs@23@01 i@28@01)) i@28@01)
      (img@30@01 (Seq_index xs@23@01 i@28@01))))
  :pattern ((Seq_index xs@23@01 i@28@01))
  :qid |quant-u-11798|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@30@01 r)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) (inv@29@01 r))
        (< $Perm.No p@24@01)))
    (= (Seq_index xs@23@01 (inv@29@01 r)) r))
  :pattern ((inv@29@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@28@01 Int)) (!
  (<= $Perm.No p@24@01)
  :pattern ((Seq_index xs@23@01 i@28@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@28@01 Int)) (!
  (<= p@24@01 $Perm.Write)
  :pattern ((Seq_index xs@23@01 i@28@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@28@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@23@01)) i@28@01)
      (< $Perm.No p@24@01))
    (not (= (Seq_index xs@23@01 i@28@01) $Ref.null)))
  :pattern ((Seq_index xs@23@01 i@28@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
(pop) ; 2
(pop) ; 1
; ---------- split ----------
(declare-const xs@31@01 Seq<$Ref>)
(declare-const p@32@01 $Perm)
(declare-const q@33@01 $Perm)
(declare-const xs@34@01 Seq<$Ref>)
(declare-const p@35@01 $Perm)
(declare-const q@36@01 $Perm)
(push) ; 1
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01))))
(assert (= ($Snap.first $t@37@01) $Snap.unit))
; [eval] p == 2 * q
; [eval] 2 * q
(assert (= p@35@01 (* (to_real 2) q@36@01)))
(assert (=
  ($Snap.second $t@37@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@37@01))
    ($Snap.second ($Snap.second $t@37@01)))))
(assert (= ($Snap.first ($Snap.second $t@37@01)) $Snap.unit))
; [eval] p >= none
(assert (>= p@35@01 $Perm.No))
(assert (=
  ($Snap.second ($Snap.second $t@37@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@37@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@37@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@37@01))) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@38@01 Int)
(declare-const j@39@01 Int)
(push) ; 2
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 3
; [then-branch: 12 | !(i@38@01 in [0..|xs@34@01|]) | live]
; [else-branch: 12 | i@38@01 in [0..|xs@34@01|] | live]
(push) ; 4
; [then-branch: 12 | !(i@38@01 in [0..|xs@34@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 12 | i@38@01 in [0..|xs@34@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 5
; [then-branch: 13 | !(j@39@01 in [0..|xs@34@01|]) | live]
; [else-branch: 13 | j@39@01 in [0..|xs@34@01|] | live]
(push) ; 6
; [then-branch: 13 | !(j@39@01 in [0..|xs@34@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 13 | j@39@01 in [0..|xs@34@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01))))
(push) ; 3
; [then-branch: 14 | i@38@01 in [0..|xs@34@01|] && j@39@01 in [0..|xs@34@01|] && i@38@01 != j@39@01 | live]
; [else-branch: 14 | !(i@38@01 in [0..|xs@34@01|] && j@39@01 in [0..|xs@34@01|] && i@38@01 != j@39@01) | live]
(push) ; 4
; [then-branch: 14 | i@38@01 in [0..|xs@34@01|] && j@39@01 in [0..|xs@34@01|] && i@38@01 != j@39@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
    (not (= i@38@01 j@39@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@38@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@38@01 (Seq_length xs@34@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@39@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@39@01 (Seq_length xs@34@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 14 | !(i@38@01 in [0..|xs@34@01|] && j@39@01 in [0..|xs@34@01|] && i@38@01 != j@39@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
      (not (= i@38@01 j@39@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
      (not (= i@38@01 j@39@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
    (not (= i@38@01 j@39@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
        (not (= i@38@01 j@39@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
      (not (= i@38@01 j@39@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
        (not (= i@38@01 j@39@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
            (not (= i@38@01 j@39@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@34@01))
    j@39@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@34@01)) i@38@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@34@01))
    j@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
        (not (= i@38@01 j@39@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
            (not (= i@38@01 j@39@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@34@01)) i@38@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@34@01))
    j@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
        (not (= i@38@01 j@39@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
            (not (= i@38@01 j@39@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01) (Seq_index
    xs@34@01
    j@39@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@34@01)) i@38@01) (Seq_index
    xs@34@01
    j@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
        (not (= i@38@01 j@39@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
            (not (= i@38@01 j@39@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@34@01)) i@38@01) (Seq_index
    xs@34@01
    j@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
        (not (= i@38@01 j@39@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
            (not (= i@38@01 j@39@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01) (Seq_index
    xs@34@01
    i@38@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@34@01)) j@39@01) (Seq_index
    xs@34@01
    i@38@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
        (not (= i@38@01 j@39@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
            (not (= i@38@01 j@39@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@34@01)) j@39@01) (Seq_index
    xs@34@01
    i@38@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
        (not (= i@38@01 j@39@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
            (not (= i@38@01 j@39@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
          (not (= i@38@01 j@39@01))))))
  :pattern ((Seq_index xs@34@01 i@38@01) (Seq_index xs@34@01 j@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01)
        (not (= i@38@01 j@39@01))))
    (not (= (Seq_index xs@34@01 i@38@01) (Seq_index xs@34@01 j@39@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01) (Seq_contains
    (Seq_range 0 (Seq_length xs@34@01))
    j@39@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@34@01)) i@38@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs@34@01))
    j@39@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@38@01) (Seq_index
    xs@34@01
    j@39@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@34@01)) i@38@01) (Seq_index
    xs@34@01
    j@39@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs@34@01)) j@39@01) (Seq_index
    xs@34@01
    i@38@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs@34@01)) j@39@01) (Seq_index
    xs@34@01
    i@38@01))
  :pattern ((Seq_index xs@34@01 i@38@01) (Seq_index xs@34@01 j@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|)))
(declare-const i@40@01 Int)
(push) ; 2
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@40@01))
; [eval] xs[i]
(push) ; 3
(assert (not (>= i@40@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@40@01 (Seq_length xs@34@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@41@01 ($Ref) Int)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((i@40@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@40@01)
    (or (= p@35@01 $Perm.No) (< $Perm.No p@35@01)))
  
  :qid |quant-u-11799|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@40@01 Int) (i2@40@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i1@40@01)
        (< $Perm.No p@35@01))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i2@40@01)
        (< $Perm.No p@35@01))
      (= (Seq_index xs@34@01 i1@40@01) (Seq_index xs@34@01 i2@40@01)))
    (= i1@40@01 i2@40@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@40@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@40@01)
      (< $Perm.No p@35@01))
    (and
      (= (inv@41@01 (Seq_index xs@34@01 i@40@01)) i@40@01)
      (img@42@01 (Seq_index xs@34@01 i@40@01))))
  :pattern ((Seq_index xs@34@01 i@40@01))
  :qid |quant-u-11800|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@42@01 r)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@41@01 r))
        (< $Perm.No p@35@01)))
    (= (Seq_index xs@34@01 (inv@41@01 r)) r))
  :pattern ((inv@41@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@40@01 Int)) (!
  (<= $Perm.No p@35@01)
  :pattern ((Seq_index xs@34@01 i@40@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@40@01 Int)) (!
  (<= p@35@01 $Perm.Write)
  :pattern ((Seq_index xs@34@01 i@40@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@40@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@40@01)
      (< $Perm.No p@35@01))
    (not (= (Seq_index xs@34@01 i@40@01) $Ref.null)))
  :pattern ((Seq_index xs@34@01 i@40@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 ($Snap.combine ($Snap.first $t@43@01) ($Snap.second $t@43@01))))
(declare-const i@44@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@44@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@44@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@44@01 (Seq_length xs@34@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@45@01 ($Ref) Int)
(declare-fun img@46@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((i@44@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@44@01)
    (or (= q@36@01 $Perm.No) (< $Perm.No q@36@01)))
  
  :qid |quant-u-11801|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@44@01 Int) (i2@44@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i1@44@01)
        (< $Perm.No q@36@01))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i2@44@01)
        (< $Perm.No q@36@01))
      (= (Seq_index xs@34@01 i1@44@01) (Seq_index xs@34@01 i2@44@01)))
    (= i1@44@01 i2@44@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@44@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@44@01)
      (< $Perm.No q@36@01))
    (and
      (= (inv@45@01 (Seq_index xs@34@01 i@44@01)) i@44@01)
      (img@46@01 (Seq_index xs@34@01 i@44@01))))
  :pattern ((Seq_index xs@34@01 i@44@01))
  :qid |quant-u-11802|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@46@01 r)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@45@01 r))
        (< $Perm.No q@36@01)))
    (= (Seq_index xs@34@01 (inv@45@01 r)) r))
  :pattern ((inv@45@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@44@01 Int)) (!
  (<= $Perm.No q@36@01)
  :pattern ((Seq_index xs@34@01 i@44@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@44@01 Int)) (!
  (<= q@36@01 $Perm.Write)
  :pattern ((Seq_index xs@34@01 i@44@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@44@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@44@01)
      (< $Perm.No q@36@01))
    (not (= (Seq_index xs@34@01 i@44@01) $Ref.null)))
  :pattern ((Seq_index xs@34@01 i@44@01))
  :qid |f-permImpliesNonNull|)))
(declare-const i@47@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@47@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@47@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@47@01 (Seq_length xs@34@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@48@01 ($Ref) Int)
(declare-fun img@49@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((i@47@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@47@01)
    (or (= q@36@01 $Perm.No) (< $Perm.No q@36@01)))
  
  :qid |quant-u-11803|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@47@01 Int) (i2@47@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i1@47@01)
        (< $Perm.No q@36@01))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i2@47@01)
        (< $Perm.No q@36@01))
      (= (Seq_index xs@34@01 i1@47@01) (Seq_index xs@34@01 i2@47@01)))
    (= i1@47@01 i2@47@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@47@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@47@01)
      (< $Perm.No q@36@01))
    (and
      (= (inv@48@01 (Seq_index xs@34@01 i@47@01)) i@47@01)
      (img@49@01 (Seq_index xs@34@01 i@47@01))))
  :pattern ((Seq_index xs@34@01 i@47@01))
  :qid |quant-u-11804|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@49@01 r)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@48@01 r))
        (< $Perm.No q@36@01)))
    (= (Seq_index xs@34@01 (inv@48@01 r)) r))
  :pattern ((inv@48@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@47@01 Int)) (!
  (<= $Perm.No q@36@01)
  :pattern ((Seq_index xs@34@01 i@47@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@47@01 Int)) (!
  (<= q@36@01 $Perm.Write)
  :pattern ((Seq_index xs@34@01 i@47@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@47@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@47@01)
      (< $Perm.No q@36@01))
    (not (= (Seq_index xs@34@01 i@47@01) $Ref.null)))
  :pattern ((Seq_index xs@34@01 i@47@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@34@01 i@47@01) (Seq_index xs@34@01 i@44@01))
    (=
      (and
        (img@49@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@48@01 r)))
      (and
        (img@46@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@45@01 r)))))
  
  :qid |quant-u-11805|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
(declare-const i@50@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@50@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@50@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@50@01 (Seq_length xs@34@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@51@01 ($Ref) Int)
(declare-fun img@52@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((i@50@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@50@01)
    (or (= q@36@01 $Perm.No) (< $Perm.No q@36@01)))
  
  :qid |quant-u-11806|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@50@01 Int) (i2@50@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i1@50@01)
        (< $Perm.No q@36@01))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i2@50@01)
        (< $Perm.No q@36@01))
      (= (Seq_index xs@34@01 i1@50@01) (Seq_index xs@34@01 i2@50@01)))
    (= i1@50@01 i2@50@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@50@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@50@01)
      (< $Perm.No q@36@01))
    (and
      (= (inv@51@01 (Seq_index xs@34@01 i@50@01)) i@50@01)
      (img@52@01 (Seq_index xs@34@01 i@50@01))))
  :pattern ((Seq_index xs@34@01 i@50@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@52@01 r)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@51@01 r))
        (< $Perm.No q@36@01)))
    (= (Seq_index xs@34@01 (inv@51@01 r)) r))
  :pattern ((inv@51@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@53@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@51@01 r))
      (img@52@01 r)
      (= r (Seq_index xs@34@01 (inv@51@01 r))))
    ($Perm.min
      (ite
        (and
          (img@42@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@41@01 r)))
        p@35@01
        $Perm.No)
      q@36@01)
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
          (img@42@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@41@01 r)))
        p@35@01
        $Perm.No)
      (pTaken@53@01 r))
    $Perm.No)
  
  :qid |quant-u-11808|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@53@01 r) $Perm.No)
  
  :qid |quant-u-11809|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@51@01 r))
      (img@52@01 r)
      (= r (Seq_index xs@34@01 (inv@51@01 r))))
    (= (- q@36@01 (pTaken@53@01 r)) $Perm.No))
  
  :qid |quant-u-11810|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@54@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@54@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@54@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@54@01 (Seq_length xs@34@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@55@01 ($Ref) Int)
(declare-fun img@56@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((i@54@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@54@01)
    (or (= q@36@01 $Perm.No) (< $Perm.No q@36@01)))
  
  :qid |quant-u-11811|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@54@01 Int) (i2@54@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i1@54@01)
        (< $Perm.No q@36@01))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i2@54@01)
        (< $Perm.No q@36@01))
      (= (Seq_index xs@34@01 i1@54@01) (Seq_index xs@34@01 i2@54@01)))
    (= i1@54@01 i2@54@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@54@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) i@54@01)
      (< $Perm.No q@36@01))
    (and
      (= (inv@55@01 (Seq_index xs@34@01 i@54@01)) i@54@01)
      (img@56@01 (Seq_index xs@34@01 i@54@01))))
  :pattern ((Seq_index xs@34@01 i@54@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@56@01 r)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@55@01 r))
        (< $Perm.No q@36@01)))
    (= (Seq_index xs@34@01 (inv@55@01 r)) r))
  :pattern ((inv@55@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@57@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@55@01 r))
      (img@56@01 r)
      (= r (Seq_index xs@34@01 (inv@55@01 r))))
    ($Perm.min
      (ite
        (and
          (img@42@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@41@01 r)))
        (- p@35@01 (pTaken@53@01 r))
        $Perm.No)
      q@36@01)
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
          (img@42@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@41@01 r)))
        (- p@35@01 (pTaken@53@01 r))
        $Perm.No)
      (pTaken@57@01 r))
    $Perm.No)
  
  :qid |quant-u-11813|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs@34@01)) (inv@55@01 r))
      (img@56@01 r)
      (= r (Seq_index xs@34@01 (inv@55@01 r))))
    (= (- q@36@01 (pTaken@57@01 r)) $Perm.No))
  
  :qid |quant-u-11814|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test01 ----------
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
; var xs1: Seq[Ref]
(declare-const xs1@58@01 Seq<$Ref>)
; [exec]
; var xs2: Seq[Ref]
(declare-const xs2@59@01 Seq<$Ref>)
; [exec]
; var xs3: Seq[Ref]
(declare-const xs3@60@01 Seq<$Ref>)
; [exec]
; init(xs1)
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 ($Snap.combine ($Snap.first $t@61@01) ($Snap.second $t@61@01))))
(assert (= ($Snap.first $t@61@01) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@62@01 Int)
(declare-const j@63@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 15 | !(i@62@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 15 | i@62@01 in [0..|xs1@58@01|] | live]
(push) ; 5
; [then-branch: 15 | !(i@62@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | i@62@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 16 | !(j@63@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 16 | j@63@01 in [0..|xs1@58@01|] | live]
(push) ; 7
; [then-branch: 16 | !(j@63@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 16 | j@63@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01))))
(push) ; 4
; [then-branch: 17 | i@62@01 in [0..|xs1@58@01|] && j@63@01 in [0..|xs1@58@01|] && i@62@01 != j@63@01 | live]
; [else-branch: 17 | !(i@62@01 in [0..|xs1@58@01|] && j@63@01 in [0..|xs1@58@01|] && i@62@01 != j@63@01) | live]
(push) ; 5
; [then-branch: 17 | i@62@01 in [0..|xs1@58@01|] && j@63@01 in [0..|xs1@58@01|] && i@62@01 != j@63@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
    (not (= i@62@01 j@63@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@62@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@62@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@63@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@63@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 17 | !(i@62@01 in [0..|xs1@58@01|] && j@63@01 in [0..|xs1@58@01|] && i@62@01 != j@63@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
      (not (= i@62@01 j@63@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
      (not (= i@62@01 j@63@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
    (not (= i@62@01 j@63@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
        (not (= i@62@01 j@63@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
      (not (= i@62@01 j@63@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@62@01 Int) (j@63@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
        (not (= i@62@01 j@63@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
            (not (= i@62@01 j@63@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@63@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@62@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@63@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@62@01 Int) (j@63@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
        (not (= i@62@01 j@63@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
            (not (= i@62@01 j@63@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@62@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@63@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@62@01 Int) (j@63@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
        (not (= i@62@01 j@63@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
            (not (= i@62@01 j@63@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01) (Seq_index
    xs1@58@01
    j@63@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@62@01) (Seq_index
    xs1@58@01
    j@63@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@62@01 Int) (j@63@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
        (not (= i@62@01 j@63@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
            (not (= i@62@01 j@63@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@62@01) (Seq_index
    xs1@58@01
    j@63@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@62@01 Int) (j@63@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
        (not (= i@62@01 j@63@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
            (not (= i@62@01 j@63@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01) (Seq_index
    xs1@58@01
    i@62@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@63@01) (Seq_index
    xs1@58@01
    i@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@62@01 Int) (j@63@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
        (not (= i@62@01 j@63@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
            (not (= i@62@01 j@63@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@63@01) (Seq_index
    xs1@58@01
    i@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@62@01 Int) (j@63@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
        (not (= i@62@01 j@63@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
            (not (= i@62@01 j@63@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
          (not (= i@62@01 j@63@01))))))
  :pattern ((Seq_index xs1@58@01 i@62@01) (Seq_index xs1@58@01 j@63@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@62@01 Int) (j@63@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01)
        (not (= i@62@01 j@63@01))))
    (not (= (Seq_index xs1@58@01 i@62@01) (Seq_index xs1@58@01 j@63@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@63@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@62@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@63@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@62@01) (Seq_index
    xs1@58@01
    j@63@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@62@01) (Seq_index
    xs1@58@01
    j@63@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@63@01) (Seq_index
    xs1@58@01
    i@62@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@63@01) (Seq_index
    xs1@58@01
    i@62@01))
  :pattern ((Seq_index xs1@58@01 i@62@01) (Seq_index xs1@58@01 j@63@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97|)))
(declare-const i@64@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@64@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@64@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@64@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@65@01 ($Ref) Int)
(declare-fun img@66@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@64@01 Int) (i2@64@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i1@64@01)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i2@64@01)
      (= (Seq_index xs1@58@01 i1@64@01) (Seq_index xs1@58@01 i2@64@01)))
    (= i1@64@01 i2@64@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@64@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@64@01)
    (and
      (= (inv@65@01 (Seq_index xs1@58@01 i@64@01)) i@64@01)
      (img@66@01 (Seq_index xs1@58@01 i@64@01))))
  :pattern ((Seq_index xs1@58@01 i@64@01))
  :qid |quant-u-11816|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@66@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@65@01 r)))
    (= (Seq_index xs1@58@01 (inv@65@01 r)) r))
  :pattern ((inv@65@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@64@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@64@01)
    (not (= (Seq_index xs1@58@01 i@64@01) $Ref.null)))
  :pattern ((Seq_index xs1@58@01 i@64@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; init(xs2)
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 ($Snap.combine ($Snap.first $t@67@01) ($Snap.second $t@67@01))))
(assert (= ($Snap.first $t@67@01) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@68@01 Int)
(declare-const j@69@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 18 | !(i@68@01 in [0..|xs2@59@01|]) | live]
; [else-branch: 18 | i@68@01 in [0..|xs2@59@01|] | live]
(push) ; 5
; [then-branch: 18 | !(i@68@01 in [0..|xs2@59@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | i@68@01 in [0..|xs2@59@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 19 | !(j@69@01 in [0..|xs2@59@01|]) | live]
; [else-branch: 19 | j@69@01 in [0..|xs2@59@01|] | live]
(push) ; 7
; [then-branch: 19 | !(j@69@01 in [0..|xs2@59@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 19 | j@69@01 in [0..|xs2@59@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01))))
(push) ; 4
; [then-branch: 20 | i@68@01 in [0..|xs2@59@01|] && j@69@01 in [0..|xs2@59@01|] && i@68@01 != j@69@01 | live]
; [else-branch: 20 | !(i@68@01 in [0..|xs2@59@01|] && j@69@01 in [0..|xs2@59@01|] && i@68@01 != j@69@01) | live]
(push) ; 5
; [then-branch: 20 | i@68@01 in [0..|xs2@59@01|] && j@69@01 in [0..|xs2@59@01|] && i@68@01 != j@69@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
    (not (= i@68@01 j@69@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@68@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@68@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@69@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@69@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 20 | !(i@68@01 in [0..|xs2@59@01|] && j@69@01 in [0..|xs2@59@01|] && i@68@01 != j@69@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
      (not (= i@68@01 j@69@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
      (not (= i@68@01 j@69@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
    (not (= i@68@01 j@69@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
        (not (= i@68@01 j@69@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
      (not (= i@68@01 j@69@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@68@01 Int) (j@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
        (not (= i@68@01 j@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
            (not (= i@68@01 j@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@69@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@68@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@68@01 Int) (j@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
        (not (= i@68@01 j@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
            (not (= i@68@01 j@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@68@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@68@01 Int) (j@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
        (not (= i@68@01 j@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
            (not (= i@68@01 j@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01) (Seq_index
    xs2@59@01
    j@69@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@68@01) (Seq_index
    xs2@59@01
    j@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@68@01 Int) (j@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
        (not (= i@68@01 j@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
            (not (= i@68@01 j@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@68@01) (Seq_index
    xs2@59@01
    j@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@68@01 Int) (j@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
        (not (= i@68@01 j@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
            (not (= i@68@01 j@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01) (Seq_index
    xs2@59@01
    i@68@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@69@01) (Seq_index
    xs2@59@01
    i@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@68@01 Int) (j@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
        (not (= i@68@01 j@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
            (not (= i@68@01 j@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@69@01) (Seq_index
    xs2@59@01
    i@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@68@01 Int) (j@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
        (not (= i@68@01 j@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
            (not (= i@68@01 j@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
          (not (= i@68@01 j@69@01))))))
  :pattern ((Seq_index xs2@59@01 i@68@01) (Seq_index xs2@59@01 j@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@68@01 Int) (j@69@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01)
        (not (= i@68@01 j@69@01))))
    (not (= (Seq_index xs2@59@01 i@68@01) (Seq_index xs2@59@01 j@69@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@69@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@68@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@69@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@68@01) (Seq_index
    xs2@59@01
    j@69@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@68@01) (Seq_index
    xs2@59@01
    j@69@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@69@01) (Seq_index
    xs2@59@01
    i@68@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@69@01) (Seq_index
    xs2@59@01
    i@68@01))
  :pattern ((Seq_index xs2@59@01 i@68@01) (Seq_index xs2@59@01 j@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97|)))
(declare-const i@70@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@70@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@70@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@70@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@71@01 ($Ref) Int)
(declare-fun img@72@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@70@01 Int) (i2@70@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i1@70@01)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i2@70@01)
      (= (Seq_index xs2@59@01 i1@70@01) (Seq_index xs2@59@01 i2@70@01)))
    (= i1@70@01 i2@70@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@70@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@70@01)
    (and
      (= (inv@71@01 (Seq_index xs2@59@01 i@70@01)) i@70@01)
      (img@72@01 (Seq_index xs2@59@01 i@70@01))))
  :pattern ((Seq_index xs2@59@01 i@70@01))
  :qid |quant-u-11818|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@72@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))
    (= (Seq_index xs2@59@01 (inv@71@01 r)) r))
  :pattern ((inv@71@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@70@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@70@01)
    (not (= (Seq_index xs2@59@01 i@70@01) $Ref.null)))
  :pattern ((Seq_index xs2@59@01 i@70@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs2@59@01 i@70@01) (Seq_index xs1@58@01 i@64@01))
    (=
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))
      (and
        (img@66@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@65@01 r)))))
  
  :qid |quant-u-11819|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; init(xs3)
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 ($Snap.combine ($Snap.first $t@73@01) ($Snap.second $t@73@01))))
(assert (= ($Snap.first $t@73@01) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@74@01 Int)
(declare-const j@75@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 21 | !(i@74@01 in [0..|xs3@60@01|]) | live]
; [else-branch: 21 | i@74@01 in [0..|xs3@60@01|] | live]
(push) ; 5
; [then-branch: 21 | !(i@74@01 in [0..|xs3@60@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | i@74@01 in [0..|xs3@60@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 22 | !(j@75@01 in [0..|xs3@60@01|]) | live]
; [else-branch: 22 | j@75@01 in [0..|xs3@60@01|] | live]
(push) ; 7
; [then-branch: 22 | !(j@75@01 in [0..|xs3@60@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 22 | j@75@01 in [0..|xs3@60@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01))))
(push) ; 4
; [then-branch: 23 | i@74@01 in [0..|xs3@60@01|] && j@75@01 in [0..|xs3@60@01|] && i@74@01 != j@75@01 | live]
; [else-branch: 23 | !(i@74@01 in [0..|xs3@60@01|] && j@75@01 in [0..|xs3@60@01|] && i@74@01 != j@75@01) | live]
(push) ; 5
; [then-branch: 23 | i@74@01 in [0..|xs3@60@01|] && j@75@01 in [0..|xs3@60@01|] && i@74@01 != j@75@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
    (not (= i@74@01 j@75@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@74@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@74@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@75@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@75@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 23 | !(i@74@01 in [0..|xs3@60@01|] && j@75@01 in [0..|xs3@60@01|] && i@74@01 != j@75@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
      (not (= i@74@01 j@75@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
      (not (= i@74@01 j@75@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
    (not (= i@74@01 j@75@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
        (not (= i@74@01 j@75@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
      (not (= i@74@01 j@75@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@74@01 Int) (j@75@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
        (not (= i@74@01 j@75@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
            (not (= i@74@01 j@75@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@75@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@74@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@74@01 Int) (j@75@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
        (not (= i@74@01 j@75@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
            (not (= i@74@01 j@75@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@74@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@74@01 Int) (j@75@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
        (not (= i@74@01 j@75@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
            (not (= i@74@01 j@75@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01) (Seq_index
    xs3@60@01
    j@75@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@74@01) (Seq_index
    xs3@60@01
    j@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@74@01 Int) (j@75@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
        (not (= i@74@01 j@75@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
            (not (= i@74@01 j@75@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@74@01) (Seq_index
    xs3@60@01
    j@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@74@01 Int) (j@75@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
        (not (= i@74@01 j@75@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
            (not (= i@74@01 j@75@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01) (Seq_index
    xs3@60@01
    i@74@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@75@01) (Seq_index
    xs3@60@01
    i@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@74@01 Int) (j@75@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
        (not (= i@74@01 j@75@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
            (not (= i@74@01 j@75@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@75@01) (Seq_index
    xs3@60@01
    i@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@74@01 Int) (j@75@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
        (not (= i@74@01 j@75@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
            (not (= i@74@01 j@75@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
          (not (= i@74@01 j@75@01))))))
  :pattern ((Seq_index xs3@60@01 i@74@01) (Seq_index xs3@60@01 j@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97-aux|)))
(assert (forall ((i@74@01 Int) (j@75@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01)
        (not (= i@74@01 j@75@01))))
    (not (= (Seq_index xs3@60@01 i@74@01) (Seq_index xs3@60@01 j@75@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@75@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@74@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@75@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@74@01) (Seq_index
    xs3@60@01
    j@75@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@74@01) (Seq_index
    xs3@60@01
    j@75@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@75@01) (Seq_index
    xs3@60@01
    i@74@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@75@01) (Seq_index
    xs3@60@01
    i@74@01))
  :pattern ((Seq_index xs3@60@01 i@74@01) (Seq_index xs3@60@01 j@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@7@11@7@97|)))
(declare-const i@76@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@76@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@76@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@76@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@77@01 ($Ref) Int)
(declare-fun img@78@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@76@01 Int) (i2@76@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i1@76@01)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i2@76@01)
      (= (Seq_index xs3@60@01 i1@76@01) (Seq_index xs3@60@01 i2@76@01)))
    (= i1@76@01 i2@76@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@76@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@76@01)
    (and
      (= (inv@77@01 (Seq_index xs3@60@01 i@76@01)) i@76@01)
      (img@78@01 (Seq_index xs3@60@01 i@76@01))))
  :pattern ((Seq_index xs3@60@01 i@76@01))
  :qid |quant-u-11821|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@78@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))
    (= (Seq_index xs3@60@01 (inv@77@01 r)) r))
  :pattern ((inv@77@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@76@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@76@01)
    (not (= (Seq_index xs3@60@01 i@76@01) $Ref.null)))
  :pattern ((Seq_index xs3@60@01 i@76@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs3@60@01 i@76@01) (Seq_index xs2@59@01 i@70@01))
    (=
      (and
        (img@78@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))))
  
  :qid |quant-u-11822|))))
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
    (= (Seq_index xs3@60@01 i@76@01) (Seq_index xs1@58@01 i@64@01))
    (=
      (and
        (img@78@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))
      (and
        (img@66@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@65@01 r)))))
  
  :qid |quant-u-11823|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; split(xs1, write, 1 / 2)
; [eval] p == 2 * q
; [eval] 2 * q
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@79@01 Int)
(declare-const j@80@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 24 | !(i@79@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 24 | i@79@01 in [0..|xs1@58@01|] | live]
(push) ; 5
; [then-branch: 24 | !(i@79@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | i@79@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 25 | !(j@80@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 25 | j@80@01 in [0..|xs1@58@01|] | live]
(push) ; 7
; [then-branch: 25 | !(j@80@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 25 | j@80@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01))))
(push) ; 4
; [then-branch: 26 | i@79@01 in [0..|xs1@58@01|] && j@80@01 in [0..|xs1@58@01|] && i@79@01 != j@80@01 | live]
; [else-branch: 26 | !(i@79@01 in [0..|xs1@58@01|] && j@80@01 in [0..|xs1@58@01|] && i@79@01 != j@80@01) | live]
(push) ; 5
; [then-branch: 26 | i@79@01 in [0..|xs1@58@01|] && j@80@01 in [0..|xs1@58@01|] && i@79@01 != j@80@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
    (not (= i@79@01 j@80@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@79@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@79@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@80@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@80@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 26 | !(i@79@01 in [0..|xs1@58@01|] && j@80@01 in [0..|xs1@58@01|] && i@79@01 != j@80@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
      (not (= i@79@01 j@80@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
      (not (= i@79@01 j@80@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
    (not (= i@79@01 j@80@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
        (not (= i@79@01 j@80@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
      (not (= i@79@01 j@80@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@79@01 Int) (j@80@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
        (not (= i@79@01 j@80@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
            (not (= i@79@01 j@80@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@79@01 Int) (j@80@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
        (not (= i@79@01 j@80@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
            (not (= i@79@01 j@80@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@79@01 Int) (j@80@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
        (not (= i@79@01 j@80@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
            (not (= i@79@01 j@80@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_index
    xs1@58@01
    j@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_index
    xs1@58@01
    j@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@79@01 Int) (j@80@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
        (not (= i@79@01 j@80@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
            (not (= i@79@01 j@80@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_index
    xs1@58@01
    j@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@79@01 Int) (j@80@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
        (not (= i@79@01 j@80@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
            (not (= i@79@01 j@80@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01) (Seq_index
    xs1@58@01
    i@79@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@80@01) (Seq_index
    xs1@58@01
    i@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@79@01 Int) (j@80@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
        (not (= i@79@01 j@80@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
            (not (= i@79@01 j@80@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@80@01) (Seq_index
    xs1@58@01
    i@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@79@01 Int) (j@80@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
        (not (= i@79@01 j@80@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
            (not (= i@79@01 j@80@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
          (not (= i@79@01 j@80@01))))))
  :pattern ((Seq_index xs1@58@01 i@79@01) (Seq_index xs1@58@01 j@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(push) ; 3
(assert (not (forall ((i@79@01 Int) (j@80@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
        (not (= i@79@01 j@80@01))))
    (not (= (Seq_index xs1@58@01 i@79@01) (Seq_index xs1@58@01 j@80@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@80@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_index
    xs1@58@01
    j@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_index
    xs1@58@01
    j@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_index
    xs1@58@01
    j@80@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01) (Seq_index
    xs1@58@01
    i@79@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@80@01) (Seq_index
    xs1@58@01
    i@79@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@80@01) (Seq_index
    xs1@58@01
    i@79@01))
  :pattern ((Seq_index xs1@58@01 i@79@01) (Seq_index xs1@58@01 j@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@79@01 Int) (j@80@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01)
        (not (= i@79@01 j@80@01))))
    (not (= (Seq_index xs1@58@01 i@79@01) (Seq_index xs1@58@01 j@80@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@80@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_index
    xs1@58@01
    j@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@79@01) (Seq_index
    xs1@58@01
    j@80@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@80@01) (Seq_index
    xs1@58@01
    i@79@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@80@01) (Seq_index
    xs1@58@01
    i@79@01))
  :pattern ((Seq_index xs1@58@01 i@79@01) (Seq_index xs1@58@01 j@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|)))
(declare-const i@81@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@81@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@81@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@81@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@82@01 ($Ref) Int)
(declare-fun img@83@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@81@01 Int) (i2@81@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i1@81@01)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i2@81@01)
      (= (Seq_index xs1@58@01 i1@81@01) (Seq_index xs1@58@01 i2@81@01)))
    (= i1@81@01 i2@81@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@81@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@81@01)
    (and
      (= (inv@82@01 (Seq_index xs1@58@01 i@81@01)) i@81@01)
      (img@83@01 (Seq_index xs1@58@01 i@81@01))))
  :pattern ((Seq_index xs1@58@01 i@81@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@83@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@82@01 r)))
    (= (Seq_index xs1@58@01 (inv@82@01 r)) r))
  :pattern ((inv@82@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@81@01 Int)) (!
  (= (Seq_index xs1@58@01 i@81@01) (Seq_index xs2@59@01 i@81@01))
  
  :qid |quant-u-11825|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@81@01 Int)) (!
  (= (Seq_index xs1@58@01 i@81@01) (Seq_index xs3@60@01 i@81@01))
  
  :qid |quant-u-11826|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@84@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@82@01 r))
      (img@83@01 r)
      (= r (Seq_index xs1@58@01 (inv@82@01 r))))
    ($Perm.min
      (ite
        (and
          (img@66@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@65@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@85@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@82@01 r))
      (img@83@01 r)
      (= r (Seq_index xs1@58@01 (inv@82@01 r))))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@84@01 r)))
    $Perm.No))
(define-fun pTaken@86@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@82@01 r))
      (img@83@01 r)
      (= r (Seq_index xs1@58@01 (inv@82@01 r))))
    ($Perm.min
      (ite
        (and
          (img@78@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@84@01 r)) (pTaken@85@01 r)))
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
          (img@66@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@65@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@84@01 r))
    $Perm.No)
  
  :qid |quant-u-11828|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@82@01 r))
      (img@83@01 r)
      (= r (Seq_index xs1@58@01 (inv@82@01 r))))
    (= (- $Perm.Write (pTaken@84@01 r)) $Perm.No))
  
  :qid |quant-u-11829|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 ($Snap.combine ($Snap.first $t@87@01) ($Snap.second $t@87@01))))
(declare-const i@88@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@88@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@88@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@88@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@89@01 ($Ref) Int)
(declare-fun img@90@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@88@01 Int) (i2@88@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i1@88@01)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i2@88@01)
      (= (Seq_index xs1@58@01 i1@88@01) (Seq_index xs1@58@01 i2@88@01)))
    (= i1@88@01 i2@88@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@88@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@88@01)
    (and
      (= (inv@89@01 (Seq_index xs1@58@01 i@88@01)) i@88@01)
      (img@90@01 (Seq_index xs1@58@01 i@88@01))))
  :pattern ((Seq_index xs1@58@01 i@88@01))
  :qid |quant-u-11831|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@90@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))
    (= (Seq_index xs1@58@01 (inv@89@01 r)) r))
  :pattern ((inv@89@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@88@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@88@01)
    (not (= (Seq_index xs1@58@01 i@88@01) $Ref.null)))
  :pattern ((Seq_index xs1@58@01 i@88@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs1@58@01 i@88@01) (Seq_index xs2@59@01 i@70@01))
    (=
      (and
        (img@90@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))))
  
  :qid |quant-u-11832|))))
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
    (= (Seq_index xs1@58@01 i@88@01) (Seq_index xs3@60@01 i@76@01))
    (=
      (and
        (img@90@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))
      (and
        (img@78@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))))
  
  :qid |quant-u-11833|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const i@91@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@91@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@91@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@91@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@92@01 ($Ref) Int)
(declare-fun img@93@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@91@01 Int) (i2@91@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i1@91@01)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i2@91@01)
      (= (Seq_index xs1@58@01 i1@91@01) (Seq_index xs1@58@01 i2@91@01)))
    (= i1@91@01 i2@91@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@91@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@91@01)
    (and
      (= (inv@92@01 (Seq_index xs1@58@01 i@91@01)) i@91@01)
      (img@93@01 (Seq_index xs1@58@01 i@91@01))))
  :pattern ((Seq_index xs1@58@01 i@91@01))
  :qid |quant-u-11835|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@93@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
    (= (Seq_index xs1@58@01 (inv@92@01 r)) r))
  :pattern ((inv@92@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@91@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@91@01)
    (not (= (Seq_index xs1@58@01 i@91@01) $Ref.null)))
  :pattern ((Seq_index xs1@58@01 i@91@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs1@58@01 i@91@01) (Seq_index xs1@58@01 i@88@01))
    (=
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
      (and
        (img@90@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))))
  
  :qid |quant-u-11836|))))
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
    (= (Seq_index xs1@58@01 i@91@01) (Seq_index xs2@59@01 i@70@01))
    (=
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))))
  
  :qid |quant-u-11837|))))
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
    (= (Seq_index xs1@58@01 i@91@01) (Seq_index xs3@60@01 i@76@01))
    (=
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
      (and
        (img@78@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))))
  
  :qid |quant-u-11838|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; split(xs2, 1 / 2, 1 / 4)
; [eval] p == 2 * q
; [eval] 2 * q
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@94@01 Int)
(declare-const j@95@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 27 | !(i@94@01 in [0..|xs2@59@01|]) | live]
; [else-branch: 27 | i@94@01 in [0..|xs2@59@01|] | live]
(push) ; 5
; [then-branch: 27 | !(i@94@01 in [0..|xs2@59@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 27 | i@94@01 in [0..|xs2@59@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 28 | !(j@95@01 in [0..|xs2@59@01|]) | live]
; [else-branch: 28 | j@95@01 in [0..|xs2@59@01|] | live]
(push) ; 7
; [then-branch: 28 | !(j@95@01 in [0..|xs2@59@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 28 | j@95@01 in [0..|xs2@59@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01))))
(push) ; 4
; [then-branch: 29 | i@94@01 in [0..|xs2@59@01|] && j@95@01 in [0..|xs2@59@01|] && i@94@01 != j@95@01 | live]
; [else-branch: 29 | !(i@94@01 in [0..|xs2@59@01|] && j@95@01 in [0..|xs2@59@01|] && i@94@01 != j@95@01) | live]
(push) ; 5
; [then-branch: 29 | i@94@01 in [0..|xs2@59@01|] && j@95@01 in [0..|xs2@59@01|] && i@94@01 != j@95@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
    (not (= i@94@01 j@95@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@94@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@94@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@95@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@95@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 29 | !(i@94@01 in [0..|xs2@59@01|] && j@95@01 in [0..|xs2@59@01|] && i@94@01 != j@95@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
      (not (= i@94@01 j@95@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
      (not (= i@94@01 j@95@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
    (not (= i@94@01 j@95@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
        (not (= i@94@01 j@95@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
      (not (= i@94@01 j@95@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
        (not (= i@94@01 j@95@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
            (not (= i@94@01 j@95@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@95@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
        (not (= i@94@01 j@95@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
            (not (= i@94@01 j@95@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
        (not (= i@94@01 j@95@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
            (not (= i@94@01 j@95@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_index
    xs2@59@01
    j@95@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_index
    xs2@59@01
    j@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
        (not (= i@94@01 j@95@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
            (not (= i@94@01 j@95@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_index
    xs2@59@01
    j@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
        (not (= i@94@01 j@95@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
            (not (= i@94@01 j@95@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01) (Seq_index
    xs2@59@01
    i@94@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@95@01) (Seq_index
    xs2@59@01
    i@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
        (not (= i@94@01 j@95@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
            (not (= i@94@01 j@95@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@95@01) (Seq_index
    xs2@59@01
    i@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
        (not (= i@94@01 j@95@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
            (not (= i@94@01 j@95@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
          (not (= i@94@01 j@95@01))))))
  :pattern ((Seq_index xs2@59@01 i@94@01) (Seq_index xs2@59@01 j@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(push) ; 3
(assert (not (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
        (not (= i@94@01 j@95@01))))
    (not (= (Seq_index xs2@59@01 i@94@01) (Seq_index xs2@59@01 j@95@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@95@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@95@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@95@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_index
    xs2@59@01
    j@95@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_index
    xs2@59@01
    j@95@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_index
    xs2@59@01
    j@95@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01) (Seq_index
    xs2@59@01
    i@94@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@95@01) (Seq_index
    xs2@59@01
    i@94@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@95@01) (Seq_index
    xs2@59@01
    i@94@01))
  :pattern ((Seq_index xs2@59@01 i@94@01) (Seq_index xs2@59@01 j@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01)
        (not (= i@94@01 j@95@01))))
    (not (= (Seq_index xs2@59@01 i@94@01) (Seq_index xs2@59@01 j@95@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@95@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@95@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_index
    xs2@59@01
    j@95@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@94@01) (Seq_index
    xs2@59@01
    j@95@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@95@01) (Seq_index
    xs2@59@01
    i@94@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@95@01) (Seq_index
    xs2@59@01
    i@94@01))
  :pattern ((Seq_index xs2@59@01 i@94@01) (Seq_index xs2@59@01 j@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|)))
(declare-const i@96@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@96@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@96@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@97@01 ($Ref) Int)
(declare-fun img@98@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@96@01 Int) (i2@96@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i1@96@01)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i2@96@01)
      (= (Seq_index xs2@59@01 i1@96@01) (Seq_index xs2@59@01 i2@96@01)))
    (= i1@96@01 i2@96@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@96@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@96@01)
    (and
      (= (inv@97@01 (Seq_index xs2@59@01 i@96@01)) i@96@01)
      (img@98@01 (Seq_index xs2@59@01 i@96@01))))
  :pattern ((Seq_index xs2@59@01 i@96@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@98@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@97@01 r)))
    (= (Seq_index xs2@59@01 (inv@97@01 r)) r))
  :pattern ((inv@97@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@96@01 Int)) (!
  (= (Seq_index xs2@59@01 i@96@01) (Seq_index xs3@60@01 i@96@01))
  
  :qid |quant-u-11840|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@96@01 Int)) (!
  (= (Seq_index xs2@59@01 i@96@01) (Seq_index xs1@58@01 i@96@01))
  
  :qid |quant-u-11841|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@96@01 Int)) (!
  (= (Seq_index xs2@59@01 i@96@01) (Seq_index xs1@58@01 i@96@01))
  
  :qid |quant-u-11842|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@99@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@97@01 r))
      (img@98@01 r)
      (= r (Seq_index xs2@59@01 (inv@97@01 r))))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@100@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@97@01 r))
      (img@98@01 r)
      (= r (Seq_index xs2@59@01 (inv@97@01 r))))
    ($Perm.min
      (ite
        (and
          (img@78@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@99@01 r)))
    $Perm.No))
(define-fun pTaken@101@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@97@01 r))
      (img@98@01 r)
      (= r (Seq_index xs2@59@01 (inv@97@01 r))))
    ($Perm.min
      (ite
        (and
          (img@90@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@99@01 r)) (pTaken@100@01 r)))
    $Perm.No))
(define-fun pTaken@102@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@97@01 r))
      (img@98@01 r)
      (= r (Seq_index xs2@59@01 (inv@97@01 r))))
    ($Perm.min
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@99@01 r)) (pTaken@100@01 r))
        (pTaken@101@01 r)))
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
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@99@01 r))
    $Perm.No)
  
  :qid |quant-u-11844|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@99@01 r) $Perm.No)
  
  :qid |quant-u-11845|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@97@01 r))
      (img@98@01 r)
      (= r (Seq_index xs2@59@01 (inv@97@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@99@01 r)) $Perm.No))
  
  :qid |quant-u-11846|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 ($Snap.combine ($Snap.first $t@103@01) ($Snap.second $t@103@01))))
(declare-const i@104@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@104@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@104@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@104@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@105@01 ($Ref) Int)
(declare-fun img@106@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@104@01 Int) (i2@104@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i1@104@01)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i2@104@01)
      (= (Seq_index xs2@59@01 i1@104@01) (Seq_index xs2@59@01 i2@104@01)))
    (= i1@104@01 i2@104@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@104@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@104@01)
    (and
      (= (inv@105@01 (Seq_index xs2@59@01 i@104@01)) i@104@01)
      (img@106@01 (Seq_index xs2@59@01 i@104@01))))
  :pattern ((Seq_index xs2@59@01 i@104@01))
  :qid |quant-u-11848|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@106@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
    (= (Seq_index xs2@59@01 (inv@105@01 r)) r))
  :pattern ((inv@105@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@104@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@104@01)
    (not (= (Seq_index xs2@59@01 i@104@01) $Ref.null)))
  :pattern ((Seq_index xs2@59@01 i@104@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs2@59@01 i@104@01) (Seq_index xs2@59@01 i@70@01))
    (=
      (and
        (img@106@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))))
  
  :qid |quant-u-11849|))))
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
    (= (Seq_index xs2@59@01 i@104@01) (Seq_index xs3@60@01 i@76@01))
    (=
      (and
        (img@106@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
      (and
        (img@78@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))))
  
  :qid |quant-u-11850|))))
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
    (= (Seq_index xs2@59@01 i@104@01) (Seq_index xs1@58@01 i@88@01))
    (=
      (and
        (img@106@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
      (and
        (img@90@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))))
  
  :qid |quant-u-11851|))))
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
    (= (Seq_index xs2@59@01 i@104@01) (Seq_index xs1@58@01 i@91@01))
    (=
      (and
        (img@106@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))))
  
  :qid |quant-u-11852|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const i@107@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@107@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@107@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@107@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@108@01 ($Ref) Int)
(declare-fun img@109@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@107@01 Int) (i2@107@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i1@107@01)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i2@107@01)
      (= (Seq_index xs2@59@01 i1@107@01) (Seq_index xs2@59@01 i2@107@01)))
    (= i1@107@01 i2@107@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@107@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@107@01)
    (and
      (= (inv@108@01 (Seq_index xs2@59@01 i@107@01)) i@107@01)
      (img@109@01 (Seq_index xs2@59@01 i@107@01))))
  :pattern ((Seq_index xs2@59@01 i@107@01))
  :qid |quant-u-11854|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@109@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
    (= (Seq_index xs2@59@01 (inv@108@01 r)) r))
  :pattern ((inv@108@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@107@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@107@01)
    (not (= (Seq_index xs2@59@01 i@107@01) $Ref.null)))
  :pattern ((Seq_index xs2@59@01 i@107@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs2@59@01 i@107@01) (Seq_index xs2@59@01 i@104@01))
    (=
      (and
        (img@109@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
      (and
        (img@106@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))))
  
  :qid |quant-u-11855|))))
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
    (= (Seq_index xs2@59@01 i@107@01) (Seq_index xs2@59@01 i@70@01))
    (=
      (and
        (img@109@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))))
  
  :qid |quant-u-11856|))))
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
    (= (Seq_index xs2@59@01 i@107@01) (Seq_index xs3@60@01 i@76@01))
    (=
      (and
        (img@109@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
      (and
        (img@78@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))))
  
  :qid |quant-u-11857|))))
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
    (= (Seq_index xs2@59@01 i@107@01) (Seq_index xs1@58@01 i@88@01))
    (=
      (and
        (img@109@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
      (and
        (img@90@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))))
  
  :qid |quant-u-11858|))))
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
    (= (Seq_index xs2@59@01 i@107@01) (Seq_index xs1@58@01 i@91@01))
    (=
      (and
        (img@109@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))))
  
  :qid |quant-u-11859|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; split(xs3, write, 1 / 2)
; [eval] p == 2 * q
; [eval] 2 * q
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@110@01 Int)
(declare-const j@111@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 30 | !(i@110@01 in [0..|xs3@60@01|]) | live]
; [else-branch: 30 | i@110@01 in [0..|xs3@60@01|] | live]
(push) ; 5
; [then-branch: 30 | !(i@110@01 in [0..|xs3@60@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 30 | i@110@01 in [0..|xs3@60@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 31 | !(j@111@01 in [0..|xs3@60@01|]) | live]
; [else-branch: 31 | j@111@01 in [0..|xs3@60@01|] | live]
(push) ; 7
; [then-branch: 31 | !(j@111@01 in [0..|xs3@60@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 31 | j@111@01 in [0..|xs3@60@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01))))
(push) ; 4
; [then-branch: 32 | i@110@01 in [0..|xs3@60@01|] && j@111@01 in [0..|xs3@60@01|] && i@110@01 != j@111@01 | live]
; [else-branch: 32 | !(i@110@01 in [0..|xs3@60@01|] && j@111@01 in [0..|xs3@60@01|] && i@110@01 != j@111@01) | live]
(push) ; 5
; [then-branch: 32 | i@110@01 in [0..|xs3@60@01|] && j@111@01 in [0..|xs3@60@01|] && i@110@01 != j@111@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
    (not (= i@110@01 j@111@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@110@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@110@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@111@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@111@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 32 | !(i@110@01 in [0..|xs3@60@01|] && j@111@01 in [0..|xs3@60@01|] && i@110@01 != j@111@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
      (not (= i@110@01 j@111@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
      (not (= i@110@01 j@111@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
    (not (= i@110@01 j@111@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
        (not (= i@110@01 j@111@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
      (not (= i@110@01 j@111@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_index
    xs3@60@01
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_index
    xs3@60@01
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_index
    xs3@60@01
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01) (Seq_index
    xs3@60@01
    i@110@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@111@01) (Seq_index
    xs3@60@01
    i@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@111@01) (Seq_index
    xs3@60@01
    i@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
            (not (= i@110@01 j@111@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
          (not (= i@110@01 j@111@01))))))
  :pattern ((Seq_index xs3@60@01 i@110@01) (Seq_index xs3@60@01 j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(push) ; 3
(assert (not (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
        (not (= i@110@01 j@111@01))))
    (not (= (Seq_index xs3@60@01 i@110@01) (Seq_index xs3@60@01 j@111@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@111@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_index
    xs3@60@01
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_index
    xs3@60@01
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_index
    xs3@60@01
    j@111@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01) (Seq_index
    xs3@60@01
    i@110@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@111@01) (Seq_index
    xs3@60@01
    i@110@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@111@01) (Seq_index
    xs3@60@01
    i@110@01))
  :pattern ((Seq_index xs3@60@01 i@110@01) (Seq_index xs3@60@01 j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01)
        (not (= i@110@01 j@111@01))))
    (not (= (Seq_index xs3@60@01 i@110@01) (Seq_index xs3@60@01 j@111@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@111@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_index
    xs3@60@01
    j@111@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@110@01) (Seq_index
    xs3@60@01
    j@111@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@111@01) (Seq_index
    xs3@60@01
    i@110@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@111@01) (Seq_index
    xs3@60@01
    i@110@01))
  :pattern ((Seq_index xs3@60@01 i@110@01) (Seq_index xs3@60@01 j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|)))
(declare-const i@112@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@112@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@112@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@112@01 (Seq_length xs3@60@01))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i1@112@01)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i2@112@01)
      (= (Seq_index xs3@60@01 i1@112@01) (Seq_index xs3@60@01 i2@112@01)))
    (= i1@112@01 i2@112@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@112@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@112@01)
    (and
      (= (inv@113@01 (Seq_index xs3@60@01 i@112@01)) i@112@01)
      (img@114@01 (Seq_index xs3@60@01 i@112@01))))
  :pattern ((Seq_index xs3@60@01 i@112@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@114@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@113@01 r)))
    (= (Seq_index xs3@60@01 (inv@113@01 r)) r))
  :pattern ((inv@113@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@112@01 Int)) (!
  (= (Seq_index xs3@60@01 i@112@01) (Seq_index xs1@58@01 i@112@01))
  
  :qid |quant-u-11861|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@112@01 Int)) (!
  (= (Seq_index xs3@60@01 i@112@01) (Seq_index xs1@58@01 i@112@01))
  
  :qid |quant-u-11862|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@112@01 Int)) (!
  (= (Seq_index xs3@60@01 i@112@01) (Seq_index xs2@59@01 i@112@01))
  
  :qid |quant-u-11863|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@112@01 Int)) (!
  (= (Seq_index xs3@60@01 i@112@01) (Seq_index xs2@59@01 i@112@01))
  
  :qid |quant-u-11864|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@112@01 Int)) (!
  (= (Seq_index xs3@60@01 i@112@01) (Seq_index xs2@59@01 i@112@01))
  
  :qid |quant-u-11865|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@115@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index xs3@60@01 (inv@113@01 r))))
    ($Perm.min
      (ite
        (and
          (img@78@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@116@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index xs3@60@01 (inv@113@01 r))))
    ($Perm.min
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@115@01 r)))
    $Perm.No))
(define-fun pTaken@117@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index xs3@60@01 (inv@113@01 r))))
    ($Perm.min
      (ite
        (and
          (img@90@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- $Perm.Write (pTaken@115@01 r)) (pTaken@116@01 r)))
    $Perm.No))
(define-fun pTaken@118@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index xs3@60@01 (inv@113@01 r))))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))
        (- $Perm.Write (pTaken@99@01 r))
        $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@115@01 r)) (pTaken@116@01 r))
        (pTaken@117@01 r)))
    $Perm.No))
(define-fun pTaken@119@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index xs3@60@01 (inv@113@01 r))))
    ($Perm.min
      (ite
        (and
          (img@106@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (-
          (- (- $Perm.Write (pTaken@115@01 r)) (pTaken@116@01 r))
          (pTaken@117@01 r))
        (pTaken@118@01 r)))
    $Perm.No))
(define-fun pTaken@120@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index xs3@60@01 (inv@113@01 r))))
    ($Perm.min
      (ite
        (and
          (img@109@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (-
          (-
            (- (- $Perm.Write (pTaken@115@01 r)) (pTaken@116@01 r))
            (pTaken@117@01 r))
          (pTaken@118@01 r))
        (pTaken@119@01 r)))
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
          (img@78@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@115@01 r))
    $Perm.No)
  
  :qid |quant-u-11867|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@113@01 r))
      (img@114@01 r)
      (= r (Seq_index xs3@60@01 (inv@113@01 r))))
    (= (- $Perm.Write (pTaken@115@01 r)) $Perm.No))
  
  :qid |quant-u-11868|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 ($Snap.combine ($Snap.first $t@121@01) ($Snap.second $t@121@01))))
(declare-const i@122@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@122@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@122@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@122@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@123@01 ($Ref) Int)
(declare-fun img@124@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@122@01 Int) (i2@122@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i1@122@01)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i2@122@01)
      (= (Seq_index xs3@60@01 i1@122@01) (Seq_index xs3@60@01 i2@122@01)))
    (= i1@122@01 i2@122@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@122@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@122@01)
    (and
      (= (inv@123@01 (Seq_index xs3@60@01 i@122@01)) i@122@01)
      (img@124@01 (Seq_index xs3@60@01 i@122@01))))
  :pattern ((Seq_index xs3@60@01 i@122@01))
  :qid |quant-u-11870|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@124@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
    (= (Seq_index xs3@60@01 (inv@123@01 r)) r))
  :pattern ((inv@123@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@122@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@122@01)
    (not (= (Seq_index xs3@60@01 i@122@01) $Ref.null)))
  :pattern ((Seq_index xs3@60@01 i@122@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs3@60@01 i@122@01) (Seq_index xs1@58@01 i@91@01))
    (=
      (and
        (img@124@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))))
  
  :qid |quant-u-11871|))))
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
    (= (Seq_index xs3@60@01 i@122@01) (Seq_index xs1@58@01 i@88@01))
    (=
      (and
        (img@124@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
      (and
        (img@90@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))))
  
  :qid |quant-u-11872|))))
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
    (= (Seq_index xs3@60@01 i@122@01) (Seq_index xs2@59@01 i@70@01))
    (=
      (and
        (img@124@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))))
  
  :qid |quant-u-11873|))))
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
    (= (Seq_index xs3@60@01 i@122@01) (Seq_index xs2@59@01 i@104@01))
    (=
      (and
        (img@124@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
      (and
        (img@106@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))))
  
  :qid |quant-u-11874|))))
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
    (= (Seq_index xs3@60@01 i@122@01) (Seq_index xs2@59@01 i@107@01))
    (=
      (and
        (img@124@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
      (and
        (img@109@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))))
  
  :qid |quant-u-11875|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const i@125@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@125@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@125@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@125@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@126@01 ($Ref) Int)
(declare-fun img@127@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@125@01 Int) (i2@125@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i1@125@01)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i2@125@01)
      (= (Seq_index xs3@60@01 i1@125@01) (Seq_index xs3@60@01 i2@125@01)))
    (= i1@125@01 i2@125@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@125@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@125@01)
    (and
      (= (inv@126@01 (Seq_index xs3@60@01 i@125@01)) i@125@01)
      (img@127@01 (Seq_index xs3@60@01 i@125@01))))
  :pattern ((Seq_index xs3@60@01 i@125@01))
  :qid |quant-u-11877|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@127@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
    (= (Seq_index xs3@60@01 (inv@126@01 r)) r))
  :pattern ((inv@126@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@125@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@125@01)
    (not (= (Seq_index xs3@60@01 i@125@01) $Ref.null)))
  :pattern ((Seq_index xs3@60@01 i@125@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs3@60@01 i@125@01) (Seq_index xs3@60@01 i@122@01))
    (=
      (and
        (img@127@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
      (and
        (img@124@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))))
  
  :qid |quant-u-11878|))))
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
    (= (Seq_index xs3@60@01 i@125@01) (Seq_index xs1@58@01 i@91@01))
    (=
      (and
        (img@127@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))))
  
  :qid |quant-u-11879|))))
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
    (= (Seq_index xs3@60@01 i@125@01) (Seq_index xs1@58@01 i@88@01))
    (=
      (and
        (img@127@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
      (and
        (img@90@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))))
  
  :qid |quant-u-11880|))))
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
    (= (Seq_index xs3@60@01 i@125@01) (Seq_index xs2@59@01 i@70@01))
    (=
      (and
        (img@127@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))))
  
  :qid |quant-u-11881|))))
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
    (= (Seq_index xs3@60@01 i@125@01) (Seq_index xs2@59@01 i@104@01))
    (=
      (and
        (img@127@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
      (and
        (img@106@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))))
  
  :qid |quant-u-11882|))))
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
    (= (Seq_index xs3@60@01 i@125@01) (Seq_index xs2@59@01 i@107@01))
    (=
      (and
        (img@127@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
      (and
        (img@109@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))))
  
  :qid |quant-u-11883|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; leak(xs1, 1 / 2)
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@128@01 Int)
(declare-const j@129@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 33 | !(i@128@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 33 | i@128@01 in [0..|xs1@58@01|] | live]
(push) ; 5
; [then-branch: 33 | !(i@128@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 33 | i@128@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 34 | !(j@129@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 34 | j@129@01 in [0..|xs1@58@01|] | live]
(push) ; 7
; [then-branch: 34 | !(j@129@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 34 | j@129@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01))))
(push) ; 4
; [then-branch: 35 | i@128@01 in [0..|xs1@58@01|] && j@129@01 in [0..|xs1@58@01|] && i@128@01 != j@129@01 | live]
; [else-branch: 35 | !(i@128@01 in [0..|xs1@58@01|] && j@129@01 in [0..|xs1@58@01|] && i@128@01 != j@129@01) | live]
(push) ; 5
; [then-branch: 35 | i@128@01 in [0..|xs1@58@01|] && j@129@01 in [0..|xs1@58@01|] && i@128@01 != j@129@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
    (not (= i@128@01 j@129@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@128@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@128@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@129@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@129@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 35 | !(i@128@01 in [0..|xs1@58@01|] && j@129@01 in [0..|xs1@58@01|] && i@128@01 != j@129@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
      (not (= i@128@01 j@129@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
      (not (= i@128@01 j@129@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
    (not (= i@128@01 j@129@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
        (not (= i@128@01 j@129@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
      (not (= i@128@01 j@129@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@128@01 Int) (j@129@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
        (not (= i@128@01 j@129@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
            (not (= i@128@01 j@129@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@129@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@128@01 Int) (j@129@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
        (not (= i@128@01 j@129@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
            (not (= i@128@01 j@129@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@128@01 Int) (j@129@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
        (not (= i@128@01 j@129@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
            (not (= i@128@01 j@129@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_index
    xs1@58@01
    j@129@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_index
    xs1@58@01
    j@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@128@01 Int) (j@129@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
        (not (= i@128@01 j@129@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
            (not (= i@128@01 j@129@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_index
    xs1@58@01
    j@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@128@01 Int) (j@129@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
        (not (= i@128@01 j@129@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
            (not (= i@128@01 j@129@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01) (Seq_index
    xs1@58@01
    i@128@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@129@01) (Seq_index
    xs1@58@01
    i@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@128@01 Int) (j@129@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
        (not (= i@128@01 j@129@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
            (not (= i@128@01 j@129@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@129@01) (Seq_index
    xs1@58@01
    i@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@128@01 Int) (j@129@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
        (not (= i@128@01 j@129@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
            (not (= i@128@01 j@129@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
          (not (= i@128@01 j@129@01))))))
  :pattern ((Seq_index xs1@58@01 i@128@01) (Seq_index xs1@58@01 j@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(push) ; 3
(assert (not (forall ((i@128@01 Int) (j@129@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
        (not (= i@128@01 j@129@01))))
    (not (= (Seq_index xs1@58@01 i@128@01) (Seq_index xs1@58@01 j@129@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@129@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@129@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@129@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_index
    xs1@58@01
    j@129@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_index
    xs1@58@01
    j@129@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_index
    xs1@58@01
    j@129@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01) (Seq_index
    xs1@58@01
    i@128@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@129@01) (Seq_index
    xs1@58@01
    i@128@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@129@01) (Seq_index
    xs1@58@01
    i@128@01))
  :pattern ((Seq_index xs1@58@01 i@128@01) (Seq_index xs1@58@01 j@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@128@01 Int) (j@129@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01)
        (not (= i@128@01 j@129@01))))
    (not (= (Seq_index xs1@58@01 i@128@01) (Seq_index xs1@58@01 j@129@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@129@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@129@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_index
    xs1@58@01
    j@129@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@128@01) (Seq_index
    xs1@58@01
    j@129@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@129@01) (Seq_index
    xs1@58@01
    i@128@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@129@01) (Seq_index
    xs1@58@01
    i@128@01))
  :pattern ((Seq_index xs1@58@01 i@128@01) (Seq_index xs1@58@01 j@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|)))
(declare-const i@130@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@130@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@130@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@130@01 (Seq_length xs1@58@01))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i1@130@01)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i2@130@01)
      (= (Seq_index xs1@58@01 i1@130@01) (Seq_index xs1@58@01 i2@130@01)))
    (= i1@130@01 i2@130@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@130@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@130@01)
    (and
      (= (inv@131@01 (Seq_index xs1@58@01 i@130@01)) i@130@01)
      (img@132@01 (Seq_index xs1@58@01 i@130@01))))
  :pattern ((Seq_index xs1@58@01 i@130@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@132@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@131@01 r)))
    (= (Seq_index xs1@58@01 (inv@131@01 r)) r))
  :pattern ((inv@131@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@130@01 Int)) (!
  (= (Seq_index xs1@58@01 i@130@01) (Seq_index xs2@59@01 i@130@01))
  
  :qid |quant-u-11885|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@130@01 Int)) (!
  (= (Seq_index xs1@58@01 i@130@01) (Seq_index xs2@59@01 i@130@01))
  
  :qid |quant-u-11886|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@130@01 Int)) (!
  (= (Seq_index xs1@58@01 i@130@01) (Seq_index xs2@59@01 i@130@01))
  
  :qid |quant-u-11887|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@130@01 Int)) (!
  (= (Seq_index xs1@58@01 i@130@01) (Seq_index xs3@60@01 i@130@01))
  
  :qid |quant-u-11888|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@130@01 Int)) (!
  (= (Seq_index xs1@58@01 i@130@01) (Seq_index xs3@60@01 i@130@01))
  
  :qid |quant-u-11889|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@133@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index xs1@58@01 (inv@131@01 r))))
    ($Perm.min
      (ite
        (and
          (img@90@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@134@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index xs1@58@01 (inv@131@01 r))))
    ($Perm.min
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@133@01 r)))
    $Perm.No))
(define-fun pTaken@135@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index xs1@58@01 (inv@131@01 r))))
    ($Perm.min
      (ite
        (and
          (img@109@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@133@01 r)) (pTaken@134@01 r)))
    $Perm.No))
(define-fun pTaken@136@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index xs1@58@01 (inv@131@01 r))))
    ($Perm.min
      (ite
        (and
          (img@106@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@133@01 r)) (pTaken@134@01 r))
        (pTaken@135@01 r)))
    $Perm.No))
(define-fun pTaken@137@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index xs1@58@01 (inv@131@01 r))))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))
        (- $Perm.Write (pTaken@99@01 r))
        $Perm.No)
      (-
        (-
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@133@01 r)) (pTaken@134@01 r))
          (pTaken@135@01 r))
        (pTaken@136@01 r)))
    $Perm.No))
(define-fun pTaken@138@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index xs1@58@01 (inv@131@01 r))))
    ($Perm.min
      (ite
        (and
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (-
          (-
            (-
              (- (/ (to_real 1) (to_real 2)) (pTaken@133@01 r))
              (pTaken@134@01 r))
            (pTaken@135@01 r))
          (pTaken@136@01 r))
        (pTaken@137@01 r)))
    $Perm.No))
(define-fun pTaken@139@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index xs1@58@01 (inv@131@01 r))))
    ($Perm.min
      (ite
        (and
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (-
          (-
            (-
              (-
                (- (/ (to_real 1) (to_real 2)) (pTaken@133@01 r))
                (pTaken@134@01 r))
              (pTaken@135@01 r))
            (pTaken@136@01 r))
          (pTaken@137@01 r))
        (pTaken@138@01 r)))
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
          (img@90@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@89@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@133@01 r))
    $Perm.No)
  
  :qid |quant-u-11891|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@131@01 r))
      (img@132@01 r)
      (= r (Seq_index xs1@58@01 (inv@131@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@133@01 r)) $Perm.No))
  
  :qid |quant-u-11892|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; leak(xs2, 1 / 2)
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@140@01 Int)
(declare-const j@141@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 36 | !(i@140@01 in [0..|xs2@59@01|]) | live]
; [else-branch: 36 | i@140@01 in [0..|xs2@59@01|] | live]
(push) ; 5
; [then-branch: 36 | !(i@140@01 in [0..|xs2@59@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 36 | i@140@01 in [0..|xs2@59@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 37 | !(j@141@01 in [0..|xs2@59@01|]) | live]
; [else-branch: 37 | j@141@01 in [0..|xs2@59@01|] | live]
(push) ; 7
; [then-branch: 37 | !(j@141@01 in [0..|xs2@59@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 37 | j@141@01 in [0..|xs2@59@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01))))
(push) ; 4
; [then-branch: 38 | i@140@01 in [0..|xs2@59@01|] && j@141@01 in [0..|xs2@59@01|] && i@140@01 != j@141@01 | live]
; [else-branch: 38 | !(i@140@01 in [0..|xs2@59@01|] && j@141@01 in [0..|xs2@59@01|] && i@140@01 != j@141@01) | live]
(push) ; 5
; [then-branch: 38 | i@140@01 in [0..|xs2@59@01|] && j@141@01 in [0..|xs2@59@01|] && i@140@01 != j@141@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
    (not (= i@140@01 j@141@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@140@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@140@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@141@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@141@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 38 | !(i@140@01 in [0..|xs2@59@01|] && j@141@01 in [0..|xs2@59@01|] && i@140@01 != j@141@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
      (not (= i@140@01 j@141@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
      (not (= i@140@01 j@141@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
    (not (= i@140@01 j@141@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
        (not (= i@140@01 j@141@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
      (not (= i@140@01 j@141@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@140@01 Int) (j@141@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
        (not (= i@140@01 j@141@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
            (not (= i@140@01 j@141@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@141@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@140@01 Int) (j@141@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
        (not (= i@140@01 j@141@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
            (not (= i@140@01 j@141@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@140@01 Int) (j@141@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
        (not (= i@140@01 j@141@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
            (not (= i@140@01 j@141@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_index
    xs2@59@01
    j@141@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_index
    xs2@59@01
    j@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@140@01 Int) (j@141@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
        (not (= i@140@01 j@141@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
            (not (= i@140@01 j@141@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_index
    xs2@59@01
    j@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@140@01 Int) (j@141@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
        (not (= i@140@01 j@141@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
            (not (= i@140@01 j@141@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01) (Seq_index
    xs2@59@01
    i@140@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@141@01) (Seq_index
    xs2@59@01
    i@140@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@140@01 Int) (j@141@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
        (not (= i@140@01 j@141@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
            (not (= i@140@01 j@141@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@141@01) (Seq_index
    xs2@59@01
    i@140@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@140@01 Int) (j@141@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
        (not (= i@140@01 j@141@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
            (not (= i@140@01 j@141@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
          (not (= i@140@01 j@141@01))))))
  :pattern ((Seq_index xs2@59@01 i@140@01) (Seq_index xs2@59@01 j@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(push) ; 3
(assert (not (forall ((i@140@01 Int) (j@141@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
        (not (= i@140@01 j@141@01))))
    (not (= (Seq_index xs2@59@01 i@140@01) (Seq_index xs2@59@01 j@141@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@141@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@141@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@141@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_index
    xs2@59@01
    j@141@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_index
    xs2@59@01
    j@141@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_index
    xs2@59@01
    j@141@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01) (Seq_index
    xs2@59@01
    i@140@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@141@01) (Seq_index
    xs2@59@01
    i@140@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@141@01) (Seq_index
    xs2@59@01
    i@140@01))
  :pattern ((Seq_index xs2@59@01 i@140@01) (Seq_index xs2@59@01 j@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@140@01 Int) (j@141@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01)
        (not (= i@140@01 j@141@01))))
    (not (= (Seq_index xs2@59@01 i@140@01) (Seq_index xs2@59@01 j@141@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@141@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@141@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_index
    xs2@59@01
    j@141@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@140@01) (Seq_index
    xs2@59@01
    j@141@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@141@01) (Seq_index
    xs2@59@01
    i@140@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@141@01) (Seq_index
    xs2@59@01
    i@140@01))
  :pattern ((Seq_index xs2@59@01 i@140@01) (Seq_index xs2@59@01 j@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|)))
(declare-const i@142@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@142@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@142@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@142@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@143@01 ($Ref) Int)
(declare-fun img@144@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@142@01 Int) (i2@142@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i1@142@01)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i2@142@01)
      (= (Seq_index xs2@59@01 i1@142@01) (Seq_index xs2@59@01 i2@142@01)))
    (= i1@142@01 i2@142@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@142@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@142@01)
    (and
      (= (inv@143@01 (Seq_index xs2@59@01 i@142@01)) i@142@01)
      (img@144@01 (Seq_index xs2@59@01 i@142@01))))
  :pattern ((Seq_index xs2@59@01 i@142@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@144@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@143@01 r)))
    (= (Seq_index xs2@59@01 (inv@143@01 r)) r))
  :pattern ((inv@143@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@142@01 Int)) (!
  (= (Seq_index xs2@59@01 i@142@01) (Seq_index xs3@60@01 i@142@01))
  
  :qid |quant-u-11894|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@142@01 Int)) (!
  (= (Seq_index xs2@59@01 i@142@01) (Seq_index xs3@60@01 i@142@01))
  
  :qid |quant-u-11895|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@142@01 Int)) (!
  (= (Seq_index xs2@59@01 i@142@01) (Seq_index xs1@58@01 i@142@01))
  
  :qid |quant-u-11896|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@145@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@143@01 r))
      (img@144@01 r)
      (= r (Seq_index xs2@59@01 (inv@143@01 r))))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))
        (- $Perm.Write (pTaken@99@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@146@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@143@01 r))
      (img@144@01 r)
      (= r (Seq_index xs2@59@01 (inv@143@01 r))))
    ($Perm.min
      (ite
        (and
          (img@106@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@145@01 r)))
    $Perm.No))
(define-fun pTaken@147@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@143@01 r))
      (img@144@01 r)
      (= r (Seq_index xs2@59@01 (inv@143@01 r))))
    ($Perm.min
      (ite
        (and
          (img@109@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@145@01 r)) (pTaken@146@01 r)))
    $Perm.No))
(define-fun pTaken@148@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@143@01 r))
      (img@144@01 r)
      (= r (Seq_index xs2@59@01 (inv@143@01 r))))
    ($Perm.min
      (ite
        (and
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@145@01 r)) (pTaken@146@01 r))
        (pTaken@147@01 r)))
    $Perm.No))
(define-fun pTaken@149@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@143@01 r))
      (img@144@01 r)
      (= r (Seq_index xs2@59@01 (inv@143@01 r))))
    ($Perm.min
      (ite
        (and
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (-
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@145@01 r)) (pTaken@146@01 r))
          (pTaken@147@01 r))
        (pTaken@148@01 r)))
    $Perm.No))
(define-fun pTaken@150@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@143@01 r))
      (img@144@01 r)
      (= r (Seq_index xs2@59@01 (inv@143@01 r))))
    ($Perm.min
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (-
          (-
            (-
              (- (/ (to_real 1) (to_real 2)) (pTaken@145@01 r))
              (pTaken@146@01 r))
            (pTaken@147@01 r))
          (pTaken@148@01 r))
        (pTaken@149@01 r)))
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
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@71@01 r)))
        (- $Perm.Write (pTaken@99@01 r))
        $Perm.No)
      (pTaken@145@01 r))
    $Perm.No)
  
  :qid |quant-u-11898|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@143@01 r))
      (img@144@01 r)
      (= r (Seq_index xs2@59@01 (inv@143@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@145@01 r)) $Perm.No))
  
  :qid |quant-u-11899|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; leak(xs3, 1 / 3)
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@151@01 Int)
(declare-const j@152@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 39 | !(i@151@01 in [0..|xs3@60@01|]) | live]
; [else-branch: 39 | i@151@01 in [0..|xs3@60@01|] | live]
(push) ; 5
; [then-branch: 39 | !(i@151@01 in [0..|xs3@60@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 39 | i@151@01 in [0..|xs3@60@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 40 | !(j@152@01 in [0..|xs3@60@01|]) | live]
; [else-branch: 40 | j@152@01 in [0..|xs3@60@01|] | live]
(push) ; 7
; [then-branch: 40 | !(j@152@01 in [0..|xs3@60@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 40 | j@152@01 in [0..|xs3@60@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01))))
(push) ; 4
; [then-branch: 41 | i@151@01 in [0..|xs3@60@01|] && j@152@01 in [0..|xs3@60@01|] && i@151@01 != j@152@01 | live]
; [else-branch: 41 | !(i@151@01 in [0..|xs3@60@01|] && j@152@01 in [0..|xs3@60@01|] && i@151@01 != j@152@01) | live]
(push) ; 5
; [then-branch: 41 | i@151@01 in [0..|xs3@60@01|] && j@152@01 in [0..|xs3@60@01|] && i@151@01 != j@152@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
    (not (= i@151@01 j@152@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@151@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@151@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@152@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@152@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 41 | !(i@151@01 in [0..|xs3@60@01|] && j@152@01 in [0..|xs3@60@01|] && i@151@01 != j@152@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
      (not (= i@151@01 j@152@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
      (not (= i@151@01 j@152@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
    (not (= i@151@01 j@152@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
        (not (= i@151@01 j@152@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
      (not (= i@151@01 j@152@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@151@01 Int) (j@152@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
        (not (= i@151@01 j@152@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
            (not (= i@151@01 j@152@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@152@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@152@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@151@01 Int) (j@152@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
        (not (= i@151@01 j@152@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
            (not (= i@151@01 j@152@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@152@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@151@01 Int) (j@152@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
        (not (= i@151@01 j@152@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
            (not (= i@151@01 j@152@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_index
    xs3@60@01
    j@152@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_index
    xs3@60@01
    j@152@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@151@01 Int) (j@152@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
        (not (= i@151@01 j@152@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
            (not (= i@151@01 j@152@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_index
    xs3@60@01
    j@152@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@151@01 Int) (j@152@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
        (not (= i@151@01 j@152@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
            (not (= i@151@01 j@152@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01) (Seq_index
    xs3@60@01
    i@151@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@152@01) (Seq_index
    xs3@60@01
    i@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@151@01 Int) (j@152@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
        (not (= i@151@01 j@152@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
            (not (= i@151@01 j@152@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@152@01) (Seq_index
    xs3@60@01
    i@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@151@01 Int) (j@152@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
        (not (= i@151@01 j@152@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
            (not (= i@151@01 j@152@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
          (not (= i@151@01 j@152@01))))))
  :pattern ((Seq_index xs3@60@01 i@151@01) (Seq_index xs3@60@01 j@152@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(push) ; 3
(assert (not (forall ((i@151@01 Int) (j@152@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
        (not (= i@151@01 j@152@01))))
    (not (= (Seq_index xs3@60@01 i@151@01) (Seq_index xs3@60@01 j@152@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@152@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@152@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@152@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_index
    xs3@60@01
    j@152@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_index
    xs3@60@01
    j@152@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_index
    xs3@60@01
    j@152@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01) (Seq_index
    xs3@60@01
    i@151@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@152@01) (Seq_index
    xs3@60@01
    i@151@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@152@01) (Seq_index
    xs3@60@01
    i@151@01))
  :pattern ((Seq_index xs3@60@01 i@151@01) (Seq_index xs3@60@01 j@152@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@151@01 Int) (j@152@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01)
        (not (= i@151@01 j@152@01))))
    (not (= (Seq_index xs3@60@01 i@151@01) (Seq_index xs3@60@01 j@152@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@152@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@152@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_index
    xs3@60@01
    j@152@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@151@01) (Seq_index
    xs3@60@01
    j@152@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@152@01) (Seq_index
    xs3@60@01
    i@151@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@152@01) (Seq_index
    xs3@60@01
    i@151@01))
  :pattern ((Seq_index xs3@60@01 i@151@01) (Seq_index xs3@60@01 j@152@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|)))
(declare-const i@153@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@153@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@153@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@153@01 (Seq_length xs3@60@01))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i1@153@01)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i2@153@01)
      (= (Seq_index xs3@60@01 i1@153@01) (Seq_index xs3@60@01 i2@153@01)))
    (= i1@153@01 i2@153@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@153@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@153@01)
    (and
      (= (inv@154@01 (Seq_index xs3@60@01 i@153@01)) i@153@01)
      (img@155@01 (Seq_index xs3@60@01 i@153@01))))
  :pattern ((Seq_index xs3@60@01 i@153@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@155@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@154@01 r)))
    (= (Seq_index xs3@60@01 (inv@154@01 r)) r))
  :pattern ((inv@154@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@153@01 Int)) (!
  (= (Seq_index xs3@60@01 i@153@01) (Seq_index xs1@58@01 i@153@01))
  
  :qid |quant-u-11901|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@153@01 Int)) (!
  (= (Seq_index xs3@60@01 i@153@01) (Seq_index xs2@59@01 i@153@01))
  
  :qid |quant-u-11902|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@153@01 Int)) (!
  (= (Seq_index xs3@60@01 i@153@01) (Seq_index xs2@59@01 i@153@01))
  
  :qid |quant-u-11903|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@156@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@154@01 r))
      (img@155@01 r)
      (= r (Seq_index xs3@60@01 (inv@154@01 r))))
    ($Perm.min
      (ite
        (and
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 3)))
    $Perm.No))
(define-fun pTaken@157@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@154@01 r))
      (img@155@01 r)
      (= r (Seq_index xs3@60@01 (inv@154@01 r))))
    ($Perm.min
      (ite
        (and
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 3)) (pTaken@156@01 r)))
    $Perm.No))
(define-fun pTaken@158@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@154@01 r))
      (img@155@01 r)
      (= r (Seq_index xs3@60@01 (inv@154@01 r))))
    ($Perm.min
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 3)) (pTaken@156@01 r)) (pTaken@157@01 r)))
    $Perm.No))
(define-fun pTaken@159@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@154@01 r))
      (img@155@01 r)
      (= r (Seq_index xs3@60@01 (inv@154@01 r))))
    ($Perm.min
      (ite
        (and
          (img@109@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (- (- (/ (to_real 1) (to_real 3)) (pTaken@156@01 r)) (pTaken@157@01 r))
        (pTaken@158@01 r)))
    $Perm.No))
(define-fun pTaken@160@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@154@01 r))
      (img@155@01 r)
      (= r (Seq_index xs3@60@01 (inv@154@01 r))))
    ($Perm.min
      (ite
        (and
          (img@106@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (-
          (- (- (/ (to_real 1) (to_real 3)) (pTaken@156@01 r)) (pTaken@157@01 r))
          (pTaken@158@01 r))
        (pTaken@159@01 r)))
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
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@156@01 r))
    $Perm.No)
  
  :qid |quant-u-11905|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@156@01 r) $Perm.No)
  
  :qid |quant-u-11906|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@154@01 r))
      (img@155@01 r)
      (= r (Seq_index xs3@60@01 (inv@154@01 r))))
    (= (- (/ (to_real 1) (to_real 3)) (pTaken@156@01 r)) $Perm.No))
  
  :qid |quant-u-11907|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; split(xs1, 1 / 2, 1 / 4)
; [eval] p == 2 * q
; [eval] 2 * q
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@161@01 Int)
(declare-const j@162@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 42 | !(i@161@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 42 | i@161@01 in [0..|xs1@58@01|] | live]
(push) ; 5
; [then-branch: 42 | !(i@161@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 42 | i@161@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 43 | !(j@162@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 43 | j@162@01 in [0..|xs1@58@01|] | live]
(push) ; 7
; [then-branch: 43 | !(j@162@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 43 | j@162@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01))))
(push) ; 4
; [then-branch: 44 | i@161@01 in [0..|xs1@58@01|] && j@162@01 in [0..|xs1@58@01|] && i@161@01 != j@162@01 | live]
; [else-branch: 44 | !(i@161@01 in [0..|xs1@58@01|] && j@162@01 in [0..|xs1@58@01|] && i@161@01 != j@162@01) | live]
(push) ; 5
; [then-branch: 44 | i@161@01 in [0..|xs1@58@01|] && j@162@01 in [0..|xs1@58@01|] && i@161@01 != j@162@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
    (not (= i@161@01 j@162@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@161@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@161@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@162@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@162@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 44 | !(i@161@01 in [0..|xs1@58@01|] && j@162@01 in [0..|xs1@58@01|] && i@161@01 != j@162@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
      (not (= i@161@01 j@162@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
      (not (= i@161@01 j@162@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
    (not (= i@161@01 j@162@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
        (not (= i@161@01 j@162@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
      (not (= i@161@01 j@162@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@161@01 Int) (j@162@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
        (not (= i@161@01 j@162@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
            (not (= i@161@01 j@162@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@162@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@161@01 Int) (j@162@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
        (not (= i@161@01 j@162@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
            (not (= i@161@01 j@162@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@161@01 Int) (j@162@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
        (not (= i@161@01 j@162@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
            (not (= i@161@01 j@162@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_index
    xs1@58@01
    j@162@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_index
    xs1@58@01
    j@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@161@01 Int) (j@162@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
        (not (= i@161@01 j@162@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
            (not (= i@161@01 j@162@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_index
    xs1@58@01
    j@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@161@01 Int) (j@162@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
        (not (= i@161@01 j@162@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
            (not (= i@161@01 j@162@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01) (Seq_index
    xs1@58@01
    i@161@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@162@01) (Seq_index
    xs1@58@01
    i@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@161@01 Int) (j@162@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
        (not (= i@161@01 j@162@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
            (not (= i@161@01 j@162@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@162@01) (Seq_index
    xs1@58@01
    i@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@161@01 Int) (j@162@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
        (not (= i@161@01 j@162@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
            (not (= i@161@01 j@162@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
          (not (= i@161@01 j@162@01))))))
  :pattern ((Seq_index xs1@58@01 i@161@01) (Seq_index xs1@58@01 j@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(push) ; 3
(assert (not (forall ((i@161@01 Int) (j@162@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
        (not (= i@161@01 j@162@01))))
    (not (= (Seq_index xs1@58@01 i@161@01) (Seq_index xs1@58@01 j@162@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@162@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@162@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@162@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_index
    xs1@58@01
    j@162@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_index
    xs1@58@01
    j@162@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_index
    xs1@58@01
    j@162@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01) (Seq_index
    xs1@58@01
    i@161@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@162@01) (Seq_index
    xs1@58@01
    i@161@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@162@01) (Seq_index
    xs1@58@01
    i@161@01))
  :pattern ((Seq_index xs1@58@01 i@161@01) (Seq_index xs1@58@01 j@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@161@01 Int) (j@162@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01)
        (not (= i@161@01 j@162@01))))
    (not (= (Seq_index xs1@58@01 i@161@01) (Seq_index xs1@58@01 j@162@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@162@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@162@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_index
    xs1@58@01
    j@162@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@161@01) (Seq_index
    xs1@58@01
    j@162@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@162@01) (Seq_index
    xs1@58@01
    i@161@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@162@01) (Seq_index
    xs1@58@01
    i@161@01))
  :pattern ((Seq_index xs1@58@01 i@161@01) (Seq_index xs1@58@01 j@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|)))
(declare-const i@163@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@163@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@163@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@163@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@164@01 ($Ref) Int)
(declare-fun img@165@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@163@01 Int) (i2@163@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i1@163@01)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i2@163@01)
      (= (Seq_index xs1@58@01 i1@163@01) (Seq_index xs1@58@01 i2@163@01)))
    (= i1@163@01 i2@163@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@163@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@163@01)
    (and
      (= (inv@164@01 (Seq_index xs1@58@01 i@163@01)) i@163@01)
      (img@165@01 (Seq_index xs1@58@01 i@163@01))))
  :pattern ((Seq_index xs1@58@01 i@163@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@165@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@164@01 r)))
    (= (Seq_index xs1@58@01 (inv@164@01 r)) r))
  :pattern ((inv@164@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@163@01 Int)) (!
  (= (Seq_index xs1@58@01 i@163@01) (Seq_index xs2@59@01 i@163@01))
  
  :qid |quant-u-11909|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@163@01 Int)) (!
  (= (Seq_index xs1@58@01 i@163@01) (Seq_index xs2@59@01 i@163@01))
  
  :qid |quant-u-11910|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@163@01 Int)) (!
  (= (Seq_index xs1@58@01 i@163@01) (Seq_index xs3@60@01 i@163@01))
  
  :qid |quant-u-11911|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@163@01 Int)) (!
  (= (Seq_index xs1@58@01 i@163@01) (Seq_index xs3@60@01 i@163@01))
  
  :qid |quant-u-11912|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@166@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@164@01 r))
      (img@165@01 r)
      (= r (Seq_index xs1@58@01 (inv@164@01 r))))
    ($Perm.min
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@167@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@164@01 r))
      (img@165@01 r)
      (= r (Seq_index xs1@58@01 (inv@164@01 r))))
    ($Perm.min
      (ite
        (and
          (img@106@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@166@01 r)))
    $Perm.No))
(define-fun pTaken@168@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@164@01 r))
      (img@165@01 r)
      (= r (Seq_index xs1@58@01 (inv@164@01 r))))
    ($Perm.min
      (ite
        (and
          (img@109@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@166@01 r)) (pTaken@167@01 r)))
    $Perm.No))
(define-fun pTaken@169@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@164@01 r))
      (img@165@01 r)
      (= r (Seq_index xs1@58@01 (inv@164@01 r))))
    ($Perm.min
      (ite
        (and
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@166@01 r)) (pTaken@167@01 r))
        (pTaken@168@01 r)))
    $Perm.No))
(define-fun pTaken@170@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@164@01 r))
      (img@165@01 r)
      (= r (Seq_index xs1@58@01 (inv@164@01 r))))
    ($Perm.min
      (ite
        (and
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@156@01 r))
        $Perm.No)
      (-
        (-
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@166@01 r)) (pTaken@167@01 r))
          (pTaken@168@01 r))
        (pTaken@169@01 r)))
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
          (img@93@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@92@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@166@01 r))
    $Perm.No)
  
  :qid |quant-u-11914|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@164@01 r))
      (img@165@01 r)
      (= r (Seq_index xs1@58@01 (inv@164@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@166@01 r)) $Perm.No))
  
  :qid |quant-u-11915|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@171@01 $Snap)
(assert (= $t@171@01 ($Snap.combine ($Snap.first $t@171@01) ($Snap.second $t@171@01))))
(declare-const i@172@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@172@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@172@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@172@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@173@01 ($Ref) Int)
(declare-fun img@174@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@172@01 Int) (i2@172@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i1@172@01)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i2@172@01)
      (= (Seq_index xs1@58@01 i1@172@01) (Seq_index xs1@58@01 i2@172@01)))
    (= i1@172@01 i2@172@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@172@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@172@01)
    (and
      (= (inv@173@01 (Seq_index xs1@58@01 i@172@01)) i@172@01)
      (img@174@01 (Seq_index xs1@58@01 i@172@01))))
  :pattern ((Seq_index xs1@58@01 i@172@01))
  :qid |quant-u-11917|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@174@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@173@01 r)))
    (= (Seq_index xs1@58@01 (inv@173@01 r)) r))
  :pattern ((inv@173@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@172@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@172@01)
    (not (= (Seq_index xs1@58@01 i@172@01) $Ref.null)))
  :pattern ((Seq_index xs1@58@01 i@172@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs1@58@01 i@172@01) (Seq_index xs2@59@01 i@104@01))
    (=
      (and
        (img@174@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@173@01 r)))
      (and
        (img@106@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))))
  
  :qid |quant-u-11918|))))
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
    (= (Seq_index xs1@58@01 i@172@01) (Seq_index xs2@59@01 i@107@01))
    (=
      (and
        (img@174@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@173@01 r)))
      (and
        (img@109@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))))
  
  :qid |quant-u-11919|))))
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
    (= (Seq_index xs1@58@01 i@172@01) (Seq_index xs3@60@01 i@125@01))
    (=
      (and
        (img@174@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@173@01 r)))
      (and
        (img@127@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))))
  
  :qid |quant-u-11920|))))
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
    (= (Seq_index xs1@58@01 i@172@01) (Seq_index xs3@60@01 i@122@01))
    (=
      (and
        (img@174@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@173@01 r)))
      (and
        (img@124@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))))
  
  :qid |quant-u-11921|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const i@175@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@175@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@175@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@175@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@176@01 ($Ref) Int)
(declare-fun img@177@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@175@01 Int) (i2@175@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i1@175@01)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i2@175@01)
      (= (Seq_index xs1@58@01 i1@175@01) (Seq_index xs1@58@01 i2@175@01)))
    (= i1@175@01 i2@175@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@175@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@175@01)
    (and
      (= (inv@176@01 (Seq_index xs1@58@01 i@175@01)) i@175@01)
      (img@177@01 (Seq_index xs1@58@01 i@175@01))))
  :pattern ((Seq_index xs1@58@01 i@175@01))
  :qid |quant-u-11923|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@177@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
    (= (Seq_index xs1@58@01 (inv@176@01 r)) r))
  :pattern ((inv@176@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@175@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@175@01)
    (not (= (Seq_index xs1@58@01 i@175@01) $Ref.null)))
  :pattern ((Seq_index xs1@58@01 i@175@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs1@58@01 i@175@01) (Seq_index xs1@58@01 i@172@01))
    (=
      (and
        (img@177@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
      (and
        (img@174@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@173@01 r)))))
  
  :qid |quant-u-11924|))))
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
    (= (Seq_index xs1@58@01 i@175@01) (Seq_index xs2@59@01 i@104@01))
    (=
      (and
        (img@177@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
      (and
        (img@106@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))))
  
  :qid |quant-u-11925|))))
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
    (= (Seq_index xs1@58@01 i@175@01) (Seq_index xs2@59@01 i@107@01))
    (=
      (and
        (img@177@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
      (and
        (img@109@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))))
  
  :qid |quant-u-11926|))))
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
    (= (Seq_index xs1@58@01 i@175@01) (Seq_index xs3@60@01 i@125@01))
    (=
      (and
        (img@177@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
      (and
        (img@127@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))))
  
  :qid |quant-u-11927|))))
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
    (= (Seq_index xs1@58@01 i@175@01) (Seq_index xs3@60@01 i@122@01))
    (=
      (and
        (img@177@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
      (and
        (img@124@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))))
  
  :qid |quant-u-11928|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; leak(xs1, 1 / 4)
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@178@01 Int)
(declare-const j@179@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 45 | !(i@178@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 45 | i@178@01 in [0..|xs1@58@01|] | live]
(push) ; 5
; [then-branch: 45 | !(i@178@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 45 | i@178@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 46 | !(j@179@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 46 | j@179@01 in [0..|xs1@58@01|] | live]
(push) ; 7
; [then-branch: 46 | !(j@179@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 46 | j@179@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01))))
(push) ; 4
; [then-branch: 47 | i@178@01 in [0..|xs1@58@01|] && j@179@01 in [0..|xs1@58@01|] && i@178@01 != j@179@01 | live]
; [else-branch: 47 | !(i@178@01 in [0..|xs1@58@01|] && j@179@01 in [0..|xs1@58@01|] && i@178@01 != j@179@01) | live]
(push) ; 5
; [then-branch: 47 | i@178@01 in [0..|xs1@58@01|] && j@179@01 in [0..|xs1@58@01|] && i@178@01 != j@179@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
    (not (= i@178@01 j@179@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@178@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@178@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@179@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@179@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 47 | !(i@178@01 in [0..|xs1@58@01|] && j@179@01 in [0..|xs1@58@01|] && i@178@01 != j@179@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
      (not (= i@178@01 j@179@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
      (not (= i@178@01 j@179@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
    (not (= i@178@01 j@179@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
        (not (= i@178@01 j@179@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
      (not (= i@178@01 j@179@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@178@01 Int) (j@179@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
        (not (= i@178@01 j@179@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
            (not (= i@178@01 j@179@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@179@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@178@01 Int) (j@179@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
        (not (= i@178@01 j@179@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
            (not (= i@178@01 j@179@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@178@01 Int) (j@179@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
        (not (= i@178@01 j@179@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
            (not (= i@178@01 j@179@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_index
    xs1@58@01
    j@179@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_index
    xs1@58@01
    j@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@178@01 Int) (j@179@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
        (not (= i@178@01 j@179@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
            (not (= i@178@01 j@179@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_index
    xs1@58@01
    j@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@178@01 Int) (j@179@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
        (not (= i@178@01 j@179@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
            (not (= i@178@01 j@179@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01) (Seq_index
    xs1@58@01
    i@178@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@179@01) (Seq_index
    xs1@58@01
    i@178@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@178@01 Int) (j@179@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
        (not (= i@178@01 j@179@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
            (not (= i@178@01 j@179@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@179@01) (Seq_index
    xs1@58@01
    i@178@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@178@01 Int) (j@179@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
        (not (= i@178@01 j@179@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
            (not (= i@178@01 j@179@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
          (not (= i@178@01 j@179@01))))))
  :pattern ((Seq_index xs1@58@01 i@178@01) (Seq_index xs1@58@01 j@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(push) ; 3
(assert (not (forall ((i@178@01 Int) (j@179@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
        (not (= i@178@01 j@179@01))))
    (not (= (Seq_index xs1@58@01 i@178@01) (Seq_index xs1@58@01 j@179@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@179@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@179@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@179@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_index
    xs1@58@01
    j@179@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_index
    xs1@58@01
    j@179@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_index
    xs1@58@01
    j@179@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01) (Seq_index
    xs1@58@01
    i@178@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@179@01) (Seq_index
    xs1@58@01
    i@178@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@179@01) (Seq_index
    xs1@58@01
    i@178@01))
  :pattern ((Seq_index xs1@58@01 i@178@01) (Seq_index xs1@58@01 j@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@178@01 Int) (j@179@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01)
        (not (= i@178@01 j@179@01))))
    (not (= (Seq_index xs1@58@01 i@178@01) (Seq_index xs1@58@01 j@179@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@179@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@179@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_index
    xs1@58@01
    j@179@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@178@01) (Seq_index
    xs1@58@01
    j@179@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@179@01) (Seq_index
    xs1@58@01
    i@178@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@179@01) (Seq_index
    xs1@58@01
    i@178@01))
  :pattern ((Seq_index xs1@58@01 i@178@01) (Seq_index xs1@58@01 j@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|)))
(declare-const i@180@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@180@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@180@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@180@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@181@01 ($Ref) Int)
(declare-fun img@182@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@180@01 Int) (i2@180@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i1@180@01)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i2@180@01)
      (= (Seq_index xs1@58@01 i1@180@01) (Seq_index xs1@58@01 i2@180@01)))
    (= i1@180@01 i2@180@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@180@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@180@01)
    (and
      (= (inv@181@01 (Seq_index xs1@58@01 i@180@01)) i@180@01)
      (img@182@01 (Seq_index xs1@58@01 i@180@01))))
  :pattern ((Seq_index xs1@58@01 i@180@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@182@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@181@01 r)))
    (= (Seq_index xs1@58@01 (inv@181@01 r)) r))
  :pattern ((inv@181@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@180@01 Int)) (!
  (= (Seq_index xs1@58@01 i@180@01) (Seq_index xs3@60@01 i@180@01))
  
  :qid |quant-u-11930|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@180@01 Int)) (!
  (= (Seq_index xs1@58@01 i@180@01) (Seq_index xs3@60@01 i@180@01))
  
  :qid |quant-u-11931|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@180@01 Int)) (!
  (= (Seq_index xs1@58@01 i@180@01) (Seq_index xs2@59@01 i@180@01))
  
  :qid |quant-u-11932|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@180@01 Int)) (!
  (= (Seq_index xs1@58@01 i@180@01) (Seq_index xs2@59@01 i@180@01))
  
  :qid |quant-u-11933|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@183@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@181@01 r))
      (img@182@01 r)
      (= r (Seq_index xs1@58@01 (inv@181@01 r))))
    ($Perm.min
      (ite
        (and
          (img@174@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@173@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (/ (to_real 1) (to_real 4)))
    $Perm.No))
(define-fun pTaken@184@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@181@01 r))
      (img@182@01 r)
      (= r (Seq_index xs1@58@01 (inv@181@01 r))))
    ($Perm.min
      (ite
        (and
          (img@177@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (/ (to_real 1) (to_real 4)) (pTaken@183@01 r)))
    $Perm.No))
(define-fun pTaken@185@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@181@01 r))
      (img@182@01 r)
      (= r (Seq_index xs1@58@01 (inv@181@01 r))))
    ($Perm.min
      (ite
        (and
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@156@01 r))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 4)) (pTaken@183@01 r)) (pTaken@184@01 r)))
    $Perm.No))
(define-fun pTaken@186@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@181@01 r))
      (img@182@01 r)
      (= r (Seq_index xs1@58@01 (inv@181@01 r))))
    ($Perm.min
      (ite
        (and
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (- (- (/ (to_real 1) (to_real 4)) (pTaken@183@01 r)) (pTaken@184@01 r))
        (pTaken@185@01 r)))
    $Perm.No))
(define-fun pTaken@187@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@181@01 r))
      (img@182@01 r)
      (= r (Seq_index xs1@58@01 (inv@181@01 r))))
    ($Perm.min
      (ite
        (and
          (img@109@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (-
          (- (- (/ (to_real 1) (to_real 4)) (pTaken@183@01 r)) (pTaken@184@01 r))
          (pTaken@185@01 r))
        (pTaken@186@01 r)))
    $Perm.No))
(define-fun pTaken@188@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@181@01 r))
      (img@182@01 r)
      (= r (Seq_index xs1@58@01 (inv@181@01 r))))
    ($Perm.min
      (ite
        (and
          (img@106@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (-
          (-
            (-
              (- (/ (to_real 1) (to_real 4)) (pTaken@183@01 r))
              (pTaken@184@01 r))
            (pTaken@185@01 r))
          (pTaken@186@01 r))
        (pTaken@187@01 r)))
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
          (img@174@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@173@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (pTaken@183@01 r))
    $Perm.No)
  
  :qid |quant-u-11935|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@181@01 r))
      (img@182@01 r)
      (= r (Seq_index xs1@58@01 (inv@181@01 r))))
    (= (- (/ (to_real 1) (to_real 4)) (pTaken@183@01 r)) $Perm.No))
  
  :qid |quant-u-11936|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; leak(xs3, 1 / 3)
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@189@01 Int)
(declare-const j@190@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 48 | !(i@189@01 in [0..|xs3@60@01|]) | live]
; [else-branch: 48 | i@189@01 in [0..|xs3@60@01|] | live]
(push) ; 5
; [then-branch: 48 | !(i@189@01 in [0..|xs3@60@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 48 | i@189@01 in [0..|xs3@60@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 49 | !(j@190@01 in [0..|xs3@60@01|]) | live]
; [else-branch: 49 | j@190@01 in [0..|xs3@60@01|] | live]
(push) ; 7
; [then-branch: 49 | !(j@190@01 in [0..|xs3@60@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 49 | j@190@01 in [0..|xs3@60@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01))))
(push) ; 4
; [then-branch: 50 | i@189@01 in [0..|xs3@60@01|] && j@190@01 in [0..|xs3@60@01|] && i@189@01 != j@190@01 | live]
; [else-branch: 50 | !(i@189@01 in [0..|xs3@60@01|] && j@190@01 in [0..|xs3@60@01|] && i@189@01 != j@190@01) | live]
(push) ; 5
; [then-branch: 50 | i@189@01 in [0..|xs3@60@01|] && j@190@01 in [0..|xs3@60@01|] && i@189@01 != j@190@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
    (not (= i@189@01 j@190@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@189@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@189@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@190@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@190@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 50 | !(i@189@01 in [0..|xs3@60@01|] && j@190@01 in [0..|xs3@60@01|] && i@189@01 != j@190@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
      (not (= i@189@01 j@190@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
      (not (= i@189@01 j@190@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
    (not (= i@189@01 j@190@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
        (not (= i@189@01 j@190@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
      (not (= i@189@01 j@190@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@189@01 Int) (j@190@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
        (not (= i@189@01 j@190@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
            (not (= i@189@01 j@190@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@190@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@189@01 Int) (j@190@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
        (not (= i@189@01 j@190@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
            (not (= i@189@01 j@190@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@189@01 Int) (j@190@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
        (not (= i@189@01 j@190@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
            (not (= i@189@01 j@190@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_index
    xs3@60@01
    j@190@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_index
    xs3@60@01
    j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@189@01 Int) (j@190@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
        (not (= i@189@01 j@190@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
            (not (= i@189@01 j@190@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_index
    xs3@60@01
    j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@189@01 Int) (j@190@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
        (not (= i@189@01 j@190@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
            (not (= i@189@01 j@190@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01) (Seq_index
    xs3@60@01
    i@189@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@190@01) (Seq_index
    xs3@60@01
    i@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@189@01 Int) (j@190@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
        (not (= i@189@01 j@190@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
            (not (= i@189@01 j@190@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@190@01) (Seq_index
    xs3@60@01
    i@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@189@01 Int) (j@190@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
        (not (= i@189@01 j@190@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
            (not (= i@189@01 j@190@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
          (not (= i@189@01 j@190@01))))))
  :pattern ((Seq_index xs3@60@01 i@189@01) (Seq_index xs3@60@01 j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(push) ; 3
(assert (not (forall ((i@189@01 Int) (j@190@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
        (not (= i@189@01 j@190@01))))
    (not (= (Seq_index xs3@60@01 i@189@01) (Seq_index xs3@60@01 j@190@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@190@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@190@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@190@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_index
    xs3@60@01
    j@190@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_index
    xs3@60@01
    j@190@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_index
    xs3@60@01
    j@190@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01) (Seq_index
    xs3@60@01
    i@189@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@190@01) (Seq_index
    xs3@60@01
    i@189@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@190@01) (Seq_index
    xs3@60@01
    i@189@01))
  :pattern ((Seq_index xs3@60@01 i@189@01) (Seq_index xs3@60@01 j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@189@01 Int) (j@190@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01)
        (not (= i@189@01 j@190@01))))
    (not (= (Seq_index xs3@60@01 i@189@01) (Seq_index xs3@60@01 j@190@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@190@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@190@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_index
    xs3@60@01
    j@190@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@189@01) (Seq_index
    xs3@60@01
    j@190@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@190@01) (Seq_index
    xs3@60@01
    i@189@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@190@01) (Seq_index
    xs3@60@01
    i@189@01))
  :pattern ((Seq_index xs3@60@01 i@189@01) (Seq_index xs3@60@01 j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|)))
(declare-const i@191@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@191@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@191@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@191@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@192@01 ($Ref) Int)
(declare-fun img@193@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@191@01 Int) (i2@191@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i1@191@01)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i2@191@01)
      (= (Seq_index xs3@60@01 i1@191@01) (Seq_index xs3@60@01 i2@191@01)))
    (= i1@191@01 i2@191@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@191@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@191@01)
    (and
      (= (inv@192@01 (Seq_index xs3@60@01 i@191@01)) i@191@01)
      (img@193@01 (Seq_index xs3@60@01 i@191@01))))
  :pattern ((Seq_index xs3@60@01 i@191@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@193@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@192@01 r)))
    (= (Seq_index xs3@60@01 (inv@192@01 r)) r))
  :pattern ((inv@192@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@191@01 Int)) (!
  (= (Seq_index xs3@60@01 i@191@01) (Seq_index xs2@59@01 i@191@01))
  
  :qid |quant-u-11938|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@191@01 Int)) (!
  (= (Seq_index xs3@60@01 i@191@01) (Seq_index xs2@59@01 i@191@01))
  
  :qid |quant-u-11939|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@191@01 Int)) (!
  (= (Seq_index xs3@60@01 i@191@01) (Seq_index xs1@58@01 i@191@01))
  
  :qid |quant-u-11940|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@194@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@192@01 r))
      (img@193@01 r)
      (= r (Seq_index xs3@60@01 (inv@192@01 r))))
    ($Perm.min
      (ite
        (and
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 3)))
    $Perm.No))
(define-fun pTaken@195@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@192@01 r))
      (img@193@01 r)
      (= r (Seq_index xs3@60@01 (inv@192@01 r))))
    ($Perm.min
      (ite
        (and
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@156@01 r))
        $Perm.No)
      (- (/ (to_real 1) (to_real 3)) (pTaken@194@01 r)))
    $Perm.No))
(define-fun pTaken@196@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@192@01 r))
      (img@193@01 r)
      (= r (Seq_index xs3@60@01 (inv@192@01 r))))
    ($Perm.min
      (ite
        (and
          (img@106@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 3)) (pTaken@194@01 r)) (pTaken@195@01 r)))
    $Perm.No))
(define-fun pTaken@197@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@192@01 r))
      (img@193@01 r)
      (= r (Seq_index xs3@60@01 (inv@192@01 r))))
    ($Perm.min
      (ite
        (and
          (img@109@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (- (- (/ (to_real 1) (to_real 3)) (pTaken@194@01 r)) (pTaken@195@01 r))
        (pTaken@196@01 r)))
    $Perm.No))
(define-fun pTaken@198@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@192@01 r))
      (img@193@01 r)
      (= r (Seq_index xs3@60@01 (inv@192@01 r))))
    ($Perm.min
      (ite
        (and
          (img@177@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (-
          (- (- (/ (to_real 1) (to_real 3)) (pTaken@194@01 r)) (pTaken@195@01 r))
          (pTaken@196@01 r))
        (pTaken@197@01 r)))
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
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@194@01 r))
    $Perm.No)
  
  :qid |quant-u-11942|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@194@01 r) $Perm.No)
  
  :qid |quant-u-11943|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@192@01 r))
      (img@193@01 r)
      (= r (Seq_index xs3@60@01 (inv@192@01 r))))
    (= (- (/ (to_real 1) (to_real 3)) (pTaken@194@01 r)) $Perm.No))
  
  :qid |quant-u-11944|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; split(xs2, 1 / 2, 1 / 4)
; [eval] p == 2 * q
; [eval] 2 * q
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@199@01 Int)
(declare-const j@200@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 51 | !(i@199@01 in [0..|xs2@59@01|]) | live]
; [else-branch: 51 | i@199@01 in [0..|xs2@59@01|] | live]
(push) ; 5
; [then-branch: 51 | !(i@199@01 in [0..|xs2@59@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 51 | i@199@01 in [0..|xs2@59@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 52 | !(j@200@01 in [0..|xs2@59@01|]) | live]
; [else-branch: 52 | j@200@01 in [0..|xs2@59@01|] | live]
(push) ; 7
; [then-branch: 52 | !(j@200@01 in [0..|xs2@59@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 52 | j@200@01 in [0..|xs2@59@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01))))
(push) ; 4
; [then-branch: 53 | i@199@01 in [0..|xs2@59@01|] && j@200@01 in [0..|xs2@59@01|] && i@199@01 != j@200@01 | live]
; [else-branch: 53 | !(i@199@01 in [0..|xs2@59@01|] && j@200@01 in [0..|xs2@59@01|] && i@199@01 != j@200@01) | live]
(push) ; 5
; [then-branch: 53 | i@199@01 in [0..|xs2@59@01|] && j@200@01 in [0..|xs2@59@01|] && i@199@01 != j@200@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
    (not (= i@199@01 j@200@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@199@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@199@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@200@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@200@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 53 | !(i@199@01 in [0..|xs2@59@01|] && j@200@01 in [0..|xs2@59@01|] && i@199@01 != j@200@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
      (not (= i@199@01 j@200@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
      (not (= i@199@01 j@200@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
    (not (= i@199@01 j@200@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
        (not (= i@199@01 j@200@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
      (not (= i@199@01 j@200@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@199@01 Int) (j@200@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
        (not (= i@199@01 j@200@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
            (not (= i@199@01 j@200@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@199@01 Int) (j@200@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
        (not (= i@199@01 j@200@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
            (not (= i@199@01 j@200@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@199@01 Int) (j@200@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
        (not (= i@199@01 j@200@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
            (not (= i@199@01 j@200@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_index
    xs2@59@01
    j@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_index
    xs2@59@01
    j@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@199@01 Int) (j@200@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
        (not (= i@199@01 j@200@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
            (not (= i@199@01 j@200@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_index
    xs2@59@01
    j@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@199@01 Int) (j@200@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
        (not (= i@199@01 j@200@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
            (not (= i@199@01 j@200@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01) (Seq_index
    xs2@59@01
    i@199@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@200@01) (Seq_index
    xs2@59@01
    i@199@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@199@01 Int) (j@200@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
        (not (= i@199@01 j@200@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
            (not (= i@199@01 j@200@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@200@01) (Seq_index
    xs2@59@01
    i@199@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(assert (forall ((i@199@01 Int) (j@200@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
        (not (= i@199@01 j@200@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
            (not (= i@199@01 j@200@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
          (not (= i@199@01 j@200@01))))))
  :pattern ((Seq_index xs2@59@01 i@199@01) (Seq_index xs2@59@01 j@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98-aux|)))
(push) ; 3
(assert (not (forall ((i@199@01 Int) (j@200@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
        (not (= i@199@01 j@200@01))))
    (not (= (Seq_index xs2@59@01 i@199@01) (Seq_index xs2@59@01 j@200@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@200@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_index
    xs2@59@01
    j@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_index
    xs2@59@01
    j@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_index
    xs2@59@01
    j@200@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01) (Seq_index
    xs2@59@01
    i@199@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@200@01) (Seq_index
    xs2@59@01
    i@199@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@200@01) (Seq_index
    xs2@59@01
    i@199@01))
  :pattern ((Seq_index xs2@59@01 i@199@01) (Seq_index xs2@59@01 j@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@199@01 Int) (j@200@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01)
        (not (= i@199@01 j@200@01))))
    (not (= (Seq_index xs2@59@01 i@199@01) (Seq_index xs2@59@01 j@200@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@200@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_index
    xs2@59@01
    j@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@199@01) (Seq_index
    xs2@59@01
    j@200@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@200@01) (Seq_index
    xs2@59@01
    i@199@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@200@01) (Seq_index
    xs2@59@01
    i@199@01))
  :pattern ((Seq_index xs2@59@01 i@199@01) (Seq_index xs2@59@01 j@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@23@12@23@98|)))
(declare-const i@201@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@201@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@201@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@201@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@202@01 ($Ref) Int)
(declare-fun img@203@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@201@01 Int) (i2@201@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i1@201@01)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i2@201@01)
      (= (Seq_index xs2@59@01 i1@201@01) (Seq_index xs2@59@01 i2@201@01)))
    (= i1@201@01 i2@201@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@201@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@201@01)
    (and
      (= (inv@202@01 (Seq_index xs2@59@01 i@201@01)) i@201@01)
      (img@203@01 (Seq_index xs2@59@01 i@201@01))))
  :pattern ((Seq_index xs2@59@01 i@201@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@203@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@202@01 r)))
    (= (Seq_index xs2@59@01 (inv@202@01 r)) r))
  :pattern ((inv@202@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@201@01 Int)) (!
  (= (Seq_index xs2@59@01 i@201@01) (Seq_index xs1@58@01 i@201@01))
  
  :qid |quant-u-11946|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@201@01 Int)) (!
  (= (Seq_index xs2@59@01 i@201@01) (Seq_index xs3@60@01 i@201@01))
  
  :qid |quant-u-11947|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@201@01 Int)) (!
  (= (Seq_index xs2@59@01 i@201@01) (Seq_index xs3@60@01 i@201@01))
  
  :qid |quant-u-11948|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@204@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@202@01 r))
      (img@203@01 r)
      (= r (Seq_index xs2@59@01 (inv@202@01 r))))
    ($Perm.min
      (ite
        (and
          (img@109@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@205@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@202@01 r))
      (img@203@01 r)
      (= r (Seq_index xs2@59@01 (inv@202@01 r))))
    ($Perm.min
      (ite
        (and
          (img@106@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@204@01 r)))
    $Perm.No))
(define-fun pTaken@206@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@202@01 r))
      (img@203@01 r)
      (= r (Seq_index xs2@59@01 (inv@202@01 r))))
    ($Perm.min
      (ite
        (and
          (img@177@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@204@01 r)) (pTaken@205@01 r)))
    $Perm.No))
(define-fun pTaken@207@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@202@01 r))
      (img@203@01 r)
      (= r (Seq_index xs2@59@01 (inv@202@01 r))))
    ($Perm.min
      (ite
        (and
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@156@01 r))
        $Perm.No)
      (-
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@204@01 r)) (pTaken@205@01 r))
        (pTaken@206@01 r)))
    $Perm.No))
(define-fun pTaken@208@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@202@01 r))
      (img@203@01 r)
      (= r (Seq_index xs2@59@01 (inv@202@01 r))))
    ($Perm.min
      (ite
        (and
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@194@01 r))
        $Perm.No)
      (-
        (-
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@204@01 r)) (pTaken@205@01 r))
          (pTaken@206@01 r))
        (pTaken@207@01 r)))
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
          (img@109@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@108@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (pTaken@204@01 r))
    $Perm.No)
  
  :qid |quant-u-11950|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@202@01 r))
      (img@203@01 r)
      (= r (Seq_index xs2@59@01 (inv@202@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@204@01 r)) $Perm.No))
  
  :qid |quant-u-11951|))))
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
        (and
          (img@106@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@105@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (pTaken@205@01 r))
    $Perm.No)
  
  :qid |quant-u-11952|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@202@01 r))
      (img@203@01 r)
      (= r (Seq_index xs2@59@01 (inv@202@01 r))))
    (=
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@204@01 r)) (pTaken@205@01 r))
      $Perm.No))
  
  :qid |quant-u-11953|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@209@01 $Snap)
(assert (= $t@209@01 ($Snap.combine ($Snap.first $t@209@01) ($Snap.second $t@209@01))))
(declare-const i@210@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@210@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@210@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@210@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@211@01 ($Ref) Int)
(declare-fun img@212@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@210@01 Int) (i2@210@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i1@210@01)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i2@210@01)
      (= (Seq_index xs2@59@01 i1@210@01) (Seq_index xs2@59@01 i2@210@01)))
    (= i1@210@01 i2@210@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@210@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@210@01)
    (and
      (= (inv@211@01 (Seq_index xs2@59@01 i@210@01)) i@210@01)
      (img@212@01 (Seq_index xs2@59@01 i@210@01))))
  :pattern ((Seq_index xs2@59@01 i@210@01))
  :qid |quant-u-11955|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@212@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@211@01 r)))
    (= (Seq_index xs2@59@01 (inv@211@01 r)) r))
  :pattern ((inv@211@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@210@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@210@01)
    (not (= (Seq_index xs2@59@01 i@210@01) $Ref.null)))
  :pattern ((Seq_index xs2@59@01 i@210@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs2@59@01 i@210@01) (Seq_index xs1@58@01 i@175@01))
    (=
      (and
        (img@212@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@211@01 r)))
      (and
        (img@177@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))))
  
  :qid |quant-u-11956|))))
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
    (= (Seq_index xs2@59@01 i@210@01) (Seq_index xs3@60@01 i@122@01))
    (=
      (and
        (img@212@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@211@01 r)))
      (and
        (img@124@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))))
  
  :qid |quant-u-11957|))))
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
    (= (Seq_index xs2@59@01 i@210@01) (Seq_index xs3@60@01 i@125@01))
    (=
      (and
        (img@212@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@211@01 r)))
      (and
        (img@127@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))))
  
  :qid |quant-u-11958|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const i@213@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@213@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@213@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@213@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@214@01 ($Ref) Int)
(declare-fun img@215@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@213@01 Int) (i2@213@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i1@213@01)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i2@213@01)
      (= (Seq_index xs2@59@01 i1@213@01) (Seq_index xs2@59@01 i2@213@01)))
    (= i1@213@01 i2@213@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@213@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@213@01)
    (and
      (= (inv@214@01 (Seq_index xs2@59@01 i@213@01)) i@213@01)
      (img@215@01 (Seq_index xs2@59@01 i@213@01))))
  :pattern ((Seq_index xs2@59@01 i@213@01))
  :qid |quant-u-11960|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@215@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@214@01 r)))
    (= (Seq_index xs2@59@01 (inv@214@01 r)) r))
  :pattern ((inv@214@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@213@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@213@01)
    (not (= (Seq_index xs2@59@01 i@213@01) $Ref.null)))
  :pattern ((Seq_index xs2@59@01 i@213@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs2@59@01 i@213@01) (Seq_index xs2@59@01 i@210@01))
    (=
      (and
        (img@215@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@214@01 r)))
      (and
        (img@212@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@211@01 r)))))
  
  :qid |quant-u-11961|))))
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
    (= (Seq_index xs2@59@01 i@213@01) (Seq_index xs1@58@01 i@175@01))
    (=
      (and
        (img@215@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@214@01 r)))
      (and
        (img@177@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))))
  
  :qid |quant-u-11962|))))
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
    (= (Seq_index xs2@59@01 i@213@01) (Seq_index xs3@60@01 i@122@01))
    (=
      (and
        (img@215@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@214@01 r)))
      (and
        (img@124@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))))
  
  :qid |quant-u-11963|))))
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
    (= (Seq_index xs2@59@01 i@213@01) (Seq_index xs3@60@01 i@125@01))
    (=
      (and
        (img@215@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@214@01 r)))
      (and
        (img@127@01 r)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))))
  
  :qid |quant-u-11964|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; leak(xs1, 1 / 4)
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@216@01 Int)
(declare-const j@217@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 54 | !(i@216@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 54 | i@216@01 in [0..|xs1@58@01|] | live]
(push) ; 5
; [then-branch: 54 | !(i@216@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 54 | i@216@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 55 | !(j@217@01 in [0..|xs1@58@01|]) | live]
; [else-branch: 55 | j@217@01 in [0..|xs1@58@01|] | live]
(push) ; 7
; [then-branch: 55 | !(j@217@01 in [0..|xs1@58@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 55 | j@217@01 in [0..|xs1@58@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01))))
(push) ; 4
; [then-branch: 56 | i@216@01 in [0..|xs1@58@01|] && j@217@01 in [0..|xs1@58@01|] && i@216@01 != j@217@01 | live]
; [else-branch: 56 | !(i@216@01 in [0..|xs1@58@01|] && j@217@01 in [0..|xs1@58@01|] && i@216@01 != j@217@01) | live]
(push) ; 5
; [then-branch: 56 | i@216@01 in [0..|xs1@58@01|] && j@217@01 in [0..|xs1@58@01|] && i@216@01 != j@217@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
    (not (= i@216@01 j@217@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@216@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@216@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@217@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@217@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 56 | !(i@216@01 in [0..|xs1@58@01|] && j@217@01 in [0..|xs1@58@01|] && i@216@01 != j@217@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
      (not (= i@216@01 j@217@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
      (not (= i@216@01 j@217@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
    (not (= i@216@01 j@217@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
        (not (= i@216@01 j@217@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
      (not (= i@216@01 j@217@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@216@01 Int) (j@217@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
        (not (= i@216@01 j@217@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
            (not (= i@216@01 j@217@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@217@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@216@01 Int) (j@217@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
        (not (= i@216@01 j@217@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
            (not (= i@216@01 j@217@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@216@01 Int) (j@217@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
        (not (= i@216@01 j@217@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
            (not (= i@216@01 j@217@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_index
    xs1@58@01
    j@217@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_index
    xs1@58@01
    j@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@216@01 Int) (j@217@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
        (not (= i@216@01 j@217@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
            (not (= i@216@01 j@217@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_index
    xs1@58@01
    j@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@216@01 Int) (j@217@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
        (not (= i@216@01 j@217@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
            (not (= i@216@01 j@217@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01) (Seq_index
    xs1@58@01
    i@216@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@217@01) (Seq_index
    xs1@58@01
    i@216@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@216@01 Int) (j@217@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
        (not (= i@216@01 j@217@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
            (not (= i@216@01 j@217@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@217@01) (Seq_index
    xs1@58@01
    i@216@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@216@01 Int) (j@217@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
        (not (= i@216@01 j@217@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
            (not (= i@216@01 j@217@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
          (not (= i@216@01 j@217@01))))))
  :pattern ((Seq_index xs1@58@01 i@216@01) (Seq_index xs1@58@01 j@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(push) ; 3
(assert (not (forall ((i@216@01 Int) (j@217@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
        (not (= i@216@01 j@217@01))))
    (not (= (Seq_index xs1@58@01 i@216@01) (Seq_index xs1@58@01 j@217@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@217@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@217@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@217@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_index
    xs1@58@01
    j@217@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_index
    xs1@58@01
    j@217@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_index
    xs1@58@01
    j@217@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01) (Seq_index
    xs1@58@01
    i@216@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@217@01) (Seq_index
    xs1@58@01
    i@216@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@217@01) (Seq_index
    xs1@58@01
    i@216@01))
  :pattern ((Seq_index xs1@58@01 i@216@01) (Seq_index xs1@58@01 j@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@216@01 Int) (j@217@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01)
        (not (= i@216@01 j@217@01))))
    (not (= (Seq_index xs1@58@01 i@216@01) (Seq_index xs1@58@01 j@217@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_contains
    (Seq_range 0 (Seq_length xs1@58@01))
    j@217@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs1@58@01))
    j@217@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_index
    xs1@58@01
    j@217@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) i@216@01) (Seq_index
    xs1@58@01
    j@217@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) j@217@01) (Seq_index
    xs1@58@01
    i@216@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs1@58@01)) j@217@01) (Seq_index
    xs1@58@01
    i@216@01))
  :pattern ((Seq_index xs1@58@01 i@216@01) (Seq_index xs1@58@01 j@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|)))
(declare-const i@218@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@218@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@218@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@218@01 (Seq_length xs1@58@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@219@01 ($Ref) Int)
(declare-fun img@220@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@218@01 Int) (i2@218@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i1@218@01)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i2@218@01)
      (= (Seq_index xs1@58@01 i1@218@01) (Seq_index xs1@58@01 i2@218@01)))
    (= i1@218@01 i2@218@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@218@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) i@218@01)
    (and
      (= (inv@219@01 (Seq_index xs1@58@01 i@218@01)) i@218@01)
      (img@220@01 (Seq_index xs1@58@01 i@218@01))))
  :pattern ((Seq_index xs1@58@01 i@218@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@219@01 r)))
    (= (Seq_index xs1@58@01 (inv@219@01 r)) r))
  :pattern ((inv@219@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@218@01 Int)) (!
  (= (Seq_index xs1@58@01 i@218@01) (Seq_index xs3@60@01 i@218@01))
  
  :qid |quant-u-11966|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@218@01 Int)) (!
  (= (Seq_index xs1@58@01 i@218@01) (Seq_index xs3@60@01 i@218@01))
  
  :qid |quant-u-11967|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@218@01 Int)) (!
  (= (Seq_index xs1@58@01 i@218@01) (Seq_index xs2@59@01 i@218@01))
  
  :qid |quant-u-11968|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@218@01 Int)) (!
  (= (Seq_index xs1@58@01 i@218@01) (Seq_index xs2@59@01 i@218@01))
  
  :qid |quant-u-11969|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@221@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@219@01 r))
      (img@220@01 r)
      (= r (Seq_index xs1@58@01 (inv@219@01 r))))
    ($Perm.min
      (ite
        (and
          (img@177@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (/ (to_real 1) (to_real 4)))
    $Perm.No))
(define-fun pTaken@222@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@219@01 r))
      (img@220@01 r)
      (= r (Seq_index xs1@58@01 (inv@219@01 r))))
    ($Perm.min
      (ite
        (and
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@194@01 r))
        $Perm.No)
      (- (/ (to_real 1) (to_real 4)) (pTaken@221@01 r)))
    $Perm.No))
(define-fun pTaken@223@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@219@01 r))
      (img@220@01 r)
      (= r (Seq_index xs1@58@01 (inv@219@01 r))))
    ($Perm.min
      (ite
        (and
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@156@01 r))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 4)) (pTaken@221@01 r)) (pTaken@222@01 r)))
    $Perm.No))
(define-fun pTaken@224@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@219@01 r))
      (img@220@01 r)
      (= r (Seq_index xs1@58@01 (inv@219@01 r))))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@211@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (- (- (/ (to_real 1) (to_real 4)) (pTaken@221@01 r)) (pTaken@222@01 r))
        (pTaken@223@01 r)))
    $Perm.No))
(define-fun pTaken@225@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@219@01 r))
      (img@220@01 r)
      (= r (Seq_index xs1@58@01 (inv@219@01 r))))
    ($Perm.min
      (ite
        (and
          (img@215@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@214@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (-
          (- (- (/ (to_real 1) (to_real 4)) (pTaken@221@01 r)) (pTaken@222@01 r))
          (pTaken@223@01 r))
        (pTaken@224@01 r)))
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
          (img@177@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@176@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (pTaken@221@01 r))
    $Perm.No)
  
  :qid |quant-u-11971|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs1@58@01)) (inv@219@01 r))
      (img@220@01 r)
      (= r (Seq_index xs1@58@01 (inv@219@01 r))))
    (= (- (/ (to_real 1) (to_real 4)) (pTaken@221@01 r)) $Perm.No))
  
  :qid |quant-u-11972|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; leak(xs3, 1 / 3)
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@226@01 Int)
(declare-const j@227@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 57 | !(i@226@01 in [0..|xs3@60@01|]) | live]
; [else-branch: 57 | i@226@01 in [0..|xs3@60@01|] | live]
(push) ; 5
; [then-branch: 57 | !(i@226@01 in [0..|xs3@60@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 57 | i@226@01 in [0..|xs3@60@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 58 | !(j@227@01 in [0..|xs3@60@01|]) | live]
; [else-branch: 58 | j@227@01 in [0..|xs3@60@01|] | live]
(push) ; 7
; [then-branch: 58 | !(j@227@01 in [0..|xs3@60@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 58 | j@227@01 in [0..|xs3@60@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01))))
(push) ; 4
; [then-branch: 59 | i@226@01 in [0..|xs3@60@01|] && j@227@01 in [0..|xs3@60@01|] && i@226@01 != j@227@01 | live]
; [else-branch: 59 | !(i@226@01 in [0..|xs3@60@01|] && j@227@01 in [0..|xs3@60@01|] && i@226@01 != j@227@01) | live]
(push) ; 5
; [then-branch: 59 | i@226@01 in [0..|xs3@60@01|] && j@227@01 in [0..|xs3@60@01|] && i@226@01 != j@227@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
    (not (= i@226@01 j@227@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@226@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@226@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@227@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@227@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 59 | !(i@226@01 in [0..|xs3@60@01|] && j@227@01 in [0..|xs3@60@01|] && i@226@01 != j@227@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
      (not (= i@226@01 j@227@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
      (not (= i@226@01 j@227@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
    (not (= i@226@01 j@227@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
        (not (= i@226@01 j@227@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
      (not (= i@226@01 j@227@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@226@01 Int) (j@227@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
        (not (= i@226@01 j@227@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
            (not (= i@226@01 j@227@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@227@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@227@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@226@01 Int) (j@227@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
        (not (= i@226@01 j@227@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
            (not (= i@226@01 j@227@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@227@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@226@01 Int) (j@227@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
        (not (= i@226@01 j@227@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
            (not (= i@226@01 j@227@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_index
    xs3@60@01
    j@227@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_index
    xs3@60@01
    j@227@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@226@01 Int) (j@227@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
        (not (= i@226@01 j@227@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
            (not (= i@226@01 j@227@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_index
    xs3@60@01
    j@227@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@226@01 Int) (j@227@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
        (not (= i@226@01 j@227@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
            (not (= i@226@01 j@227@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01) (Seq_index
    xs3@60@01
    i@226@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@227@01) (Seq_index
    xs3@60@01
    i@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@226@01 Int) (j@227@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
        (not (= i@226@01 j@227@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
            (not (= i@226@01 j@227@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@227@01) (Seq_index
    xs3@60@01
    i@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@226@01 Int) (j@227@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
        (not (= i@226@01 j@227@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
            (not (= i@226@01 j@227@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
          (not (= i@226@01 j@227@01))))))
  :pattern ((Seq_index xs3@60@01 i@226@01) (Seq_index xs3@60@01 j@227@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(push) ; 3
(assert (not (forall ((i@226@01 Int) (j@227@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
        (not (= i@226@01 j@227@01))))
    (not (= (Seq_index xs3@60@01 i@226@01) (Seq_index xs3@60@01 j@227@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@227@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@227@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@227@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_index
    xs3@60@01
    j@227@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_index
    xs3@60@01
    j@227@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_index
    xs3@60@01
    j@227@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01) (Seq_index
    xs3@60@01
    i@226@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@227@01) (Seq_index
    xs3@60@01
    i@226@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@227@01) (Seq_index
    xs3@60@01
    i@226@01))
  :pattern ((Seq_index xs3@60@01 i@226@01) (Seq_index xs3@60@01 j@227@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@226@01 Int) (j@227@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01)
        (not (= i@226@01 j@227@01))))
    (not (= (Seq_index xs3@60@01 i@226@01) (Seq_index xs3@60@01 j@227@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_contains
    (Seq_range 0 (Seq_length xs3@60@01))
    j@227@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs3@60@01))
    j@227@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_index
    xs3@60@01
    j@227@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) i@226@01) (Seq_index
    xs3@60@01
    j@227@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) j@227@01) (Seq_index
    xs3@60@01
    i@226@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs3@60@01)) j@227@01) (Seq_index
    xs3@60@01
    i@226@01))
  :pattern ((Seq_index xs3@60@01 i@226@01) (Seq_index xs3@60@01 j@227@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|)))
(declare-const i@228@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@228@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@228@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@228@01 (Seq_length xs3@60@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@229@01 ($Ref) Int)
(declare-fun img@230@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@228@01 Int) (i2@228@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i1@228@01)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i2@228@01)
      (= (Seq_index xs3@60@01 i1@228@01) (Seq_index xs3@60@01 i2@228@01)))
    (= i1@228@01 i2@228@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@228@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) i@228@01)
    (and
      (= (inv@229@01 (Seq_index xs3@60@01 i@228@01)) i@228@01)
      (img@230@01 (Seq_index xs3@60@01 i@228@01))))
  :pattern ((Seq_index xs3@60@01 i@228@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@230@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@229@01 r)))
    (= (Seq_index xs3@60@01 (inv@229@01 r)) r))
  :pattern ((inv@229@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@228@01 Int)) (!
  (= (Seq_index xs3@60@01 i@228@01) (Seq_index xs2@59@01 i@228@01))
  
  :qid |quant-u-11974|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@228@01 Int)) (!
  (= (Seq_index xs3@60@01 i@228@01) (Seq_index xs2@59@01 i@228@01))
  
  :qid |quant-u-11975|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@231@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@229@01 r))
      (img@230@01 r)
      (= r (Seq_index xs3@60@01 (inv@229@01 r))))
    ($Perm.min
      (ite
        (and
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@156@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 3)))
    $Perm.No))
(define-fun pTaken@232@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@229@01 r))
      (img@230@01 r)
      (= r (Seq_index xs3@60@01 (inv@229@01 r))))
    ($Perm.min
      (ite
        (and
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@194@01 r))
        $Perm.No)
      (- (/ (to_real 1) (to_real 3)) (pTaken@231@01 r)))
    $Perm.No))
(define-fun pTaken@233@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@229@01 r))
      (img@230@01 r)
      (= r (Seq_index xs3@60@01 (inv@229@01 r))))
    ($Perm.min
      (ite
        (and
          (img@215@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@214@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 3)) (pTaken@231@01 r)) (pTaken@232@01 r)))
    $Perm.No))
(define-fun pTaken@234@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@229@01 r))
      (img@230@01 r)
      (= r (Seq_index xs3@60@01 (inv@229@01 r))))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@211@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (-
        (- (- (/ (to_real 1) (to_real 3)) (pTaken@231@01 r)) (pTaken@232@01 r))
        (pTaken@233@01 r)))
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
          (img@124@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@123@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@156@01 r))
        $Perm.No)
      (pTaken@231@01 r))
    $Perm.No)
  
  :qid |quant-u-11977|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@229@01 r))
      (img@230@01 r)
      (= r (Seq_index xs3@60@01 (inv@229@01 r))))
    (= (- (/ (to_real 1) (to_real 3)) (pTaken@231@01 r)) $Perm.No))
  
  :qid |quant-u-11978|))))
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
        (and
          (img@127@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@126@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@194@01 r))
        $Perm.No)
      (pTaken@232@01 r))
    $Perm.No)
  
  :qid |quant-u-11979|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs3@60@01)) (inv@229@01 r))
      (img@230@01 r)
      (= r (Seq_index xs3@60@01 (inv@229@01 r))))
    (=
      (- (- (/ (to_real 1) (to_real 3)) (pTaken@231@01 r)) (pTaken@232@01 r))
      $Perm.No))
  
  :qid |quant-u-11980|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; leak(xs2, 1 / 2)
; [eval] p >= none
; [eval] (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
(declare-const i@235@01 Int)
(declare-const j@236@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]
; [eval] (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j)
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 4
; [then-branch: 60 | !(i@235@01 in [0..|xs2@59@01|]) | live]
; [else-branch: 60 | i@235@01 in [0..|xs2@59@01|] | live]
(push) ; 5
; [then-branch: 60 | !(i@235@01 in [0..|xs2@59@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 60 | i@235@01 in [0..|xs2@59@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01))
; [eval] (j in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(push) ; 6
; [then-branch: 61 | !(j@236@01 in [0..|xs2@59@01|]) | live]
; [else-branch: 61 | j@236@01 in [0..|xs2@59@01|] | live]
(push) ; 7
; [then-branch: 61 | !(j@236@01 in [0..|xs2@59@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 61 | j@236@01 in [0..|xs2@59@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01))
; [eval] i != j
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
  (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01))))
(push) ; 4
; [then-branch: 62 | i@235@01 in [0..|xs2@59@01|] && j@236@01 in [0..|xs2@59@01|] && i@235@01 != j@236@01 | live]
; [else-branch: 62 | !(i@235@01 in [0..|xs2@59@01|] && j@236@01 in [0..|xs2@59@01|] && i@235@01 != j@236@01) | live]
(push) ; 5
; [then-branch: 62 | i@235@01 in [0..|xs2@59@01|] && j@236@01 in [0..|xs2@59@01|] && i@235@01 != j@236@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
    (not (= i@235@01 j@236@01)))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 6
(assert (not (>= i@235@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@235@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@236@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@236@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 62 | !(i@235@01 in [0..|xs2@59@01|] && j@236@01 in [0..|xs2@59@01|] && i@235@01 != j@236@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
      (not (= i@235@01 j@236@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
      (not (= i@235@01 j@236@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
    (not (= i@235@01 j@236@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
        (not (= i@235@01 j@236@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
      (not (= i@235@01 j@236@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@235@01 Int) (j@236@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
        (not (= i@235@01 j@236@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
            (not (= i@235@01 j@236@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@236@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@236@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@235@01 Int) (j@236@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
        (not (= i@235@01 j@236@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
            (not (= i@235@01 j@236@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@236@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@235@01 Int) (j@236@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
        (not (= i@235@01 j@236@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
            (not (= i@235@01 j@236@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_index
    xs2@59@01
    j@236@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_index
    xs2@59@01
    j@236@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@235@01 Int) (j@236@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
        (not (= i@235@01 j@236@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
            (not (= i@235@01 j@236@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_index
    xs2@59@01
    j@236@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@235@01 Int) (j@236@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
        (not (= i@235@01 j@236@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
            (not (= i@235@01 j@236@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01) (Seq_index
    xs2@59@01
    i@235@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@236@01) (Seq_index
    xs2@59@01
    i@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@235@01 Int) (j@236@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
        (not (= i@235@01 j@236@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
            (not (= i@235@01 j@236@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@236@01) (Seq_index
    xs2@59@01
    i@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(assert (forall ((i@235@01 Int) (j@236@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (not (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
        (not (= i@235@01 j@236@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
            (not (= i@235@01 j@236@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
          (not (= i@235@01 j@236@01))))))
  :pattern ((Seq_index xs2@59@01 i@235@01) (Seq_index xs2@59@01 j@236@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98-aux|)))
(push) ; 3
(assert (not (forall ((i@235@01 Int) (j@236@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
        (not (= i@235@01 j@236@01))))
    (not (= (Seq_index xs2@59@01 i@235@01) (Seq_index xs2@59@01 j@236@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@236@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@236@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@236@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_index
    xs2@59@01
    j@236@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_index
    xs2@59@01
    j@236@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_index
    xs2@59@01
    j@236@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01) (Seq_index
    xs2@59@01
    i@235@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@236@01) (Seq_index
    xs2@59@01
    i@235@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@236@01) (Seq_index
    xs2@59@01
    i@235@01))
  :pattern ((Seq_index xs2@59@01 i@235@01) (Seq_index xs2@59@01 j@236@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@235@01 Int) (j@236@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01)
        (not (= i@235@01 j@236@01))))
    (not (= (Seq_index xs2@59@01 i@235@01) (Seq_index xs2@59@01 j@236@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_contains
    (Seq_range 0 (Seq_length xs2@59@01))
    j@236@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length xs2@59@01))
    j@236@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_index
    xs2@59@01
    j@236@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) i@235@01) (Seq_index
    xs2@59@01
    j@236@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) j@236@01) (Seq_index
    xs2@59@01
    i@235@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length xs2@59@01)) j@236@01) (Seq_index
    xs2@59@01
    i@235@01))
  :pattern ((Seq_index xs2@59@01 i@235@01) (Seq_index xs2@59@01 j@236@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/performance.vpr@16@12@16@98|)))
(declare-const i@237@01 Int)
(push) ; 3
; [eval] (i in [0..|xs|))
; [eval] [0..|xs|)
; [eval] |xs|
(assert (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@237@01))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@237@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@237@01 (Seq_length xs2@59@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@238@01 ($Ref) Int)
(declare-fun img@239@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@237@01 Int) (i2@237@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i1@237@01)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i2@237@01)
      (= (Seq_index xs2@59@01 i1@237@01) (Seq_index xs2@59@01 i2@237@01)))
    (= i1@237@01 i2@237@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@237@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) i@237@01)
    (and
      (= (inv@238@01 (Seq_index xs2@59@01 i@237@01)) i@237@01)
      (img@239@01 (Seq_index xs2@59@01 i@237@01))))
  :pattern ((Seq_index xs2@59@01 i@237@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@238@01 r)))
    (= (Seq_index xs2@59@01 (inv@238@01 r)) r))
  :pattern ((inv@238@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@240@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@238@01 r))
      (img@239@01 r)
      (= r (Seq_index xs2@59@01 (inv@238@01 r))))
    ($Perm.min
      (ite
        (and
          (img@212@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@211@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@241@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@238@01 r))
      (img@239@01 r)
      (= r (Seq_index xs2@59@01 (inv@238@01 r))))
    ($Perm.min
      (ite
        (and
          (img@215@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@214@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@240@01 r)))
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
          (img@212@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@211@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (pTaken@240@01 r))
    $Perm.No)
  
  :qid |quant-u-11983|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@238@01 r))
      (img@239@01 r)
      (= r (Seq_index xs2@59@01 (inv@238@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@240@01 r)) $Perm.No))
  
  :qid |quant-u-11984|))))
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
        (and
          (img@215@01 r)
          (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@214@01 r)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (pTaken@241@01 r))
    $Perm.No)
  
  :qid |quant-u-11985|))))
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
      (Seq_contains (Seq_range 0 (Seq_length xs2@59@01)) (inv@238@01 r))
      (img@239@01 r)
      (= r (Seq_index xs2@59@01 (inv@238@01 r))))
    (=
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@240@01 r)) (pTaken@241@01 r))
      $Perm.No))
  
  :qid |quant-u-11986|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
