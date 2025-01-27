(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 23:10:50
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
(declare-sort Set<$Ref> 0)
(declare-sort Set<Int> 0)
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
; ---------- m01 ----------
(declare-const S1@0@01 Seq<$Ref>)
(declare-const S2@1@01 Set<$Ref>)
(declare-const x@2@01 $Ref)
(declare-const S1@3@01 Seq<$Ref>)
(declare-const S2@4@01 Set<$Ref>)
(declare-const x@5@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.first $t@6@01) $Snap.unit))
; [eval] S1 == Seq(x)
; [eval] Seq(x)
(assert (= (Seq_length (Seq_singleton x@5@01)) 1))
(assert (Seq_equal S1@3@01 (Seq_singleton x@5@01)))
(assert (=
  ($Snap.second $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@6@01))
    ($Snap.second ($Snap.second $t@6@01)))))
(assert (= ($Snap.first ($Snap.second $t@6@01)) $Snap.unit))
; [eval] S2 == Set(x)
; [eval] Set(x)
(assert (Set_equal S2@4@01 (Set_singleton x@5@01)))
(declare-const i@7@01 Int)
(push) ; 2
; [eval] (i in [0..|S1|))
; [eval] [0..|S1|)
; [eval] |S1|
(assert (Seq_contains (Seq_range 0 (Seq_length S1@3@01)) i@7@01))
; [eval] S1[i]
(push) ; 3
(assert (not (>= i@7@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@7@01 (Seq_length S1@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@8@01 ($Ref) Int)
(declare-fun img@9@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@7@01 Int) (i2@7@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S1@3@01)) i1@7@01)
      (Seq_contains (Seq_range 0 (Seq_length S1@3@01)) i2@7@01)
      (= (Seq_index S1@3@01 i1@7@01) (Seq_index S1@3@01 i2@7@01)))
    (= i1@7@01 i2@7@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@7@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S1@3@01)) i@7@01)
    (and
      (= (inv@8@01 (Seq_index S1@3@01 i@7@01)) i@7@01)
      (img@9@01 (Seq_index S1@3@01 i@7@01))))
  :pattern ((Seq_index S1@3@01 i@7@01))
  :qid |quant-u-19905|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@9@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S1@3@01)) (inv@8@01 r)))
    (= (Seq_index S1@3@01 (inv@8@01 r)) r))
  :pattern ((inv@8@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@7@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S1@3@01)) i@7@01)
    (not (= (Seq_index S1@3@01 i@7@01) $Ref.null)))
  :pattern ((Seq_index S1@3@01 i@7@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const y@10@01 $Ref)
(push) ; 3
; [eval] (y in S2)
(assert (Set_in y@10@01 S2@4@01))
(pop) ; 3
(declare-const $t@11@01 $FVF<f>)
(declare-fun inv@12@01 ($Ref) $Ref)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@10@01 $Ref) (y2@10@01 $Ref)) (!
  (=>
    (and
      (Set_in y1@10@01 S2@4@01)
      (Set_in y2@10@01 S2@4@01)
      (= y1@10@01 y2@10@01))
    (= y1@10@01 y2@10@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@10@01 $Ref)) (!
  (=>
    (Set_in y@10@01 S2@4@01)
    (and (= (inv@12@01 y@10@01) y@10@01) (img@13@01 y@10@01)))
  :pattern ((Set_in y@10@01 S2@4@01))
  :pattern ((inv@12@01 y@10@01))
  :pattern ((img@13@01 y@10@01))
  :qid |quant-u-19907|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@13@01 r) (Set_in (inv@12@01 r) S2@4@01)) (= (inv@12@01 r) r))
  :pattern ((inv@12@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@10@01 $Ref)) (!
  (=> (Set_in y@10@01 S2@4@01) (not (= y@10@01 $Ref.null)))
  :pattern ((Set_in y@10@01 S2@4@01))
  :pattern ((inv@12@01 y@10@01))
  :pattern ((img@13@01 y@10@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const y@14@01 $Ref)
(push) ; 3
; [eval] (y in S2)
(assert (Set_in y@14@01 S2@4@01))
(pop) ; 3
(declare-fun inv@15@01 ($Ref) $Ref)
(declare-fun img@16@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@14@01 $Ref) (y2@14@01 $Ref)) (!
  (=>
    (and
      (Set_in y1@14@01 S2@4@01)
      (Set_in y2@14@01 S2@4@01)
      (= y1@14@01 y2@14@01))
    (= y1@14@01 y2@14@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@14@01 $Ref)) (!
  (=>
    (Set_in y@14@01 S2@4@01)
    (and (= (inv@15@01 y@14@01) y@14@01) (img@16@01 y@14@01)))
  :pattern ((Set_in y@14@01 S2@4@01))
  :pattern ((inv@15@01 y@14@01))
  :pattern ((img@16@01 y@14@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@16@01 r) (Set_in (inv@15@01 r) S2@4@01)) (= (inv@15@01 r) r))
  :pattern ((inv@15@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@17@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@15@01 r) S2@4@01) (img@16@01 r) (= r (inv@15@01 r)))
    ($Perm.min
      (ite
        (and
          (img@9@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S1@3@01)) (inv@8@01 r)))
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
          (img@9@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S1@3@01)) (inv@8@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@17@01 r))
    $Perm.No)
  
  :qid |quant-u-19910|))))
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
    (and (Set_in (inv@15@01 r) S2@4@01) (img@16@01 r) (= r (inv@15@01 r)))
    (= (- $Perm.Write (pTaken@17@01 r)) $Perm.No))
  
  :qid |quant-u-19911|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m02 ----------
(declare-const S1@18@01 Seq<$Ref>)
(declare-const S2@19@01 Set<$Ref>)
(declare-const x@20@01 $Ref)
(declare-const S1@21@01 Seq<$Ref>)
(declare-const S2@22@01 Set<$Ref>)
(declare-const x@23@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
(assert (= ($Snap.first $t@24@01) $Snap.unit))
; [eval] S1 == Seq(x)
; [eval] Seq(x)
(assert (= (Seq_length (Seq_singleton x@23@01)) 1))
(assert (Seq_equal S1@21@01 (Seq_singleton x@23@01)))
(assert (=
  ($Snap.second $t@24@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@24@01))
    ($Snap.second ($Snap.second $t@24@01)))))
