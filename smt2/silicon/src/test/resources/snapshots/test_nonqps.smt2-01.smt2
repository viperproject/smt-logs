(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-07 13:38:58
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
(declare-fun Seq_length (Seq<Int>) Int)
(declare-const Seq_empty Seq<Int>)
(declare-fun Seq_singleton (Int) Seq<Int>)
(declare-fun Seq_append (Seq<Int> Seq<Int>) Seq<Int>)
(declare-fun Seq_index (Seq<Int> Int) Int)
(declare-fun Seq_add (Int Int) Int)
(declare-fun Seq_sub (Int Int) Int)
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
(declare-fun addB ($Snap $Ref $Ref Int) Int)
(declare-fun addB%limited ($Snap $Ref $Ref Int) Int)
(declare-fun addB%stateless ($Ref $Ref Int) Bool)
(declare-fun addB%precondition ($Snap $Ref $Ref Int) Bool)
(declare-fun addC ($Snap $Ref Int Int) Int)
(declare-fun addC%limited ($Snap $Ref Int Int) Int)
(declare-fun addC%stateless ($Ref Int Int) Bool)
(declare-fun addC%precondition ($Snap $Ref Int Int) Bool)
(declare-fun addA ($Snap Int Int) Int)
(declare-fun addA%limited ($Snap Int Int) Int)
(declare-fun addA%stateless (Int Int) Bool)
(declare-fun addA%precondition ($Snap Int Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun pair%trigger ($Snap $Ref $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
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
(assert (forall ((i Int) (j Int)) (!
  (= (Seq_add i j) (+ i j))
  :pattern ((Seq_add i j))
  )))
(assert (forall ((i Int) (j Int)) (!
  (= (Seq_sub i j) (- i j))
  :pattern ((Seq_sub i j))
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
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref) (i@2@00 Int)) (!
  (= (addB%limited s@$ x@0@00 y@1@00 i@2@00) (addB s@$ x@0@00 y@1@00 i@2@00))
  :pattern ((addB s@$ x@0@00 y@1@00 i@2@00))
  :qid |quant-u-4707|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref) (i@2@00 Int)) (!
  (addB%stateless x@0@00 y@1@00 i@2@00)
  :pattern ((addB%limited s@$ x@0@00 y@1@00 i@2@00))
  :qid |quant-u-4708|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref) (i@2@00 Int)) (!
  (=>
    (addB%precondition s@$ x@0@00 y@1@00 i@2@00)
    (=
      (addB s@$ x@0@00 y@1@00 i@2@00)
      (+
        (+ i@2@00 ($SortWrappers.$SnapToInt ($Snap.first s@$)))
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((addB s@$ x@0@00 y@1@00 i@2@00))
  :qid |quant-u-4713|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref) (i@2@00 Int)) (!
  true
  :pattern ((addB s@$ x@0@00 y@1@00 i@2@00))
  :qid |quant-u-4714|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref) (v@5@00 Int) (i@6@00 Int)) (!
  (= (addC%limited s@$ x@4@00 v@5@00 i@6@00) (addC s@$ x@4@00 v@5@00 i@6@00))
  :pattern ((addC s@$ x@4@00 v@5@00 i@6@00))
  :qid |quant-u-4709|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref) (v@5@00 Int) (i@6@00 Int)) (!
  (addC%stateless x@4@00 v@5@00 i@6@00)
  :pattern ((addC%limited s@$ x@4@00 v@5@00 i@6@00))
  :qid |quant-u-4710|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref) (v@5@00 Int) (i@6@00 Int)) (!
  (=>
    (addC%precondition s@$ x@4@00 v@5@00 i@6@00)
    (=
      (addC s@$ x@4@00 v@5@00 i@6@00)
      (+ (+ ($SortWrappers.$SnapToInt s@$) v@5@00) i@6@00)))
  :pattern ((addC s@$ x@4@00 v@5@00 i@6@00))
  :qid |quant-u-4715|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref) (v@5@00 Int) (i@6@00 Int)) (!
  true
  :pattern ((addC s@$ x@4@00 v@5@00 i@6@00))
  :qid |quant-u-4716|)))
(assert (forall ((s@$ $Snap) (v@8@00 Int) (i@9@00 Int)) (!
  (= (addA%limited s@$ v@8@00 i@9@00) (addA s@$ v@8@00 i@9@00))
  :pattern ((addA s@$ v@8@00 i@9@00))
  :qid |quant-u-4711|)))
(assert (forall ((s@$ $Snap) (v@8@00 Int) (i@9@00 Int)) (!
  (addA%stateless v@8@00 i@9@00)
  :pattern ((addA%limited s@$ v@8@00 i@9@00))
  :qid |quant-u-4712|)))
(assert (forall ((s@$ $Snap) (v@8@00 Int) (i@9@00 Int)) (!
  (=>
    (addA%precondition s@$ v@8@00 i@9@00)
    (= (addA s@$ v@8@00 i@9@00) (+ i@9@00 v@8@00)))
  :pattern ((addA s@$ v@8@00 i@9@00))
  :qid |quant-u-4717|)))
(assert (forall ((s@$ $Snap) (v@8@00 Int) (i@9@00 Int)) (!
  true
  :pattern ((addA s@$ v@8@00 i@9@00))
  :qid |quant-u-4718|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test01a ----------
(declare-const x@0@01 $Ref)
(declare-const y@1@01 $Ref)
(declare-const xs@2@01 Seq<Int>)
(declare-const x@3@01 $Ref)
(declare-const y@4@01 $Ref)
(declare-const xs@5@01 Seq<Int>)
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
; inhale acc(pair(x, y), write)
(declare-const $t@6@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { (i in xs) }
;     (i in xs) ==> 0 < addA((unfolding acc(pair(x, y), write) in x.f), i))
(declare-const $t@7@01 $Snap)
(assert (= $t@7@01 $Snap.unit))
; [eval] (forall i: Int :: { (i in xs) } (i in xs) ==> 0 < addA((unfolding acc(pair(x, y), write) in x.f), i))
(declare-const i@8@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> 0 < addA((unfolding acc(pair(x, y), write) in x.f), i)
; [eval] (i in xs)
(push) ; 4
; [then-branch: 0 | i@8@01 in xs@5@01 | live]
; [else-branch: 0 | !(i@8@01 in xs@5@01) | live]
(push) ; 5
; [then-branch: 0 | i@8@01 in xs@5@01]
(assert (Seq_contains xs@5@01 i@8@01))
; [eval] 0 < addA((unfolding acc(pair(x, y), write) in x.f), i)
; [eval] addA((unfolding acc(pair(x, y), write) in x.f), i)
; [eval] (unfolding acc(pair(x, y), write) in x.f)
(push) ; 6
(assert (pair%trigger $t@6@01 x@3@01 y@4@01))
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (not (= x@3@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@3@01 y@4@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@4@01 $Ref.null)))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@6@01 x@3@01 y@4@01)
  (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01)))
  (not (= x@3@01 $Ref.null))
  (not (= y@4@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(assert (addA%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)) i@8@01))
(pop) ; 6
; Joined path conditions
(assert (addA%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)) i@8@01))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | !(i@8@01 in xs@5@01)]
(assert (not (Seq_contains xs@5@01 i@8@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@5@01 i@8@01)
  (and
    (Seq_contains xs@5@01 i@8@01)
    (pair%trigger $t@6@01 x@3@01 y@4@01)
    (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01)))
    (not (= x@3@01 $Ref.null))
    (not (= y@4@01 $Ref.null))
    (addA%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)) i@8@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@5@01 i@8@01)) (Seq_contains xs@5@01 i@8@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@8@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@5@01 i@8@01)
      (and
        (Seq_contains xs@5@01 i@8@01)
        (pair%trigger $t@6@01 x@3@01 y@4@01)
        (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01)))
        (not (= x@3@01 $Ref.null))
        (not (= y@4@01 $Ref.null))
        (addA%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)) i@8@01)))
    (or (not (Seq_contains xs@5@01 i@8@01)) (Seq_contains xs@5@01 i@8@01)))
  :pattern ((Seq_contains xs@5@01 i@8@01))
  :pattern ((Seq_contains_trigger xs@5@01 i@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@30@10@30@89-aux|)))
(assert (forall ((i@8@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@5@01 i@8@01)
      (and
        (Seq_contains xs@5@01 i@8@01)
        (pair%trigger $t@6@01 x@3@01 y@4@01)
        (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01)))
        (not (= x@3@01 $Ref.null))
        (not (= y@4@01 $Ref.null))
        (addA%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)) i@8@01)))
    (or (not (Seq_contains xs@5@01 i@8@01)) (Seq_contains xs@5@01 i@8@01)))
  :pattern ((Seq_contains_trigger xs@5@01 i@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@30@10@30@89-aux|)))
(assert (forall ((i@8@01 Int)) (!
  (=>
    (Seq_contains xs@5@01 i@8@01)
    (<
      0
      (addA $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)) i@8@01)))
  :pattern ((Seq_contains xs@5@01 i@8@01))
  :pattern ((Seq_contains_trigger xs@5@01 i@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@30@10@30@89|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall i: Int ::
;     { (i in xs) }
;     (i in xs) ==> 0 < addA(i, (unfolding acc(pair(x, y), write) in x.f)))
; [eval] (forall i: Int :: { (i in xs) } (i in xs) ==> 0 < addA(i, (unfolding acc(pair(x, y), write) in x.f)))
(declare-const i@9@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> 0 < addA(i, (unfolding acc(pair(x, y), write) in x.f))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 1 | i@9@01 in xs@5@01 | live]
; [else-branch: 1 | !(i@9@01 in xs@5@01) | live]
(push) ; 5
; [then-branch: 1 | i@9@01 in xs@5@01]
(assert (Seq_contains xs@5@01 i@9@01))
; [eval] 0 < addA(i, (unfolding acc(pair(x, y), write) in x.f))
; [eval] addA(i, (unfolding acc(pair(x, y), write) in x.f))
; [eval] (unfolding acc(pair(x, y), write) in x.f)
(push) ; 6
(assert (pair%trigger $t@6@01 x@3@01 y@4@01))
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (not (= x@3@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@3@01 y@4@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@4@01 $Ref.null)))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@6@01 x@3@01 y@4@01)
  (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01)))
  (not (= x@3@01 $Ref.null))
  (not (= y@4@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(assert (addA%precondition $Snap.unit i@9@01 ($SortWrappers.$SnapToInt ($Snap.first $t@6@01))))
(pop) ; 6
; Joined path conditions
(assert (addA%precondition $Snap.unit i@9@01 ($SortWrappers.$SnapToInt ($Snap.first $t@6@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(i@9@01 in xs@5@01)]
(assert (not (Seq_contains xs@5@01 i@9@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@5@01 i@9@01)
  (and
    (Seq_contains xs@5@01 i@9@01)
    (pair%trigger $t@6@01 x@3@01 y@4@01)
    (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01)))
    (not (= x@3@01 $Ref.null))
    (not (= y@4@01 $Ref.null))
    (addA%precondition $Snap.unit i@9@01 ($SortWrappers.$SnapToInt ($Snap.first $t@6@01))))))
; Joined path conditions
(assert (or (not (Seq_contains xs@5@01 i@9@01)) (Seq_contains xs@5@01 i@9@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@9@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@5@01 i@9@01)
      (and
        (Seq_contains xs@5@01 i@9@01)
        (pair%trigger $t@6@01 x@3@01 y@4@01)
        (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01)))
        (not (= x@3@01 $Ref.null))
        (not (= y@4@01 $Ref.null))
        (addA%precondition $Snap.unit i@9@01 ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)))))
    (or (not (Seq_contains xs@5@01 i@9@01)) (Seq_contains xs@5@01 i@9@01)))
  :pattern ((Seq_contains xs@5@01 i@9@01))
  :pattern ((Seq_contains_trigger xs@5@01 i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@31@10@31@89-aux|)))
(assert (forall ((i@9@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@5@01 i@9@01)
      (and
        (Seq_contains xs@5@01 i@9@01)
        (pair%trigger $t@6@01 x@3@01 y@4@01)
        (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01)))
        (not (= x@3@01 $Ref.null))
        (not (= y@4@01 $Ref.null))
        (addA%precondition $Snap.unit i@9@01 ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)))))
    (or (not (Seq_contains xs@5@01 i@9@01)) (Seq_contains xs@5@01 i@9@01)))
  :pattern ((Seq_contains_trigger xs@5@01 i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@31@10@31@89-aux|)))
(assert (forall ((i@9@01 Int)) (!
  (=>
    (Seq_contains xs@5@01 i@9@01)
    (addA%precondition $Snap.unit i@9@01 ($SortWrappers.$SnapToInt ($Snap.first $t@6@01))))
  :pattern ((Seq_contains xs@5@01 i@9@01))
  :pattern ((Seq_contains_trigger xs@5@01 i@9@01))
  :pattern ((Seq_contains_trigger xs@5@01 i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@31@10@31@89_precondition|)))
(push) ; 3
(assert (not (forall ((i@9@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@5@01 i@9@01)
        (addA%precondition $Snap.unit i@9@01 ($SortWrappers.$SnapToInt ($Snap.first $t@6@01))))
      (Seq_contains xs@5@01 i@9@01))
    (<
      0
      (addA $Snap.unit i@9@01 ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)))))
  :pattern ((Seq_contains xs@5@01 i@9@01))
  :pattern ((Seq_contains_trigger xs@5@01 i@9@01))
  :pattern ((Seq_contains_trigger xs@5@01 i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@31@10@31@89|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@9@01 Int)) (!
  (=>
    (Seq_contains xs@5@01 i@9@01)
    (<
      0
      (addA $Snap.unit i@9@01 ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)))))
  :pattern ((Seq_contains xs@5@01 i@9@01))
  :pattern ((Seq_contains_trigger xs@5@01 i@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@31@10@31@89|)))
(pop) ; 2
(pop) ; 1
; ---------- test01b ----------
(declare-const x@10@01 $Ref)
(declare-const y@11@01 $Ref)
(declare-const xs@12@01 Seq<Int>)
(declare-const x@13@01 $Ref)
(declare-const y@14@01 $Ref)
(declare-const xs@15@01 Seq<Int>)
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
; var tmp: Int
(declare-const tmp@16@01 Int)
; [exec]
; inhale acc(pair(x, y), write)
(declare-const $t@17@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { (i in xs) }
;     (i in xs) ==> 0 < addA((unfolding acc(pair(x, y), write) in x.f), i))
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 $Snap.unit))
; [eval] (forall i: Int :: { (i in xs) } (i in xs) ==> 0 < addA((unfolding acc(pair(x, y), write) in x.f), i))
(declare-const i@19@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> 0 < addA((unfolding acc(pair(x, y), write) in x.f), i)
; [eval] (i in xs)
(push) ; 4
; [then-branch: 2 | i@19@01 in xs@15@01 | live]
; [else-branch: 2 | !(i@19@01 in xs@15@01) | live]
(push) ; 5
; [then-branch: 2 | i@19@01 in xs@15@01]
(assert (Seq_contains xs@15@01 i@19@01))
; [eval] 0 < addA((unfolding acc(pair(x, y), write) in x.f), i)
; [eval] addA((unfolding acc(pair(x, y), write) in x.f), i)
; [eval] (unfolding acc(pair(x, y), write) in x.f)
(push) ; 6
(assert (pair%trigger $t@17@01 x@13@01 y@14@01))
(assert (= $t@17@01 ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01))))
(assert (not (= x@13@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@13@01 y@14@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@14@01 $Ref.null)))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@17@01 x@13@01 y@14@01)
  (= $t@17@01 ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01)))
  (not (= x@13@01 $Ref.null))
  (not (= y@14@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(assert (addA%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@17@01)) i@19@01))
(pop) ; 6
; Joined path conditions
(assert (addA%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@17@01)) i@19@01))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | !(i@19@01 in xs@15@01)]
(assert (not (Seq_contains xs@15@01 i@19@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@15@01 i@19@01)
  (and
    (Seq_contains xs@15@01 i@19@01)
    (pair%trigger $t@17@01 x@13@01 y@14@01)
    (= $t@17@01 ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01)))
    (not (= x@13@01 $Ref.null))
    (not (= y@14@01 $Ref.null))
    (addA%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@17@01)) i@19@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@15@01 i@19@01)) (Seq_contains xs@15@01 i@19@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@19@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@15@01 i@19@01)
      (and
        (Seq_contains xs@15@01 i@19@01)
        (pair%trigger $t@17@01 x@13@01 y@14@01)
        (=
          $t@17@01
          ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01)))
        (not (= x@13@01 $Ref.null))
        (not (= y@14@01 $Ref.null))
        (addA%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@17@01)) i@19@01)))
    (or (not (Seq_contains xs@15@01 i@19@01)) (Seq_contains xs@15@01 i@19@01)))
  :pattern ((Seq_contains xs@15@01 i@19@01))
  :pattern ((Seq_contains_trigger xs@15@01 i@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@37@10@37@89-aux|)))
(assert (forall ((i@19@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@15@01 i@19@01)
      (and
        (Seq_contains xs@15@01 i@19@01)
        (pair%trigger $t@17@01 x@13@01 y@14@01)
        (=
          $t@17@01
          ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01)))
        (not (= x@13@01 $Ref.null))
        (not (= y@14@01 $Ref.null))
        (addA%precondition $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@17@01)) i@19@01)))
    (or (not (Seq_contains xs@15@01 i@19@01)) (Seq_contains xs@15@01 i@19@01)))
  :pattern ((Seq_contains_trigger xs@15@01 i@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@37@10@37@89-aux|)))
(assert (forall ((i@19@01 Int)) (!
  (=>
    (Seq_contains xs@15@01 i@19@01)
    (<
      0
      (addA $Snap.unit ($SortWrappers.$SnapToInt ($Snap.first $t@17@01)) i@19@01)))
  :pattern ((Seq_contains xs@15@01 i@19@01))
  :pattern ((Seq_contains_trigger xs@15@01 i@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@37@10@37@89|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(pair(x, y), write)
(assert (= $t@17@01 ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01))))
(assert (not (= x@13@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@13@01 y@14@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@14@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (pair%trigger $t@17@01 x@13@01 y@14@01))
; [exec]
; tmp := x.f
(declare-const tmp@20@01 Int)
(assert (= tmp@20@01 ($SortWrappers.$SnapToInt ($Snap.first $t@17@01))))
; [exec]
; x.f := y.f
(declare-const f@21@01 Int)
(assert (= f@21@01 ($SortWrappers.$SnapToInt ($Snap.second $t@17@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@14@01 x@13@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; y.f := tmp
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@13@01 y@14@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(pair(x, y), write)
(assert (pair%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap f@21@01)
  ($SortWrappers.IntTo$Snap tmp@20@01)) x@13@01 y@14@01))
; [exec]
; assert (forall i: Int ::
;     { (i in xs) }
;     (i in xs) ==> 0 < addA(i, (unfolding acc(pair(x, y), write) in y.f)))
; [eval] (forall i: Int :: { (i in xs) } (i in xs) ==> 0 < addA(i, (unfolding acc(pair(x, y), write) in y.f)))
(declare-const i@22@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> 0 < addA(i, (unfolding acc(pair(x, y), write) in y.f))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 3 | i@22@01 in xs@15@01 | live]
; [else-branch: 3 | !(i@22@01 in xs@15@01) | live]
(push) ; 5
; [then-branch: 3 | i@22@01 in xs@15@01]
(assert (Seq_contains xs@15@01 i@22@01))
; [eval] 0 < addA(i, (unfolding acc(pair(x, y), write) in y.f))
; [eval] addA(i, (unfolding acc(pair(x, y), write) in y.f))
; [eval] (unfolding acc(pair(x, y), write) in y.f)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@13@01 y@14@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
(set-option :timeout 0)
(push) ; 6
(assert (addA%precondition $Snap.unit i@22@01 tmp@20@01))
(pop) ; 6
; Joined path conditions
(assert (addA%precondition $Snap.unit i@22@01 tmp@20@01))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | !(i@22@01 in xs@15@01)]
(assert (not (Seq_contains xs@15@01 i@22@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@15@01 i@22@01)
  (and
    (Seq_contains xs@15@01 i@22@01)
    (addA%precondition $Snap.unit i@22@01 tmp@20@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@15@01 i@22@01)) (Seq_contains xs@15@01 i@22@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@22@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@15@01 i@22@01)
      (and
        (Seq_contains xs@15@01 i@22@01)
        (addA%precondition $Snap.unit i@22@01 tmp@20@01)))
    (or (not (Seq_contains xs@15@01 i@22@01)) (Seq_contains xs@15@01 i@22@01)))
  :pattern ((Seq_contains xs@15@01 i@22@01))
  :pattern ((Seq_contains_trigger xs@15@01 i@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@39@10@39@89-aux|)))
(assert (forall ((i@22@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@15@01 i@22@01)
      (and
        (Seq_contains xs@15@01 i@22@01)
        (addA%precondition $Snap.unit i@22@01 tmp@20@01)))
    (or (not (Seq_contains xs@15@01 i@22@01)) (Seq_contains xs@15@01 i@22@01)))
  :pattern ((Seq_contains_trigger xs@15@01 i@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@39@10@39@89-aux|)))
(assert (forall ((i@22@01 Int)) (!
  (=>
    (Seq_contains xs@15@01 i@22@01)
    (addA%precondition $Snap.unit i@22@01 tmp@20@01))
  :pattern ((Seq_contains xs@15@01 i@22@01))
  :pattern ((Seq_contains_trigger xs@15@01 i@22@01))
  :pattern ((Seq_contains_trigger xs@15@01 i@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@39@10@39@89_precondition|)))
(push) ; 3
(assert (not (forall ((i@22@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@15@01 i@22@01)
        (addA%precondition $Snap.unit i@22@01 tmp@20@01))
      (Seq_contains xs@15@01 i@22@01))
    (< 0 (addA $Snap.unit i@22@01 tmp@20@01)))
  :pattern ((Seq_contains xs@15@01 i@22@01))
  :pattern ((Seq_contains_trigger xs@15@01 i@22@01))
  :pattern ((Seq_contains_trigger xs@15@01 i@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@39@10@39@89|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@22@01 Int)) (!
  (=> (Seq_contains xs@15@01 i@22@01) (< 0 (addA $Snap.unit i@22@01 tmp@20@01)))
  :pattern ((Seq_contains xs@15@01 i@22@01))
  :pattern ((Seq_contains_trigger xs@15@01 i@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@39@10@39@89|)))
(pop) ; 2
(pop) ; 1
; ---------- test02a ----------
(declare-const x@23@01 $Ref)
(declare-const y@24@01 $Ref)
(declare-const xs@25@01 Seq<Int>)
(declare-const x@26@01 $Ref)
(declare-const y@27@01 $Ref)
(declare-const xs@28@01 Seq<Int>)
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
; inhale acc(pair(x, y), write)
(declare-const $t@29@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addB(x, y, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 $Snap.unit))
; [eval] (forall i: Int :: { addB(x, y, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const i@31@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 4 | i@31@01 in xs@28@01 | live]
; [else-branch: 4 | !(i@31@01 in xs@28@01) | live]
(push) ; 5
; [then-branch: 4 | i@31@01 in xs@28@01]
(assert (Seq_contains xs@28@01 i@31@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
(push) ; 6
(assert (pair%trigger $t@29@01 x@26@01 y@27@01))
(assert (= $t@29@01 ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01))))
(assert (not (= x@26@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@26@01 y@27@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@27@01 $Ref.null)))
; [eval] 0 < addB(x, y, i)
; [eval] addB(x, y, i)
(set-option :timeout 0)
(push) ; 7
(assert (addB%precondition ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)) x@26@01 y@27@01 i@31@01))
(pop) ; 7
; Joined path conditions
(assert (addB%precondition ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)) x@26@01 y@27@01 i@31@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@29@01 x@26@01 y@27@01)
  (= $t@29@01 ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)))
  (not (= x@26@01 $Ref.null))
  (not (= y@27@01 $Ref.null))
  (addB%precondition ($Snap.combine
    ($Snap.first $t@29@01)
    ($Snap.second $t@29@01)) x@26@01 y@27@01 i@31@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(i@31@01 in xs@28@01)]
(assert (not (Seq_contains xs@28@01 i@31@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@28@01 i@31@01)
  (and
    (Seq_contains xs@28@01 i@31@01)
    (pair%trigger $t@29@01 x@26@01 y@27@01)
    (= $t@29@01 ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)))
    (not (= x@26@01 $Ref.null))
    (not (= y@27@01 $Ref.null))
    (addB%precondition ($Snap.combine
      ($Snap.first $t@29@01)
      ($Snap.second $t@29@01)) x@26@01 y@27@01 i@31@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@28@01 i@31@01)) (Seq_contains xs@28@01 i@31@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@31@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@28@01 i@31@01)
      (and
        (Seq_contains xs@28@01 i@31@01)
        (pair%trigger $t@29@01 x@26@01 y@27@01)
        (=
          $t@29@01
          ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)))
        (not (= x@26@01 $Ref.null))
        (not (= y@27@01 $Ref.null))
        (addB%precondition ($Snap.combine
          ($Snap.first $t@29@01)
          ($Snap.second $t@29@01)) x@26@01 y@27@01 i@31@01)))
    (or (not (Seq_contains xs@28@01 i@31@01)) (Seq_contains xs@28@01 i@31@01)))
  :pattern ((addB%limited ($Snap.combine
    ($Snap.first $t@29@01)
    ($Snap.second $t@29@01)) x@26@01 y@27@01 i@31@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@46@10@46@96-aux|)))