(assert (= ($Snap.first ($Snap.second $t@24@01)) $Snap.unit))
; [eval] S2 == Set(x)
; [eval] Set(x)
(assert (Set_equal S2@22@01 (Set_singleton x@23@01)))
(declare-const i@25@01 Int)
(push) ; 2
; [eval] (i in [0..|S1|))
; [eval] [0..|S1|)
; [eval] |S1|
(assert (Seq_contains (Seq_range 0 (Seq_length S1@21@01)) i@25@01))
; [eval] S1[i]
(push) ; 3
(assert (not (>= i@25@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@25@01 (Seq_length S1@21@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@26@01 ($Ref) Int)
(declare-fun img@27@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@25@01 Int) (i2@25@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S1@21@01)) i1@25@01)
      (Seq_contains (Seq_range 0 (Seq_length S1@21@01)) i2@25@01)
      (= (Seq_index S1@21@01 i1@25@01) (Seq_index S1@21@01 i2@25@01)))
    (= i1@25@01 i2@25@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@25@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S1@21@01)) i@25@01)
    (and
      (= (inv@26@01 (Seq_index S1@21@01 i@25@01)) i@25@01)
      (img@27@01 (Seq_index S1@21@01 i@25@01))))
  :pattern ((Seq_index S1@21@01 i@25@01))
  :qid |quant-u-19913|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S1@21@01)) (inv@26@01 r)))
    (= (Seq_index S1@21@01 (inv@26@01 r)) r))
  :pattern ((inv@26@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@25@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S1@21@01)) i@25@01)
    (not (= (Seq_index S1@21@01 i@25@01) $Ref.null)))
  :pattern ((Seq_index S1@21@01 i@25@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const y@28@01 $Ref)
(push) ; 3
; [eval] (y in S1)
(assert (Seq_contains S1@21@01 y@28@01))
(pop) ; 3
(declare-const $t@29@01 $FVF<f>)
(declare-fun inv@30@01 ($Ref) $Ref)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@28@01 $Ref) (y2@28@01 $Ref)) (!
  (=>
    (and
      (Seq_contains S1@21@01 y1@28@01)
      (Seq_contains S1@21@01 y2@28@01)
      (= y1@28@01 y2@28@01))
    (= y1@28@01 y2@28@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@28@01 $Ref)) (!
  (=>
    (Seq_contains S1@21@01 y@28@01)
    (and (= (inv@30@01 y@28@01) y@28@01) (img@31@01 y@28@01)))
  :pattern ((Seq_contains S1@21@01 y@28@01))
  :pattern ((Seq_contains_trigger S1@21@01 y@28@01))
  :pattern ((Seq_contains_trigger S1@21@01 y@28@01))
  :pattern ((inv@30@01 y@28@01))
  :pattern ((img@31@01 y@28@01))
  :qid |quant-u-19915|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Seq_contains S1@21@01 (inv@30@01 r)))
    (= (inv@30@01 r) r))
  :pattern ((inv@30@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@28@01 $Ref)) (!
  (=> (Seq_contains S1@21@01 y@28@01) (not (= y@28@01 $Ref.null)))
  :pattern ((Seq_contains S1@21@01 y@28@01))
  :pattern ((Seq_contains_trigger S1@21@01 y@28@01))
  :pattern ((Seq_contains_trigger S1@21@01 y@28@01))
  :pattern ((inv@30@01 y@28@01))
  :pattern ((img@31@01 y@28@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const y@32@01 $Ref)
(push) ; 3
; [eval] (y in S1)
(assert (Seq_contains S1@21@01 y@32@01))
(pop) ; 3
(declare-fun inv@33@01 ($Ref) $Ref)
(declare-fun img@34@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@32@01 $Ref) (y2@32@01 $Ref)) (!
  (=>
    (and
      (Seq_contains S1@21@01 y1@32@01)
      (Seq_contains S1@21@01 y2@32@01)
      (= y1@32@01 y2@32@01))
    (= y1@32@01 y2@32@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@32@01 $Ref)) (!
  (=>
    (Seq_contains S1@21@01 y@32@01)
    (and (= (inv@33@01 y@32@01) y@32@01) (img@34@01 y@32@01)))
  :pattern ((Seq_contains S1@21@01 y@32@01))
  :pattern ((Seq_contains_trigger S1@21@01 y@32@01))
  :pattern ((inv@33@01 y@32@01))
  :pattern ((img@34@01 y@32@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (Seq_contains S1@21@01 (inv@33@01 r)))
    (= (inv@33@01 r) r))
  :pattern ((inv@33@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@35@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains S1@21@01 (inv@33@01 r)) (img@34@01 r) (= r (inv@33@01 r)))
    ($Perm.min
      (ite
        (and
          (img@27@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S1@21@01)) (inv@26@01 r)))
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
          (img@27@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S1@21@01)) (inv@26@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@35@01 r))
    $Perm.No)
  
  :qid |quant-u-19918|))))
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
    (and (Seq_contains S1@21@01 (inv@33@01 r)) (img@34@01 r) (= r (inv@33@01 r)))
    (= (- $Perm.Write (pTaken@35@01 r)) $Perm.No))
  
  :qid |quant-u-19919|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m03 ----------
(declare-const S1@36@01 Seq<$Ref>)
(declare-const S2@37@01 Set<$Ref>)
(declare-const x@38@01 $Ref)
(declare-const S1@39@01 Seq<$Ref>)
(declare-const S2@40@01 Set<$Ref>)
(declare-const x@41@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 ($Snap.combine ($Snap.first $t@42@01) ($Snap.second $t@42@01))))
(assert (= ($Snap.first $t@42@01) $Snap.unit))
; [eval] S1 == Seq(x)
; [eval] Seq(x)
(assert (= (Seq_length (Seq_singleton x@41@01)) 1))
(assert (Seq_equal S1@39@01 (Seq_singleton x@41@01)))
(assert (=
  ($Snap.second $t@42@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@42@01))
    ($Snap.second ($Snap.second $t@42@01)))))