(assert (forall ((i@31@01 Int)) (!
  (=>
    (Seq_contains xs@28@01 i@31@01)
    (<
      0
      (addB ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)) x@26@01 y@27@01 i@31@01)))
  :pattern ((addB%limited ($Snap.combine
    ($Snap.first $t@29@01)
    ($Snap.second $t@29@01)) x@26@01 y@27@01 i@31@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@46@10@46@96|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall i: Int ::
;     { addB(x, y, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
; [eval] (forall i: Int :: { addB(x, y, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const i@32@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 5 | i@32@01 in xs@28@01 | live]
; [else-branch: 5 | !(i@32@01 in xs@28@01) | live]
(push) ; 5
; [then-branch: 5 | i@32@01 in xs@28@01]
(assert (Seq_contains xs@28@01 i@32@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
(push) ; 6
(assert (pair%trigger $t@29@01 x@26@01 y@27@01))
(assert (= $t@29@01 ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01))))
(assert (not (= x@26@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@26@01 y@27@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@27@01 $Ref.null)))
; [eval] 0 < addB(x, y, i)
; [eval] addB(x, y, i)
(set-option :timeout 0)
(push) ; 7
(assert (addB%precondition ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01))
(pop) ; 7
; Joined path conditions
(assert (addB%precondition ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@29@01 x@26@01 y@27@01)
  (= $t@29@01 ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)))
  (not (= x@26@01 $Ref.null))
  (not (= y@27@01 $Ref.null))
  (addB%precondition ($Snap.combine
    ($Snap.first $t@29@01)
    ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(i@32@01 in xs@28@01)]
(assert (not (Seq_contains xs@28@01 i@32@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@28@01 i@32@01)
  (and
    (Seq_contains xs@28@01 i@32@01)
    (pair%trigger $t@29@01 x@26@01 y@27@01)
    (= $t@29@01 ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)))
    (not (= x@26@01 $Ref.null))
    (not (= y@27@01 $Ref.null))
    (addB%precondition ($Snap.combine
      ($Snap.first $t@29@01)
      ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@28@01 i@32@01)) (Seq_contains xs@28@01 i@32@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@32@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@28@01 i@32@01)
      (and
        (Seq_contains xs@28@01 i@32@01)
        (pair%trigger $t@29@01 x@26@01 y@27@01)
        (=
          $t@29@01
          ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)))
        (not (= x@26@01 $Ref.null))
        (not (= y@27@01 $Ref.null))
        (addB%precondition ($Snap.combine
          ($Snap.first $t@29@01)
          ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01)))
    (or (not (Seq_contains xs@28@01 i@32@01)) (Seq_contains xs@28@01 i@32@01)))
  :pattern ((addB%limited ($Snap.combine
    ($Snap.first $t@29@01)
    ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@47@10@47@96-aux|)))
(assert (forall ((i@32@01 Int)) (!
  (=>
    (Seq_contains xs@28@01 i@32@01)
    (addB%precondition ($Snap.combine
      ($Snap.first $t@29@01)
      ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01))
  :pattern ((addB%limited ($Snap.combine
    ($Snap.first $t@29@01)
    ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@47@10@47@96_precondition|)))
(push) ; 3
(assert (not (forall ((i@32@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@28@01 i@32@01)
        (addB%precondition ($Snap.combine
          ($Snap.first $t@29@01)
          ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01))
      (Seq_contains xs@28@01 i@32@01))
    (<
      0
      (addB ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01)))
  :pattern ((addB%limited ($Snap.combine
    ($Snap.first $t@29@01)
    ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@47@10@47@96|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@32@01 Int)) (!
  (=>
    (Seq_contains xs@28@01 i@32@01)
    (<
      0
      (addB ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01)))
  :pattern ((addB%limited ($Snap.combine
    ($Snap.first $t@29@01)
    ($Snap.second $t@29@01)) x@26@01 y@27@01 i@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@47@10@47@96|)))
(pop) ; 2
(pop) ; 1
; ---------- test02b ----------
(declare-const x@33@01 $Ref)
(declare-const y@34@01 $Ref)
(declare-const xs@35@01 Seq<Int>)
(declare-const x@36@01 $Ref)
(declare-const y@37@01 $Ref)
(declare-const xs@38@01 Seq<Int>)
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
; var tmp: Int
(declare-const tmp@39@01 Int)
; [exec]
; inhale acc(pair(x, y), write)
(declare-const $t@40@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addB(x, y, i) }
;     { (i in xs) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 $Snap.unit))
; [eval] (forall i: Int :: { addB(x, y, i) } { (i in xs) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const i@42@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 6 | i@42@01 in xs@38@01 | live]
; [else-branch: 6 | !(i@42@01 in xs@38@01) | live]
(push) ; 5
; [then-branch: 6 | i@42@01 in xs@38@01]
(assert (Seq_contains xs@38@01 i@42@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
(push) ; 6
(assert (pair%trigger $t@40@01 x@36@01 y@37@01))
(assert (= $t@40@01 ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01))))
(assert (not (= x@36@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@36@01 y@37@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@37@01 $Ref.null)))
; [eval] 0 < addB(x, y, i)
; [eval] addB(x, y, i)
(set-option :timeout 0)
(push) ; 7
(assert (addB%precondition ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01)) x@36@01 y@37@01 i@42@01))
(pop) ; 7
; Joined path conditions
(assert (addB%precondition ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01)) x@36@01 y@37@01 i@42@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@40@01 x@36@01 y@37@01)
  (= $t@40@01 ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01)))
  (not (= x@36@01 $Ref.null))
  (not (= y@37@01 $Ref.null))
  (addB%precondition ($Snap.combine
    ($Snap.first $t@40@01)
    ($Snap.second $t@40@01)) x@36@01 y@37@01 i@42@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | !(i@42@01 in xs@38@01)]
(assert (not (Seq_contains xs@38@01 i@42@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@38@01 i@42@01)
  (and
    (Seq_contains xs@38@01 i@42@01)
    (pair%trigger $t@40@01 x@36@01 y@37@01)
    (= $t@40@01 ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01)))
    (not (= x@36@01 $Ref.null))
    (not (= y@37@01 $Ref.null))
    (addB%precondition ($Snap.combine
      ($Snap.first $t@40@01)
      ($Snap.second $t@40@01)) x@36@01 y@37@01 i@42@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@38@01 i@42@01)) (Seq_contains xs@38@01 i@42@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@42@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@38@01 i@42@01)
      (and
        (Seq_contains xs@38@01 i@42@01)
        (pair%trigger $t@40@01 x@36@01 y@37@01)
        (=
          $t@40@01
          ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01)))
        (not (= x@36@01 $Ref.null))
        (not (= y@37@01 $Ref.null))
        (addB%precondition ($Snap.combine
          ($Snap.first $t@40@01)
          ($Snap.second $t@40@01)) x@36@01 y@37@01 i@42@01)))
    (or (not (Seq_contains xs@38@01 i@42@01)) (Seq_contains xs@38@01 i@42@01)))
  :pattern ((addB%limited ($Snap.combine
    ($Snap.first $t@40@01)
    ($Snap.second $t@40@01)) x@36@01 y@37@01 i@42@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@53@10@54@58-aux|)))
(assert (forall ((i@42@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@38@01 i@42@01)
      (and
        (Seq_contains xs@38@01 i@42@01)
        (pair%trigger $t@40@01 x@36@01 y@37@01)
        (=
          $t@40@01
          ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01)))
        (not (= x@36@01 $Ref.null))
        (not (= y@37@01 $Ref.null))
        (addB%precondition ($Snap.combine
          ($Snap.first $t@40@01)
          ($Snap.second $t@40@01)) x@36@01 y@37@01 i@42@01)))
    (or (not (Seq_contains xs@38@01 i@42@01)) (Seq_contains xs@38@01 i@42@01)))
  :pattern ((Seq_contains xs@38@01 i@42@01))
  :pattern ((Seq_contains_trigger xs@38@01 i@42@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@53@10@54@58-aux|)))
(assert (forall ((i@42@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@38@01 i@42@01)
      (and
        (Seq_contains xs@38@01 i@42@01)
        (pair%trigger $t@40@01 x@36@01 y@37@01)
        (=
          $t@40@01
          ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01)))
        (not (= x@36@01 $Ref.null))
        (not (= y@37@01 $Ref.null))
        (addB%precondition ($Snap.combine
          ($Snap.first $t@40@01)
          ($Snap.second $t@40@01)) x@36@01 y@37@01 i@42@01)))
    (or (not (Seq_contains xs@38@01 i@42@01)) (Seq_contains xs@38@01 i@42@01)))
  :pattern ((Seq_contains_trigger xs@38@01 i@42@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@53@10@54@58-aux|)))
(assert (forall ((i@42@01 Int)) (!
  (=>
    (Seq_contains xs@38@01 i@42@01)
    (<
      0
      (addB ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01)) x@36@01 y@37@01 i@42@01)))
  :pattern ((addB%limited ($Snap.combine
    ($Snap.first $t@40@01)
    ($Snap.second $t@40@01)) x@36@01 y@37@01 i@42@01))
  :pattern ((Seq_contains xs@38@01 i@42@01))
  :pattern ((Seq_contains_trigger xs@38@01 i@42@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@53@10@54@58|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(pair(x, y), write)
(assert (= $t@40@01 ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01))))
(assert (not (= x@36@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@36@01 y@37@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@37@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (pair%trigger $t@40@01 x@36@01 y@37@01))
; [exec]
; tmp := x.f
(declare-const tmp@43@01 Int)
(assert (= tmp@43@01 ($SortWrappers.$SnapToInt ($Snap.first $t@40@01))))
; [exec]
; x.f := y.f
(declare-const f@44@01 Int)
(assert (= f@44@01 ($SortWrappers.$SnapToInt ($Snap.second $t@40@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@37@01 x@36@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; y.f := tmp
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@36@01 y@37@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(pair(x, y), write)
(assert (pair%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap f@44@01)
  ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01))
; [exec]
; assert (forall i: Int ::
;     { addB(x, y, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
; [eval] (forall i: Int :: { addB(x, y, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const i@45@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 7 | i@45@01 in xs@38@01 | live]
; [else-branch: 7 | !(i@45@01 in xs@38@01) | live]
(push) ; 5
; [then-branch: 7 | i@45@01 in xs@38@01]
(assert (Seq_contains xs@38@01 i@45@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@36@01 y@37@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] 0 < addB(x, y, i)
; [eval] addB(x, y, i)
(set-option :timeout 0)
(push) ; 7
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@44@01)
  ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01))
(pop) ; 7
; Joined path conditions
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@44@01)
  ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01))
(pop) ; 6
; Joined path conditions
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@44@01)
  ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | !(i@45@01 in xs@38@01)]
(assert (not (Seq_contains xs@38@01 i@45@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@38@01 i@45@01)
  (and
    (Seq_contains xs@38@01 i@45@01)
    (addB%precondition ($Snap.combine
      ($SortWrappers.IntTo$Snap f@44@01)
      ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@38@01 i@45@01)) (Seq_contains xs@38@01 i@45@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@45@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@38@01 i@45@01)
      (and
        (Seq_contains xs@38@01 i@45@01)
        (addB%precondition ($Snap.combine
          ($SortWrappers.IntTo$Snap f@44@01)
          ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01)))
    (or (not (Seq_contains xs@38@01 i@45@01)) (Seq_contains xs@38@01 i@45@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@44@01)
    ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@58@10@59@58-aux|)))
(assert (forall ((i@45@01 Int)) (!
  (=>
    (Seq_contains xs@38@01 i@45@01)
    (addB%precondition ($Snap.combine
      ($SortWrappers.IntTo$Snap f@44@01)
      ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@44@01)
    ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@58@10@59@58_precondition|)))
(push) ; 3
(assert (not (forall ((i@45@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@38@01 i@45@01)
        (addB%precondition ($Snap.combine
          ($SortWrappers.IntTo$Snap f@44@01)
          ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01))
      (Seq_contains xs@38@01 i@45@01))
    (<
      0
      (addB ($Snap.combine
        ($SortWrappers.IntTo$Snap f@44@01)
        ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@44@01)
    ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@58@10@59@58|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@45@01 Int)) (!
  (=>
    (Seq_contains xs@38@01 i@45@01)
    (<
      0
      (addB ($Snap.combine
        ($SortWrappers.IntTo$Snap f@44@01)
        ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@44@01)
    ($SortWrappers.IntTo$Snap tmp@43@01)) x@36@01 y@37@01 i@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@58@10@59@58|)))
(pop) ; 2
(pop) ; 1
; ---------- test02c ----------
(declare-const x@46@01 $Ref)
(declare-const y@47@01 $Ref)
(declare-const xs@48@01 Seq<Int>)
(declare-const x@49@01 $Ref)
(declare-const y@50@01 $Ref)
(declare-const xs@51@01 Seq<Int>)
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
; var tmp: Int
(declare-const tmp@52@01 Int)
; [exec]
; inhale acc(pair(x, y), write)
(declare-const $t@53@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addB(x, y, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const $t@54@01 $Snap)
(assert (= $t@54@01 $Snap.unit))
; [eval] (forall i: Int :: { addB(x, y, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const i@55@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 8 | i@55@01 in xs@51@01 | live]
; [else-branch: 8 | !(i@55@01 in xs@51@01) | live]
(push) ; 5
; [then-branch: 8 | i@55@01 in xs@51@01]
(assert (Seq_contains xs@51@01 i@55@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
(push) ; 6
(assert (pair%trigger $t@53@01 x@49@01 y@50@01))
(assert (= $t@53@01 ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01))))
(assert (not (= x@49@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@49@01 y@50@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@50@01 $Ref.null)))
; [eval] 0 < addB(x, y, i)
; [eval] addB(x, y, i)
(set-option :timeout 0)
(push) ; 7
(assert (addB%precondition ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01)) x@49@01 y@50@01 i@55@01))
(pop) ; 7
; Joined path conditions
(assert (addB%precondition ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01)) x@49@01 y@50@01 i@55@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@53@01 x@49@01 y@50@01)
  (= $t@53@01 ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01)))
  (not (= x@49@01 $Ref.null))
  (not (= y@50@01 $Ref.null))
  (addB%precondition ($Snap.combine
    ($Snap.first $t@53@01)
    ($Snap.second $t@53@01)) x@49@01 y@50@01 i@55@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 8 | !(i@55@01 in xs@51@01)]
(assert (not (Seq_contains xs@51@01 i@55@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@51@01 i@55@01)
  (and
    (Seq_contains xs@51@01 i@55@01)
    (pair%trigger $t@53@01 x@49@01 y@50@01)
    (= $t@53@01 ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01)))
    (not (= x@49@01 $Ref.null))
    (not (= y@50@01 $Ref.null))
    (addB%precondition ($Snap.combine
      ($Snap.first $t@53@01)
      ($Snap.second $t@53@01)) x@49@01 y@50@01 i@55@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@51@01 i@55@01)) (Seq_contains xs@51@01 i@55@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@55@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@51@01 i@55@01)
      (and
        (Seq_contains xs@51@01 i@55@01)
        (pair%trigger $t@53@01 x@49@01 y@50@01)
        (=
          $t@53@01
          ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01)))
        (not (= x@49@01 $Ref.null))
        (not (= y@50@01 $Ref.null))
        (addB%precondition ($Snap.combine
          ($Snap.first $t@53@01)
          ($Snap.second $t@53@01)) x@49@01 y@50@01 i@55@01)))
    (or (not (Seq_contains xs@51@01 i@55@01)) (Seq_contains xs@51@01 i@55@01)))
  :pattern ((addB%limited ($Snap.combine
    ($Snap.first $t@53@01)
    ($Snap.second $t@53@01)) x@49@01 y@50@01 i@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@65@10@66@58-aux|)))
(assert (forall ((i@55@01 Int)) (!
  (=>
    (Seq_contains xs@51@01 i@55@01)
    (<
      0
      (addB ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01)) x@49@01 y@50@01 i@55@01)))
  :pattern ((addB%limited ($Snap.combine
    ($Snap.first $t@53@01)
    ($Snap.second $t@53@01)) x@49@01 y@50@01 i@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@65@10@66@58|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(pair(x, y), write)
(assert (= $t@53@01 ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01))))
(assert (not (= x@49@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@49@01 y@50@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@50@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (pair%trigger $t@53@01 x@49@01 y@50@01))
; [exec]
; tmp := x.f
(declare-const tmp@56@01 Int)
(assert (= tmp@56@01 ($SortWrappers.$SnapToInt ($Snap.first $t@53@01))))
; [exec]
; x.f := y.f
(declare-const f@57@01 Int)
(assert (= f@57@01 ($SortWrappers.$SnapToInt ($Snap.second $t@53@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@50@01 x@49@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; y.f := tmp
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@49@01 y@50@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(pair(x, y), write)
(assert (pair%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap f@57@01)
  ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01))
; [exec]
; assert (forall i: Int ::
;     { addB(x, y, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
; [eval] (forall i: Int :: { addB(x, y, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const i@58@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 9 | i@58@01 in xs@51@01 | live]
; [else-branch: 9 | !(i@58@01 in xs@51@01) | live]
(push) ; 5
; [then-branch: 9 | i@58@01 in xs@51@01]
(assert (Seq_contains xs@51@01 i@58@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@49@01 y@50@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] 0 < addB(x, y, i)
; [eval] addB(x, y, i)
(set-option :timeout 0)
(push) ; 7
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@57@01)
  ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01))
(pop) ; 7
; Joined path conditions
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@57@01)
  ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01))
(pop) ; 6
; Joined path conditions
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@57@01)
  ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | !(i@58@01 in xs@51@01)]
(assert (not (Seq_contains xs@51@01 i@58@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@51@01 i@58@01)
  (and
    (Seq_contains xs@51@01 i@58@01)
    (addB%precondition ($Snap.combine
      ($SortWrappers.IntTo$Snap f@57@01)
      ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@51@01 i@58@01)) (Seq_contains xs@51@01 i@58@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@58@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@51@01 i@58@01)
      (and
        (Seq_contains xs@51@01 i@58@01)
        (addB%precondition ($Snap.combine
          ($SortWrappers.IntTo$Snap f@57@01)
          ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01)))
    (or (not (Seq_contains xs@51@01 i@58@01)) (Seq_contains xs@51@01 i@58@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58-aux|)))
(assert (forall ((i@58@01 Int)) (!
  (=>
    (Seq_contains xs@51@01 i@58@01)
    (addB%precondition ($Snap.combine
      ($SortWrappers.IntTo$Snap f@57@01)
      ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58_precondition|)))
(push) ; 3
(assert (not (forall ((i@58@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@51@01 i@58@01)
        (addB%precondition ($Snap.combine
          ($SortWrappers.IntTo$Snap f@57@01)
          ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01))
      (Seq_contains xs@51@01 i@58@01))
    (<
      0
      (addB ($Snap.combine
        ($SortWrappers.IntTo$Snap f@57@01)
        ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58|))))
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
; [eval] (forall i: Int :: { addB(x, y, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const i@59@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 10 | i@59@01 in xs@51@01 | live]
; [else-branch: 10 | !(i@59@01 in xs@51@01) | live]
(push) ; 5
; [then-branch: 10 | i@59@01 in xs@51@01]
(assert (Seq_contains xs@51@01 i@59@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@49@01 y@50@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= y@50@01 x@49@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= f@57@01 tmp@56@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tmp@56@01 f@57@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@49@01 y@50@01)) (not (= y@50@01 x@49@01))))
; [eval] 0 < addB(x, y, i)
; [eval] addB(x, y, i)
(set-option :timeout 0)
(push) ; 7
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@57@01)
  ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01))
(pop) ; 7
; Joined path conditions
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@57@01)
  ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (not (= x@49@01 y@50@01))
  (not (= y@50@01 x@49@01))
  (addB%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | !(i@59@01 in xs@51@01)]
(assert (not (Seq_contains xs@51@01 i@59@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@51@01 i@59@01)
  (and
    (Seq_contains xs@51@01 i@59@01)
    (not (= x@49@01 y@50@01))
    (not (= y@50@01 x@49@01))
    (addB%precondition ($Snap.combine
      ($SortWrappers.IntTo$Snap f@57@01)
      ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@51@01 i@59@01)) (Seq_contains xs@51@01 i@59@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@59@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@51@01 i@59@01)
      (and
        (Seq_contains xs@51@01 i@59@01)
        (not (= x@49@01 y@50@01))
        (not (= y@50@01 x@49@01))
        (addB%precondition ($Snap.combine
          ($SortWrappers.IntTo$Snap f@57@01)
          ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01)))
    (or (not (Seq_contains xs@51@01 i@59@01)) (Seq_contains xs@51@01 i@59@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58-aux|)))
(assert (forall ((i@59@01 Int)) (!
  (=>
    (Seq_contains xs@51@01 i@59@01)
    (addB%precondition ($Snap.combine
      ($SortWrappers.IntTo$Snap f@57@01)
      ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58_precondition|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((i@59@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@51@01 i@59@01)
        (addB%precondition ($Snap.combine
          ($SortWrappers.IntTo$Snap f@57@01)
          ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01))
      (Seq_contains xs@51@01 i@59@01))
    (<
      0
      (addB ($Snap.combine
        ($SortWrappers.IntTo$Snap f@57@01)
        ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@59@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58|))))
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
; [eval] (forall i: Int :: { addB(x, y, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const i@60@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 11 | i@60@01 in xs@51@01 | live]
; [else-branch: 11 | !(i@60@01 in xs@51@01) | live]
(push) ; 5
; [then-branch: 11 | i@60@01 in xs@51@01]
(assert (Seq_contains xs@51@01 i@60@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@49@01 y@50@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= y@50@01 x@49@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= f@57@01 tmp@56@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tmp@56@01 f@57@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@49@01 y@50@01)) (not (= y@50@01 x@49@01))))
; [eval] 0 < addB(x, y, i)
; [eval] addB(x, y, i)
(set-option :timeout 0)
(push) ; 7
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@57@01)
  ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01))
(pop) ; 7
; Joined path conditions
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@57@01)
  ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (not (= x@49@01 y@50@01))
  (not (= y@50@01 x@49@01))
  (addB%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(i@60@01 in xs@51@01)]
(assert (not (Seq_contains xs@51@01 i@60@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@51@01 i@60@01)
  (and
    (Seq_contains xs@51@01 i@60@01)
    (not (= x@49@01 y@50@01))
    (not (= y@50@01 x@49@01))
    (addB%precondition ($Snap.combine
      ($SortWrappers.IntTo$Snap f@57@01)
      ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@51@01 i@60@01)) (Seq_contains xs@51@01 i@60@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@60@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@51@01 i@60@01)
      (and
        (Seq_contains xs@51@01 i@60@01)
        (not (= x@49@01 y@50@01))
        (not (= y@50@01 x@49@01))
        (addB%precondition ($Snap.combine
          ($SortWrappers.IntTo$Snap f@57@01)
          ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01)))
    (or (not (Seq_contains xs@51@01 i@60@01)) (Seq_contains xs@51@01 i@60@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58-aux|)))
(assert (forall ((i@60@01 Int)) (!
  (=>
    (Seq_contains xs@51@01 i@60@01)
    (addB%precondition ($Snap.combine
      ($SortWrappers.IntTo$Snap f@57@01)
      ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58_precondition|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((i@60@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@51@01 i@60@01)
        (addB%precondition ($Snap.combine
          ($SortWrappers.IntTo$Snap f@57@01)
          ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01))
      (Seq_contains xs@51@01 i@60@01))
    (<
      0
      (addB ($Snap.combine
        ($SortWrappers.IntTo$Snap f@57@01)
        ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58|))))
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
; [eval] (forall i: Int :: { addB(x, y, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i)))
(declare-const i@61@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 12 | i@61@01 in xs@51@01 | live]
; [else-branch: 12 | !(i@61@01 in xs@51@01) | live]
(push) ; 5
; [then-branch: 12 | i@61@01 in xs@51@01]
(assert (Seq_contains xs@51@01 i@61@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(pair(x, y), write) in 0 < addB(x, y, i))
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@49@01 y@50@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= y@50@01 x@49@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= f@57@01 tmp@56@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tmp@56@01 f@57@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@49@01 y@50@01)) (not (= y@50@01 x@49@01))))
; [eval] 0 < addB(x, y, i)
; [eval] addB(x, y, i)
(set-option :timeout 0)
(push) ; 7
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@57@01)
  ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01))
(pop) ; 7
; Joined path conditions
(assert (addB%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap f@57@01)
  ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (not (= x@49@01 y@50@01))
  (not (= y@50@01 x@49@01))
  (addB%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | !(i@61@01 in xs@51@01)]
(assert (not (Seq_contains xs@51@01 i@61@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@51@01 i@61@01)
  (and
    (Seq_contains xs@51@01 i@61@01)
    (not (= x@49@01 y@50@01))
    (not (= y@50@01 x@49@01))
    (addB%precondition ($Snap.combine
      ($SortWrappers.IntTo$Snap f@57@01)
      ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@51@01 i@61@01)) (Seq_contains xs@51@01 i@61@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@61@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@51@01 i@61@01)
      (and
        (Seq_contains xs@51@01 i@61@01)
        (not (= x@49@01 y@50@01))
        (not (= y@50@01 x@49@01))
        (addB%precondition ($Snap.combine
          ($SortWrappers.IntTo$Snap f@57@01)
          ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01)))
    (or (not (Seq_contains xs@51@01 i@61@01)) (Seq_contains xs@51@01 i@61@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58-aux|)))
(assert (forall ((i@61@01 Int)) (!
  (=>
    (Seq_contains xs@51@01 i@61@01)
    (addB%precondition ($Snap.combine
      ($SortWrappers.IntTo$Snap f@57@01)
      ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58_precondition|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((i@61@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@51@01 i@61@01)
        (addB%precondition ($Snap.combine
          ($SortWrappers.IntTo$Snap f@57@01)
          ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01))
      (Seq_contains xs@51@01 i@61@01))
    (<
      0
      (addB ($Snap.combine
        ($SortWrappers.IntTo$Snap f@57@01)
        ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01)))
  :pattern ((addB%limited ($Snap.combine
    ($SortWrappers.IntTo$Snap f@57@01)
    ($SortWrappers.IntTo$Snap tmp@56@01)) x@49@01 y@50@01 i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@72@10@73@58|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test03a ----------
(declare-const x@62@01 $Ref)
(declare-const y@63@01 $Ref)
(declare-const xs@64@01 Seq<Int>)
(declare-const x@65@01 $Ref)
(declare-const y@66@01 $Ref)
(declare-const xs@67@01 Seq<Int>)
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
; inhale acc(pair(x, y), write)
(declare-const $t@68@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addC(x, y.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const $t@69@01 $Snap)
(assert (= $t@69@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@70@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 13 | i@70@01 in xs@67@01 | live]
; [else-branch: 13 | !(i@70@01 in xs@67@01) | live]
(push) ; 5
; [then-branch: 13 | i@70@01 in xs@67@01]
(assert (Seq_contains xs@67@01 i@70@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(push) ; 6
(assert (pair%trigger $t@68@01 x@65@01 y@66@01))
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(assert (not (= x@65@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@65@01 y@66@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@66@01 $Ref.null)))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@70@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@70@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@68@01 x@65@01 y@66@01)
  (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01)))
  (not (= x@65@01 $Ref.null))
  (not (= y@66@01 $Ref.null))
  (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@70@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | !(i@70@01 in xs@67@01)]
(assert (not (Seq_contains xs@67@01 i@70@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@67@01 i@70@01)
  (and
    (Seq_contains xs@67@01 i@70@01)
    (pair%trigger $t@68@01 x@65@01 y@66@01)
    (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01)))
    (not (= x@65@01 $Ref.null))
    (not (= y@66@01 $Ref.null))
    (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@70@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@67@01 i@70@01)) (Seq_contains xs@67@01 i@70@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@70@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@67@01 i@70@01)
      (and
        (Seq_contains xs@67@01 i@70@01)
        (pair%trigger $t@68@01 x@65@01 y@66@01)
        (=
          $t@68@01
          ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01)))
        (not (= x@65@01 $Ref.null))
        (not (= y@66@01 $Ref.null))
        (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@70@01)))
    (or (not (Seq_contains xs@67@01 i@70@01)) (Seq_contains xs@67@01 i@70@01)))
  :pattern ((addC%limited ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@80@10@80@100-aux|)))
(assert (forall ((i@70@01 Int)) (!
  (=>
    (Seq_contains xs@67@01 i@70@01)
    (<
      0
      (addC ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@70@01)))
  :pattern ((addC%limited ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@80@10@80@100|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall i: Int ::
;     { addC(x, y.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@71@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 14 | i@71@01 in xs@67@01 | live]
; [else-branch: 14 | !(i@71@01 in xs@67@01) | live]
(push) ; 5
; [then-branch: 14 | i@71@01 in xs@67@01]
(assert (Seq_contains xs@67@01 i@71@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(push) ; 6
(assert (pair%trigger $t@68@01 x@65@01 y@66@01))
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(assert (not (= x@65@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@65@01 y@66@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@66@01 $Ref.null)))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@68@01 x@65@01 y@66@01)
  (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01)))
  (not (= x@65@01 $Ref.null))
  (not (= y@66@01 $Ref.null))
  (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | !(i@71@01 in xs@67@01)]
(assert (not (Seq_contains xs@67@01 i@71@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@67@01 i@71@01)
  (and
    (Seq_contains xs@67@01 i@71@01)
    (pair%trigger $t@68@01 x@65@01 y@66@01)
    (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01)))
    (not (= x@65@01 $Ref.null))
    (not (= y@66@01 $Ref.null))
    (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@67@01 i@71@01)) (Seq_contains xs@67@01 i@71@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@71@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@67@01 i@71@01)
      (and
        (Seq_contains xs@67@01 i@71@01)
        (pair%trigger $t@68@01 x@65@01 y@66@01)
        (=
          $t@68@01
          ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01)))
        (not (= x@65@01 $Ref.null))
        (not (= y@66@01 $Ref.null))
        (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01)))
    (or (not (Seq_contains xs@67@01 i@71@01)) (Seq_contains xs@67@01 i@71@01)))
  :pattern ((addC%limited ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@81@10@81@100-aux|)))
(assert (forall ((i@71@01 Int)) (!
  (=>
    (Seq_contains xs@67@01 i@71@01)
    (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01))
  :pattern ((addC%limited ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@81@10@81@100_precondition|)))
(push) ; 3
(assert (not (forall ((i@71@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@67@01 i@71@01)
        (addC%precondition ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01))
      (Seq_contains xs@67@01 i@71@01))
    (<
      0
      (addC ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01)))
  :pattern ((addC%limited ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@81@10@81@100|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@71@01 Int)) (!
  (=>
    (Seq_contains xs@67@01 i@71@01)
    (<
      0
      (addC ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01)))
  :pattern ((addC%limited ($Snap.first $t@68@01) x@65@01 ($SortWrappers.$SnapToInt ($Snap.second $t@68@01)) i@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@81@10@81@100|)))
(pop) ; 2
(pop) ; 1
; ---------- test03b ----------
(declare-const x@72@01 $Ref)
(declare-const y@73@01 $Ref)
(declare-const xs@74@01 Seq<Int>)
(declare-const x@75@01 $Ref)
(declare-const y@76@01 $Ref)
(declare-const xs@77@01 Seq<Int>)
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
; var tmp: Int
(declare-const tmp@78@01 Int)
; [exec]
; inhale acc(pair(x, y), write)
(declare-const $t@79@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addC(x, y.f, i) }
;     { (i in xs) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(x, y.f, i) } { (i in xs) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@81@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 15 | i@81@01 in xs@77@01 | live]
; [else-branch: 15 | !(i@81@01 in xs@77@01) | live]
(push) ; 5
; [then-branch: 15 | i@81@01 in xs@77@01]
(assert (Seq_contains xs@77@01 i@81@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(push) ; 6
(assert (pair%trigger $t@79@01 x@75@01 y@76@01))
(assert (= $t@79@01 ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01))))
(assert (not (= x@75@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@75@01 y@76@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@76@01 $Ref.null)))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($Snap.first $t@79@01) x@75@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01)) i@81@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($Snap.first $t@79@01) x@75@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01)) i@81@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@79@01 x@75@01 y@76@01)
  (= $t@79@01 ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01)))
  (not (= x@75@01 $Ref.null))
  (not (= y@76@01 $Ref.null))
  (addC%precondition ($Snap.first $t@79@01) x@75@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01)) i@81@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | !(i@81@01 in xs@77@01)]
(assert (not (Seq_contains xs@77@01 i@81@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@77@01 i@81@01)
  (and
    (Seq_contains xs@77@01 i@81@01)
    (pair%trigger $t@79@01 x@75@01 y@76@01)
    (= $t@79@01 ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01)))
    (not (= x@75@01 $Ref.null))
    (not (= y@76@01 $Ref.null))
    (addC%precondition ($Snap.first $t@79@01) x@75@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01)) i@81@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@77@01 i@81@01)) (Seq_contains xs@77@01 i@81@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@81@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@77@01 i@81@01)
      (and
        (Seq_contains xs@77@01 i@81@01)
        (pair%trigger $t@79@01 x@75@01 y@76@01)
        (=
          $t@79@01
          ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01)))
        (not (= x@75@01 $Ref.null))
        (not (= y@76@01 $Ref.null))
        (addC%precondition ($Snap.first $t@79@01) x@75@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01)) i@81@01)))
    (or (not (Seq_contains xs@77@01 i@81@01)) (Seq_contains xs@77@01 i@81@01)))
  :pattern ((addC%limited ($Snap.first $t@79@01) x@75@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01)) i@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@87@10@88@60-aux|)))
(assert (forall ((i@81@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@77@01 i@81@01)
      (and
        (Seq_contains xs@77@01 i@81@01)
        (pair%trigger $t@79@01 x@75@01 y@76@01)
        (=
          $t@79@01
          ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01)))
        (not (= x@75@01 $Ref.null))
        (not (= y@76@01 $Ref.null))
        (addC%precondition ($Snap.first $t@79@01) x@75@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01)) i@81@01)))
    (or (not (Seq_contains xs@77@01 i@81@01)) (Seq_contains xs@77@01 i@81@01)))
  :pattern ((Seq_contains xs@77@01 i@81@01))
  :pattern ((Seq_contains_trigger xs@77@01 i@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@87@10@88@60-aux|)))