(assert (= ($Snap.first ($Snap.second $t@42@01)) $Snap.unit))
; [eval] S2 == Set(x)
; [eval] Set(x)
(assert (Set_equal S2@40@01 (Set_singleton x@41@01)))
(assert (= ($Snap.second ($Snap.second $t@42@01)) $Snap.unit))
; [eval] (forall i: Int :: { (i in [0..|S1|)) } { S1[i] } (i in [0..|S1|)) ==> S1[i] != null)
(declare-const i@43@01 Int)
(push) ; 2
; [eval] (i in [0..|S1|)) ==> S1[i] != null
; [eval] (i in [0..|S1|))
; [eval] [0..|S1|)
; [eval] |S1|
(push) ; 3
; [then-branch: 0 | i@43@01 in [0..|S1@39@01|] | live]
; [else-branch: 0 | !(i@43@01 in [0..|S1@39@01|]) | live]
(push) ; 4
; [then-branch: 0 | i@43@01 in [0..|S1@39@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
; [eval] S1[i] != null
; [eval] S1[i]
(push) ; 5
(assert (not (>= i@43@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@43@01 (Seq_length S1@39@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(i@43@01 in [0..|S1@39@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
  (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@43@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
    (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@23@12@23@61-aux|)))
(assert (forall ((i@43@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
    (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@23@12@23@61-aux|)))
(assert (forall ((i@43@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
    (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
  :pattern ((Seq_index S1@39@01 i@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@23@12@23@61-aux|)))
(assert (forall ((i@43@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01)
    (not (= (Seq_index S1@39@01 i@43@01) $Ref.null)))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S1@39@01)) i@43@01))
  :pattern ((Seq_index S1@39@01 i@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@23@12@23@61|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
; [eval] (forall y: Ref :: { (y in S2) } (y in S2) ==> y != null)
(declare-const y@45@01 $Ref)
(push) ; 3
; [eval] (y in S2) ==> y != null
; [eval] (y in S2)
(push) ; 4
; [then-branch: 1 | y@45@01 in S2@40@01 | live]
; [else-branch: 1 | !(y@45@01 in S2@40@01) | live]
(push) ; 5
; [then-branch: 1 | y@45@01 in S2@40@01]
(assert (Set_in y@45@01 S2@40@01))
; [eval] y != null
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(y@45@01 in S2@40@01)]
(assert (not (Set_in y@45@01 S2@40@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in y@45@01 S2@40@01)) (Set_in y@45@01 S2@40@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@45@01 $Ref)) (!
  (or (not (Set_in y@45@01 S2@40@01)) (Set_in y@45@01 S2@40@01))
  :pattern ((Set_in y@45@01 S2@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@24@12@24@50-aux|)))
(assert (forall ((y@45@01 $Ref)) (!
  (=> (Set_in y@45@01 S2@40@01) (not (= y@45@01 $Ref.null)))
  :pattern ((Set_in y@45@01 S2@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@24@12@24@50|)))
(pop) ; 2
(push) ; 2
; [eval] (forall y: Ref :: { (y in S2) } (y in S2) ==> y != null)
(declare-const y@46@01 $Ref)
(push) ; 3
; [eval] (y in S2) ==> y != null
; [eval] (y in S2)
(push) ; 4
; [then-branch: 2 | y@46@01 in S2@40@01 | live]
; [else-branch: 2 | !(y@46@01 in S2@40@01) | live]
(push) ; 5
; [then-branch: 2 | y@46@01 in S2@40@01]
(assert (Set_in y@46@01 S2@40@01))
; [eval] y != null
(pop) ; 5
(push) ; 5
; [else-branch: 2 | !(y@46@01 in S2@40@01)]
(assert (not (Set_in y@46@01 S2@40@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in y@46@01 S2@40@01)) (Set_in y@46@01 S2@40@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@46@01 $Ref)) (!
  (or (not (Set_in y@46@01 S2@40@01)) (Set_in y@46@01 S2@40@01))
  :pattern ((Set_in y@46@01 S2@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@24@12@24@50-aux|)))
(push) ; 3
(assert (not (forall ((y@46@01 $Ref)) (!
  (=> (Set_in y@46@01 S2@40@01) (not (= y@46@01 $Ref.null)))
  :pattern ((Set_in y@46@01 S2@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@24@12@24@50|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((y@46@01 $Ref)) (!
  (=> (Set_in y@46@01 S2@40@01) (not (= y@46@01 $Ref.null)))
  :pattern ((Set_in y@46@01 S2@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@24@12@24@50|)))
(pop) ; 2
(pop) ; 1
; ---------- m04 ----------
(declare-const S1@47@01 Seq<$Ref>)
(declare-const S2@48@01 Set<$Ref>)
(declare-const x@49@01 $Ref)
(declare-const S1@50@01 Seq<$Ref>)
(declare-const S2@51@01 Set<$Ref>)
(declare-const x@52@01 $Ref)
(push) ; 1
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01))))
(assert (= ($Snap.first $t@53@01) $Snap.unit))
; [eval] S1 == Seq(x)
; [eval] Seq(x)
(assert (= (Seq_length (Seq_singleton x@52@01)) 1))
(assert (Seq_equal S1@50@01 (Seq_singleton x@52@01)))
(assert (=
  ($Snap.second $t@53@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@53@01))
    ($Snap.second ($Snap.second $t@53@01)))))
(assert (= ($Snap.first ($Snap.second $t@53@01)) $Snap.unit))
; [eval] S2 == Set(x)
; [eval] Set(x)
(assert (Set_equal S2@51@01 (Set_singleton x@52@01)))
(assert (= ($Snap.second ($Snap.second $t@53@01)) $Snap.unit))
; [eval] (forall y: Ref :: { (y in S1) } (y in S1) ==> y != null)
(declare-const y@54@01 $Ref)
(push) ; 2
; [eval] (y in S1) ==> y != null
; [eval] (y in S1)
(push) ; 3
; [then-branch: 3 | y@54@01 in S1@50@01 | live]
; [else-branch: 3 | !(y@54@01 in S1@50@01) | live]
(push) ; 4
; [then-branch: 3 | y@54@01 in S1@50@01]
(assert (Seq_contains S1@50@01 y@54@01))
; [eval] y != null
(pop) ; 4
(push) ; 4
; [else-branch: 3 | !(y@54@01 in S1@50@01)]
(assert (not (Seq_contains S1@50@01 y@54@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains S1@50@01 y@54@01)) (Seq_contains S1@50@01 y@54@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@54@01 $Ref)) (!
  (or (not (Seq_contains S1@50@01 y@54@01)) (Seq_contains S1@50@01 y@54@01))
  :pattern ((Seq_contains S1@50@01 y@54@01))
  :pattern ((Seq_contains_trigger S1@50@01 y@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@29@12@29@50-aux|)))
(assert (forall ((y@54@01 $Ref)) (!
  (or (not (Seq_contains S1@50@01 y@54@01)) (Seq_contains S1@50@01 y@54@01))
  :pattern ((Seq_contains_trigger S1@50@01 y@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@29@12@29@50-aux|)))
(assert (forall ((y@54@01 $Ref)) (!
  (=> (Seq_contains S1@50@01 y@54@01) (not (= y@54@01 $Ref.null)))
  :pattern ((Seq_contains S1@50@01 y@54@01))
  :pattern ((Seq_contains_trigger S1@50@01 y@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@29@12@29@50|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 $Snap.unit))
; [eval] (forall y: Ref :: { (y in S2) } (y in S2) ==> y != null)
(declare-const y@56@01 $Ref)
(push) ; 3
; [eval] (y in S2) ==> y != null
; [eval] (y in S2)
(push) ; 4
; [then-branch: 4 | y@56@01 in S2@51@01 | live]
; [else-branch: 4 | !(y@56@01 in S2@51@01) | live]
(push) ; 5
; [then-branch: 4 | y@56@01 in S2@51@01]
(assert (Set_in y@56@01 S2@51@01))
; [eval] y != null
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(y@56@01 in S2@51@01)]
(assert (not (Set_in y@56@01 S2@51@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in y@56@01 S2@51@01)) (Set_in y@56@01 S2@51@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@56@01 $Ref)) (!
  (or (not (Set_in y@56@01 S2@51@01)) (Set_in y@56@01 S2@51@01))
  :pattern ((Set_in y@56@01 S2@51@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@32@12@32@50-aux|)))
(assert (forall ((y@56@01 $Ref)) (!
  (=> (Set_in y@56@01 S2@51@01) (not (= y@56@01 $Ref.null)))
  :pattern ((Set_in y@56@01 S2@51@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@32@12@32@50|)))
(pop) ; 2
(push) ; 2
; [eval] (forall y: Ref :: { (y in S2) } (y in S2) ==> y != null)
(declare-const y@57@01 $Ref)
(push) ; 3
; [eval] (y in S2) ==> y != null
; [eval] (y in S2)
(push) ; 4
; [then-branch: 5 | y@57@01 in S2@51@01 | live]
; [else-branch: 5 | !(y@57@01 in S2@51@01) | live]
(push) ; 5
; [then-branch: 5 | y@57@01 in S2@51@01]
(assert (Set_in y@57@01 S2@51@01))
; [eval] y != null
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(y@57@01 in S2@51@01)]
(assert (not (Set_in y@57@01 S2@51@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in y@57@01 S2@51@01)) (Set_in y@57@01 S2@51@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@57@01 $Ref)) (!
  (or (not (Set_in y@57@01 S2@51@01)) (Set_in y@57@01 S2@51@01))
  :pattern ((Set_in y@57@01 S2@51@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@32@12@32@50-aux|)))
(push) ; 3
(assert (not (forall ((y@57@01 $Ref)) (!
  (=> (Set_in y@57@01 S2@51@01) (not (= y@57@01 $Ref.null)))
  :pattern ((Set_in y@57@01 S2@51@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@32@12@32@50|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((y@57@01 $Ref)) (!
  (=> (Set_in y@57@01 S2@51@01) (not (= y@57@01 $Ref.null)))
  :pattern ((Set_in y@57@01 S2@51@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@32@12@32@50|)))
(pop) ; 2
(pop) ; 1
; ---------- repro ----------
(declare-const s@58@01 Seq<$Ref>)
(declare-const s@59@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] (forall i: Int, j: Int :: { s[i], s[j] } 0 <= i && (i < j && j < |s|) ==> s[i] != s[j])
(declare-const i@61@01 Int)
(declare-const j@62@01 Int)
(push) ; 2
; [eval] 0 <= i && (i < j && j < |s|) ==> s[i] != s[j]
; [eval] 0 <= i && (i < j && j < |s|)
; [eval] 0 <= i
(push) ; 3
; [then-branch: 6 | !(0 <= i@61@01) | live]
; [else-branch: 6 | 0 <= i@61@01 | live]
(push) ; 4
; [then-branch: 6 | !(0 <= i@61@01)]
(assert (not (<= 0 i@61@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | 0 <= i@61@01]
(assert (<= 0 i@61@01))
; [eval] i < j
(push) ; 5
; [then-branch: 7 | !(i@61@01 < j@62@01) | live]
; [else-branch: 7 | i@61@01 < j@62@01 | live]
(push) ; 6
; [then-branch: 7 | !(i@61@01 < j@62@01)]
(assert (not (< i@61@01 j@62@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 7 | i@61@01 < j@62@01]
(assert (< i@61@01 j@62@01))
; [eval] j < |s|
; [eval] |s|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (< i@61@01 j@62@01) (not (< i@61@01 j@62@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@61@01)
  (and (<= 0 i@61@01) (or (< i@61@01 j@62@01) (not (< i@61@01 j@62@01))))))
(assert (or (<= 0 i@61@01) (not (<= 0 i@61@01))))
(push) ; 3
; [then-branch: 8 | 0 <= i@61@01 && i@61@01 < j@62@01 && j@62@01 < |s@59@01| | live]
; [else-branch: 8 | !(0 <= i@61@01 && i@61@01 < j@62@01 && j@62@01 < |s@59@01|) | live]
(push) ; 4
; [then-branch: 8 | 0 <= i@61@01 && i@61@01 < j@62@01 && j@62@01 < |s@59@01|]
(assert (and (<= 0 i@61@01) (and (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01)))))
; [eval] s[i] != s[j]
; [eval] s[i]
(push) ; 5
(assert (not (>= i@61@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@61@01 (Seq_length s@59@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] s[j]
(push) ; 5
(assert (not (>= j@62@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 8 | !(0 <= i@61@01 && i@61@01 < j@62@01 && j@62@01 < |s@59@01|)]
(assert (not
  (and (<= 0 i@61@01) (and (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and (<= 0 i@61@01) (and (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01))))
  (and (<= 0 i@61@01) (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@61@01)
      (and (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01)))))
  (and (<= 0 i@61@01) (and (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@61@01 Int) (j@62@01 Int)) (!
  (and
    (=>
      (<= 0 i@61@01)
      (and (<= 0 i@61@01) (or (< i@61@01 j@62@01) (not (< i@61@01 j@62@01)))))
    (or (<= 0 i@61@01) (not (<= 0 i@61@01)))
    (=>
      (and
        (<= 0 i@61@01)
        (and (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01))))
      (and (<= 0 i@61@01) (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01))))
    (or
      (not
        (and
          (<= 0 i@61@01)
          (and (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01)))))
      (and
        (<= 0 i@61@01)
        (and (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01))))))
  :pattern ((Seq_index s@59@01 i@61@01) (Seq_index s@59@01 j@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@36@12@36@80-aux|)))
(assert (forall ((i@61@01 Int) (j@62@01 Int)) (!
  (=>
    (and
      (<= 0 i@61@01)
      (and (< i@61@01 j@62@01) (< j@62@01 (Seq_length s@59@01))))
    (not (= (Seq_index s@59@01 i@61@01) (Seq_index s@59@01 j@62@01))))
  :pattern ((Seq_index s@59@01 i@61@01) (Seq_index s@59@01 j@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@36@12@36@80|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale (forall x: Int ::(x in [0..|s|)) ==> acc(s[x].f, write))
(declare-const x@63@01 Int)
(push) ; 3
; [eval] (x in [0..|s|))
; [eval] [0..|s|)
; [eval] |s|
(assert (Seq_contains (Seq_range 0 (Seq_length s@59@01)) x@63@01))
; [eval] s[x]
(push) ; 4
(assert (not (>= x@63@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< x@63@01 (Seq_length s@59@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@64@01 $FVF<f>)
(declare-fun inv@65@01 ($Ref) Int)
(declare-fun img@66@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@63@01 Int) (x2@63@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length s@59@01)) x1@63@01)
      (Seq_contains (Seq_range 0 (Seq_length s@59@01)) x2@63@01)
      (= (Seq_index s@59@01 x1@63@01) (Seq_index s@59@01 x2@63@01)))
    (= x1@63@01 x2@63@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@63@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length s@59@01)) x@63@01)
    (and
      (= (inv@65@01 (Seq_index s@59@01 x@63@01)) x@63@01)
      (img@66@01 (Seq_index s@59@01 x@63@01))))
  :pattern ((Seq_index s@59@01 x@63@01))
  :qid |quant-u-19921|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@66@01 r)
      (Seq_contains (Seq_range 0 (Seq_length s@59@01)) (inv@65@01 r)))
    (= (Seq_index s@59@01 (inv@65@01 r)) r))
  :pattern ((inv@65@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@63@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length s@59@01)) x@63@01)
    (not (= (Seq_index s@59@01 x@63@01) $Ref.null)))
  :pattern ((Seq_index s@59@01 x@63@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Int :: { s[x] } 0 <= x && x < |s| ==> s[x].f == 0)
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 $Snap.unit))
; [eval] (forall x: Int :: { s[x] } 0 <= x && x < |s| ==> s[x].f == 0)
(declare-const x@68@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= x && x < |s| ==> s[x].f == 0
; [eval] 0 <= x && x < |s|
; [eval] 0 <= x
(push) ; 4
; [then-branch: 9 | !(0 <= x@68@01) | live]
; [else-branch: 9 | 0 <= x@68@01 | live]
(push) ; 5
; [then-branch: 9 | !(0 <= x@68@01)]
(assert (not (<= 0 x@68@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | 0 <= x@68@01]
(assert (<= 0 x@68@01))
; [eval] x < |s|
; [eval] |s|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 x@68@01) (not (<= 0 x@68@01))))
(push) ; 4
; [then-branch: 10 | 0 <= x@68@01 && x@68@01 < |s@59@01| | live]
; [else-branch: 10 | !(0 <= x@68@01 && x@68@01 < |s@59@01|) | live]
(push) ; 5
; [then-branch: 10 | 0 <= x@68@01 && x@68@01 < |s@59@01|]
(assert (and (<= 0 x@68@01) (< x@68@01 (Seq_length s@59@01))))
; [eval] s[x].f == 0
; [eval] s[x]
(push) ; 6
(assert (not (>= x@68@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@66@01 (Seq_index s@59@01 x@68@01))
  (Seq_contains
    (Seq_range 0 (Seq_length s@59@01))
    (inv@65@01 (Seq_index s@59@01 x@68@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 10 | !(0 <= x@68@01 && x@68@01 < |s@59@01|)]
(assert (not (and (<= 0 x@68@01) (< x@68@01 (Seq_length s@59@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 x@68@01) (< x@68@01 (Seq_length s@59@01))))
  (and (<= 0 x@68@01) (< x@68@01 (Seq_length s@59@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@68@01 Int)) (!
  (and
    (or (<= 0 x@68@01) (not (<= 0 x@68@01)))
    (or
      (not (and (<= 0 x@68@01) (< x@68@01 (Seq_length s@59@01))))
      (and (<= 0 x@68@01) (< x@68@01 (Seq_length s@59@01)))))
  :pattern ((Seq_index s@59@01 x@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@39@11@39@67-aux|)))
(assert (forall ((x@68@01 Int)) (!
  (=>
    (and (<= 0 x@68@01) (< x@68@01 (Seq_length s@59@01)))
    (= ($FVF.lookup_f $t@64@01 (Seq_index s@59@01 x@68@01)) 0))
  :pattern ((Seq_index s@59@01 x@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@39@11@39@67|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall x: Int :: { s[x] } 0 <= x && x < |s| ==> s[x].f == 0)
; [eval] (forall x: Int :: { s[x] } 0 <= x && x < |s| ==> s[x].f == 0)
(declare-const x@69@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= x && x < |s| ==> s[x].f == 0
; [eval] 0 <= x && x < |s|
; [eval] 0 <= x
(push) ; 4
; [then-branch: 11 | !(0 <= x@69@01) | live]
; [else-branch: 11 | 0 <= x@69@01 | live]
(push) ; 5
; [then-branch: 11 | !(0 <= x@69@01)]
(assert (not (<= 0 x@69@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | 0 <= x@69@01]
(assert (<= 0 x@69@01))
; [eval] x < |s|
; [eval] |s|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 x@69@01) (not (<= 0 x@69@01))))
(push) ; 4
; [then-branch: 12 | 0 <= x@69@01 && x@69@01 < |s@59@01| | live]
; [else-branch: 12 | !(0 <= x@69@01 && x@69@01 < |s@59@01|) | live]
(push) ; 5
; [then-branch: 12 | 0 <= x@69@01 && x@69@01 < |s@59@01|]
(assert (and (<= 0 x@69@01) (< x@69@01 (Seq_length s@59@01))))
; [eval] s[x].f == 0
; [eval] s[x]
(push) ; 6
(assert (not (>= x@69@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@66@01 (Seq_index s@59@01 x@69@01))
  (Seq_contains
    (Seq_range 0 (Seq_length s@59@01))
    (inv@65@01 (Seq_index s@59@01 x@69@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 12 | !(0 <= x@69@01 && x@69@01 < |s@59@01|)]
(assert (not (and (<= 0 x@69@01) (< x@69@01 (Seq_length s@59@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 x@69@01) (< x@69@01 (Seq_length s@59@01))))
  (and (<= 0 x@69@01) (< x@69@01 (Seq_length s@59@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@69@01 Int)) (!
  (and
    (or (<= 0 x@69@01) (not (<= 0 x@69@01)))
    (or
      (not (and (<= 0 x@69@01) (< x@69@01 (Seq_length s@59@01))))
      (and (<= 0 x@69@01) (< x@69@01 (Seq_length s@59@01)))))
  :pattern ((Seq_index s@59@01 x@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@40@11@40@67-aux|)))
(push) ; 3
(assert (not (forall ((x@69@01 Int)) (!
  (=>
    (and (<= 0 x@69@01) (< x@69@01 (Seq_length s@59@01)))
    (= ($FVF.lookup_f $t@64@01 (Seq_index s@59@01 x@69@01)) 0))
  :pattern ((Seq_index s@59@01 x@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@40@11@40@67|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@69@01 Int)) (!
  (=>
    (and (<= 0 x@69@01) (< x@69@01 (Seq_length s@59@01)))
    (= ($FVF.lookup_f $t@64@01 (Seq_index s@59@01 x@69@01)) 0))
  :pattern ((Seq_index s@59@01 x@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@40@11@40@67|)))
(pop) ; 2
(pop) ; 1
; ---------- test01 ----------
(declare-const s@70@01 Seq<$Ref>)
(declare-const s@71@01 Seq<$Ref>)
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
; inhale (forall x: Ref ::(x in s) ==> acc(x.f, write))
(declare-const x@72@01 $Ref)
(push) ; 3
; [eval] (x in s)
(assert (Seq_contains s@71@01 x@72@01))
(pop) ; 3
(declare-const $t@73@01 $FVF<f>)
(declare-fun inv@74@01 ($Ref) $Ref)
(declare-fun img@75@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@72@01 $Ref) (x2@72@01 $Ref)) (!
  (=>
    (and
      (Seq_contains s@71@01 x1@72@01)
      (Seq_contains s@71@01 x2@72@01)
      (= x1@72@01 x2@72@01))
    (= x1@72@01 x2@72@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@72@01 $Ref)) (!
  (=>
    (Seq_contains s@71@01 x@72@01)
    (and (= (inv@74@01 x@72@01) x@72@01) (img@75@01 x@72@01)))
  :pattern ((Seq_contains s@71@01 x@72@01))
  :pattern ((Seq_contains_trigger s@71@01 x@72@01))
  :pattern ((Seq_contains_trigger s@71@01 x@72@01))
  :pattern ((inv@74@01 x@72@01))
  :pattern ((img@75@01 x@72@01))
  :qid |quant-u-19923|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@75@01 r) (Seq_contains s@71@01 (inv@74@01 r)))
    (= (inv@74@01 r) r))
  :pattern ((inv@74@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@72@01 $Ref)) (!
  (=> (Seq_contains s@71@01 x@72@01) (not (= x@72@01 $Ref.null)))
  :pattern ((Seq_contains s@71@01 x@72@01))
  :pattern ((Seq_contains_trigger s@71@01 x@72@01))
  :pattern ((Seq_contains_trigger s@71@01 x@72@01))
  :pattern ((inv@74@01 x@72@01))
  :pattern ((img@75@01 x@72@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall x: Ref :: { (x in s) } (x in s) ==> x != null)
; [eval] (forall x: Ref :: { (x in s) } (x in s) ==> x != null)
(declare-const x@76@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in s) ==> x != null
; [eval] (x in s)
(push) ; 4
; [then-branch: 13 | x@76@01 in s@71@01 | live]
; [else-branch: 13 | !(x@76@01 in s@71@01) | live]
(push) ; 5
; [then-branch: 13 | x@76@01 in s@71@01]
(assert (Seq_contains s@71@01 x@76@01))
; [eval] x != null
(pop) ; 5
(push) ; 5
; [else-branch: 13 | !(x@76@01 in s@71@01)]
(assert (not (Seq_contains s@71@01 x@76@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains s@71@01 x@76@01)) (Seq_contains s@71@01 x@76@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@76@01 $Ref)) (!
  (or (not (Seq_contains s@71@01 x@76@01)) (Seq_contains s@71@01 x@76@01))
  :pattern ((Seq_contains s@71@01 x@76@01))
  :pattern ((Seq_contains_trigger s@71@01 x@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@46@10@46@47-aux|)))
(assert (forall ((x@76@01 $Ref)) (!
  (or (not (Seq_contains s@71@01 x@76@01)) (Seq_contains s@71@01 x@76@01))
  :pattern ((Seq_contains_trigger s@71@01 x@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@46@10@46@47-aux|)))
(push) ; 3
(assert (not (forall ((x@76@01 $Ref)) (!
  (=> (Seq_contains s@71@01 x@76@01) (not (= x@76@01 $Ref.null)))
  :pattern ((Seq_contains s@71@01 x@76@01))
  :pattern ((Seq_contains_trigger s@71@01 x@76@01))
  :pattern ((Seq_contains_trigger s@71@01 x@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@46@10@46@47|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@76@01 $Ref)) (!
  (=> (Seq_contains s@71@01 x@76@01) (not (= x@76@01 $Ref.null)))
  :pattern ((Seq_contains s@71@01 x@76@01))
  :pattern ((Seq_contains_trigger s@71@01 x@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@46@10@46@47|)))
; [exec]
; assert (forall i: Int :: { s[i] } 0 <= i && i < |s| ==> s[i] != null)
; [eval] (forall i: Int :: { s[i] } 0 <= i && i < |s| ==> s[i] != null)
(declare-const i@77@01 Int)
(push) ; 3
; [eval] 0 <= i && i < |s| ==> s[i] != null
; [eval] 0 <= i && i < |s|
; [eval] 0 <= i
(push) ; 4
; [then-branch: 14 | !(0 <= i@77@01) | live]
; [else-branch: 14 | 0 <= i@77@01 | live]
(push) ; 5
; [then-branch: 14 | !(0 <= i@77@01)]
(assert (not (<= 0 i@77@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | 0 <= i@77@01]
(assert (<= 0 i@77@01))
; [eval] i < |s|
; [eval] |s|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@77@01) (not (<= 0 i@77@01))))
(push) ; 4
; [then-branch: 15 | 0 <= i@77@01 && i@77@01 < |s@71@01| | live]
; [else-branch: 15 | !(0 <= i@77@01 && i@77@01 < |s@71@01|) | live]
(push) ; 5
; [then-branch: 15 | 0 <= i@77@01 && i@77@01 < |s@71@01|]
(assert (and (<= 0 i@77@01) (< i@77@01 (Seq_length s@71@01))))
; [eval] s[i] != null
; [eval] s[i]
(push) ; 6
(assert (not (>= i@77@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 15 | !(0 <= i@77@01 && i@77@01 < |s@71@01|)]
(assert (not (and (<= 0 i@77@01) (< i@77@01 (Seq_length s@71@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 i@77@01) (< i@77@01 (Seq_length s@71@01))))
  (and (<= 0 i@77@01) (< i@77@01 (Seq_length s@71@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@77@01 Int)) (!
  (and
    (or (<= 0 i@77@01) (not (<= 0 i@77@01)))
    (or
      (not (and (<= 0 i@77@01) (< i@77@01 (Seq_length s@71@01))))
      (and (<= 0 i@77@01) (< i@77@01 (Seq_length s@71@01)))))
  :pattern ((Seq_index s@71@01 i@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@49@10@49@61-aux|)))
(push) ; 3
(assert (not (forall ((i@77@01 Int)) (!
  (=>
    (and (<= 0 i@77@01) (< i@77@01 (Seq_length s@71@01)))
    (not (= (Seq_index s@71@01 i@77@01) $Ref.null)))
  :pattern ((Seq_index s@71@01 i@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@49@10@49@61|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@77@01 Int)) (!
  (=>
    (and (<= 0 i@77@01) (< i@77@01 (Seq_length s@71@01)))
    (not (= (Seq_index s@71@01 i@77@01) $Ref.null)))
  :pattern ((Seq_index s@71@01 i@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@49@10@49@61|)))
(pop) ; 2
(pop) ; 1
; ---------- reprotwo ----------
(declare-const s@78@01 Seq<$Ref>)
(declare-const s@79@01 Seq<$Ref>)
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
; inhale (forall x: Ref ::(x in s) ==> acc(x.f, write))
(declare-const x@80@01 $Ref)
(push) ; 3
; [eval] (x in s)
(assert (Seq_contains s@79@01 x@80@01))
(pop) ; 3
(declare-const $t@81@01 $FVF<f>)
(declare-fun inv@82@01 ($Ref) $Ref)
(declare-fun img@83@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@80@01 $Ref) (x2@80@01 $Ref)) (!
  (=>
    (and
      (Seq_contains s@79@01 x1@80@01)
      (Seq_contains s@79@01 x2@80@01)
      (= x1@80@01 x2@80@01))
    (= x1@80@01 x2@80@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@80@01 $Ref)) (!
  (=>
    (Seq_contains s@79@01 x@80@01)
    (and (= (inv@82@01 x@80@01) x@80@01) (img@83@01 x@80@01)))
  :pattern ((Seq_contains s@79@01 x@80@01))
  :pattern ((Seq_contains_trigger s@79@01 x@80@01))
  :pattern ((Seq_contains_trigger s@79@01 x@80@01))
  :pattern ((inv@82@01 x@80@01))
  :pattern ((img@83@01 x@80@01))
  :qid |quant-u-19925|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@83@01 r) (Seq_contains s@79@01 (inv@82@01 r)))
    (= (inv@82@01 r) r))
  :pattern ((inv@82@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@80@01 $Ref)) (!
  (=> (Seq_contains s@79@01 x@80@01) (not (= x@80@01 $Ref.null)))
  :pattern ((Seq_contains s@79@01 x@80@01))
  :pattern ((Seq_contains_trigger s@79@01 x@80@01))
  :pattern ((Seq_contains_trigger s@79@01 x@80@01))
  :pattern ((inv@82@01 x@80@01))
  :pattern ((img@83@01 x@80@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Int :: { s[x] } 0 <= x && x < |s| ==> s[x].f == 0)
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 $Snap.unit))
; [eval] (forall x: Int :: { s[x] } 0 <= x && x < |s| ==> s[x].f == 0)
(declare-const x@85@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= x && x < |s| ==> s[x].f == 0
; [eval] 0 <= x && x < |s|
; [eval] 0 <= x
(push) ; 4
; [then-branch: 16 | !(0 <= x@85@01) | live]
; [else-branch: 16 | 0 <= x@85@01 | live]
(push) ; 5
; [then-branch: 16 | !(0 <= x@85@01)]
(assert (not (<= 0 x@85@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | 0 <= x@85@01]
(assert (<= 0 x@85@01))
; [eval] x < |s|
; [eval] |s|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 x@85@01) (not (<= 0 x@85@01))))
(push) ; 4
; [then-branch: 17 | 0 <= x@85@01 && x@85@01 < |s@79@01| | live]
; [else-branch: 17 | !(0 <= x@85@01 && x@85@01 < |s@79@01|) | live]
(push) ; 5
; [then-branch: 17 | 0 <= x@85@01 && x@85@01 < |s@79@01|]
(assert (and (<= 0 x@85@01) (< x@85@01 (Seq_length s@79@01))))
; [eval] s[x].f == 0
; [eval] s[x]
(push) ; 6
(assert (not (>= x@85@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@83@01 (Seq_index s@79@01 x@85@01))
  (Seq_contains s@79@01 (inv@82@01 (Seq_index s@79@01 x@85@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 17 | !(0 <= x@85@01 && x@85@01 < |s@79@01|)]
(assert (not (and (<= 0 x@85@01) (< x@85@01 (Seq_length s@79@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 x@85@01) (< x@85@01 (Seq_length s@79@01))))
  (and (<= 0 x@85@01) (< x@85@01 (Seq_length s@79@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@85@01 Int)) (!
  (and
    (or (<= 0 x@85@01) (not (<= 0 x@85@01)))
    (or
      (not (and (<= 0 x@85@01) (< x@85@01 (Seq_length s@79@01))))
      (and (<= 0 x@85@01) (< x@85@01 (Seq_length s@79@01)))))
  :pattern ((Seq_index s@79@01 x@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@55@11@55@67-aux|)))
(assert (forall ((x@85@01 Int)) (!
  (=>
    (and (<= 0 x@85@01) (< x@85@01 (Seq_length s@79@01)))
    (= ($FVF.lookup_f $t@81@01 (Seq_index s@79@01 x@85@01)) 0))
  :pattern ((Seq_index s@79@01 x@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@55@11@55@67|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall x: Int :: { s[x] } 0 <= x && x < |s| ==> s[x].f == 0)
; [eval] (forall x: Int :: { s[x] } 0 <= x && x < |s| ==> s[x].f == 0)
(declare-const x@86@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= x && x < |s| ==> s[x].f == 0
; [eval] 0 <= x && x < |s|
; [eval] 0 <= x
(push) ; 4
; [then-branch: 18 | !(0 <= x@86@01) | live]
; [else-branch: 18 | 0 <= x@86@01 | live]
(push) ; 5
; [then-branch: 18 | !(0 <= x@86@01)]
(assert (not (<= 0 x@86@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | 0 <= x@86@01]
(assert (<= 0 x@86@01))
; [eval] x < |s|
; [eval] |s|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 x@86@01) (not (<= 0 x@86@01))))
(push) ; 4
; [then-branch: 19 | 0 <= x@86@01 && x@86@01 < |s@79@01| | live]
; [else-branch: 19 | !(0 <= x@86@01 && x@86@01 < |s@79@01|) | live]
(push) ; 5
; [then-branch: 19 | 0 <= x@86@01 && x@86@01 < |s@79@01|]
(assert (and (<= 0 x@86@01) (< x@86@01 (Seq_length s@79@01))))
; [eval] s[x].f == 0
; [eval] s[x]
(push) ; 6
(assert (not (>= x@86@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@83@01 (Seq_index s@79@01 x@86@01))
  (Seq_contains s@79@01 (inv@82@01 (Seq_index s@79@01 x@86@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 19 | !(0 <= x@86@01 && x@86@01 < |s@79@01|)]
(assert (not (and (<= 0 x@86@01) (< x@86@01 (Seq_length s@79@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 x@86@01) (< x@86@01 (Seq_length s@79@01))))
  (and (<= 0 x@86@01) (< x@86@01 (Seq_length s@79@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@86@01 Int)) (!
  (and
    (or (<= 0 x@86@01) (not (<= 0 x@86@01)))
    (or
      (not (and (<= 0 x@86@01) (< x@86@01 (Seq_length s@79@01))))
      (and (<= 0 x@86@01) (< x@86@01 (Seq_length s@79@01)))))
  :pattern ((Seq_index s@79@01 x@86@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@56@11@56@67-aux|)))
(push) ; 3
(assert (not (forall ((x@86@01 Int)) (!
  (=>
    (and (<= 0 x@86@01) (< x@86@01 (Seq_length s@79@01)))
    (= ($FVF.lookup_f $t@81@01 (Seq_index s@79@01 x@86@01)) 0))
  :pattern ((Seq_index s@79@01 x@86@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@56@11@56@67|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@86@01 Int)) (!
  (=>
    (and (<= 0 x@86@01) (< x@86@01 (Seq_length s@79@01)))
    (= ($FVF.lookup_f $t@81@01 (Seq_index s@79@01 x@86@01)) 0))
  :pattern ((Seq_index s@79@01 x@86@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@56@11@56@67|)))
(pop) ; 2
(pop) ; 1
; ---------- reprothree ----------
(declare-const s@87@01 Seq<$Ref>)
(declare-const s@88@01 Seq<$Ref>)
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
; inhale (forall x: Ref ::(x in s) ==> acc(x.f, write))
(declare-const x@89@01 $Ref)
(push) ; 3
; [eval] (x in s)
(assert (Seq_contains s@88@01 x@89@01))
(pop) ; 3
(declare-const $t@90@01 $FVF<f>)
(declare-fun inv@91@01 ($Ref) $Ref)
(declare-fun img@92@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@89@01 $Ref) (x2@89@01 $Ref)) (!
  (=>
    (and
      (Seq_contains s@88@01 x1@89@01)
      (Seq_contains s@88@01 x2@89@01)
      (= x1@89@01 x2@89@01))
    (= x1@89@01 x2@89@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@89@01 $Ref)) (!
  (=>
    (Seq_contains s@88@01 x@89@01)
    (and (= (inv@91@01 x@89@01) x@89@01) (img@92@01 x@89@01)))
  :pattern ((Seq_contains s@88@01 x@89@01))
  :pattern ((Seq_contains_trigger s@88@01 x@89@01))
  :pattern ((Seq_contains_trigger s@88@01 x@89@01))
  :pattern ((inv@91@01 x@89@01))
  :pattern ((img@92@01 x@89@01))
  :qid |quant-u-19927|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@92@01 r) (Seq_contains s@88@01 (inv@91@01 r)))
    (= (inv@91@01 r) r))
  :pattern ((inv@91@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@89@01 $Ref)) (!
  (=> (Seq_contains s@88@01 x@89@01) (not (= x@89@01 $Ref.null)))
  :pattern ((Seq_contains s@88@01 x@89@01))
  :pattern ((Seq_contains_trigger s@88@01 x@89@01))
  :pattern ((Seq_contains_trigger s@88@01 x@89@01))
  :pattern ((inv@91@01 x@89@01))
  :pattern ((img@92@01 x@89@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref :: { (x in s) } (x in s) ==> x.f == 0)
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 $Snap.unit))
; [eval] (forall x: Ref :: { (x in s) } (x in s) ==> x.f == 0)
(declare-const x@94@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in s) ==> x.f == 0
; [eval] (x in s)
(push) ; 4
; [then-branch: 20 | x@94@01 in s@88@01 | live]
; [else-branch: 20 | !(x@94@01 in s@88@01) | live]
(push) ; 5
; [then-branch: 20 | x@94@01 in s@88@01]
(assert (Seq_contains s@88@01 x@94@01))
; [eval] x.f == 0
(push) ; 6
(assert (not (and (img@92@01 x@94@01) (Seq_contains s@88@01 (inv@91@01 x@94@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 20 | !(x@94@01 in s@88@01)]
(assert (not (Seq_contains s@88@01 x@94@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains s@88@01 x@94@01)) (Seq_contains s@88@01 x@94@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@94@01 $Ref)) (!
  (or (not (Seq_contains s@88@01 x@94@01)) (Seq_contains s@88@01 x@94@01))
  :pattern ((Seq_contains s@88@01 x@94@01))
  :pattern ((Seq_contains_trigger s@88@01 x@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@62@11@62@49-aux|)))
(assert (forall ((x@94@01 $Ref)) (!
  (or (not (Seq_contains s@88@01 x@94@01)) (Seq_contains s@88@01 x@94@01))
  :pattern ((Seq_contains_trigger s@88@01 x@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@62@11@62@49-aux|)))
(assert (forall ((x@94@01 $Ref)) (!
  (=> (Seq_contains s@88@01 x@94@01) (= ($FVF.lookup_f $t@90@01 x@94@01) 0))
  :pattern ((Seq_contains s@88@01 x@94@01))
  :pattern ((Seq_contains_trigger s@88@01 x@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@62@11@62@49|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall x: Int :: { s[x] } 0 <= x && x < |s| ==> s[x].f == 0)
; [eval] (forall x: Int :: { s[x] } 0 <= x && x < |s| ==> s[x].f == 0)
(declare-const x@95@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= x && x < |s| ==> s[x].f == 0
; [eval] 0 <= x && x < |s|
; [eval] 0 <= x
(push) ; 4
; [then-branch: 21 | !(0 <= x@95@01) | live]
; [else-branch: 21 | 0 <= x@95@01 | live]
(push) ; 5
; [then-branch: 21 | !(0 <= x@95@01)]
(assert (not (<= 0 x@95@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | 0 <= x@95@01]
(assert (<= 0 x@95@01))
; [eval] x < |s|
; [eval] |s|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 x@95@01) (not (<= 0 x@95@01))))
(push) ; 4
; [then-branch: 22 | 0 <= x@95@01 && x@95@01 < |s@88@01| | live]
; [else-branch: 22 | !(0 <= x@95@01 && x@95@01 < |s@88@01|) | live]
(push) ; 5
; [then-branch: 22 | 0 <= x@95@01 && x@95@01 < |s@88@01|]
(assert (and (<= 0 x@95@01) (< x@95@01 (Seq_length s@88@01))))
; [eval] s[x].f == 0
; [eval] s[x]
(push) ; 6
(assert (not (>= x@95@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@92@01 (Seq_index s@88@01 x@95@01))
  (Seq_contains s@88@01 (inv@91@01 (Seq_index s@88@01 x@95@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 22 | !(0 <= x@95@01 && x@95@01 < |s@88@01|)]
(assert (not (and (<= 0 x@95@01) (< x@95@01 (Seq_length s@88@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 x@95@01) (< x@95@01 (Seq_length s@88@01))))
  (and (<= 0 x@95@01) (< x@95@01 (Seq_length s@88@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@95@01 Int)) (!
  (and
    (or (<= 0 x@95@01) (not (<= 0 x@95@01)))
    (or
      (not (and (<= 0 x@95@01) (< x@95@01 (Seq_length s@88@01))))
      (and (<= 0 x@95@01) (< x@95@01 (Seq_length s@88@01)))))
  :pattern ((Seq_index s@88@01 x@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@65@11@65@67-aux|)))
(push) ; 3
(assert (not (forall ((x@95@01 Int)) (!
  (=>
    (and (<= 0 x@95@01) (< x@95@01 (Seq_length s@88@01)))
    (= ($FVF.lookup_f $t@90@01 (Seq_index s@88@01 x@95@01)) 0))
  :pattern ((Seq_index s@88@01 x@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@65@11@65@67|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@95@01 Int)) (!
  (=>
    (and (<= 0 x@95@01) (< x@95@01 (Seq_length s@88@01)))
    (= ($FVF.lookup_f $t@90@01 (Seq_index s@88@01 x@95@01)) 0))
  :pattern ((Seq_index s@88@01 x@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@65@11@65@67|)))
(pop) ; 2
(pop) ; 1
; ---------- reprofour ----------
(declare-const s@96@01 Seq<$Ref>)
(declare-const s@97@01 Seq<$Ref>)
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
; inhale (forall x: Ref ::(x in s) ==> acc(x.f, write))
(declare-const x@98@01 $Ref)
(push) ; 3
; [eval] (x in s)
(assert (Seq_contains s@97@01 x@98@01))
(pop) ; 3
(declare-const $t@99@01 $FVF<f>)
(declare-fun inv@100@01 ($Ref) $Ref)
(declare-fun img@101@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@98@01 $Ref) (x2@98@01 $Ref)) (!
  (=>
    (and
      (Seq_contains s@97@01 x1@98@01)
      (Seq_contains s@97@01 x2@98@01)
      (= x1@98@01 x2@98@01))
    (= x1@98@01 x2@98@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@98@01 $Ref)) (!
  (=>
    (Seq_contains s@97@01 x@98@01)
    (and (= (inv@100@01 x@98@01) x@98@01) (img@101@01 x@98@01)))
  :pattern ((Seq_contains s@97@01 x@98@01))
  :pattern ((Seq_contains_trigger s@97@01 x@98@01))
  :pattern ((Seq_contains_trigger s@97@01 x@98@01))
  :pattern ((inv@100@01 x@98@01))
  :pattern ((img@101@01 x@98@01))
  :qid |quant-u-19929|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@101@01 r) (Seq_contains s@97@01 (inv@100@01 r)))
    (= (inv@100@01 r) r))
  :pattern ((inv@100@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@98@01 $Ref)) (!
  (=> (Seq_contains s@97@01 x@98@01) (not (= x@98@01 $Ref.null)))
  :pattern ((Seq_contains s@97@01 x@98@01))
  :pattern ((Seq_contains_trigger s@97@01 x@98@01))
  :pattern ((Seq_contains_trigger s@97@01 x@98@01))
  :pattern ((inv@100@01 x@98@01))
  :pattern ((img@101@01 x@98@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref :: { (x in s) } (x in s) ==> x.f == 0)
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 $Snap.unit))
; [eval] (forall x: Ref :: { (x in s) } (x in s) ==> x.f == 0)
(declare-const x@103@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in s) ==> x.f == 0
; [eval] (x in s)
(push) ; 4
; [then-branch: 23 | x@103@01 in s@97@01 | live]
; [else-branch: 23 | !(x@103@01 in s@97@01) | live]
(push) ; 5
; [then-branch: 23 | x@103@01 in s@97@01]
(assert (Seq_contains s@97@01 x@103@01))
; [eval] x.f == 0
(push) ; 6
(assert (not (and (img@101@01 x@103@01) (Seq_contains s@97@01 (inv@100@01 x@103@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 23 | !(x@103@01 in s@97@01)]
(assert (not (Seq_contains s@97@01 x@103@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains s@97@01 x@103@01)) (Seq_contains s@97@01 x@103@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@103@01 $Ref)) (!
  (or (not (Seq_contains s@97@01 x@103@01)) (Seq_contains s@97@01 x@103@01))
  :pattern ((Seq_contains s@97@01 x@103@01))
  :pattern ((Seq_contains_trigger s@97@01 x@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@73@11@73@49-aux|)))
(assert (forall ((x@103@01 $Ref)) (!
  (or (not (Seq_contains s@97@01 x@103@01)) (Seq_contains s@97@01 x@103@01))
  :pattern ((Seq_contains_trigger s@97@01 x@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@73@11@73@49-aux|)))
(assert (forall ((x@103@01 $Ref)) (!
  (=> (Seq_contains s@97@01 x@103@01) (= ($FVF.lookup_f $t@99@01 x@103@01) 0))
  :pattern ((Seq_contains s@97@01 x@103@01))
  :pattern ((Seq_contains_trigger s@97@01 x@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@73@11@73@49|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall x: Ref :: { (x in s) } (x in s) ==> x.f == 0)
; [eval] (forall x: Ref :: { (x in s) } (x in s) ==> x.f == 0)
(declare-const x@104@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in s) ==> x.f == 0
; [eval] (x in s)
(push) ; 4
; [then-branch: 24 | x@104@01 in s@97@01 | live]
; [else-branch: 24 | !(x@104@01 in s@97@01) | live]
(push) ; 5
; [then-branch: 24 | x@104@01 in s@97@01]
(assert (Seq_contains s@97@01 x@104@01))
; [eval] x.f == 0
(push) ; 6
(assert (not (and (img@101@01 x@104@01) (Seq_contains s@97@01 (inv@100@01 x@104@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 24 | !(x@104@01 in s@97@01)]
(assert (not (Seq_contains s@97@01 x@104@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains s@97@01 x@104@01)) (Seq_contains s@97@01 x@104@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@104@01 $Ref)) (!
  (or (not (Seq_contains s@97@01 x@104@01)) (Seq_contains s@97@01 x@104@01))
  :pattern ((Seq_contains s@97@01 x@104@01))
  :pattern ((Seq_contains_trigger s@97@01 x@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@74@11@74@49-aux|)))
(assert (forall ((x@104@01 $Ref)) (!
  (or (not (Seq_contains s@97@01 x@104@01)) (Seq_contains s@97@01 x@104@01))
  :pattern ((Seq_contains_trigger s@97@01 x@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@74@11@74@49-aux|)))
(push) ; 3
(assert (not (forall ((x@104@01 $Ref)) (!
  (=> (Seq_contains s@97@01 x@104@01) (= ($FVF.lookup_f $t@99@01 x@104@01) 0))
  :pattern ((Seq_contains s@97@01 x@104@01))
  :pattern ((Seq_contains_trigger s@97@01 x@104@01))
  :pattern ((Seq_contains_trigger s@97@01 x@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@74@11@74@49|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@104@01 $Ref)) (!
  (=> (Seq_contains s@97@01 x@104@01) (= ($FVF.lookup_f $t@99@01 x@104@01) 0))
  :pattern ((Seq_contains s@97@01 x@104@01))
  :pattern ((Seq_contains_trigger s@97@01 x@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0064.vpr@74@11@74@49|)))
; [exec]
; assert |s| > 0 ==> s[0].f == 0
; [eval] |s| > 0 ==> s[0].f == 0
; [eval] |s| > 0
; [eval] |s|
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (> (Seq_length s@97@01) 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (> (Seq_length s@97@01) 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | |s@97@01| > 0 | live]
; [else-branch: 25 | !(|s@97@01| > 0) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | |s@97@01| > 0]
(assert (> (Seq_length s@97@01) 0))
; [eval] s[0].f == 0
; [eval] s[0]
(push) ; 5
(assert (not (< 0 (Seq_length s@97@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and
  (img@101@01 (Seq_index s@97@01 0))
  (Seq_contains s@97@01 (inv@100@01 (Seq_index s@97@01 0))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 25 | !(|s@97@01| > 0)]
(assert (not (> (Seq_length s@97@01) 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (> (Seq_length s@97@01) 0)) (> (Seq_length s@97@01) 0)))
(push) ; 3
(assert (not (=>
  (> (Seq_length s@97@01) 0)
  (= ($FVF.lookup_f $t@99@01 (Seq_index s@97@01 0)) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (> (Seq_length s@97@01) 0)
  (= ($FVF.lookup_f $t@99@01 (Seq_index s@97@01 0)) 0)))
(pop) ; 2
(pop) ; 1