(assert (forall ((i@81@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@77@01 i@81@01)
      (and
        (Seq_contains xs@77@01 i@81@01)
        (pair%trigger $t@79@01 x@75@01 y@76@01)
        (=
          $t@79@01
          ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01)))
        (not (= x@75@01 $Ref.null))
        (not (= y@76@01 $Ref.null))
        (addC%precondition ($Snap.first $t@79@01) x@75@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01)) i@81@01)))
    (or (not (Seq_contains xs@77@01 i@81@01)) (Seq_contains xs@77@01 i@81@01)))
  :pattern ((Seq_contains_trigger xs@77@01 i@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@87@10@88@60-aux|)))
(assert (forall ((i@81@01 Int)) (!
  (=>
    (Seq_contains xs@77@01 i@81@01)
    (<
      0
      (addC ($Snap.first $t@79@01) x@75@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01)) i@81@01)))
  :pattern ((addC%limited ($Snap.first $t@79@01) x@75@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01)) i@81@01))
  :pattern ((Seq_contains xs@77@01 i@81@01))
  :pattern ((Seq_contains_trigger xs@77@01 i@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@87@10@88@60|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(pair(x, y), write)
(assert (= $t@79@01 ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01))))
(assert (not (= x@75@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@75@01 y@76@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@76@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (pair%trigger $t@79@01 x@75@01 y@76@01))
; [exec]
; tmp := x.f
(declare-const tmp@82@01 Int)
(assert (= tmp@82@01 ($SortWrappers.$SnapToInt ($Snap.first $t@79@01))))
; [exec]
; x.f := y.f
(declare-const f@83@01 Int)
(assert (= f@83@01 ($SortWrappers.$SnapToInt ($Snap.second $t@79@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@76@01 x@75@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; y.f := tmp
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@75@01 y@76@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(pair(x, y), write)
(assert (pair%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap f@83@01)
  ($SortWrappers.IntTo$Snap tmp@82@01)) x@75@01 y@76@01))
; [exec]
; assert (forall i: Int ::
;     { addC(x, y.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@84@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 16 | i@84@01 in xs@77@01 | live]
; [else-branch: 16 | !(i@84@01 in xs@77@01) | live]
(push) ; 5
; [then-branch: 16 | i@84@01 in xs@77@01]
(assert (Seq_contains xs@77@01 i@84@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@75@01 y@76@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01))
(pop) ; 6
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | !(i@84@01 in xs@77@01)]
(assert (not (Seq_contains xs@77@01 i@84@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@77@01 i@84@01)
  (and
    (Seq_contains xs@77@01 i@84@01)
    (addC%precondition ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@77@01 i@84@01)) (Seq_contains xs@77@01 i@84@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@84@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@77@01 i@84@01)
      (and
        (Seq_contains xs@77@01 i@84@01)
        (addC%precondition ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01)))
    (or (not (Seq_contains xs@77@01 i@84@01)) (Seq_contains xs@77@01 i@84@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@92@10@93@60-aux|)))
(assert (forall ((i@84@01 Int)) (!
  (=>
    (Seq_contains xs@77@01 i@84@01)
    (addC%precondition ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@92@10@93@60_precondition|)))
(push) ; 3
(assert (not (forall ((i@84@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@77@01 i@84@01)
        (addC%precondition ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01))
      (Seq_contains xs@77@01 i@84@01))
    (< 0 (addC ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@92@10@93@60|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@84@01 Int)) (!
  (=>
    (Seq_contains xs@77@01 i@84@01)
    (< 0 (addC ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@83@01) x@75@01 tmp@82@01 i@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@92@10@93@60|)))
(pop) ; 2
(pop) ; 1
; ---------- test03c ----------
(declare-const x@85@01 $Ref)
(declare-const y@86@01 $Ref)
(declare-const xs@87@01 Seq<Int>)
(declare-const x@88@01 $Ref)
(declare-const y@89@01 $Ref)
(declare-const xs@90@01 Seq<Int>)
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
; var tmp: Int
(declare-const tmp@91@01 Int)
; [exec]
; inhale acc(pair(x, y), write)
(declare-const $t@92@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addC(x, y.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@94@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 17 | i@94@01 in xs@90@01 | live]
; [else-branch: 17 | !(i@94@01 in xs@90@01) | live]
(push) ; 5
; [then-branch: 17 | i@94@01 in xs@90@01]
(assert (Seq_contains xs@90@01 i@94@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(push) ; 6
(assert (pair%trigger $t@92@01 x@88@01 y@89@01))
(assert (= $t@92@01 ($Snap.combine ($Snap.first $t@92@01) ($Snap.second $t@92@01))))
(assert (not (= x@88@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@88@01 y@89@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@89@01 $Ref.null)))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($Snap.first $t@92@01) x@88@01 ($SortWrappers.$SnapToInt ($Snap.second $t@92@01)) i@94@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($Snap.first $t@92@01) x@88@01 ($SortWrappers.$SnapToInt ($Snap.second $t@92@01)) i@94@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@92@01 x@88@01 y@89@01)
  (= $t@92@01 ($Snap.combine ($Snap.first $t@92@01) ($Snap.second $t@92@01)))
  (not (= x@88@01 $Ref.null))
  (not (= y@89@01 $Ref.null))
  (addC%precondition ($Snap.first $t@92@01) x@88@01 ($SortWrappers.$SnapToInt ($Snap.second $t@92@01)) i@94@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 17 | !(i@94@01 in xs@90@01)]
(assert (not (Seq_contains xs@90@01 i@94@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@90@01 i@94@01)
  (and
    (Seq_contains xs@90@01 i@94@01)
    (pair%trigger $t@92@01 x@88@01 y@89@01)
    (= $t@92@01 ($Snap.combine ($Snap.first $t@92@01) ($Snap.second $t@92@01)))
    (not (= x@88@01 $Ref.null))
    (not (= y@89@01 $Ref.null))
    (addC%precondition ($Snap.first $t@92@01) x@88@01 ($SortWrappers.$SnapToInt ($Snap.second $t@92@01)) i@94@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@90@01 i@94@01)) (Seq_contains xs@90@01 i@94@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@94@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@90@01 i@94@01)
      (and
        (Seq_contains xs@90@01 i@94@01)
        (pair%trigger $t@92@01 x@88@01 y@89@01)
        (=
          $t@92@01
          ($Snap.combine ($Snap.first $t@92@01) ($Snap.second $t@92@01)))
        (not (= x@88@01 $Ref.null))
        (not (= y@89@01 $Ref.null))
        (addC%precondition ($Snap.first $t@92@01) x@88@01 ($SortWrappers.$SnapToInt ($Snap.second $t@92@01)) i@94@01)))
    (or (not (Seq_contains xs@90@01 i@94@01)) (Seq_contains xs@90@01 i@94@01)))
  :pattern ((addC%limited ($Snap.first $t@92@01) x@88@01 ($SortWrappers.$SnapToInt ($Snap.second $t@92@01)) i@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@99@10@100@60-aux|)))
(assert (forall ((i@94@01 Int)) (!
  (=>
    (Seq_contains xs@90@01 i@94@01)
    (<
      0
      (addC ($Snap.first $t@92@01) x@88@01 ($SortWrappers.$SnapToInt ($Snap.second $t@92@01)) i@94@01)))
  :pattern ((addC%limited ($Snap.first $t@92@01) x@88@01 ($SortWrappers.$SnapToInt ($Snap.second $t@92@01)) i@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@99@10@100@60|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(pair(x, y), write)
(assert (= $t@92@01 ($Snap.combine ($Snap.first $t@92@01) ($Snap.second $t@92@01))))
(assert (not (= x@88@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@88@01 y@89@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@89@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (pair%trigger $t@92@01 x@88@01 y@89@01))
; [exec]
; tmp := x.f
(declare-const tmp@95@01 Int)
(assert (= tmp@95@01 ($SortWrappers.$SnapToInt ($Snap.first $t@92@01))))
; [exec]
; x.f := y.f
(declare-const f@96@01 Int)
(assert (= f@96@01 ($SortWrappers.$SnapToInt ($Snap.second $t@92@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@89@01 x@88@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; y.f := tmp
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@88@01 y@89@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(pair(x, y), write)
(assert (pair%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap f@96@01)
  ($SortWrappers.IntTo$Snap tmp@95@01)) x@88@01 y@89@01))
; [exec]
; assert (forall i: Int ::
;     { addC(x, y.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@97@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 18 | i@97@01 in xs@90@01 | live]
; [else-branch: 18 | !(i@97@01 in xs@90@01) | live]
(push) ; 5
; [then-branch: 18 | i@97@01 in xs@90@01]
(assert (Seq_contains xs@90@01 i@97@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@88@01 y@89@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01))
(pop) ; 6
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | !(i@97@01 in xs@90@01)]
(assert (not (Seq_contains xs@90@01 i@97@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@90@01 i@97@01)
  (and
    (Seq_contains xs@90@01 i@97@01)
    (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@90@01 i@97@01)) (Seq_contains xs@90@01 i@97@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@97@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@90@01 i@97@01)
      (and
        (Seq_contains xs@90@01 i@97@01)
        (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01)))
    (or (not (Seq_contains xs@90@01 i@97@01)) (Seq_contains xs@90@01 i@97@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60-aux|)))
(assert (forall ((i@97@01 Int)) (!
  (=>
    (Seq_contains xs@90@01 i@97@01)
    (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60_precondition|)))
(push) ; 3
(assert (not (forall ((i@97@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@90@01 i@97@01)
        (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01))
      (Seq_contains xs@90@01 i@97@01))
    (< 0 (addC ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@97@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60|))))
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
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@98@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 19 | i@98@01 in xs@90@01 | live]
; [else-branch: 19 | !(i@98@01 in xs@90@01) | live]
(push) ; 5
; [then-branch: 19 | i@98@01 in xs@90@01]
(assert (Seq_contains xs@90@01 i@98@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@88@01 y@89@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= y@89@01 x@88@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= f@96@01 tmp@95@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tmp@95@01 f@96@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@88@01 y@89@01)) (not (= y@89@01 x@88@01))))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (not (= x@88@01 y@89@01))
  (not (= y@89@01 x@88@01))
  (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | !(i@98@01 in xs@90@01)]
(assert (not (Seq_contains xs@90@01 i@98@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@90@01 i@98@01)
  (and
    (Seq_contains xs@90@01 i@98@01)
    (not (= x@88@01 y@89@01))
    (not (= y@89@01 x@88@01))
    (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@90@01 i@98@01)) (Seq_contains xs@90@01 i@98@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@98@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@90@01 i@98@01)
      (and
        (Seq_contains xs@90@01 i@98@01)
        (not (= x@88@01 y@89@01))
        (not (= y@89@01 x@88@01))
        (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01)))
    (or (not (Seq_contains xs@90@01 i@98@01)) (Seq_contains xs@90@01 i@98@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60-aux|)))
(assert (forall ((i@98@01 Int)) (!
  (=>
    (Seq_contains xs@90@01 i@98@01)
    (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60_precondition|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((i@98@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@90@01 i@98@01)
        (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01))
      (Seq_contains xs@90@01 i@98@01))
    (< 0 (addC ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60|))))
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
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@99@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 20 | i@99@01 in xs@90@01 | live]
; [else-branch: 20 | !(i@99@01 in xs@90@01) | live]
(push) ; 5
; [then-branch: 20 | i@99@01 in xs@90@01]
(assert (Seq_contains xs@90@01 i@99@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@88@01 y@89@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= y@89@01 x@88@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= f@96@01 tmp@95@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tmp@95@01 f@96@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@88@01 y@89@01)) (not (= y@89@01 x@88@01))))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (not (= x@88@01 y@89@01))
  (not (= y@89@01 x@88@01))
  (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 20 | !(i@99@01 in xs@90@01)]
(assert (not (Seq_contains xs@90@01 i@99@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@90@01 i@99@01)
  (and
    (Seq_contains xs@90@01 i@99@01)
    (not (= x@88@01 y@89@01))
    (not (= y@89@01 x@88@01))
    (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@90@01 i@99@01)) (Seq_contains xs@90@01 i@99@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@99@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@90@01 i@99@01)
      (and
        (Seq_contains xs@90@01 i@99@01)
        (not (= x@88@01 y@89@01))
        (not (= y@89@01 x@88@01))
        (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01)))
    (or (not (Seq_contains xs@90@01 i@99@01)) (Seq_contains xs@90@01 i@99@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60-aux|)))
(assert (forall ((i@99@01 Int)) (!
  (=>
    (Seq_contains xs@90@01 i@99@01)
    (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60_precondition|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((i@99@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@90@01 i@99@01)
        (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01))
      (Seq_contains xs@90@01 i@99@01))
    (< 0 (addC ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60|))))
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
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@100@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 21 | i@100@01 in xs@90@01 | live]
; [else-branch: 21 | !(i@100@01 in xs@90@01) | live]
(push) ; 5
; [then-branch: 21 | i@100@01 in xs@90@01]
(assert (Seq_contains xs@90@01 i@100@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@88@01 y@89@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= y@89@01 x@88@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= f@96@01 tmp@95@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tmp@95@01 f@96@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@88@01 y@89@01)) (not (= y@89@01 x@88@01))))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (not (= x@88@01 y@89@01))
  (not (= y@89@01 x@88@01))
  (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | !(i@100@01 in xs@90@01)]
(assert (not (Seq_contains xs@90@01 i@100@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@90@01 i@100@01)
  (and
    (Seq_contains xs@90@01 i@100@01)
    (not (= x@88@01 y@89@01))
    (not (= y@89@01 x@88@01))
    (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@90@01 i@100@01)) (Seq_contains xs@90@01 i@100@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@100@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@90@01 i@100@01)
      (and
        (Seq_contains xs@90@01 i@100@01)
        (not (= x@88@01 y@89@01))
        (not (= y@89@01 x@88@01))
        (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01)))
    (or (not (Seq_contains xs@90@01 i@100@01)) (Seq_contains xs@90@01 i@100@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60-aux|)))
(assert (forall ((i@100@01 Int)) (!
  (=>
    (Seq_contains xs@90@01 i@100@01)
    (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60_precondition|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((i@100@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains xs@90@01 i@100@01)
        (addC%precondition ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01))
      (Seq_contains xs@90@01 i@100@01))
    (< 0 (addC ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap f@96@01) x@88@01 tmp@95@01 i@100@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@106@10@107@60|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test04a ----------
(declare-const x@101@01 $Ref)
(declare-const y@102@01 $Ref)
(declare-const xs@103@01 Seq<Int>)
(declare-const x@104@01 $Ref)
(declare-const y@105@01 $Ref)
(declare-const xs@106@01 Seq<Int>)
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
; inhale acc(pair(x, y), write)
(declare-const $t@107@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addC(x, y.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@109@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 22 | i@109@01 in xs@106@01 | live]
; [else-branch: 22 | !(i@109@01 in xs@106@01) | live]
(push) ; 5
; [then-branch: 22 | i@109@01 in xs@106@01]
(assert (Seq_contains xs@106@01 i@109@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(push) ; 6
(assert (pair%trigger $t@107@01 x@104@01 y@105@01))
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (not (= x@104@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@104@01 y@105@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@105@01 $Ref.null)))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($Snap.first $t@107@01) x@104@01 ($SortWrappers.$SnapToInt ($Snap.second $t@107@01)) i@109@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($Snap.first $t@107@01) x@104@01 ($SortWrappers.$SnapToInt ($Snap.second $t@107@01)) i@109@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@107@01 x@104@01 y@105@01)
  (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01)))
  (not (= x@104@01 $Ref.null))
  (not (= y@105@01 $Ref.null))
  (addC%precondition ($Snap.first $t@107@01) x@104@01 ($SortWrappers.$SnapToInt ($Snap.second $t@107@01)) i@109@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | !(i@109@01 in xs@106@01)]
(assert (not (Seq_contains xs@106@01 i@109@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@106@01 i@109@01)
  (and
    (Seq_contains xs@106@01 i@109@01)
    (pair%trigger $t@107@01 x@104@01 y@105@01)
    (=
      $t@107@01
      ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01)))
    (not (= x@104@01 $Ref.null))
    (not (= y@105@01 $Ref.null))
    (addC%precondition ($Snap.first $t@107@01) x@104@01 ($SortWrappers.$SnapToInt ($Snap.second $t@107@01)) i@109@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@106@01 i@109@01)) (Seq_contains xs@106@01 i@109@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@109@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@106@01 i@109@01)
      (and
        (Seq_contains xs@106@01 i@109@01)
        (pair%trigger $t@107@01 x@104@01 y@105@01)
        (=
          $t@107@01
          ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01)))
        (not (= x@104@01 $Ref.null))
        (not (= y@105@01 $Ref.null))
        (addC%precondition ($Snap.first $t@107@01) x@104@01 ($SortWrappers.$SnapToInt ($Snap.second $t@107@01)) i@109@01)))
    (or
      (not (Seq_contains xs@106@01 i@109@01))
      (Seq_contains xs@106@01 i@109@01)))
  :pattern ((addC%limited ($Snap.first $t@107@01) x@104@01 ($SortWrappers.$SnapToInt ($Snap.second $t@107@01)) i@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@114@10@114@100-aux|)))
(assert (forall ((i@109@01 Int)) (!
  (=>
    (Seq_contains xs@106@01 i@109@01)
    (<
      0
      (addC ($Snap.first $t@107@01) x@104@01 ($SortWrappers.$SnapToInt ($Snap.second $t@107@01)) i@109@01)))
  :pattern ((addC%limited ($Snap.first $t@107@01) x@104@01 ($SortWrappers.$SnapToInt ($Snap.second $t@107@01)) i@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@114@10@114@100|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addC(y, x.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, x.f, i)))
(declare-const $t@110@01 $Snap)
(assert (= $t@110@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(y, x.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, x.f, i)))
(declare-const i@111@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, x.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 23 | i@111@01 in xs@106@01 | live]
; [else-branch: 23 | !(i@111@01 in xs@106@01) | live]
(push) ; 5
; [then-branch: 23 | i@111@01 in xs@106@01]
(assert (Seq_contains xs@106@01 i@111@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(y, x.f, i))
(push) ; 6
(assert (pair%trigger $t@107@01 x@104@01 y@105@01))
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (not (= x@104@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@104@01 y@105@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@105@01 $Ref.null)))
; [eval] 0 < addC(y, x.f, i)
; [eval] addC(y, x.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($Snap.second $t@107@01) y@105@01 ($SortWrappers.$SnapToInt ($Snap.first $t@107@01)) i@111@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($Snap.second $t@107@01) y@105@01 ($SortWrappers.$SnapToInt ($Snap.first $t@107@01)) i@111@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@107@01 x@104@01 y@105@01)
  (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01)))
  (not (= x@104@01 $Ref.null))
  (not (= y@105@01 $Ref.null))
  (addC%precondition ($Snap.second $t@107@01) y@105@01 ($SortWrappers.$SnapToInt ($Snap.first $t@107@01)) i@111@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 23 | !(i@111@01 in xs@106@01)]
(assert (not (Seq_contains xs@106@01 i@111@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@106@01 i@111@01)
  (and
    (Seq_contains xs@106@01 i@111@01)
    (pair%trigger $t@107@01 x@104@01 y@105@01)
    (=
      $t@107@01
      ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01)))
    (not (= x@104@01 $Ref.null))
    (not (= y@105@01 $Ref.null))
    (addC%precondition ($Snap.second $t@107@01) y@105@01 ($SortWrappers.$SnapToInt ($Snap.first $t@107@01)) i@111@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@106@01 i@111@01)) (Seq_contains xs@106@01 i@111@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@111@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@106@01 i@111@01)
      (and
        (Seq_contains xs@106@01 i@111@01)
        (pair%trigger $t@107@01 x@104@01 y@105@01)
        (=
          $t@107@01
          ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01)))
        (not (= x@104@01 $Ref.null))
        (not (= y@105@01 $Ref.null))
        (addC%precondition ($Snap.second $t@107@01) y@105@01 ($SortWrappers.$SnapToInt ($Snap.first $t@107@01)) i@111@01)))
    (or
      (not (Seq_contains xs@106@01 i@111@01))
      (Seq_contains xs@106@01 i@111@01)))
  :pattern ((addC%limited ($Snap.second $t@107@01) y@105@01 ($SortWrappers.$SnapToInt ($Snap.first $t@107@01)) i@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@115@10@115@100-aux|)))
(assert (forall ((i@111@01 Int)) (!
  (=>
    (Seq_contains xs@106@01 i@111@01)
    (<
      0
      (addC ($Snap.second $t@107@01) y@105@01 ($SortWrappers.$SnapToInt ($Snap.first $t@107@01)) i@111@01)))
  :pattern ((addC%limited ($Snap.second $t@107@01) y@105@01 ($SortWrappers.$SnapToInt ($Snap.first $t@107@01)) i@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@115@10@115@100|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test04b ----------
(declare-const x@112@01 $Ref)
(declare-const y@113@01 $Ref)
(declare-const xs@114@01 Seq<Int>)
(declare-const x@115@01 $Ref)
(declare-const y@116@01 $Ref)
(declare-const xs@117@01 Seq<Int>)
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
; var tmp: Int
(declare-const tmp@118@01 Int)
; [exec]
; inhale acc(pair(x, y), write)
(declare-const $t@119@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addC(x, y.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@121@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 24 | i@121@01 in xs@117@01 | live]
; [else-branch: 24 | !(i@121@01 in xs@117@01) | live]
(push) ; 5
; [then-branch: 24 | i@121@01 in xs@117@01]
(assert (Seq_contains xs@117@01 i@121@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(push) ; 6
(assert (pair%trigger $t@119@01 x@115@01 y@116@01))
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (not (= x@115@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@115@01 y@116@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@116@01 $Ref.null)))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($Snap.first $t@119@01) x@115@01 ($SortWrappers.$SnapToInt ($Snap.second $t@119@01)) i@121@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($Snap.first $t@119@01) x@115@01 ($SortWrappers.$SnapToInt ($Snap.second $t@119@01)) i@121@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@119@01 x@115@01 y@116@01)
  (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01)))
  (not (= x@115@01 $Ref.null))
  (not (= y@116@01 $Ref.null))
  (addC%precondition ($Snap.first $t@119@01) x@115@01 ($SortWrappers.$SnapToInt ($Snap.second $t@119@01)) i@121@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | !(i@121@01 in xs@117@01)]
(assert (not (Seq_contains xs@117@01 i@121@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@117@01 i@121@01)
  (and
    (Seq_contains xs@117@01 i@121@01)
    (pair%trigger $t@119@01 x@115@01 y@116@01)
    (=
      $t@119@01
      ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01)))
    (not (= x@115@01 $Ref.null))
    (not (= y@116@01 $Ref.null))
    (addC%precondition ($Snap.first $t@119@01) x@115@01 ($SortWrappers.$SnapToInt ($Snap.second $t@119@01)) i@121@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@117@01 i@121@01)) (Seq_contains xs@117@01 i@121@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@121@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@117@01 i@121@01)
      (and
        (Seq_contains xs@117@01 i@121@01)
        (pair%trigger $t@119@01 x@115@01 y@116@01)
        (=
          $t@119@01
          ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01)))
        (not (= x@115@01 $Ref.null))
        (not (= y@116@01 $Ref.null))
        (addC%precondition ($Snap.first $t@119@01) x@115@01 ($SortWrappers.$SnapToInt ($Snap.second $t@119@01)) i@121@01)))
    (or
      (not (Seq_contains xs@117@01 i@121@01))
      (Seq_contains xs@117@01 i@121@01)))
  :pattern ((addC%limited ($Snap.first $t@119@01) x@115@01 ($SortWrappers.$SnapToInt ($Snap.second $t@119@01)) i@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@121@10@121@100-aux|)))
(assert (forall ((i@121@01 Int)) (!
  (=>
    (Seq_contains xs@117@01 i@121@01)
    (<
      0
      (addC ($Snap.first $t@119@01) x@115@01 ($SortWrappers.$SnapToInt ($Snap.second $t@119@01)) i@121@01)))
  :pattern ((addC%limited ($Snap.first $t@119@01) x@115@01 ($SortWrappers.$SnapToInt ($Snap.second $t@119@01)) i@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@121@10@121@100|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(pair(x, y), write)
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (not (= x@115@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@115@01 y@116@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@116@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (pair%trigger $t@119@01 x@115@01 y@116@01))
; [exec]
; tmp := x.f
(declare-const tmp@122@01 Int)
(assert (= tmp@122@01 ($SortWrappers.$SnapToInt ($Snap.first $t@119@01))))
; [exec]
; x.f := y.f
(declare-const f@123@01 Int)
(assert (= f@123@01 ($SortWrappers.$SnapToInt ($Snap.second $t@119@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@116@01 x@115@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; y.f := tmp
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@115@01 y@116@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(pair(x, y), write)
(assert (pair%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap f@123@01)
  ($SortWrappers.IntTo$Snap tmp@122@01)) x@115@01 y@116@01))
; [exec]
; inhale (forall i: Int ::
;     { addC(y, x.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, x.f, i)))
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(y, x.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, x.f, i)))
(declare-const i@125@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, x.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 25 | i@125@01 in xs@117@01 | live]
; [else-branch: 25 | !(i@125@01 in xs@117@01) | live]
(push) ; 5
; [then-branch: 25 | i@125@01 in xs@117@01]
(assert (Seq_contains xs@117@01 i@125@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(y, x.f, i))
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@115@01 y@116@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] 0 < addC(y, x.f, i)
; [eval] addC(y, x.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($SortWrappers.IntTo$Snap tmp@122@01) y@116@01 f@123@01 i@125@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap tmp@122@01) y@116@01 f@123@01 i@125@01))
(pop) ; 6
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap tmp@122@01) y@116@01 f@123@01 i@125@01))
(pop) ; 5
(push) ; 5
; [else-branch: 25 | !(i@125@01 in xs@117@01)]
(assert (not (Seq_contains xs@117@01 i@125@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@117@01 i@125@01)
  (and
    (Seq_contains xs@117@01 i@125@01)
    (addC%precondition ($SortWrappers.IntTo$Snap tmp@122@01) y@116@01 f@123@01 i@125@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@117@01 i@125@01)) (Seq_contains xs@117@01 i@125@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@125@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@117@01 i@125@01)
      (and
        (Seq_contains xs@117@01 i@125@01)
        (addC%precondition ($SortWrappers.IntTo$Snap tmp@122@01) y@116@01 f@123@01 i@125@01)))
    (or
      (not (Seq_contains xs@117@01 i@125@01))
      (Seq_contains xs@117@01 i@125@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap tmp@122@01) y@116@01 f@123@01 i@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@125@10@125@100-aux|)))
(assert (forall ((i@125@01 Int)) (!
  (=>
    (Seq_contains xs@117@01 i@125@01)
    (< 0 (addC ($SortWrappers.IntTo$Snap tmp@122@01) y@116@01 f@123@01 i@125@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap tmp@122@01) y@116@01 f@123@01 i@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@125@10@125@100|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test05a ----------
(declare-const x@126@01 $Ref)
(declare-const y@127@01 $Ref)
(declare-const xs@128@01 Seq<Int>)
(declare-const x@129@01 $Ref)
(declare-const y@130@01 $Ref)
(declare-const xs@131@01 Seq<Int>)
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
; inhale acc(pair(x, y), write)
(declare-const $t@132@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addC(x, y.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@134@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 26 | i@134@01 in xs@131@01 | live]
; [else-branch: 26 | !(i@134@01 in xs@131@01) | live]
(push) ; 5
; [then-branch: 26 | i@134@01 in xs@131@01]
(assert (Seq_contains xs@131@01 i@134@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(push) ; 6
(assert (pair%trigger $t@132@01 x@129@01 y@130@01))
(assert (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01))))
(assert (not (= x@129@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@129@01 y@130@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@130@01 $Ref.null)))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($Snap.first $t@132@01) x@129@01 ($SortWrappers.$SnapToInt ($Snap.second $t@132@01)) i@134@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($Snap.first $t@132@01) x@129@01 ($SortWrappers.$SnapToInt ($Snap.second $t@132@01)) i@134@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@132@01 x@129@01 y@130@01)
  (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01)))
  (not (= x@129@01 $Ref.null))
  (not (= y@130@01 $Ref.null))
  (addC%precondition ($Snap.first $t@132@01) x@129@01 ($SortWrappers.$SnapToInt ($Snap.second $t@132@01)) i@134@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | !(i@134@01 in xs@131@01)]
(assert (not (Seq_contains xs@131@01 i@134@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@131@01 i@134@01)
  (and
    (Seq_contains xs@131@01 i@134@01)
    (pair%trigger $t@132@01 x@129@01 y@130@01)
    (=
      $t@132@01
      ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01)))
    (not (= x@129@01 $Ref.null))
    (not (= y@130@01 $Ref.null))
    (addC%precondition ($Snap.first $t@132@01) x@129@01 ($SortWrappers.$SnapToInt ($Snap.second $t@132@01)) i@134@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@131@01 i@134@01)) (Seq_contains xs@131@01 i@134@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@134@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@131@01 i@134@01)
      (and
        (Seq_contains xs@131@01 i@134@01)
        (pair%trigger $t@132@01 x@129@01 y@130@01)
        (=
          $t@132@01
          ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01)))
        (not (= x@129@01 $Ref.null))
        (not (= y@130@01 $Ref.null))
        (addC%precondition ($Snap.first $t@132@01) x@129@01 ($SortWrappers.$SnapToInt ($Snap.second $t@132@01)) i@134@01)))
    (or
      (not (Seq_contains xs@131@01 i@134@01))
      (Seq_contains xs@131@01 i@134@01)))
  :pattern ((addC%limited ($Snap.first $t@132@01) x@129@01 ($SortWrappers.$SnapToInt ($Snap.second $t@132@01)) i@134@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@132@10@132@100-aux|)))
(assert (forall ((i@134@01 Int)) (!
  (=>
    (Seq_contains xs@131@01 i@134@01)
    (<
      0
      (addC ($Snap.first $t@132@01) x@129@01 ($SortWrappers.$SnapToInt ($Snap.second $t@132@01)) i@134@01)))
  :pattern ((addC%limited ($Snap.first $t@132@01) x@129@01 ($SortWrappers.$SnapToInt ($Snap.second $t@132@01)) i@134@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@132@10@132@100|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addC(y, x.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, i, x.f)))
(declare-const $t@135@01 $Snap)
(assert (= $t@135@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(y, x.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, i, x.f)))
(declare-const i@136@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, i, x.f))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 27 | i@136@01 in xs@131@01 | live]
; [else-branch: 27 | !(i@136@01 in xs@131@01) | live]
(push) ; 5
; [then-branch: 27 | i@136@01 in xs@131@01]
(assert (Seq_contains xs@131@01 i@136@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(y, i, x.f))
(push) ; 6
(assert (pair%trigger $t@132@01 x@129@01 y@130@01))
(assert (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01))))
(assert (not (= x@129@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@129@01 y@130@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@130@01 $Ref.null)))
; [eval] 0 < addC(y, i, x.f)
; [eval] addC(y, i, x.f)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($Snap.second $t@132@01) y@130@01 i@136@01 ($SortWrappers.$SnapToInt ($Snap.first $t@132@01))))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($Snap.second $t@132@01) y@130@01 i@136@01 ($SortWrappers.$SnapToInt ($Snap.first $t@132@01))))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@132@01 x@129@01 y@130@01)
  (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01)))
  (not (= x@129@01 $Ref.null))
  (not (= y@130@01 $Ref.null))
  (addC%precondition ($Snap.second $t@132@01) y@130@01 i@136@01 ($SortWrappers.$SnapToInt ($Snap.first $t@132@01)))))
(pop) ; 5
(push) ; 5
; [else-branch: 27 | !(i@136@01 in xs@131@01)]
(assert (not (Seq_contains xs@131@01 i@136@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@131@01 i@136@01)
  (and
    (Seq_contains xs@131@01 i@136@01)
    (pair%trigger $t@132@01 x@129@01 y@130@01)
    (=
      $t@132@01
      ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01)))
    (not (= x@129@01 $Ref.null))
    (not (= y@130@01 $Ref.null))
    (addC%precondition ($Snap.second $t@132@01) y@130@01 i@136@01 ($SortWrappers.$SnapToInt ($Snap.first $t@132@01))))))
; Joined path conditions
(assert (or (not (Seq_contains xs@131@01 i@136@01)) (Seq_contains xs@131@01 i@136@01)))
; [eval] addC(y, x.f, i)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@136@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@131@01 i@136@01)
      (and
        (Seq_contains xs@131@01 i@136@01)
        (pair%trigger $t@132@01 x@129@01 y@130@01)
        (=
          $t@132@01
          ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01)))
        (not (= x@129@01 $Ref.null))
        (not (= y@130@01 $Ref.null))
        (addC%precondition ($Snap.second $t@132@01) y@130@01 i@136@01 ($SortWrappers.$SnapToInt ($Snap.first $t@132@01)))))
    (or
      (not (Seq_contains xs@131@01 i@136@01))
      (Seq_contains xs@131@01 i@136@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@133@10@133@100-aux|)))
(assert (forall ((i@136@01 Int)) (!
  (=>
    (Seq_contains xs@131@01 i@136@01)
    (<
      0
      (addC ($Snap.second $t@132@01) y@130@01 i@136@01 ($SortWrappers.$SnapToInt ($Snap.first $t@132@01)))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@133@10@133@100|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test05b ----------
(declare-const x@137@01 $Ref)
(declare-const y@138@01 $Ref)
(declare-const xs@139@01 Seq<Int>)
(declare-const x@140@01 $Ref)
(declare-const y@141@01 $Ref)
(declare-const xs@142@01 Seq<Int>)
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
; var tmp: Int
(declare-const tmp@143@01 Int)
; [exec]
; inhale acc(pair(x, y), write)
(declare-const $t@144@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { addC(x, y.f, i) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const $t@145@01 $Snap)
(assert (= $t@145@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(x, y.f, i) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i)))
(declare-const i@146@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 28 | i@146@01 in xs@142@01 | live]
; [else-branch: 28 | !(i@146@01 in xs@142@01) | live]
(push) ; 5
; [then-branch: 28 | i@146@01 in xs@142@01]
(assert (Seq_contains xs@142@01 i@146@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(x, y.f, i))
(push) ; 6
(assert (pair%trigger $t@144@01 x@140@01 y@141@01))
(assert (= $t@144@01 ($Snap.combine ($Snap.first $t@144@01) ($Snap.second $t@144@01))))
(assert (not (= x@140@01 $Ref.null)))
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@140@01 y@141@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@141@01 $Ref.null)))
; [eval] 0 < addC(x, y.f, i)
; [eval] addC(x, y.f, i)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($Snap.first $t@144@01) x@140@01 ($SortWrappers.$SnapToInt ($Snap.second $t@144@01)) i@146@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($Snap.first $t@144@01) x@140@01 ($SortWrappers.$SnapToInt ($Snap.second $t@144@01)) i@146@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (pair%trigger $t@144@01 x@140@01 y@141@01)
  (= $t@144@01 ($Snap.combine ($Snap.first $t@144@01) ($Snap.second $t@144@01)))
  (not (= x@140@01 $Ref.null))
  (not (= y@141@01 $Ref.null))
  (addC%precondition ($Snap.first $t@144@01) x@140@01 ($SortWrappers.$SnapToInt ($Snap.second $t@144@01)) i@146@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 28 | !(i@146@01 in xs@142@01)]
(assert (not (Seq_contains xs@142@01 i@146@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@142@01 i@146@01)
  (and
    (Seq_contains xs@142@01 i@146@01)
    (pair%trigger $t@144@01 x@140@01 y@141@01)
    (=
      $t@144@01
      ($Snap.combine ($Snap.first $t@144@01) ($Snap.second $t@144@01)))
    (not (= x@140@01 $Ref.null))
    (not (= y@141@01 $Ref.null))
    (addC%precondition ($Snap.first $t@144@01) x@140@01 ($SortWrappers.$SnapToInt ($Snap.second $t@144@01)) i@146@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@142@01 i@146@01)) (Seq_contains xs@142@01 i@146@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@146@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@142@01 i@146@01)
      (and
        (Seq_contains xs@142@01 i@146@01)
        (pair%trigger $t@144@01 x@140@01 y@141@01)
        (=
          $t@144@01
          ($Snap.combine ($Snap.first $t@144@01) ($Snap.second $t@144@01)))
        (not (= x@140@01 $Ref.null))
        (not (= y@141@01 $Ref.null))
        (addC%precondition ($Snap.first $t@144@01) x@140@01 ($SortWrappers.$SnapToInt ($Snap.second $t@144@01)) i@146@01)))
    (or
      (not (Seq_contains xs@142@01 i@146@01))
      (Seq_contains xs@142@01 i@146@01)))
  :pattern ((addC%limited ($Snap.first $t@144@01) x@140@01 ($SortWrappers.$SnapToInt ($Snap.second $t@144@01)) i@146@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@139@10@139@100-aux|)))
(assert (forall ((i@146@01 Int)) (!
  (=>
    (Seq_contains xs@142@01 i@146@01)
    (<
      0
      (addC ($Snap.first $t@144@01) x@140@01 ($SortWrappers.$SnapToInt ($Snap.second $t@144@01)) i@146@01)))
  :pattern ((addC%limited ($Snap.first $t@144@01) x@140@01 ($SortWrappers.$SnapToInt ($Snap.second $t@144@01)) i@146@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@139@10@139@100|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(pair(x, y), write)
(assert (= $t@144@01 ($Snap.combine ($Snap.first $t@144@01) ($Snap.second $t@144@01))))
(assert (not (= x@140@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@140@01 y@141@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@141@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (pair%trigger $t@144@01 x@140@01 y@141@01))
; [exec]
; tmp := x.f
(declare-const tmp@147@01 Int)
(assert (= tmp@147@01 ($SortWrappers.$SnapToInt ($Snap.first $t@144@01))))
; [exec]
; x.f := y.f
(declare-const f@148@01 Int)
(assert (= f@148@01 ($SortWrappers.$SnapToInt ($Snap.second $t@144@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@141@01 x@140@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; y.f := tmp
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@140@01 y@141@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(pair(x, y), write)
(assert (pair%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap f@148@01)
  ($SortWrappers.IntTo$Snap tmp@147@01)) x@140@01 y@141@01))
; [exec]
; inhale (forall i: Int ::
;     { addC(y, i, x.f) }
;     (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, i, x.f)))
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 $Snap.unit))
; [eval] (forall i: Int :: { addC(y, i, x.f) } (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, i, x.f)))
(declare-const i@150@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in xs) ==> (unfolding acc(pair(x, y), write) in 0 < addC(y, i, x.f))
; [eval] (i in xs)
(push) ; 4
; [then-branch: 29 | i@150@01 in xs@142@01 | live]
; [else-branch: 29 | !(i@150@01 in xs@142@01) | live]
(push) ; 5
; [then-branch: 29 | i@150@01 in xs@142@01]
(assert (Seq_contains xs@142@01 i@150@01))
; [eval] (unfolding acc(pair(x, y), write) in 0 < addC(y, i, x.f))
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= x@140@01 y@141@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] 0 < addC(y, i, x.f)
; [eval] addC(y, i, x.f)
(set-option :timeout 0)
(push) ; 7
(assert (addC%precondition ($SortWrappers.IntTo$Snap tmp@147@01) y@141@01 i@150@01 f@148@01))
(pop) ; 7
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap tmp@147@01) y@141@01 i@150@01 f@148@01))
(pop) ; 6
; Joined path conditions
(assert (addC%precondition ($SortWrappers.IntTo$Snap tmp@147@01) y@141@01 i@150@01 f@148@01))
(pop) ; 5
(push) ; 5
; [else-branch: 29 | !(i@150@01 in xs@142@01)]
(assert (not (Seq_contains xs@142@01 i@150@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@142@01 i@150@01)
  (and
    (Seq_contains xs@142@01 i@150@01)
    (addC%precondition ($SortWrappers.IntTo$Snap tmp@147@01) y@141@01 i@150@01 f@148@01))))
; Joined path conditions
(assert (or (not (Seq_contains xs@142@01 i@150@01)) (Seq_contains xs@142@01 i@150@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@150@01 Int)) (!
  (and
    (=>
      (Seq_contains xs@142@01 i@150@01)
      (and
        (Seq_contains xs@142@01 i@150@01)
        (addC%precondition ($SortWrappers.IntTo$Snap tmp@147@01) y@141@01 i@150@01 f@148@01)))
    (or
      (not (Seq_contains xs@142@01 i@150@01))
      (Seq_contains xs@142@01 i@150@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap tmp@147@01) y@141@01 i@150@01 f@148@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@143@10@143@100-aux|)))
(assert (forall ((i@150@01 Int)) (!
  (=>
    (Seq_contains xs@142@01 i@150@01)
    (< 0 (addC ($SortWrappers.IntTo$Snap tmp@147@01) y@141@01 i@150@01 f@148@01)))
  :pattern ((addC%limited ($SortWrappers.IntTo$Snap tmp@147@01) y@141@01 i@150@01 f@148@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_nonqps.vpr@143@10@143@100|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
