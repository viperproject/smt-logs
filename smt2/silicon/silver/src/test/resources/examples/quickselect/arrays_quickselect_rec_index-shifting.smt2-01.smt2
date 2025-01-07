(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-07 13:44:45
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
(declare-sort IArray 0)
(declare-sort $FVF<val> 0)
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
(declare-fun $SortWrappers.IArrayTo$Snap (IArray) $Snap)
(declare-fun $SortWrappers.$SnapToIArray ($Snap) IArray)
(assert (forall ((x IArray)) (!
    (= x ($SortWrappers.$SnapToIArray($SortWrappers.IArrayTo$Snap x)))
    :pattern (($SortWrappers.IArrayTo$Snap x))
    :qid |$Snap.$SnapToIArrayTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IArrayTo$Snap($SortWrappers.$SnapToIArray x)))
    :pattern (($SortWrappers.$SnapToIArray x))
    :qid |$Snap.IArrayTo$SnapToIArray|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<val>To$Snap ($FVF<val>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<val> ($Snap) $FVF<val>)
(assert (forall ((x $FVF<val>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<val>($SortWrappers.$FVF<val>To$Snap x)))
    :pattern (($SortWrappers.$FVF<val>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<val>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<val>To$Snap($SortWrappers.$SnapTo$FVF<val> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<val> x))
    :qid |$Snap.$FVF<val>To$SnapTo$FVF<val>|
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
(declare-fun loc<Ref> (IArray Int) $Ref)
(declare-fun len<Int> (IArray) Int)
(declare-fun first<IArray> ($Ref) IArray)
(declare-fun second<Int> ($Ref) Int)
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun dummy ($Snap Int) Bool)
(declare-fun dummy%limited ($Snap Int) Bool)
(declare-fun dummy%stateless (Int) Bool)
(declare-fun dummy%precondition ($Snap Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
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
(assert (forall ((a IArray) (i Int)) (!
  (and (= (first<IArray> (loc<Ref> a i)) a) (= (second<Int> (loc<Ref> a i)) i))
  :pattern ((loc<Ref> a i))
  :qid |prog.all_diff|)))
(assert (forall ((a IArray)) (!
  (>= (len<Int> a) 0)
  :pattern ((len<Int> a))
  :qid |prog.length_nonneg|)))
; /field_value_functions_axioms.smt2 [val: Int]
(assert (forall ((vs $FVF<val>) (ws $FVF<val>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_val vs) ($FVF.domain_val ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_val vs))
            (= ($FVF.lookup_val vs x) ($FVF.lookup_val ws x)))
          :pattern (($FVF.lookup_val vs x) ($FVF.lookup_val ws x))
          :qid |qp.$FVF<val>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<val>To$Snap vs)
              ($SortWrappers.$FVF<val>To$Snap ws)
              )
    :qid |qp.$FVF<val>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_val pm r))
    :pattern (($FVF.perm_val pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_val f r) true)
    :pattern (($FVF.loc_val f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(assert (forall ((s@$ $Snap) (i@0@00 Int)) (!
  (= (dummy%limited s@$ i@0@00) (dummy s@$ i@0@00))
  :pattern ((dummy s@$ i@0@00))
  :qid |quant-u-18970|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int)) (!
  (dummy%stateless i@0@00)
  :pattern ((dummy%limited s@$ i@0@00))
  :qid |quant-u-18971|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int)) (!
  (=> (dummy%precondition s@$ i@0@00) (= (dummy s@$ i@0@00) true))
  :pattern ((dummy s@$ i@0@00))
  :qid |quant-u-18972|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int)) (!
  true
  :pattern ((dummy s@$ i@0@00))
  :qid |quant-u-18973|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- swap ----------
(declare-const a@0@01 IArray)
(declare-const i@1@01 Int)
(declare-const j@2@01 Int)
(declare-const a@3@01 IArray)
(declare-const i@4@01 Int)
(declare-const j@5@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.first $t@6@01) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@4@01))
(assert (=
  ($Snap.second $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@6@01))
    ($Snap.second ($Snap.second $t@6@01)))))
(assert (= ($Snap.first ($Snap.second $t@6@01)) $Snap.unit))
; [eval] i < len(a)
; [eval] len(a)
(assert (< i@4@01 (len<Int> a@3@01)))
(assert (=
  ($Snap.second ($Snap.second $t@6@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@6@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@6@01))) $Snap.unit))
; [eval] 0 <= j
(assert (<= 0 j@5@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@6@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) $Snap.unit))
; [eval] j < len(a)
; [eval] len(a)
(assert (< j@5@01 (len<Int> a@3@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@3@01 i@4@01) $Ref.null)))
; [eval] i != j
(push) ; 2
(set-option :timeout 10)
(assert (not (= i@4@01 j@5@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= i@4@01 j@5@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | i@4@01 != j@5@01 | live]
; [else-branch: 0 | i@4@01 == j@5@01 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 0 | i@4@01 != j@5@01]
(assert (not (= i@4@01 j@5@01)))
; [eval] loc(a, j)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 i@4@01) (loc<Ref> a@3@01 j@5@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@3@01 j@5@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(declare-const $t@7@01 $Snap)
(assert (= $t@7@01 ($Snap.combine ($Snap.first $t@7@01) ($Snap.second $t@7@01))))
; [eval] loc(a, i)
(assert (=
  ($Snap.second $t@7@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@7@01))
    ($Snap.second ($Snap.second $t@7@01)))))
; [eval] i != j
(push) ; 4
(set-option :timeout 10)
(assert (not (= i@4@01 j@5@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | i@4@01 != j@5@01 | live]
; [else-branch: 1 | i@4@01 == j@5@01 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | i@4@01 != j@5@01]
; [eval] loc(a, j)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 i@4@01) (loc<Ref> a@3@01 j@5@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@7@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@7@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@7@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@7@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@7@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@7@01)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [exec]
; var t: Int
(declare-const t@8@01 Int)
; [exec]
; t := loc(a, i).val
; [eval] loc(a, i)
(declare-const t@9@01 Int)
(assert (=
  t@9@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))
; [exec]
; loc(a, i).val := loc(a, j).val
; [eval] loc(a, i)
; [eval] loc(a, j)
(declare-const val@10@01 Int)
(assert (=
  val@10@01
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))
(push) ; 4
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 j@5@01) (loc<Ref> a@3@01 i@4@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; loc(a, j).val := t
; [eval] loc(a, j)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 i@4@01) (loc<Ref> a@3@01 j@5@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, i)
; [eval] i != j
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= i@4@01 j@5@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | i@4@01 != j@5@01 | live]
; [else-branch: 2 | i@4@01 == j@5@01 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 2 | i@4@01 != j@5@01]
; [eval] loc(a, j)
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 0 | i@4@01 == j@5@01]
(assert (= i@4@01 j@5@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 ($Snap.combine ($Snap.first $t@11@01) ($Snap.second $t@11@01))))
; [eval] loc(a, i)
(assert (=
  ($Snap.second $t@11@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@11@01))
    ($Snap.second ($Snap.second $t@11@01)))))
; [eval] i != j
; [then-branch: 3 | i@4@01 != j@5@01 | dead]
; [else-branch: 3 | i@4@01 == j@5@01 | live]
(push) ; 4
; [else-branch: 3 | i@4@01 == j@5@01]
(assert (= ($Snap.first ($Snap.second $t@11@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@11@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@11@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@11@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@11@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 i@4@01) (loc<Ref> a@3@01 j@5@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@11@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@11@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 i@4@01) (loc<Ref> a@3@01 j@5@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [exec]
; var t: Int
(declare-const t@12@01 Int)
; [exec]
; t := loc(a, i).val
; [eval] loc(a, i)
(declare-const t@13@01 Int)
(assert (=
  t@13@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))
; [exec]
; loc(a, i).val := loc(a, j).val
; [eval] loc(a, i)
; [eval] loc(a, j)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 i@4@01) (loc<Ref> a@3@01 j@5@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val@14@01 Int)
(assert (=
  val@14@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))
; [exec]
; loc(a, j).val := t
; [eval] loc(a, j)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 i@4@01) (loc<Ref> a@3@01 j@5@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@3@01 j@5@01) $Ref.null)))
; [eval] loc(a, i)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 j@5@01) (loc<Ref> a@3@01 i@4@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] i != j
; [then-branch: 4 | i@4@01 != j@5@01 | dead]
; [else-branch: 4 | i@4@01 == j@5@01 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 4 | i@4@01 == j@5@01]
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 j@5@01) (loc<Ref> a@3@01 i@4@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 i@4@01) (loc<Ref> a@3@01 j@5@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- partition ----------
(declare-const a@15@01 IArray)
(declare-const left@16@01 Int)
(declare-const right@17@01 Int)
(declare-const pivotIndex@18@01 Int)
(declare-const storeIndex@19@01 Int)
(declare-const pw@20@01 Seq<Int>)
(declare-const a@21@01 IArray)
(declare-const left@22@01 Int)
(declare-const right@23@01 Int)
(declare-const pivotIndex@24@01 Int)
(declare-const storeIndex@25@01 Int)
(declare-const pw@26@01 Seq<Int>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(assert (= ($Snap.first $t@27@01) $Snap.unit))
; [eval] 0 <= left
(assert (<= 0 left@22@01))
(assert (=
  ($Snap.second $t@27@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@27@01))
    ($Snap.second ($Snap.second $t@27@01)))))
(assert (= ($Snap.first ($Snap.second $t@27@01)) $Snap.unit))
; [eval] left < right
(assert (< left@22@01 right@23@01))
(assert (=
  ($Snap.second ($Snap.second $t@27@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@27@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@27@01))) $Snap.unit))
; [eval] right < len(a)
; [eval] len(a)
(assert (< right@23@01 (len<Int> a@21@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@27@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@27@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@27@01))))
  $Snap.unit))
; [eval] left <= pivotIndex
(assert (<= left@22@01 pivotIndex@24@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))
  $Snap.unit))
; [eval] pivotIndex <= right
(assert (<= pivotIndex@24@01 right@23@01))
(declare-const i@28@01 Int)
(push) ; 2
; [eval] left <= i && i <= right
; [eval] left <= i
(push) ; 3
; [then-branch: 5 | !(left@22@01 <= i@28@01) | live]
; [else-branch: 5 | left@22@01 <= i@28@01 | live]
(push) ; 4
; [then-branch: 5 | !(left@22@01 <= i@28@01)]
(assert (not (<= left@22@01 i@28@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 5 | left@22@01 <= i@28@01]
(assert (<= left@22@01 i@28@01))
; [eval] i <= right
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= left@22@01 i@28@01) (not (<= left@22@01 i@28@01))))
(assert (and (<= left@22@01 i@28@01) (<= i@28@01 right@23@01)))
; [eval] loc(a, i)
(pop) ; 2
(declare-fun inv@29@01 ($Ref) Int)
(declare-fun img@30@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@28@01 Int)) (!
  (=>
    (and (<= left@22@01 i@28@01) (<= i@28@01 right@23@01))
    (or (<= left@22@01 i@28@01) (not (<= left@22@01 i@28@01))))
  :pattern ((loc<Ref> a@21@01 i@28@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@28@01 Int) (i2@28@01 Int)) (!
  (=>
    (and
      (and (<= left@22@01 i1@28@01) (<= i1@28@01 right@23@01))
      (and (<= left@22@01 i2@28@01) (<= i2@28@01 right@23@01))
      (= (loc<Ref> a@21@01 i1@28@01) (loc<Ref> a@21@01 i2@28@01)))
    (= i1@28@01 i2@28@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@28@01 Int)) (!
  (=>
    (and (<= left@22@01 i@28@01) (<= i@28@01 right@23@01))
    (and
      (= (inv@29@01 (loc<Ref> a@21@01 i@28@01)) i@28@01)
      (img@30@01 (loc<Ref> a@21@01 i@28@01))))
  :pattern ((loc<Ref> a@21@01 i@28@01))
  :qid |quant-u-18975|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@30@01 r)
      (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
    (= (loc<Ref> a@21@01 (inv@29@01 r)) r))
  :pattern ((inv@29@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@28@01 Int)) (!
  (=>
    (and (<= left@22@01 i@28@01) (<= i@28@01 right@23@01))
    (not (= (loc<Ref> a@21@01 i@28@01) $Ref.null)))
  :pattern ((loc<Ref> a@21@01 i@28@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 ($Snap.combine ($Snap.first $t@31@01) ($Snap.second $t@31@01))))
(assert (= ($Snap.first $t@31@01) $Snap.unit))
; [eval] left <= storeIndex
(assert (<= left@22@01 storeIndex@25@01))
(assert (=
  ($Snap.second $t@31@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@31@01))
    ($Snap.second ($Snap.second $t@31@01)))))
(assert (= ($Snap.first ($Snap.second $t@31@01)) $Snap.unit))
; [eval] storeIndex <= right
(assert (<= storeIndex@25@01 right@23@01))
(assert (=
  ($Snap.second ($Snap.second $t@31@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@31@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))
(declare-const i@32@01 Int)
(push) ; 3
; [eval] left <= i && i <= right
; [eval] left <= i
(push) ; 4
; [then-branch: 6 | !(left@22@01 <= i@32@01) | live]
; [else-branch: 6 | left@22@01 <= i@32@01 | live]
(push) ; 5
; [then-branch: 6 | !(left@22@01 <= i@32@01)]
(assert (not (<= left@22@01 i@32@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | left@22@01 <= i@32@01]
(assert (<= left@22@01 i@32@01))
; [eval] i <= right
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= left@22@01 i@32@01) (not (<= left@22@01 i@32@01))))
(assert (and (<= left@22@01 i@32@01) (<= i@32@01 right@23@01)))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@33@01 ($Ref) Int)
(declare-fun img@34@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@32@01 Int)) (!
  (=>
    (and (<= left@22@01 i@32@01) (<= i@32@01 right@23@01))
    (or (<= left@22@01 i@32@01) (not (<= left@22@01 i@32@01))))
  :pattern ((loc<Ref> a@21@01 i@32@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@32@01 Int) (i2@32@01 Int)) (!
  (=>
    (and
      (and (<= left@22@01 i1@32@01) (<= i1@32@01 right@23@01))
      (and (<= left@22@01 i2@32@01) (<= i2@32@01 right@23@01))
      (= (loc<Ref> a@21@01 i1@32@01) (loc<Ref> a@21@01 i2@32@01)))
    (= i1@32@01 i2@32@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@32@01 Int)) (!
  (=>
    (and (<= left@22@01 i@32@01) (<= i@32@01 right@23@01))
    (and
      (= (inv@33@01 (loc<Ref> a@21@01 i@32@01)) i@32@01)
      (img@34@01 (loc<Ref> a@21@01 i@32@01))))
  :pattern ((loc<Ref> a@21@01 i@32@01))
  :qid |quant-u-18977|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@34@01 r)
      (and (<= left@22@01 (inv@33@01 r)) (<= (inv@33@01 r) right@23@01)))
    (= (loc<Ref> a@21@01 (inv@33@01 r)) r))
  :pattern ((inv@33@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@32@01 Int)) (!
  (=>
    (and (<= left@22@01 i@32@01) (<= i@32@01 right@23@01))
    (not (= (loc<Ref> a@21@01 i@32@01) $Ref.null)))
  :pattern ((loc<Ref> a@21@01 i@32@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@31@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))
  $Snap.unit))
; [eval] loc(a, storeIndex).val == old(loc(a, pivotIndex).val)
; [eval] loc(a, storeIndex)
(push) ; 3
(assert (not (and
  (img@34@01 (loc<Ref> a@21@01 storeIndex@25@01))
  (and
    (<= left@22@01 (inv@33@01 (loc<Ref> a@21@01 storeIndex@25@01)))
    (<= (inv@33@01 (loc<Ref> a@21@01 storeIndex@25@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pivotIndex).val)
; [eval] loc(a, pivotIndex)
(push) ; 3
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 pivotIndex@24@01))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)))
    (<= (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@31@01)))) (loc<Ref> a@21@01 storeIndex@25@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 pivotIndex@24@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))
  $Snap.unit))
; [eval] (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val < loc(a, storeIndex).val)
(declare-const i@35@01 Int)
(push) ; 3
; [eval] left <= i && i < storeIndex ==> loc(a, i).val < loc(a, storeIndex).val
; [eval] left <= i && i < storeIndex
; [eval] left <= i
(push) ; 4
; [then-branch: 7 | !(left@22@01 <= i@35@01) | live]
; [else-branch: 7 | left@22@01 <= i@35@01 | live]
(push) ; 5
; [then-branch: 7 | !(left@22@01 <= i@35@01)]
(assert (not (<= left@22@01 i@35@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | left@22@01 <= i@35@01]
(assert (<= left@22@01 i@35@01))
; [eval] i < storeIndex
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= left@22@01 i@35@01) (not (<= left@22@01 i@35@01))))
(push) ; 4
; [then-branch: 8 | left@22@01 <= i@35@01 && i@35@01 < storeIndex@25@01 | live]
; [else-branch: 8 | !(left@22@01 <= i@35@01 && i@35@01 < storeIndex@25@01) | live]
(push) ; 5
; [then-branch: 8 | left@22@01 <= i@35@01 && i@35@01 < storeIndex@25@01]
(assert (and (<= left@22@01 i@35@01) (< i@35@01 storeIndex@25@01)))
; [eval] loc(a, i).val < loc(a, storeIndex).val
; [eval] loc(a, i)
(push) ; 6
(assert (not (and
  (img@34@01 (loc<Ref> a@21@01 i@35@01))
  (and
    (<= left@22@01 (inv@33@01 (loc<Ref> a@21@01 i@35@01)))
    (<= (inv@33@01 (loc<Ref> a@21@01 i@35@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, storeIndex)
(push) ; 6
(assert (not (and
  (img@34@01 (loc<Ref> a@21@01 storeIndex@25@01))
  (and
    (<= left@22@01 (inv@33@01 (loc<Ref> a@21@01 storeIndex@25@01)))
    (<= (inv@33@01 (loc<Ref> a@21@01 storeIndex@25@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 8 | !(left@22@01 <= i@35@01 && i@35@01 < storeIndex@25@01)]
(assert (not (and (<= left@22@01 i@35@01) (< i@35@01 storeIndex@25@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= left@22@01 i@35@01) (< i@35@01 storeIndex@25@01)))
  (and (<= left@22@01 i@35@01) (< i@35@01 storeIndex@25@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@35@01 Int)) (!
  (and
    (or (<= left@22@01 i@35@01) (not (<= left@22@01 i@35@01)))
    (or
      (not (and (<= left@22@01 i@35@01) (< i@35@01 storeIndex@25@01)))
      (and (<= left@22@01 i@35@01) (< i@35@01 storeIndex@25@01))))
  :pattern ((loc<Ref> a@21@01 i@35@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99-aux|)))
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= left@22@01 i@35@01) (< i@35@01 storeIndex@25@01))
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@31@01)))) (loc<Ref> a@21@01 i@35@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@31@01)))) (loc<Ref> a@21@01 storeIndex@25@01))))
  :pattern ((loc<Ref> a@21@01 i@35@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))
  $Snap.unit))
; [eval] (forall i: Int :: { loc(a, i) } storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val)
(declare-const i@36@01 Int)
(push) ; 3
; [eval] storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val
; [eval] storeIndex < i && i <= right
; [eval] storeIndex < i
(push) ; 4
; [then-branch: 9 | !(storeIndex@25@01 < i@36@01) | live]
; [else-branch: 9 | storeIndex@25@01 < i@36@01 | live]
(push) ; 5
; [then-branch: 9 | !(storeIndex@25@01 < i@36@01)]
(assert (not (< storeIndex@25@01 i@36@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | storeIndex@25@01 < i@36@01]
(assert (< storeIndex@25@01 i@36@01))
; [eval] i <= right
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (< storeIndex@25@01 i@36@01) (not (< storeIndex@25@01 i@36@01))))
(push) ; 4
; [then-branch: 10 | storeIndex@25@01 < i@36@01 && i@36@01 <= right@23@01 | live]
; [else-branch: 10 | !(storeIndex@25@01 < i@36@01 && i@36@01 <= right@23@01) | live]
(push) ; 5
; [then-branch: 10 | storeIndex@25@01 < i@36@01 && i@36@01 <= right@23@01]
(assert (and (< storeIndex@25@01 i@36@01) (<= i@36@01 right@23@01)))
; [eval] loc(a, storeIndex).val <= loc(a, i).val
; [eval] loc(a, storeIndex)
(push) ; 6
(assert (not (and
  (img@34@01 (loc<Ref> a@21@01 storeIndex@25@01))
  (and
    (<= left@22@01 (inv@33@01 (loc<Ref> a@21@01 storeIndex@25@01)))
    (<= (inv@33@01 (loc<Ref> a@21@01 storeIndex@25@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, i)
(push) ; 6
(assert (not (and
  (img@34@01 (loc<Ref> a@21@01 i@36@01))
  (and
    (<= left@22@01 (inv@33@01 (loc<Ref> a@21@01 i@36@01)))
    (<= (inv@33@01 (loc<Ref> a@21@01 i@36@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 10 | !(storeIndex@25@01 < i@36@01 && i@36@01 <= right@23@01)]
(assert (not (and (< storeIndex@25@01 i@36@01) (<= i@36@01 right@23@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (< storeIndex@25@01 i@36@01) (<= i@36@01 right@23@01)))
  (and (< storeIndex@25@01 i@36@01) (<= i@36@01 right@23@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@36@01 Int)) (!
  (and
    (or (< storeIndex@25@01 i@36@01) (not (< storeIndex@25@01 i@36@01)))
    (or
      (not (and (< storeIndex@25@01 i@36@01) (<= i@36@01 right@23@01)))
      (and (< storeIndex@25@01 i@36@01) (<= i@36@01 right@23@01))))
  :pattern ((loc<Ref> a@21@01 i@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100-aux|)))
(assert (forall ((i@36@01 Int)) (!
  (=>
    (and (< storeIndex@25@01 i@36@01) (<= i@36@01 right@23@01))
    (<=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@31@01)))) (loc<Ref> a@21@01 storeIndex@25@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@31@01)))) (loc<Ref> a@21@01 i@36@01))))
  :pattern ((loc<Ref> a@21@01 i@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))
  $Snap.unit))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(assert (= (Seq_length pw@26@01) (- (+ right@23@01 1) left@22@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@37@01 Int)
(push) ; 3
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 4
; [then-branch: 11 | !(0 <= i@37@01) | live]
; [else-branch: 11 | 0 <= i@37@01 | live]
(push) ; 5
; [then-branch: 11 | !(0 <= i@37@01)]
(assert (not (<= 0 i@37@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | 0 <= i@37@01]
(assert (<= 0 i@37@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@37@01) (not (<= 0 i@37@01))))
(push) ; 4
; [then-branch: 12 | 0 <= i@37@01 && i@37@01 < |pw@26@01| | live]
; [else-branch: 12 | !(0 <= i@37@01 && i@37@01 < |pw@26@01|) | live]
(push) ; 5
; [then-branch: 12 | 0 <= i@37@01 && i@37@01 < |pw@26@01|]
(assert (and (<= 0 i@37@01) (< i@37@01 (Seq_length pw@26@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 6
(assert (not (>= i@37@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [then-branch: 13 | !(left@22@01 <= pw@26@01[i@37@01]) | live]
; [else-branch: 13 | left@22@01 <= pw@26@01[i@37@01] | live]
(push) ; 7
; [then-branch: 13 | !(left@22@01 <= pw@26@01[i@37@01])]
(assert (not (<= left@22@01 (Seq_index pw@26@01 i@37@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 13 | left@22@01 <= pw@26@01[i@37@01]]
(assert (<= left@22@01 (Seq_index pw@26@01 i@37@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 8
(assert (not (>= i@37@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@26@01 i@37@01))
  (not (<= left@22@01 (Seq_index pw@26@01 i@37@01)))))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | !(0 <= i@37@01 && i@37@01 < |pw@26@01|)]
(assert (not (and (<= 0 i@37@01) (< i@37@01 (Seq_length pw@26@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and (<= 0 i@37@01) (< i@37@01 (Seq_length pw@26@01)))
  (and
    (<= 0 i@37@01)
    (< i@37@01 (Seq_length pw@26@01))
    (or
      (<= left@22@01 (Seq_index pw@26@01 i@37@01))
      (not (<= left@22@01 (Seq_index pw@26@01 i@37@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@37@01) (< i@37@01 (Seq_length pw@26@01))))
  (and (<= 0 i@37@01) (< i@37@01 (Seq_length pw@26@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@37@01 Int)) (!
  (and
    (or (<= 0 i@37@01) (not (<= 0 i@37@01)))
    (=>
      (and (<= 0 i@37@01) (< i@37@01 (Seq_length pw@26@01)))
      (and
        (<= 0 i@37@01)
        (< i@37@01 (Seq_length pw@26@01))
        (or
          (<= left@22@01 (Seq_index pw@26@01 i@37@01))
          (not (<= left@22@01 (Seq_index pw@26@01 i@37@01))))))
    (or
      (not (and (<= 0 i@37@01) (< i@37@01 (Seq_length pw@26@01))))
      (and (<= 0 i@37@01) (< i@37@01 (Seq_length pw@26@01)))))
  :pattern ((Seq_index pw@26@01 i@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82-aux|)))
(assert (forall ((i@37@01 Int)) (!
  (=>
    (and (<= 0 i@37@01) (< i@37@01 (Seq_length pw@26@01)))
    (and
      (<= left@22@01 (Seq_index pw@26@01 i@37@01))
      (<= (Seq_index pw@26@01 i@37@01) right@23@01)))
  :pattern ((Seq_index pw@26@01 i@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { pw[i], pw[j] } 0 <= i && (i < j && j < |pw|) ==> pw[i] != pw[j])
(declare-const i@38@01 Int)
(declare-const j@39@01 Int)
(push) ; 3
; [eval] 0 <= i && (i < j && j < |pw|) ==> pw[i] != pw[j]
; [eval] 0 <= i && (i < j && j < |pw|)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 14 | !(0 <= i@38@01) | live]
; [else-branch: 14 | 0 <= i@38@01 | live]
(push) ; 5
; [then-branch: 14 | !(0 <= i@38@01)]
(assert (not (<= 0 i@38@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | 0 <= i@38@01]
(assert (<= 0 i@38@01))
; [eval] i < j
(push) ; 6
; [then-branch: 15 | !(i@38@01 < j@39@01) | live]
; [else-branch: 15 | i@38@01 < j@39@01 | live]
(push) ; 7
; [then-branch: 15 | !(i@38@01 < j@39@01)]
(assert (not (< i@38@01 j@39@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 15 | i@38@01 < j@39@01]
(assert (< i@38@01 j@39@01))
; [eval] j < |pw|
; [eval] |pw|
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< i@38@01 j@39@01) (not (< i@38@01 j@39@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@38@01)
  (and (<= 0 i@38@01) (or (< i@38@01 j@39@01) (not (< i@38@01 j@39@01))))))
(assert (or (<= 0 i@38@01) (not (<= 0 i@38@01))))
(push) ; 4
; [then-branch: 16 | 0 <= i@38@01 && i@38@01 < j@39@01 && j@39@01 < |pw@26@01| | live]
; [else-branch: 16 | !(0 <= i@38@01 && i@38@01 < j@39@01 && j@39@01 < |pw@26@01|) | live]
(push) ; 5
; [then-branch: 16 | 0 <= i@38@01 && i@38@01 < j@39@01 && j@39@01 < |pw@26@01|]
(assert (and (<= 0 i@38@01) (and (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01)))))
; [eval] pw[i] != pw[j]
; [eval] pw[i]
(push) ; 6
(assert (not (>= i@38@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@38@01 (Seq_length pw@26@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] pw[j]
(push) ; 6
(assert (not (>= j@39@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 16 | !(0 <= i@38@01 && i@38@01 < j@39@01 && j@39@01 < |pw@26@01|)]
(assert (not
  (and
    (<= 0 i@38@01)
    (and (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@38@01)
    (and (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01))))
  (and (<= 0 i@38@01) (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@38@01)
      (and (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01)))))
  (and
    (<= 0 i@38@01)
    (and (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (and
    (=>
      (<= 0 i@38@01)
      (and (<= 0 i@38@01) (or (< i@38@01 j@39@01) (not (< i@38@01 j@39@01)))))
    (or (<= 0 i@38@01) (not (<= 0 i@38@01)))
    (=>
      (and
        (<= 0 i@38@01)
        (and (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01))))
      (and (<= 0 i@38@01) (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01))))
    (or
      (not
        (and
          (<= 0 i@38@01)
          (and (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01)))))
      (and
        (<= 0 i@38@01)
        (and (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01))))))
  :pattern ((Seq_index pw@26@01 i@38@01) (Seq_index pw@26@01 j@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@67@11@67@82-aux|)))
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (=>
    (and
      (<= 0 i@38@01)
      (and (< i@38@01 j@39@01) (< j@39@01 (Seq_length pw@26@01))))
    (not (= (Seq_index pw@26@01 i@38@01) (Seq_index pw@26@01 j@39@01))))
  :pattern ((Seq_index pw@26@01 i@38@01) (Seq_index pw@26@01 j@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@67@11@67@82|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { old(pw[i]) } 0 <= i && i < |pw| ==> loc(a, left + i).val == old(loc(a, pw[i]).val))
(declare-const i@40@01 Int)
(push) ; 3
; [eval] 0 <= i && i < |pw| ==> loc(a, left + i).val == old(loc(a, pw[i]).val)
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 4
; [then-branch: 17 | !(0 <= i@40@01) | live]
; [else-branch: 17 | 0 <= i@40@01 | live]
(push) ; 5
; [then-branch: 17 | !(0 <= i@40@01)]
(assert (not (<= 0 i@40@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 17 | 0 <= i@40@01]
(assert (<= 0 i@40@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@40@01) (not (<= 0 i@40@01))))
(push) ; 4
; [then-branch: 18 | 0 <= i@40@01 && i@40@01 < |pw@26@01| | live]
; [else-branch: 18 | !(0 <= i@40@01 && i@40@01 < |pw@26@01|) | live]
(push) ; 5
; [then-branch: 18 | 0 <= i@40@01 && i@40@01 < |pw@26@01|]
(assert (and (<= 0 i@40@01) (< i@40@01 (Seq_length pw@26@01))))
; [eval] loc(a, left + i).val == old(loc(a, pw[i]).val)
; [eval] loc(a, left + i)
; [eval] left + i
(push) ; 6
(assert (not (and
  (img@34@01 (loc<Ref> a@21@01 (+ left@22@01 i@40@01)))
  (and
    (<= left@22@01 (inv@33@01 (loc<Ref> a@21@01 (+ left@22@01 i@40@01))))
    (<= (inv@33@01 (loc<Ref> a@21@01 (+ left@22@01 i@40@01))) right@23@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i]).val)
; [eval] loc(a, pw[i])
; [eval] pw[i]
(push) ; 6
(assert (not (>= i@40@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@26@01 i@40@01)))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@26@01 i@40@01))))
    (<= (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@26@01 i@40@01))) right@23@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 18 | !(0 <= i@40@01 && i@40@01 < |pw@26@01|)]
(assert (not (and (<= 0 i@40@01) (< i@40@01 (Seq_length pw@26@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 i@40@01) (< i@40@01 (Seq_length pw@26@01))))
  (and (<= 0 i@40@01) (< i@40@01 (Seq_length pw@26@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@40@01 Int)) (!
  (and
    (or (<= 0 i@40@01) (not (<= 0 i@40@01)))
    (or
      (not (and (<= 0 i@40@01) (< i@40@01 (Seq_length pw@26@01))))
      (and (<= 0 i@40@01) (< i@40@01 (Seq_length pw@26@01)))))
  :pattern ((Seq_index pw@26@01 i@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@69@11@69@32-aux|)))
(assert (forall ((i@40@01 Int)) (!
  (=>
    (and (<= 0 i@40@01) (< i@40@01 (Seq_length pw@26@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@31@01)))) (loc<Ref> a@21@01 (+
        left@22@01
        i@40@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@26@01
        i@40@01)))))
  :pattern ((Seq_index pw@26@01 i@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@69@11@69@32|)))
(pop) ; 2
(push) ; 2
; [exec]
; var pivotValue: Int
(declare-const pivotValue@41@01 Int)
; [exec]
; var j: Int
(declare-const j@42@01 Int)
; [exec]
; pivotValue := loc(a, pivotIndex).val
; [eval] loc(a, pivotIndex)
(push) ; 3
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 pivotIndex@24@01))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)))
    (<= (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const pivotValue@43@01 Int)
(assert (=
  pivotValue@43@01
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 pivotIndex@24@01))))
; [exec]
; pw := [left..right + 1)
; [eval] [left..right + 1)
; [eval] right + 1
(declare-const pw@44@01 Seq<Int>)
(assert (= pw@44@01 (Seq_range left@22@01 (+ right@23@01 1))))
; [exec]
; swap(a, pivotIndex, right)
; [eval] 0 <= i
(push) ; 3
(assert (not (<= 0 pivotIndex@24@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 pivotIndex@24@01))
; [eval] i < len(a)
; [eval] len(a)
(push) ; 3
(assert (not (< pivotIndex@24@01 (len<Int> a@21@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< pivotIndex@24@01 (len<Int> a@21@01)))
; [eval] 0 <= j
(push) ; 3
(assert (not (<= 0 right@23@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 right@23@01))
; [eval] j < len(a)
; [eval] len(a)
; [eval] loc(a, i)
; Precomputing data for removing quantified permissions
(define-fun pTaken@45@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    ($Perm.min
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
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
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@45@01 r))
    $Perm.No)
  
  :qid |quant-u-18979|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@45@01 r) $Perm.No)
  
  :qid |quant-u-18980|))))
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
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (= (- $Perm.Write (pTaken@45@01 r)) $Perm.No))
  
  :qid |quant-u-18981|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] i != j
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= pivotIndex@24@01 right@23@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= pivotIndex@24@01 right@23@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | pivotIndex@24@01 != right@23@01 | live]
; [else-branch: 19 | pivotIndex@24@01 == right@23@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 19 | pivotIndex@24@01 != right@23@01]
(assert (not (= pivotIndex@24@01 right@23@01)))
; [eval] loc(a, j)
; Precomputing data for removing quantified permissions
(define-fun pTaken@46@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@21@01 right@23@01))
    ($Perm.min
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (- $Perm.Write (pTaken@45@01 r))
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
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (- $Perm.Write (pTaken@45@01 r))
        $Perm.No)
      (pTaken@46@01 r))
    $Perm.No)
  
  :qid |quant-u-18983|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@46@01 r) $Perm.No)
  
  :qid |quant-u-18984|))))
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
    (= r (loc<Ref> a@21@01 right@23@01))
    (= (- $Perm.Write (pTaken@46@01 r)) $Perm.No))
  
  :qid |quant-u-18985|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 ($Snap.combine ($Snap.first $t@47@01) ($Snap.second $t@47@01))))
; [eval] loc(a, i)
(declare-const sm@48@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@48@01  $FVF<val>) (loc<Ref> a@21@01 pivotIndex@24@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@47@01))))
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 pivotIndex@24@01) (loc<Ref> a@21@01 pivotIndex@24@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 pivotIndex@24@01) (loc<Ref> a@21@01 pivotIndex@24@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 pivotIndex@24@01) (loc<Ref> a@21@01 pivotIndex@24@01))
  (not (= (loc<Ref> a@21@01 pivotIndex@24@01) $Ref.null))))
(assert (=
  ($Snap.second $t@47@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@47@01))
    ($Snap.second ($Snap.second $t@47@01)))))
; [eval] i != j
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= pivotIndex@24@01 right@23@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | pivotIndex@24@01 != right@23@01 | live]
; [else-branch: 20 | pivotIndex@24@01 == right@23@01 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 20 | pivotIndex@24@01 != right@23@01]
; [eval] loc(a, j)
(declare-const sm@49@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@49@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@47@01)))))
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
    (= (loc<Ref> a@21@01 pivotIndex@24@01) (loc<Ref> a@21@01 pivotIndex@24@01)))
  (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 pivotIndex@24@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
  (not (= (loc<Ref> a@21@01 right@23@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@47@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@47@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@47@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@47@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
(declare-const sm@50@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
  :qid |qp.fvfValDef2|)))
(declare-const pm@51@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@51@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@30@01 r)
            (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
          (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r))
          $Perm.No)
        (ite (= r (loc<Ref> a@21@01 pivotIndex@24@01)) $Perm.Write $Perm.No))
      (ite (= r (loc<Ref> a@21@01 right@23@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_val (as pm@51@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
(set-option :timeout 0)
(push) ; 5
(assert (not (<
  $Perm.No
  ($FVF.perm_val (as pm@51@01  $FPM) (loc<Ref> a@21@01 pivotIndex@24@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 5
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 right@23@01))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 right@23@01)))
    (<= (inv@29@01 (loc<Ref> a@21@01 right@23@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@50@01  $FVF<val>) (loc<Ref> a@21@01 pivotIndex@24@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 right@23@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@47@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 pivotIndex@24@01))
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 5
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@30@01 (loc<Ref> a@21@01 right@23@01))
          (and
            (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 right@23@01)))
            (<= (inv@29@01 (loc<Ref> a@21@01 right@23@01)) right@23@01)))
        (-
          (- $Perm.Write (pTaken@45@01 (loc<Ref> a@21@01 right@23@01)))
          (pTaken@46@01 (loc<Ref> a@21@01 right@23@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 pivotIndex@24@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(push) ; 5
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 pivotIndex@24@01))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)))
    (<= (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@50@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 pivotIndex@24@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; pw := pw[pivotIndex - left := pw[right - left]][right - left :=
;   pw[pivotIndex - left]]
; [eval] pw[pivotIndex - left := pw[right - left]][right - left := pw[pivotIndex - left]]
; [eval] pw[pivotIndex - left := pw[right - left]]
; [eval] pivotIndex - left
; [eval] pw[right - left]
; [eval] right - left
(set-option :timeout 0)
(push) ; 5
(assert (not (>= (- right@23@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- right@23@01 left@22@01) (Seq_length pw@44@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (>= (- pivotIndex@24@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- pivotIndex@24@01 left@22@01) (Seq_length pw@44@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] right - left
; [eval] pw[pivotIndex - left]
; [eval] pivotIndex - left
(push) ; 5
(assert (not (>= (- pivotIndex@24@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- pivotIndex@24@01 left@22@01) (Seq_length pw@44@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (>= (- right@23@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  (- right@23@01 left@22@01)
  (Seq_length
    (Seq_append
      (Seq_take pw@44@01 (- pivotIndex@24@01 left@22@01))
      (Seq_append
        (Seq_singleton (Seq_index pw@44@01 (- right@23@01 left@22@01)))
        (Seq_drop pw@44@01 (+ (- pivotIndex@24@01 left@22@01) 1))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const pw@52@01 Seq<Int>)
(assert (=
  pw@52@01
  (Seq_append
    (Seq_take
      (Seq_append
        (Seq_take pw@44@01 (- pivotIndex@24@01 left@22@01))
        (Seq_append
          (Seq_singleton (Seq_index pw@44@01 (- right@23@01 left@22@01)))
          (Seq_drop pw@44@01 (+ (- pivotIndex@24@01 left@22@01) 1))))
      (- right@23@01 left@22@01))
    (Seq_append
      (Seq_singleton (Seq_index pw@44@01 (- pivotIndex@24@01 left@22@01)))
      (Seq_drop
        (Seq_append
          (Seq_take pw@44@01 (- pivotIndex@24@01 left@22@01))
          (Seq_append
            (Seq_singleton (Seq_index pw@44@01 (- right@23@01 left@22@01)))
            (Seq_drop pw@44@01 (+ (- pivotIndex@24@01 left@22@01) 1))))
        (+ (- right@23@01 left@22@01) 1))))))
; [exec]
; storeIndex := left
; [exec]
; j := left
(declare-const pw@53@01 Seq<Int>)
(declare-const storeIndex@54@01 Int)
(declare-const j@55@01 Int)
(push) ; 5
; Loop head block: Check well-definedness of invariant
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 ($Snap.combine ($Snap.first $t@56@01) ($Snap.second $t@56@01))))
(assert (= ($Snap.first $t@56@01) $Snap.unit))
; [eval] left <= j
(assert (<= left@22@01 j@55@01))
(assert (=
  ($Snap.second $t@56@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@56@01))
    ($Snap.second ($Snap.second $t@56@01)))))
(assert (= ($Snap.first ($Snap.second $t@56@01)) $Snap.unit))
; [eval] j <= right
(assert (<= j@55@01 right@23@01))
(assert (=
  ($Snap.second ($Snap.second $t@56@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@56@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@56@01))) $Snap.unit))
; [eval] left <= storeIndex
(assert (<= left@22@01 storeIndex@54@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@56@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
  $Snap.unit))
; [eval] storeIndex <= j
(assert (<= storeIndex@54@01 j@55@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
(declare-const i@57@01 Int)
(push) ; 6
; [eval] (i in [left..right + 1))
; [eval] [left..right + 1)
; [eval] right + 1
(assert (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@57@01))
; [eval] loc(a, i)
(pop) ; 6
(declare-fun inv@58@01 ($Ref) Int)
(declare-fun img@59@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((i1@57@01 Int) (i2@57@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i1@57@01)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i2@57@01)
      (= (loc<Ref> a@21@01 i1@57@01) (loc<Ref> a@21@01 i2@57@01)))
    (= i1@57@01 i2@57@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@57@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@57@01)
    (and
      (= (inv@58@01 (loc<Ref> a@21@01 i@57@01)) i@57@01)
      (img@59@01 (loc<Ref> a@21@01 i@57@01))))
  :pattern ((loc<Ref> a@21@01 i@57@01))
  :qid |quant-u-18987|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@59@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
    (= (loc<Ref> a@21@01 (inv@58@01 r)) r))
  :pattern ((inv@58@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@57@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@57@01)
    (not (= (loc<Ref> a@21@01 i@57@01) $Ref.null)))
  :pattern ((loc<Ref> a@21@01 i@57@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
  $Snap.unit))
; [eval] loc(a, right).val == pivotValue
; [eval] loc(a, right)
(push) ; 6
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 right@23@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 right@23@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
  $Snap.unit))
; [eval] (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
(declare-const i@60@01 Int)
(push) ; 6
; [eval] (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue
; [eval] (i in [left..storeIndex))
; [eval] [left..storeIndex)
(push) ; 7
; [then-branch: 21 | i@60@01 in [left@22@01..storeIndex@54@01] | live]
; [else-branch: 21 | !(i@60@01 in [left@22@01..storeIndex@54@01]) | live]
(push) ; 8
; [then-branch: 21 | i@60@01 in [left@22@01..storeIndex@54@01]]
(assert (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
; [eval] loc(a, i).val < pivotValue
; [eval] loc(a, i)
(push) ; 9
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 i@60@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 i@60@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 21 | !(i@60@01 in [left@22@01..storeIndex@54@01])]
(assert (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01)))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@60@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@60@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@60@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  :pattern ((loc<Ref> a@21@01 i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@60@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01)
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 i@60@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@60@01))
  :pattern ((loc<Ref> a@21@01 i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
(declare-const i@61@01 Int)
(push) ; 6
; [eval] (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val
; [eval] (i in [storeIndex..j))
; [eval] [storeIndex..j)
(push) ; 7
; [then-branch: 22 | i@61@01 in [storeIndex@54@01..j@55@01] | live]
; [else-branch: 22 | !(i@61@01 in [storeIndex@54@01..j@55@01]) | live]
(push) ; 8
; [then-branch: 22 | i@61@01 in [storeIndex@54@01..j@55@01]]
(assert (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
; [eval] pivotValue <= loc(a, i).val
; [eval] loc(a, i)
(push) ; 9
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 i@61@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 i@61@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 22 | !(i@61@01 in [storeIndex@54@01..j@55@01])]
(assert (not (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01)))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@61@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
    (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@61@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
    (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@61@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
    (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((loc<Ref> a@21@01 i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@61@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 i@61@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((loc<Ref> a@21@01 i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))
  $Snap.unit))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(assert (= (Seq_length pw@53@01) (- (+ right@23@01 1) left@22@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@62@01 Int)
(push) ; 6
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 7
; [then-branch: 23 | !(0 <= i@62@01) | live]
; [else-branch: 23 | 0 <= i@62@01 | live]
(push) ; 8
; [then-branch: 23 | !(0 <= i@62@01)]
(assert (not (<= 0 i@62@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 23 | 0 <= i@62@01]
(assert (<= 0 i@62@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@62@01) (not (<= 0 i@62@01))))
(push) ; 7
; [then-branch: 24 | 0 <= i@62@01 && i@62@01 < |pw@53@01| | live]
; [else-branch: 24 | !(0 <= i@62@01 && i@62@01 < |pw@53@01|) | live]
(push) ; 8
; [then-branch: 24 | 0 <= i@62@01 && i@62@01 < |pw@53@01|]
(assert (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 9
(assert (not (>= i@62@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
; [then-branch: 25 | !(left@22@01 <= pw@53@01[i@62@01]) | live]
; [else-branch: 25 | left@22@01 <= pw@53@01[i@62@01] | live]
(push) ; 10
; [then-branch: 25 | !(left@22@01 <= pw@53@01[i@62@01])]
(assert (not (<= left@22@01 (Seq_index pw@53@01 i@62@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 25 | left@22@01 <= pw@53@01[i@62@01]]
(assert (<= left@22@01 (Seq_index pw@53@01 i@62@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 11
(assert (not (>= i@62@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@53@01 i@62@01))
  (not (<= left@22@01 (Seq_index pw@53@01 i@62@01)))))
(pop) ; 8
(push) ; 8
; [else-branch: 24 | !(0 <= i@62@01 && i@62@01 < |pw@53@01|)]
(assert (not (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01)))
  (and
    (<= 0 i@62@01)
    (< i@62@01 (Seq_length pw@53@01))
    (or
      (<= left@22@01 (Seq_index pw@53@01 i@62@01))
      (not (<= left@22@01 (Seq_index pw@53@01 i@62@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01))))
  (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@62@01 Int)) (!
  (and
    (or (<= 0 i@62@01) (not (<= 0 i@62@01)))
    (=>
      (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01)))
      (and
        (<= 0 i@62@01)
        (< i@62@01 (Seq_length pw@53@01))
        (or
          (<= left@22@01 (Seq_index pw@53@01 i@62@01))
          (not (<= left@22@01 (Seq_index pw@53@01 i@62@01))))))
    (or
      (not (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01))))
      (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01)))))
  :pattern ((Seq_index pw@53@01 i@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(assert (forall ((i@62@01 Int)) (!
  (=>
    (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01)))
    (and
      (<= left@22@01 (Seq_index pw@53@01 i@62@01))
      (<= (Seq_index pw@53@01 i@62@01) right@23@01)))
  :pattern ((Seq_index pw@53@01 i@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))
  $Snap.unit))
; [eval] (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
(declare-const i@63@01 Int)
(declare-const k@64@01 Int)
(push) ; 6
; [eval] 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]
; [eval] 0 <= i && (i < k && k < |pw|)
; [eval] 0 <= i
(push) ; 7
; [then-branch: 26 | !(0 <= i@63@01) | live]
; [else-branch: 26 | 0 <= i@63@01 | live]
(push) ; 8
; [then-branch: 26 | !(0 <= i@63@01)]
(assert (not (<= 0 i@63@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 26 | 0 <= i@63@01]
(assert (<= 0 i@63@01))
; [eval] i < k
(push) ; 9
; [then-branch: 27 | !(i@63@01 < k@64@01) | live]
; [else-branch: 27 | i@63@01 < k@64@01 | live]
(push) ; 10
; [then-branch: 27 | !(i@63@01 < k@64@01)]
(assert (not (< i@63@01 k@64@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 27 | i@63@01 < k@64@01]
(assert (< i@63@01 k@64@01))
; [eval] k < |pw|
; [eval] |pw|
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< i@63@01 k@64@01) (not (< i@63@01 k@64@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@63@01)
  (and (<= 0 i@63@01) (or (< i@63@01 k@64@01) (not (< i@63@01 k@64@01))))))
(assert (or (<= 0 i@63@01) (not (<= 0 i@63@01))))
(push) ; 7
; [then-branch: 28 | 0 <= i@63@01 && i@63@01 < k@64@01 && k@64@01 < |pw@53@01| | live]
; [else-branch: 28 | !(0 <= i@63@01 && i@63@01 < k@64@01 && k@64@01 < |pw@53@01|) | live]
(push) ; 8
; [then-branch: 28 | 0 <= i@63@01 && i@63@01 < k@64@01 && k@64@01 < |pw@53@01|]
(assert (and (<= 0 i@63@01) (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01)))))
; [eval] pw[i] != pw[k]
; [eval] pw[i]
(push) ; 9
(assert (not (>= i@63@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i@63@01 (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] pw[k]
(push) ; 9
(assert (not (>= k@64@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 28 | !(0 <= i@63@01 && i@63@01 < k@64@01 && k@64@01 < |pw@53@01|)]
(assert (not
  (and
    (<= 0 i@63@01)
    (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@63@01)
    (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))
  (and (<= 0 i@63@01) (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@63@01)
      (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01)))))
  (and
    (<= 0 i@63@01)
    (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@63@01 Int) (k@64@01 Int)) (!
  (and
    (=>
      (<= 0 i@63@01)
      (and (<= 0 i@63@01) (or (< i@63@01 k@64@01) (not (< i@63@01 k@64@01)))))
    (or (<= 0 i@63@01) (not (<= 0 i@63@01)))
    (=>
      (and
        (<= 0 i@63@01)
        (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))
      (and (<= 0 i@63@01) (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))
    (or
      (not
        (and
          (<= 0 i@63@01)
          (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01)))))
      (and
        (<= 0 i@63@01)
        (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))))
  :pattern ((Seq_index pw@53@01 i@63@01) (Seq_index pw@53@01 k@64@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(assert (forall ((i@63@01 Int) (k@64@01 Int)) (!
  (=>
    (and
      (<= 0 i@63@01)
      (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))
    (not (= (Seq_index pw@53@01 i@63@01) (Seq_index pw@53@01 k@64@01))))
  :pattern ((Seq_index pw@53@01 i@63@01) (Seq_index pw@53@01 k@64@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))
  $Snap.unit))
; [eval] (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
(declare-const i$0@65@01 Int)
(push) ; 6
; [eval] 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] 0 <= i$0 && i$0 < |pw|
; [eval] 0 <= i$0
(push) ; 7
; [then-branch: 29 | !(0 <= i$0@65@01) | live]
; [else-branch: 29 | 0 <= i$0@65@01 | live]
(push) ; 8
; [then-branch: 29 | !(0 <= i$0@65@01)]
(assert (not (<= 0 i$0@65@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 29 | 0 <= i$0@65@01]
(assert (<= 0 i$0@65@01))
; [eval] i$0 < |pw|
; [eval] |pw|
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i$0@65@01) (not (<= 0 i$0@65@01))))
(push) ; 7
; [then-branch: 30 | 0 <= i$0@65@01 && i$0@65@01 < |pw@53@01| | live]
; [else-branch: 30 | !(0 <= i$0@65@01 && i$0@65@01 < |pw@53@01|) | live]
(push) ; 8
; [then-branch: 30 | 0 <= i$0@65@01 && i$0@65@01 < |pw@53@01|]
(assert (and (<= 0 i$0@65@01) (< i$0@65@01 (Seq_length pw@53@01))))
; [eval] loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] loc(a, left + i$0)
; [eval] left + i$0
(push) ; 9
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@65@01)))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@65@01)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i$0]).val)
; [eval] loc(a, pw[i$0])
; [eval] pw[i$0]
(push) ; 9
(assert (not (>= i$0@65@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@53@01 i$0@65@01)))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@53@01 i$0@65@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@53@01 i$0@65@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 30 | !(0 <= i$0@65@01 && i$0@65@01 < |pw@53@01|)]
(assert (not (and (<= 0 i$0@65@01) (< i$0@65@01 (Seq_length pw@53@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 i$0@65@01) (< i$0@65@01 (Seq_length pw@53@01))))
  (and (<= 0 i$0@65@01) (< i$0@65@01 (Seq_length pw@53@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$0@65@01 Int)) (!
  (and
    (or (<= 0 i$0@65@01) (not (<= 0 i$0@65@01)))
    (or
      (not (and (<= 0 i$0@65@01) (< i$0@65@01 (Seq_length pw@53@01))))
      (and (<= 0 i$0@65@01) (< i$0@65@01 (Seq_length pw@53@01)))))
  :pattern ((Seq_index pw@53@01 i$0@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(assert (forall ((i$0@65@01 Int)) (!
  (=>
    (and (<= 0 i$0@65@01) (< i$0@65@01 (Seq_length pw@53@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@65@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@53@01
        i$0@65@01)))))
  :pattern ((Seq_index pw@53@01 i$0@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
(pop) ; 5
(push) ; 5
; Loop head block: Establish invariant
; [eval] left <= j
; [eval] j <= right
(push) ; 6
(assert (not (<= left@22@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 right@23@01))
; [eval] left <= storeIndex
; [eval] storeIndex <= j
(declare-const i@66@01 Int)
(push) ; 6
; [eval] (i in [left..right + 1))
; [eval] [left..right + 1)
; [eval] right + 1
(assert (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@66@01))
; [eval] loc(a, i)
(pop) ; 6
(declare-fun inv@67@01 ($Ref) Int)
(declare-fun img@68@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((i1@66@01 Int) (i2@66@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i1@66@01)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i2@66@01)
      (= (loc<Ref> a@21@01 i1@66@01) (loc<Ref> a@21@01 i2@66@01)))
    (= i1@66@01 i2@66@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@66@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@66@01)
    (and
      (= (inv@67@01 (loc<Ref> a@21@01 i@66@01)) i@66@01)
      (img@68@01 (loc<Ref> a@21@01 i@66@01))))
  :pattern ((loc<Ref> a@21@01 i@66@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@68@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@67@01 r)))
    (= (loc<Ref> a@21@01 (inv@67@01 r)) r))
  :pattern ((inv@67@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@69@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@67@01 r))
      (img@68@01 r)
      (= r (loc<Ref> a@21@01 (inv@67@01 r))))
    ($Perm.min
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@70@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@67@01 r))
      (img@68@01 r)
      (= r (loc<Ref> a@21@01 (inv@67@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 pivotIndex@24@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@69@01 r)))
    $Perm.No))
(define-fun pTaken@71@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@67@01 r))
      (img@68@01 r)
      (= r (loc<Ref> a@21@01 (inv@67@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 right@23@01)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@69@01 r)) (pTaken@70@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
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
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r))
        $Perm.No)
      (pTaken@69@01 r))
    $Perm.No)
  
  :qid |quant-u-18990|))))
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
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@67@01 r))
      (img@68@01 r)
      (= r (loc<Ref> a@21@01 (inv@67@01 r))))
    (= (- $Perm.Write (pTaken@69@01 r)) $Perm.No))
  
  :qid |quant-u-18991|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 pivotIndex@24@01) (loc<Ref> a@21@01 pivotIndex@24@01))
      $Perm.Write
      $Perm.No)
    (pTaken@70@01 (loc<Ref> a@21@01 pivotIndex@24@01)))
  $Perm.No)))
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
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@67@01 r))
      (img@68@01 r)
      (= r (loc<Ref> a@21@01 (inv@67@01 r))))
    (= (- (- $Perm.Write (pTaken@69@01 r)) (pTaken@70@01 r)) $Perm.No))
  
  :qid |quant-u-18993|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)
    (pTaken@71@01 (loc<Ref> a@21@01 right@23@01)))
  $Perm.No)))
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
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@67@01 r))
      (img@68@01 r)
      (= r (loc<Ref> a@21@01 (inv@67@01 r))))
    (=
      (- (- (- $Perm.Write (pTaken@69@01 r)) (pTaken@70@01 r)) (pTaken@71@01 r))
      $Perm.No))
  
  :qid |quant-u-18995|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, right).val == pivotValue
; [eval] loc(a, right)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 pivotIndex@24@01))
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
    :qid |qp.fvfValDef2|))))
(set-option :timeout 0)
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@30@01 (loc<Ref> a@21@01 right@23@01))
          (and
            (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 right@23@01)))
            (<= (inv@29@01 (loc<Ref> a@21@01 right@23@01)) right@23@01)))
        (-
          (- $Perm.Write (pTaken@45@01 (loc<Ref> a@21@01 right@23@01)))
          (pTaken@46@01 (loc<Ref> a@21@01 right@23@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 pivotIndex@24@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (=
  ($FVF.lookup_val (as sm@50@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@50@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01))
; [eval] (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
(declare-const i@72@01 Int)
(push) ; 6
; [eval] (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue
; [eval] (i in [left..storeIndex))
; [eval] [left..storeIndex)
(push) ; 7
; [then-branch: 31 | i@72@01 in [left@22@01..left@22@01] | live]
; [else-branch: 31 | !(i@72@01 in [left@22@01..left@22@01]) | live]
(push) ; 8
; [then-branch: 31 | i@72@01 in [left@22@01..left@22@01]]
(assert (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
; [eval] loc(a, i).val < pivotValue
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 pivotIndex@24@01))
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@30@01 (loc<Ref> a@21@01 i@72@01))
          (and
            (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 i@72@01)))
            (<= (inv@29@01 (loc<Ref> a@21@01 i@72@01)) right@23@01)))
        (-
          (- $Perm.Write (pTaken@45@01 (loc<Ref> a@21@01 i@72@01)))
          (pTaken@46@01 (loc<Ref> a@21@01 i@72@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 i@72@01) (loc<Ref> a@21@01 pivotIndex@24@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 i@72@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 31 | !(i@72@01 in [left@22@01..left@22@01])]
(assert (not (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
  :qid |qp.fvfValDef2|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
  (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01)))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
  :qid |qp.fvfValDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@72@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@72@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@72@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
  :pattern ((loc<Ref> a@21@01 i@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(push) ; 6
(assert (not (forall ((i@72@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01)
    (<
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) (loc<Ref> a@21@01 i@72@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@72@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@72@01))
  :pattern ((loc<Ref> a@21@01 i@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@72@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 left@22@01) i@72@01)
    (<
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) (loc<Ref> a@21@01 i@72@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@72@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@72@01))
  :pattern ((loc<Ref> a@21@01 i@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
; [eval] (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
(declare-const i@73@01 Int)
(push) ; 6
; [eval] (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val
; [eval] (i in [storeIndex..j))
; [eval] [storeIndex..j)
(push) ; 7
; [then-branch: 32 | i@73@01 in [left@22@01..left@22@01] | live]
; [else-branch: 32 | !(i@73@01 in [left@22@01..left@22@01]) | live]
(push) ; 8
; [then-branch: 32 | i@73@01 in [left@22@01..left@22@01]]
(assert (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
; [eval] pivotValue <= loc(a, i).val
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 pivotIndex@24@01))
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@30@01 (loc<Ref> a@21@01 i@73@01))
          (and
            (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 i@73@01)))
            (<= (inv@29@01 (loc<Ref> a@21@01 i@73@01)) right@23@01)))
        (-
          (- $Perm.Write (pTaken@45@01 (loc<Ref> a@21@01 i@73@01)))
          (pTaken@46@01 (loc<Ref> a@21@01 i@73@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 i@73@01) (loc<Ref> a@21@01 pivotIndex@24@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 i@73@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 32 | !(i@73@01 in [left@22@01..left@22@01])]
(assert (not (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
  :qid |qp.fvfValDef2|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
  (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01)))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
  :qid |qp.fvfValDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@73@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@73@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@73@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
  :pattern ((loc<Ref> a@21@01 i@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(push) ; 6
(assert (not (forall ((i@73@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) (loc<Ref> a@21@01 i@73@01))))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@73@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@73@01))
  :pattern ((loc<Ref> a@21@01 i@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@73@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 left@22@01) i@73@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) (loc<Ref> a@21@01 i@73@01))))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@73@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@73@01))
  :pattern ((loc<Ref> a@21@01 i@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(push) ; 6
(assert (not (= (Seq_length pw@52@01) (- (+ right@23@01 1) left@22@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length pw@52@01) (- (+ right@23@01 1) left@22@01)))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@74@01 Int)
(push) ; 6
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 7
; [then-branch: 33 | !(0 <= i@74@01) | live]
; [else-branch: 33 | 0 <= i@74@01 | live]
(push) ; 8
; [then-branch: 33 | !(0 <= i@74@01)]
(assert (not (<= 0 i@74@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 33 | 0 <= i@74@01]
(assert (<= 0 i@74@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@74@01) (not (<= 0 i@74@01))))
(push) ; 7
; [then-branch: 34 | 0 <= i@74@01 && i@74@01 < |pw@52@01| | live]
; [else-branch: 34 | !(0 <= i@74@01 && i@74@01 < |pw@52@01|) | live]
(push) ; 8
; [then-branch: 34 | 0 <= i@74@01 && i@74@01 < |pw@52@01|]
(assert (and (<= 0 i@74@01) (< i@74@01 (Seq_length pw@52@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 9
(assert (not (>= i@74@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
; [then-branch: 35 | !(left@22@01 <= pw@52@01[i@74@01]) | live]
; [else-branch: 35 | left@22@01 <= pw@52@01[i@74@01] | live]
(push) ; 10
; [then-branch: 35 | !(left@22@01 <= pw@52@01[i@74@01])]
(assert (not (<= left@22@01 (Seq_index pw@52@01 i@74@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 35 | left@22@01 <= pw@52@01[i@74@01]]
(assert (<= left@22@01 (Seq_index pw@52@01 i@74@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 11
(assert (not (>= i@74@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@52@01 i@74@01))
  (not (<= left@22@01 (Seq_index pw@52@01 i@74@01)))))
(pop) ; 8
(push) ; 8
; [else-branch: 34 | !(0 <= i@74@01 && i@74@01 < |pw@52@01|)]
(assert (not (and (<= 0 i@74@01) (< i@74@01 (Seq_length pw@52@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and (<= 0 i@74@01) (< i@74@01 (Seq_length pw@52@01)))
  (and
    (<= 0 i@74@01)
    (< i@74@01 (Seq_length pw@52@01))
    (or
      (<= left@22@01 (Seq_index pw@52@01 i@74@01))
      (not (<= left@22@01 (Seq_index pw@52@01 i@74@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@74@01) (< i@74@01 (Seq_length pw@52@01))))
  (and (<= 0 i@74@01) (< i@74@01 (Seq_length pw@52@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@74@01 Int)) (!
  (and
    (or (<= 0 i@74@01) (not (<= 0 i@74@01)))
    (=>
      (and (<= 0 i@74@01) (< i@74@01 (Seq_length pw@52@01)))
      (and
        (<= 0 i@74@01)
        (< i@74@01 (Seq_length pw@52@01))
        (or
          (<= left@22@01 (Seq_index pw@52@01 i@74@01))
          (not (<= left@22@01 (Seq_index pw@52@01 i@74@01))))))
    (or
      (not (and (<= 0 i@74@01) (< i@74@01 (Seq_length pw@52@01))))
      (and (<= 0 i@74@01) (< i@74@01 (Seq_length pw@52@01)))))
  :pattern ((Seq_index pw@52@01 i@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(push) ; 6
(assert (not (forall ((i@74@01 Int)) (!
  (=>
    (and (<= 0 i@74@01) (< i@74@01 (Seq_length pw@52@01)))
    (and
      (<= left@22@01 (Seq_index pw@52@01 i@74@01))
      (<= (Seq_index pw@52@01 i@74@01) right@23@01)))
  :pattern ((Seq_index pw@52@01 i@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|))))
(check-sat)
; unsat
(pop) ; 6
; 0.03s
; (get-info :all-statistics)
(assert (forall ((i@74@01 Int)) (!
  (=>
    (and (<= 0 i@74@01) (< i@74@01 (Seq_length pw@52@01)))
    (and
      (<= left@22@01 (Seq_index pw@52@01 i@74@01))
      (<= (Seq_index pw@52@01 i@74@01) right@23@01)))
  :pattern ((Seq_index pw@52@01 i@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
; [eval] (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
(declare-const i@75@01 Int)
(declare-const k@76@01 Int)
(push) ; 6
; [eval] 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]
; [eval] 0 <= i && (i < k && k < |pw|)
; [eval] 0 <= i
(push) ; 7
; [then-branch: 36 | !(0 <= i@75@01) | live]
; [else-branch: 36 | 0 <= i@75@01 | live]
(push) ; 8
; [then-branch: 36 | !(0 <= i@75@01)]
(assert (not (<= 0 i@75@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 36 | 0 <= i@75@01]
(assert (<= 0 i@75@01))
; [eval] i < k
(push) ; 9
; [then-branch: 37 | !(i@75@01 < k@76@01) | live]
; [else-branch: 37 | i@75@01 < k@76@01 | live]
(push) ; 10
; [then-branch: 37 | !(i@75@01 < k@76@01)]
(assert (not (< i@75@01 k@76@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 37 | i@75@01 < k@76@01]
(assert (< i@75@01 k@76@01))
; [eval] k < |pw|
; [eval] |pw|
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< i@75@01 k@76@01) (not (< i@75@01 k@76@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@75@01)
  (and (<= 0 i@75@01) (or (< i@75@01 k@76@01) (not (< i@75@01 k@76@01))))))
(assert (or (<= 0 i@75@01) (not (<= 0 i@75@01))))
(push) ; 7
; [then-branch: 38 | 0 <= i@75@01 && i@75@01 < k@76@01 && k@76@01 < |pw@52@01| | live]
; [else-branch: 38 | !(0 <= i@75@01 && i@75@01 < k@76@01 && k@76@01 < |pw@52@01|) | live]
(push) ; 8
; [then-branch: 38 | 0 <= i@75@01 && i@75@01 < k@76@01 && k@76@01 < |pw@52@01|]
(assert (and (<= 0 i@75@01) (and (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01)))))
; [eval] pw[i] != pw[k]
; [eval] pw[i]
(push) ; 9
(assert (not (>= i@75@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i@75@01 (Seq_length pw@52@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] pw[k]
(push) ; 9
(assert (not (>= k@76@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 38 | !(0 <= i@75@01 && i@75@01 < k@76@01 && k@76@01 < |pw@52@01|)]
(assert (not
  (and
    (<= 0 i@75@01)
    (and (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@75@01)
    (and (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01))))
  (and (<= 0 i@75@01) (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@75@01)
      (and (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01)))))
  (and
    (<= 0 i@75@01)
    (and (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@75@01 Int) (k@76@01 Int)) (!
  (and
    (=>
      (<= 0 i@75@01)
      (and (<= 0 i@75@01) (or (< i@75@01 k@76@01) (not (< i@75@01 k@76@01)))))
    (or (<= 0 i@75@01) (not (<= 0 i@75@01)))
    (=>
      (and
        (<= 0 i@75@01)
        (and (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01))))
      (and (<= 0 i@75@01) (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01))))
    (or
      (not
        (and
          (<= 0 i@75@01)
          (and (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01)))))
      (and
        (<= 0 i@75@01)
        (and (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01))))))
  :pattern ((Seq_index pw@52@01 i@75@01) (Seq_index pw@52@01 k@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(push) ; 6
(assert (not (forall ((i@75@01 Int) (k@76@01 Int)) (!
  (=>
    (and
      (<= 0 i@75@01)
      (and (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01))))
    (not (= (Seq_index pw@52@01 i@75@01) (Seq_index pw@52@01 k@76@01))))
  :pattern ((Seq_index pw@52@01 i@75@01) (Seq_index pw@52@01 k@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|))))
(check-sat)
; unsat
(pop) ; 6
; 0.05s
; (get-info :all-statistics)
(assert (forall ((i@75@01 Int) (k@76@01 Int)) (!
  (=>
    (and
      (<= 0 i@75@01)
      (and (< i@75@01 k@76@01) (< k@76@01 (Seq_length pw@52@01))))
    (not (= (Seq_index pw@52@01 i@75@01) (Seq_index pw@52@01 k@76@01))))
  :pattern ((Seq_index pw@52@01 i@75@01) (Seq_index pw@52@01 k@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
; [eval] (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
(declare-const i$0@77@01 Int)
(push) ; 6
; [eval] 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] 0 <= i$0 && i$0 < |pw|
; [eval] 0 <= i$0
(push) ; 7
; [then-branch: 39 | !(0 <= i$0@77@01) | live]
; [else-branch: 39 | 0 <= i$0@77@01 | live]
(push) ; 8
; [then-branch: 39 | !(0 <= i$0@77@01)]
(assert (not (<= 0 i$0@77@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 39 | 0 <= i$0@77@01]
(assert (<= 0 i$0@77@01))
; [eval] i$0 < |pw|
; [eval] |pw|
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i$0@77@01) (not (<= 0 i$0@77@01))))
(push) ; 7
; [then-branch: 40 | 0 <= i$0@77@01 && i$0@77@01 < |pw@52@01| | live]
; [else-branch: 40 | !(0 <= i$0@77@01 && i$0@77@01 < |pw@52@01|) | live]
(push) ; 8
; [then-branch: 40 | 0 <= i$0@77@01 && i$0@77@01 < |pw@52@01|]
(assert (and (<= 0 i$0@77@01) (< i$0@77@01 (Seq_length pw@52@01))))
; [eval] loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] loc(a, left + i$0)
; [eval] left + i$0
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 pivotIndex@24@01))
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@30@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@77@01)))
          (and
            (<=
              left@22@01
              (inv@29@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@77@01))))
            (<=
              (inv@29@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@77@01)))
              right@23@01)))
        (-
          (-
            $Perm.Write
            (pTaken@45@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@77@01))))
          (pTaken@46@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@77@01))))
        $Perm.No)
      (ite
        (=
          (loc<Ref> a@21@01 (+ left@22@01 i$0@77@01))
          (loc<Ref> a@21@01 pivotIndex@24@01))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (loc<Ref> a@21@01 (+ left@22@01 i$0@77@01))
        (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i$0]).val)
; [eval] loc(a, pw[i$0])
; [eval] pw[i$0]
(push) ; 9
(assert (not (>= i$0@77@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@52@01 i$0@77@01)))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@52@01 i$0@77@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@52@01 i$0@77@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 40 | !(0 <= i$0@77@01 && i$0@77@01 < |pw@52@01|)]
(assert (not (and (<= 0 i$0@77@01) (< i$0@77@01 (Seq_length pw@52@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
  :qid |qp.fvfValDef2|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i$0@77@01) (< i$0@77@01 (Seq_length pw@52@01))))
  (and (<= 0 i$0@77@01) (< i$0@77@01 (Seq_length pw@52@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@45@01 r)) (pTaken@46@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@48@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@48@01  $FVF<val>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
  :qid |qp.fvfValDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$0@77@01 Int)) (!
  (and
    (or (<= 0 i$0@77@01) (not (<= 0 i$0@77@01)))
    (or
      (not (and (<= 0 i$0@77@01) (< i$0@77@01 (Seq_length pw@52@01))))
      (and (<= 0 i$0@77@01) (< i$0@77@01 (Seq_length pw@52@01)))))
  :pattern ((Seq_index pw@52@01 i$0@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(push) ; 6
(assert (not (forall ((i$0@77@01 Int)) (!
  (=>
    (and (<= 0 i$0@77@01) (< i$0@77@01 (Seq_length pw@52@01)))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@77@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@52@01
        i$0@77@01)))))
  :pattern ((Seq_index pw@52@01 i$0@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|))))
(check-sat)
; unsat
(pop) ; 6
; 0.04s
; (get-info :all-statistics)
(assert (forall ((i$0@77@01 Int)) (!
  (=>
    (and (<= 0 i$0@77@01) (< i$0@77@01 (Seq_length pw@52@01)))
    (=
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@77@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@52@01
        i$0@77@01)))))
  :pattern ((Seq_index pw@52@01 i$0@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 6
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@59@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
    (= (loc<Ref> a@21@01 (inv@58@01 r)) r))
  :pattern ((inv@58@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((i@57@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@57@01)
    (and
      (= (inv@58@01 (loc<Ref> a@21@01 i@57@01)) i@57@01)
      (img@59@01 (loc<Ref> a@21@01 i@57@01))))
  :pattern ((loc<Ref> a@21@01 i@57@01))
  :qid |quant-u-18987|)))
(assert (forall ((i@57@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@57@01)
    (not (= (loc<Ref> a@21@01 i@57@01) $Ref.null)))
  :pattern ((loc<Ref> a@21@01 i@57@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
  $Snap.unit))
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
  $Snap.unit))
(assert (forall ((i@60@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@60@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@60@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  :pattern ((loc<Ref> a@21@01 i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@60@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01)
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 i@60@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@60@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@60@01))
  :pattern ((loc<Ref> a@21@01 i@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
  $Snap.unit))
(assert (forall ((i@61@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
    (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@61@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
    (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@61@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
    (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((loc<Ref> a@21@01 i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@61@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 i@61@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@55@01) i@61@01))
  :pattern ((loc<Ref> a@21@01 i@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))
  $Snap.unit))
(assert (= (Seq_length pw@53@01) (- (+ right@23@01 1) left@22@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))
  $Snap.unit))
(assert (forall ((i@62@01 Int)) (!
  (and
    (or (<= 0 i@62@01) (not (<= 0 i@62@01)))
    (=>
      (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01)))
      (and
        (<= 0 i@62@01)
        (< i@62@01 (Seq_length pw@53@01))
        (or
          (<= left@22@01 (Seq_index pw@53@01 i@62@01))
          (not (<= left@22@01 (Seq_index pw@53@01 i@62@01))))))
    (or
      (not (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01))))
      (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01)))))
  :pattern ((Seq_index pw@53@01 i@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(assert (forall ((i@62@01 Int)) (!
  (=>
    (and (<= 0 i@62@01) (< i@62@01 (Seq_length pw@53@01)))
    (and
      (<= left@22@01 (Seq_index pw@53@01 i@62@01))
      (<= (Seq_index pw@53@01 i@62@01) right@23@01)))
  :pattern ((Seq_index pw@53@01 i@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))
  $Snap.unit))
(assert (forall ((i@63@01 Int) (k@64@01 Int)) (!
  (and
    (=>
      (<= 0 i@63@01)
      (and (<= 0 i@63@01) (or (< i@63@01 k@64@01) (not (< i@63@01 k@64@01)))))
    (or (<= 0 i@63@01) (not (<= 0 i@63@01)))
    (=>
      (and
        (<= 0 i@63@01)
        (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))
      (and (<= 0 i@63@01) (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))
    (or
      (not
        (and
          (<= 0 i@63@01)
          (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01)))))
      (and
        (<= 0 i@63@01)
        (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))))
  :pattern ((Seq_index pw@53@01 i@63@01) (Seq_index pw@53@01 k@64@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(assert (forall ((i@63@01 Int) (k@64@01 Int)) (!
  (=>
    (and
      (<= 0 i@63@01)
      (and (< i@63@01 k@64@01) (< k@64@01 (Seq_length pw@53@01))))
    (not (= (Seq_index pw@53@01 i@63@01) (Seq_index pw@53@01 k@64@01))))
  :pattern ((Seq_index pw@53@01 i@63@01) (Seq_index pw@53@01 k@64@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))
  $Snap.unit))
(assert (forall ((i$0@65@01 Int)) (!
  (and
    (or (<= 0 i$0@65@01) (not (<= 0 i$0@65@01)))
    (or
      (not (and (<= 0 i$0@65@01) (< i$0@65@01 (Seq_length pw@53@01))))
      (and (<= 0 i$0@65@01) (< i$0@65@01 (Seq_length pw@53@01)))))
  :pattern ((Seq_index pw@53@01 i$0@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(assert (forall ((i$0@65@01 Int)) (!
  (=>
    (and (<= 0 i$0@65@01) (< i$0@65@01 (Seq_length pw@53@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@65@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@53@01
        i$0@65@01)))))
  :pattern ((Seq_index pw@53@01 i$0@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
(assert (= $t@56@01 ($Snap.combine ($Snap.first $t@56@01) ($Snap.second $t@56@01))))
(assert (= ($Snap.first $t@56@01) $Snap.unit))
(assert (<= left@22@01 j@55@01))
(assert (=
  ($Snap.second $t@56@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@56@01))
    ($Snap.second ($Snap.second $t@56@01)))))
(assert (= ($Snap.first ($Snap.second $t@56@01)) $Snap.unit))
(assert (<= j@55@01 right@23@01))
(assert (=
  ($Snap.second ($Snap.second $t@56@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@56@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@56@01))) $Snap.unit))
(assert (<= left@22@01 storeIndex@54@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@56@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
  $Snap.unit))
(assert (<= storeIndex@54@01 j@55@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 7
; [eval] j < right
(pop) ; 7
(push) ; 7
; [eval] !(j < right)
; [eval] j < right
(pop) ; 7
; Loop head block: Follow loop-internal edges
; [eval] j < right
(push) ; 7
(set-option :timeout 10)
(assert (not (not (< j@55@01 right@23@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< j@55@01 right@23@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; [then-branch: 41 | j@55@01 < right@23@01 | live]
; [else-branch: 41 | !(j@55@01 < right@23@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 41 | j@55@01 < right@23@01]
(assert (< j@55@01 right@23@01))
; [eval] loc(a, j).val < pivotValue
; [eval] loc(a, j)
(push) ; 8
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 j@55@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 j@55@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (<
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 j@55@01))
    pivotValue@43@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (<
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 j@55@01))
  pivotValue@43@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; [then-branch: 42 | Lookup(val, First:(Second:(Second:(Second:(Second:($t@56@01))))), loc[Ref](a@21@01, j@55@01)) < pivotValue@43@01 | live]
; [else-branch: 42 | !(Lookup(val, First:(Second:(Second:(Second:(Second:($t@56@01))))), loc[Ref](a@21@01, j@55@01)) < pivotValue@43@01) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 42 | Lookup(val, First:(Second:(Second:(Second:(Second:($t@56@01))))), loc[Ref](a@21@01, j@55@01)) < pivotValue@43@01]
(assert (<
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 j@55@01))
  pivotValue@43@01))
; [exec]
; swap(a, j, storeIndex)
; [eval] 0 <= i
(push) ; 9
(assert (not (<= 0 j@55@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 j@55@01))
; [eval] i < len(a)
; [eval] len(a)
(push) ; 9
(assert (not (< j@55@01 (len<Int> a@21@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< j@55@01 (len<Int> a@21@01)))
; [eval] 0 <= j
(push) ; 9
(assert (not (<= 0 storeIndex@54@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 storeIndex@54@01))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 9
(assert (not (< storeIndex@54@01 (len<Int> a@21@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< storeIndex@54@01 (len<Int> a@21@01)))
; [eval] loc(a, i)
; Precomputing data for removing quantified permissions
(define-fun pTaken@78@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@21@01 j@55@01))
    ($Perm.min
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
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
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@78@01 r))
    $Perm.No)
  
  :qid |quant-u-18997|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@78@01 r) $Perm.No)
  
  :qid |quant-u-18998|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (= (- $Perm.Write (pTaken@78@01 r)) $Perm.No))
  
  :qid |quant-u-18999|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] i != j
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= j@55@01 storeIndex@54@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= j@55@01 storeIndex@54@01))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | j@55@01 != storeIndex@54@01 | live]
; [else-branch: 43 | j@55@01 == storeIndex@54@01 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 43 | j@55@01 != storeIndex@54@01]
(assert (not (= j@55@01 storeIndex@54@01)))
; [eval] loc(a, j)
; Precomputing data for removing quantified permissions
(define-fun pTaken@79@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    ($Perm.min
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- $Perm.Write (pTaken@78@01 r))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- $Perm.Write (pTaken@78@01 r))
        $Perm.No)
      (pTaken@79@01 r))
    $Perm.No)
  
  :qid |quant-u-19001|))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@79@01 r) $Perm.No)
  
  :qid |quant-u-19002|))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (= (- $Perm.Write (pTaken@79@01 r)) $Perm.No))
  
  :qid |quant-u-19003|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 ($Snap.combine ($Snap.first $t@80@01) ($Snap.second $t@80@01))))
; [eval] loc(a, i)
(declare-const sm@81@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@81@01  $FVF<val>) (loc<Ref> a@21@01 j@55@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@80@01))))
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 j@55@01) (loc<Ref> a@21@01 j@55@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 j@55@01) (loc<Ref> a@21@01 j@55@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 j@55@01) (loc<Ref> a@21@01 j@55@01))
  (not (= (loc<Ref> a@21@01 j@55@01) $Ref.null))))
(assert (=
  ($Snap.second $t@80@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@80@01))
    ($Snap.second ($Snap.second $t@80@01)))))
; [eval] i != j
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= j@55@01 storeIndex@54@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | j@55@01 != storeIndex@54@01 | live]
; [else-branch: 44 | j@55@01 == storeIndex@54@01 | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 44 | j@55@01 != storeIndex@54@01]
; [eval] loc(a, j)
(declare-const sm@82@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@82@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@80@01)))))
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
    (= (loc<Ref> a@21@01 j@55@01) (loc<Ref> a@21@01 j@55@01)))
  (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 j@55@01)))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
  (not (= (loc<Ref> a@21@01 storeIndex@54@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@80@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@80@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@80@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
(declare-const sm@83@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :qid |qp.fvfValDef6|)))
(declare-const pm@84@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@84@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@59@01 r)
            (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
          (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r))
          $Perm.No)
        (ite (= r (loc<Ref> a@21@01 j@55@01)) $Perm.Write $Perm.No))
      (ite (= r (loc<Ref> a@21@01 storeIndex@54@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_val (as pm@84@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
(set-option :timeout 0)
(push) ; 11
(assert (not (< $Perm.No ($FVF.perm_val (as pm@84@01  $FPM) (loc<Ref> a@21@01 j@55@01)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 11
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 j@55@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 storeIndex@54@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@80@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@55@01))
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
    :qid |qp.fvfValDef6|))))
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))
        (-
          (- $Perm.Write (pTaken@78@01 (loc<Ref> a@21@01 storeIndex@54@01)))
          (pTaken@79@01 (loc<Ref> a@21@01 storeIndex@54@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 j@55@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(push) ; 11
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 j@55@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 j@55@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 j@55@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; pw := pw[storeIndex - left := pw[j - left]][j - left :=
;   pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[j - left]][j - left := pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[j - left]]
; [eval] storeIndex - left
; [eval] pw[j - left]
; [eval] j - left
(set-option :timeout 0)
(push) ; 11
(assert (not (>= (- j@55@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- j@55@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (>= (- storeIndex@54@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- storeIndex@54@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] j - left
; [eval] pw[storeIndex - left]
; [eval] storeIndex - left
(push) ; 11
(assert (not (>= (- storeIndex@54@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- storeIndex@54@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (>= (- j@55@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  (- j@55@01 left@22@01)
  (Seq_length
    (Seq_append
      (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
      (Seq_append
        (Seq_singleton (Seq_index pw@53@01 (- j@55@01 left@22@01)))
        (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const pw@85@01 Seq<Int>)
(assert (=
  pw@85@01
  (Seq_append
    (Seq_take
      (Seq_append
        (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
        (Seq_append
          (Seq_singleton (Seq_index pw@53@01 (- j@55@01 left@22@01)))
          (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))
      (- j@55@01 left@22@01))
    (Seq_append
      (Seq_singleton (Seq_index pw@53@01 (- storeIndex@54@01 left@22@01)))
      (Seq_drop
        (Seq_append
          (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
          (Seq_append
            (Seq_singleton (Seq_index pw@53@01 (- j@55@01 left@22@01)))
            (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))
        (+ (- j@55@01 left@22@01) 1))))))
; [exec]
; storeIndex := storeIndex + 1
; [eval] storeIndex + 1
(declare-const storeIndex@86@01 Int)
(assert (= storeIndex@86@01 (+ storeIndex@54@01 1)))
; [exec]
; j := j + 1
; [eval] j + 1
(declare-const j@87@01 Int)
(assert (= j@87@01 (+ j@55@01 1)))
; Loop head block: Re-establish invariant
; [eval] left <= j
(push) ; 11
(assert (not (<= left@22@01 j@87@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 j@87@01))
; [eval] j <= right
(push) ; 11
(assert (not (<= j@87@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= j@87@01 right@23@01))
; [eval] left <= storeIndex
(push) ; 11
(assert (not (<= left@22@01 storeIndex@86@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 storeIndex@86@01))
; [eval] storeIndex <= j
(push) ; 11
(assert (not (<= storeIndex@86@01 j@87@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= storeIndex@86@01 j@87@01))
(declare-const i@88@01 Int)
(push) ; 11
; [eval] (i in [left..right + 1))
; [eval] [left..right + 1)
; [eval] right + 1
(assert (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@88@01))
; [eval] loc(a, i)
(pop) ; 11
(declare-fun inv@89@01 ($Ref) Int)
(declare-fun img@90@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((i1@88@01 Int) (i2@88@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i1@88@01)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i2@88@01)
      (= (loc<Ref> a@21@01 i1@88@01) (loc<Ref> a@21@01 i2@88@01)))
    (= i1@88@01 i2@88@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@88@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@88@01)
    (and
      (= (inv@89@01 (loc<Ref> a@21@01 i@88@01)) i@88@01)
      (img@90@01 (loc<Ref> a@21@01 i@88@01))))
  :pattern ((loc<Ref> a@21@01 i@88@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@90@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@89@01 r)))
    (= (loc<Ref> a@21@01 (inv@89@01 r)) r))
  :pattern ((inv@89@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@91@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@89@01 r))
      (img@90@01 r)
      (= r (loc<Ref> a@21@01 (inv@89@01 r))))
    ($Perm.min
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@92@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@89@01 r))
      (img@90@01 r)
      (= r (loc<Ref> a@21@01 (inv@89@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 j@55@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@91@01 r)))
    $Perm.No))
(define-fun pTaken@93@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@89@01 r))
      (img@90@01 r)
      (= r (loc<Ref> a@21@01 (inv@89@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 storeIndex@54@01)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@91@01 r)) (pTaken@92@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r))
        $Perm.No)
      (pTaken@91@01 r))
    $Perm.No)
  
  :qid |quant-u-19006|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@89@01 r))
      (img@90@01 r)
      (= r (loc<Ref> a@21@01 (inv@89@01 r))))
    (= (- $Perm.Write (pTaken@91@01 r)) $Perm.No))
  
  :qid |quant-u-19007|))))
(check-sat)
; unknown
(pop) ; 11
; 0.03s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 j@55@01) (loc<Ref> a@21@01 j@55@01))
      $Perm.Write
      $Perm.No)
    (pTaken@92@01 (loc<Ref> a@21@01 j@55@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@89@01 r))
      (img@90@01 r)
      (= r (loc<Ref> a@21@01 (inv@89@01 r))))
    (= (- (- $Perm.Write (pTaken@91@01 r)) (pTaken@92@01 r)) $Perm.No))
  
  :qid |quant-u-19009|))))
(check-sat)
; unknown
(pop) ; 11
; 0.46s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)
    (pTaken@93@01 (loc<Ref> a@21@01 storeIndex@54@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@89@01 r))
      (img@90@01 r)
      (= r (loc<Ref> a@21@01 (inv@89@01 r))))
    (=
      (- (- (- $Perm.Write (pTaken@91@01 r)) (pTaken@92@01 r)) (pTaken@93@01 r))
      $Perm.No))
  
  :qid |quant-u-19011|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, right).val == pivotValue
; [eval] loc(a, right)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@55@01))
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
    :qid |qp.fvfValDef6|))))
(set-option :timeout 0)
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 right@23@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 right@23@01))))
        (-
          (- $Perm.Write (pTaken@78@01 (loc<Ref> a@21@01 right@23@01)))
          (pTaken@79@01 (loc<Ref> a@21@01 right@23@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 j@55@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (=
  ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01))
; [eval] (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
(declare-const i@94@01 Int)
(push) ; 11
; [eval] (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue
; [eval] (i in [left..storeIndex))
; [eval] [left..storeIndex)
(push) ; 12
; [then-branch: 45 | i@94@01 in [left@22@01..storeIndex@86@01] | live]
; [else-branch: 45 | !(i@94@01 in [left@22@01..storeIndex@86@01]) | live]
(push) ; 13
; [then-branch: 45 | i@94@01 in [left@22@01..storeIndex@86@01]]
(assert (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
; [eval] loc(a, i).val < pivotValue
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@55@01))
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
    :qid |qp.fvfValDef6|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 i@94@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 i@94@01))))
        (-
          (- $Perm.Write (pTaken@78@01 (loc<Ref> a@21@01 i@94@01)))
          (pTaken@79@01 (loc<Ref> a@21@01 i@94@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 i@94@01) (loc<Ref> a@21@01 j@55@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 i@94@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 45 | !(i@94@01 in [left@22@01..storeIndex@86@01])]
(assert (not (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :qid |qp.fvfValDef6|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
  (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :qid |qp.fvfValDef6|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@94@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@86@01)
    i@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@94@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@86@01)
    i@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@94@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
  :pattern ((loc<Ref> a@21@01 i@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(push) ; 11
(assert (not (forall ((i@94@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01)
    (<
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 i@94@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@86@01)
    i@94@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@86@01)
    i@94@01))
  :pattern ((loc<Ref> a@21@01 i@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.04s
; (get-info :all-statistics)
(assert (forall ((i@94@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01)
    (<
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 i@94@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@86@01) i@94@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@86@01)
    i@94@01))
  :pattern ((loc<Ref> a@21@01 i@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
; [eval] (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
(declare-const i@95@01 Int)
(push) ; 11
; [eval] (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val
; [eval] (i in [storeIndex..j))
; [eval] [storeIndex..j)
(push) ; 12
; [then-branch: 46 | i@95@01 in [storeIndex@86@01..j@87@01] | live]
; [else-branch: 46 | !(i@95@01 in [storeIndex@86@01..j@87@01]) | live]
(push) ; 13
; [then-branch: 46 | i@95@01 in [storeIndex@86@01..j@87@01]]
(assert (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
; [eval] pivotValue <= loc(a, i).val
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@55@01))
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
    :qid |qp.fvfValDef6|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 i@95@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 i@95@01))))
        (-
          (- $Perm.Write (pTaken@78@01 (loc<Ref> a@21@01 i@95@01)))
          (pTaken@79@01 (loc<Ref> a@21@01 i@95@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 i@95@01) (loc<Ref> a@21@01 j@55@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 i@95@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 46 | !(i@95@01 in [storeIndex@86@01..j@87@01])]
(assert (not (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :qid |qp.fvfValDef6|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :qid |qp.fvfValDef6|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@95@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
    (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :pattern ((Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@95@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
    (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@95@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
    (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :pattern ((loc<Ref> a@21@01 i@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(push) ; 11
(assert (not (forall ((i@95@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 i@95@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :pattern ((loc<Ref> a@21@01 i@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|))))
(check-sat)
; unsat
(pop) ; 11
; 0.07s
; (get-info :all-statistics)
(assert (forall ((i@95@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 i@95@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@86@01 j@87@01) i@95@01))
  :pattern ((loc<Ref> a@21@01 i@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(push) ; 11
(assert (not (= (Seq_length pw@85@01) (- (+ right@23@01 1) left@22@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (= (Seq_length pw@85@01) (- (+ right@23@01 1) left@22@01)))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@96@01 Int)
(push) ; 11
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 12
; [then-branch: 47 | !(0 <= i@96@01) | live]
; [else-branch: 47 | 0 <= i@96@01 | live]
(push) ; 13
; [then-branch: 47 | !(0 <= i@96@01)]
(assert (not (<= 0 i@96@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 47 | 0 <= i@96@01]
(assert (<= 0 i@96@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@96@01) (not (<= 0 i@96@01))))
(push) ; 12
; [then-branch: 48 | 0 <= i@96@01 && i@96@01 < |pw@85@01| | live]
; [else-branch: 48 | !(0 <= i@96@01 && i@96@01 < |pw@85@01|) | live]
(push) ; 13
; [then-branch: 48 | 0 <= i@96@01 && i@96@01 < |pw@85@01|]
(assert (and (<= 0 i@96@01) (< i@96@01 (Seq_length pw@85@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 14
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
; [then-branch: 49 | !(left@22@01 <= pw@85@01[i@96@01]) | live]
; [else-branch: 49 | left@22@01 <= pw@85@01[i@96@01] | live]
(push) ; 15
; [then-branch: 49 | !(left@22@01 <= pw@85@01[i@96@01])]
(assert (not (<= left@22@01 (Seq_index pw@85@01 i@96@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 49 | left@22@01 <= pw@85@01[i@96@01]]
(assert (<= left@22@01 (Seq_index pw@85@01 i@96@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 16
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@85@01 i@96@01))
  (not (<= left@22@01 (Seq_index pw@85@01 i@96@01)))))
(pop) ; 13
(push) ; 13
; [else-branch: 48 | !(0 <= i@96@01 && i@96@01 < |pw@85@01|)]
(assert (not (and (<= 0 i@96@01) (< i@96@01 (Seq_length pw@85@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and (<= 0 i@96@01) (< i@96@01 (Seq_length pw@85@01)))
  (and
    (<= 0 i@96@01)
    (< i@96@01 (Seq_length pw@85@01))
    (or
      (<= left@22@01 (Seq_index pw@85@01 i@96@01))
      (not (<= left@22@01 (Seq_index pw@85@01 i@96@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@96@01) (< i@96@01 (Seq_length pw@85@01))))
  (and (<= 0 i@96@01) (< i@96@01 (Seq_length pw@85@01)))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@96@01 Int)) (!
  (and
    (or (<= 0 i@96@01) (not (<= 0 i@96@01)))
    (=>
      (and (<= 0 i@96@01) (< i@96@01 (Seq_length pw@85@01)))
      (and
        (<= 0 i@96@01)
        (< i@96@01 (Seq_length pw@85@01))
        (or
          (<= left@22@01 (Seq_index pw@85@01 i@96@01))
          (not (<= left@22@01 (Seq_index pw@85@01 i@96@01))))))
    (or
      (not (and (<= 0 i@96@01) (< i@96@01 (Seq_length pw@85@01))))
      (and (<= 0 i@96@01) (< i@96@01 (Seq_length pw@85@01)))))
  :pattern ((Seq_index pw@85@01 i@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(push) ; 11
(assert (not (forall ((i@96@01 Int)) (!
  (=>
    (and (<= 0 i@96@01) (< i@96@01 (Seq_length pw@85@01)))
    (and
      (<= left@22@01 (Seq_index pw@85@01 i@96@01))
      (<= (Seq_index pw@85@01 i@96@01) right@23@01)))
  :pattern ((Seq_index pw@85@01 i@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.50s
; (get-info :all-statistics)
(assert (forall ((i@96@01 Int)) (!
  (=>
    (and (<= 0 i@96@01) (< i@96@01 (Seq_length pw@85@01)))
    (and
      (<= left@22@01 (Seq_index pw@85@01 i@96@01))
      (<= (Seq_index pw@85@01 i@96@01) right@23@01)))
  :pattern ((Seq_index pw@85@01 i@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
; [eval] (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
(declare-const i@97@01 Int)
(declare-const k@98@01 Int)
(push) ; 11
; [eval] 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]
; [eval] 0 <= i && (i < k && k < |pw|)
; [eval] 0 <= i
(push) ; 12
; [then-branch: 50 | !(0 <= i@97@01) | live]
; [else-branch: 50 | 0 <= i@97@01 | live]
(push) ; 13
; [then-branch: 50 | !(0 <= i@97@01)]
(assert (not (<= 0 i@97@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 50 | 0 <= i@97@01]
(assert (<= 0 i@97@01))
; [eval] i < k
(push) ; 14
; [then-branch: 51 | !(i@97@01 < k@98@01) | live]
; [else-branch: 51 | i@97@01 < k@98@01 | live]
(push) ; 15
; [then-branch: 51 | !(i@97@01 < k@98@01)]
(assert (not (< i@97@01 k@98@01)))
(pop) ; 15
(push) ; 15
; [else-branch: 51 | i@97@01 < k@98@01]
(assert (< i@97@01 k@98@01))
; [eval] k < |pw|
; [eval] |pw|
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (< i@97@01 k@98@01) (not (< i@97@01 k@98@01))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@97@01)
  (and (<= 0 i@97@01) (or (< i@97@01 k@98@01) (not (< i@97@01 k@98@01))))))
(assert (or (<= 0 i@97@01) (not (<= 0 i@97@01))))
(push) ; 12
; [then-branch: 52 | 0 <= i@97@01 && i@97@01 < k@98@01 && k@98@01 < |pw@85@01| | live]
; [else-branch: 52 | !(0 <= i@97@01 && i@97@01 < k@98@01 && k@98@01 < |pw@85@01|) | live]
(push) ; 13
; [then-branch: 52 | 0 <= i@97@01 && i@97@01 < k@98@01 && k@98@01 < |pw@85@01|]
(assert (and (<= 0 i@97@01) (and (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01)))))
; [eval] pw[i] != pw[k]
; [eval] pw[i]
(push) ; 14
(assert (not (>= i@97@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (< i@97@01 (Seq_length pw@85@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] pw[k]
(push) ; 14
(assert (not (>= k@98@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 52 | !(0 <= i@97@01 && i@97@01 < k@98@01 && k@98@01 < |pw@85@01|)]
(assert (not
  (and
    (<= 0 i@97@01)
    (and (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01))))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@97@01)
    (and (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01))))
  (and (<= 0 i@97@01) (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@97@01)
      (and (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01)))))
  (and
    (<= 0 i@97@01)
    (and (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01))))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@97@01 Int) (k@98@01 Int)) (!
  (and
    (=>
      (<= 0 i@97@01)
      (and (<= 0 i@97@01) (or (< i@97@01 k@98@01) (not (< i@97@01 k@98@01)))))
    (or (<= 0 i@97@01) (not (<= 0 i@97@01)))
    (=>
      (and
        (<= 0 i@97@01)
        (and (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01))))
      (and (<= 0 i@97@01) (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01))))
    (or
      (not
        (and
          (<= 0 i@97@01)
          (and (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01)))))
      (and
        (<= 0 i@97@01)
        (and (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01))))))
  :pattern ((Seq_index pw@85@01 i@97@01) (Seq_index pw@85@01 k@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(push) ; 11
(assert (not (forall ((i@97@01 Int) (k@98@01 Int)) (!
  (=>
    (and
      (<= 0 i@97@01)
      (and (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01))))
    (not (= (Seq_index pw@85@01 i@97@01) (Seq_index pw@85@01 k@98@01))))
  :pattern ((Seq_index pw@85@01 i@97@01) (Seq_index pw@85@01 k@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.85s
; (get-info :all-statistics)
(assert (forall ((i@97@01 Int) (k@98@01 Int)) (!
  (=>
    (and
      (<= 0 i@97@01)
      (and (< i@97@01 k@98@01) (< k@98@01 (Seq_length pw@85@01))))
    (not (= (Seq_index pw@85@01 i@97@01) (Seq_index pw@85@01 k@98@01))))
  :pattern ((Seq_index pw@85@01 i@97@01) (Seq_index pw@85@01 k@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
; [eval] (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
(declare-const i$0@99@01 Int)
(push) ; 11
; [eval] 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] 0 <= i$0 && i$0 < |pw|
; [eval] 0 <= i$0
(push) ; 12
; [then-branch: 53 | !(0 <= i$0@99@01) | live]
; [else-branch: 53 | 0 <= i$0@99@01 | live]
(push) ; 13
; [then-branch: 53 | !(0 <= i$0@99@01)]
(assert (not (<= 0 i$0@99@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 53 | 0 <= i$0@99@01]
(assert (<= 0 i$0@99@01))
; [eval] i$0 < |pw|
; [eval] |pw|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i$0@99@01) (not (<= 0 i$0@99@01))))
(push) ; 12
; [then-branch: 54 | 0 <= i$0@99@01 && i$0@99@01 < |pw@85@01| | live]
; [else-branch: 54 | !(0 <= i$0@99@01 && i$0@99@01 < |pw@85@01|) | live]
(push) ; 13
; [then-branch: 54 | 0 <= i$0@99@01 && i$0@99@01 < |pw@85@01|]
(assert (and (<= 0 i$0@99@01) (< i$0@99@01 (Seq_length pw@85@01))))
; [eval] loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] loc(a, left + i$0)
; [eval] left + i$0
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@55@01))
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
    :qid |qp.fvfValDef6|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@99@01)))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@99@01)))))
        (-
          (-
            $Perm.Write
            (pTaken@78@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@99@01))))
          (pTaken@79@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@99@01))))
        $Perm.No)
      (ite
        (=
          (loc<Ref> a@21@01 (+ left@22@01 i$0@99@01))
          (loc<Ref> a@21@01 j@55@01))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (loc<Ref> a@21@01 (+ left@22@01 i$0@99@01))
        (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i$0]).val)
; [eval] loc(a, pw[i$0])
; [eval] pw[i$0]
(push) ; 14
(assert (not (>= i$0@99@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@85@01 i$0@99@01)))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@85@01 i$0@99@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@85@01 i$0@99@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 54 | !(0 <= i$0@99@01 && i$0@99@01 < |pw@85@01|)]
(assert (not (and (<= 0 i$0@99@01) (< i$0@99@01 (Seq_length pw@85@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :qid |qp.fvfValDef6|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i$0@99@01) (< i$0@99@01 (Seq_length pw@85@01))))
  (and (<= 0 i$0@99@01) (< i$0@99@01 (Seq_length pw@85@01)))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@81@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@81@01  $FVF<val>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@83@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :qid |qp.fvfValDef6|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$0@99@01 Int)) (!
  (and
    (or (<= 0 i$0@99@01) (not (<= 0 i$0@99@01)))
    (or
      (not (and (<= 0 i$0@99@01) (< i$0@99@01 (Seq_length pw@85@01))))
      (and (<= 0 i$0@99@01) (< i$0@99@01 (Seq_length pw@85@01)))))
  :pattern ((Seq_index pw@85@01 i$0@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(push) ; 11
(assert (not (forall ((i$0@99@01 Int)) (!
  (=>
    (and (<= 0 i$0@99@01) (< i$0@99@01 (Seq_length pw@85@01)))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@99@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@85@01
        i$0@99@01)))))
  :pattern ((Seq_index pw@85@01 i$0@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|))))
(check-sat)
; unsat
(pop) ; 11
; 0.80s
; (get-info :all-statistics)
(assert (forall ((i$0@99@01 Int)) (!
  (=>
    (and (<= 0 i$0@99@01) (< i$0@99@01 (Seq_length pw@85@01)))
    (=
      ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@99@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@85@01
        i$0@99@01)))))
  :pattern ((Seq_index pw@85@01 i$0@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 43 | j@55@01 == storeIndex@54@01]
(assert (= j@55@01 storeIndex@54@01))
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 ($Snap.combine ($Snap.first $t@100@01) ($Snap.second $t@100@01))))
; [eval] loc(a, i)
(declare-const sm@101@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@101@01  $FVF<val>) (loc<Ref> a@21@01 j@55@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@100@01))))
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 j@55@01) (loc<Ref> a@21@01 j@55@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 j@55@01) (loc<Ref> a@21@01 j@55@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 j@55@01) (loc<Ref> a@21@01 j@55@01))
  (not (= (loc<Ref> a@21@01 j@55@01) $Ref.null))))
(assert (=
  ($Snap.second $t@100@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@100@01))
    ($Snap.second ($Snap.second $t@100@01)))))
; [eval] i != j
; [then-branch: 55 | j@55@01 != storeIndex@54@01 | dead]
; [else-branch: 55 | j@55@01 == storeIndex@54@01 | live]
(push) ; 10
; [else-branch: 55 | j@55@01 == storeIndex@54@01]
(assert (= ($Snap.first ($Snap.second $t@100@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@100@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@100@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@100@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
(declare-const sm@102@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
  :qid |qp.fvfValDef9|)))
(declare-const pm@103@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@103@01  $FPM) r)
    (+
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- $Perm.Write (pTaken@78@01 r))
        $Perm.No)
      (ite (= r (loc<Ref> a@21@01 j@55@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_val (as pm@103@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
(push) ; 11
(assert (not (< $Perm.No ($FVF.perm_val (as pm@103@01  $FPM) (loc<Ref> a@21@01 j@55@01)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 11
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@102@01  $FVF<val>) (loc<Ref> a@21@01 j@55@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 storeIndex@54@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@100@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@55@01))
      (=
        ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
    :qid |qp.fvfValDef9|))))
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))
      (- $Perm.Write (pTaken@78@01 (loc<Ref> a@21@01 storeIndex@54@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 j@55@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(push) ; 11
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 j@55@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 j@55@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@102@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 j@55@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; pw := pw[storeIndex - left := pw[j - left]][j - left :=
;   pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[j - left]][j - left := pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[j - left]]
; [eval] storeIndex - left
; [eval] pw[j - left]
; [eval] j - left
(set-option :timeout 0)
(push) ; 11
(assert (not (>= (- j@55@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- j@55@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (>= (- storeIndex@54@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- storeIndex@54@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] j - left
; [eval] pw[storeIndex - left]
; [eval] storeIndex - left
(push) ; 11
(assert (not (>= (- storeIndex@54@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- storeIndex@54@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (>= (- j@55@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  (- j@55@01 left@22@01)
  (Seq_length
    (Seq_append
      (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
      (Seq_append
        (Seq_singleton (Seq_index pw@53@01 (- j@55@01 left@22@01)))
        (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const pw@104@01 Seq<Int>)
(assert (=
  pw@104@01
  (Seq_append
    (Seq_take
      (Seq_append
        (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
        (Seq_append
          (Seq_singleton (Seq_index pw@53@01 (- j@55@01 left@22@01)))
          (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))
      (- j@55@01 left@22@01))
    (Seq_append
      (Seq_singleton (Seq_index pw@53@01 (- storeIndex@54@01 left@22@01)))
      (Seq_drop
        (Seq_append
          (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
          (Seq_append
            (Seq_singleton (Seq_index pw@53@01 (- j@55@01 left@22@01)))
            (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))
        (+ (- j@55@01 left@22@01) 1))))))
; [exec]
; storeIndex := storeIndex + 1
; [eval] storeIndex + 1
(declare-const storeIndex@105@01 Int)
(assert (= storeIndex@105@01 (+ storeIndex@54@01 1)))
; [exec]
; j := j + 1
; [eval] j + 1
(declare-const j@106@01 Int)
(assert (= j@106@01 (+ j@55@01 1)))
; Loop head block: Re-establish invariant
; [eval] left <= j
(push) ; 11
(assert (not (<= left@22@01 j@106@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 j@106@01))
; [eval] j <= right
(push) ; 11
(assert (not (<= j@106@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= j@106@01 right@23@01))
; [eval] left <= storeIndex
(push) ; 11
(assert (not (<= left@22@01 storeIndex@105@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 storeIndex@105@01))
; [eval] storeIndex <= j
(push) ; 11
(assert (not (<= storeIndex@105@01 j@106@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= storeIndex@105@01 j@106@01))
(declare-const i@107@01 Int)
(push) ; 11
; [eval] (i in [left..right + 1))
; [eval] [left..right + 1)
; [eval] right + 1
(assert (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@107@01))
; [eval] loc(a, i)
(pop) ; 11
(declare-fun inv@108@01 ($Ref) Int)
(declare-fun img@109@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((i1@107@01 Int) (i2@107@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i1@107@01)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i2@107@01)
      (= (loc<Ref> a@21@01 i1@107@01) (loc<Ref> a@21@01 i2@107@01)))
    (= i1@107@01 i2@107@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@107@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@107@01)
    (and
      (= (inv@108@01 (loc<Ref> a@21@01 i@107@01)) i@107@01)
      (img@109@01 (loc<Ref> a@21@01 i@107@01))))
  :pattern ((loc<Ref> a@21@01 i@107@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@109@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@108@01 r)))
    (= (loc<Ref> a@21@01 (inv@108@01 r)) r))
  :pattern ((inv@108@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@110@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@108@01 r))
      (img@109@01 r)
      (= r (loc<Ref> a@21@01 (inv@108@01 r))))
    ($Perm.min
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- $Perm.Write (pTaken@78@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@111@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@108@01 r))
      (img@109@01 r)
      (= r (loc<Ref> a@21@01 (inv@108@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 j@55@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@110@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- $Perm.Write (pTaken@78@01 r))
        $Perm.No)
      (pTaken@110@01 r))
    $Perm.No)
  
  :qid |quant-u-19014|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@108@01 r))
      (img@109@01 r)
      (= r (loc<Ref> a@21@01 (inv@108@01 r))))
    (= (- $Perm.Write (pTaken@110@01 r)) $Perm.No))
  
  :qid |quant-u-19015|))))
(check-sat)
; unknown
(pop) ; 11
; 0.03s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 j@55@01) (loc<Ref> a@21@01 j@55@01))
      $Perm.Write
      $Perm.No)
    (pTaken@111@01 (loc<Ref> a@21@01 j@55@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@108@01 r))
      (img@109@01 r)
      (= r (loc<Ref> a@21@01 (inv@108@01 r))))
    (= (- (- $Perm.Write (pTaken@110@01 r)) (pTaken@111@01 r)) $Perm.No))
  
  :qid |quant-u-19017|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, right).val == pivotValue
; [eval] loc(a, right)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@55@01))
      (=
        ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
    :qid |qp.fvfValDef9|))))
(set-option :timeout 0)
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 right@23@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 right@23@01))))
      (- $Perm.Write (pTaken@78@01 (loc<Ref> a@21@01 right@23@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 j@55@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (=
  ($FVF.lookup_val (as sm@102@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@102@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01))
; [eval] (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
(declare-const i@112@01 Int)
(push) ; 11
; [eval] (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue
; [eval] (i in [left..storeIndex))
; [eval] [left..storeIndex)
(push) ; 12
; [then-branch: 56 | i@112@01 in [left@22@01..storeIndex@105@01] | live]
; [else-branch: 56 | !(i@112@01 in [left@22@01..storeIndex@105@01]) | live]
(push) ; 13
; [then-branch: 56 | i@112@01 in [left@22@01..storeIndex@105@01]]
(assert (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
; [eval] loc(a, i).val < pivotValue
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@55@01))
      (=
        ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
    :qid |qp.fvfValDef9|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 i@112@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 i@112@01))))
      (- $Perm.Write (pTaken@78@01 (loc<Ref> a@21@01 i@112@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 i@112@01) (loc<Ref> a@21@01 j@55@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 56 | !(i@112@01 in [left@22@01..storeIndex@105@01])]
(assert (not (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
  :qid |qp.fvfValDef9|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
  (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
  :qid |qp.fvfValDef9|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@112@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@105@01)
    i@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@112@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@105@01)
    i@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@112@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
  :pattern ((loc<Ref> a@21@01 i@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(push) ; 11
(assert (not (forall ((i@112@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01)
    (<
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) (loc<Ref> a@21@01 i@112@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@105@01)
    i@112@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@105@01)
    i@112@01))
  :pattern ((loc<Ref> a@21@01 i@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.03s
; (get-info :all-statistics)
(assert (forall ((i@112@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01)
    (<
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) (loc<Ref> a@21@01 i@112@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@105@01) i@112@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@105@01)
    i@112@01))
  :pattern ((loc<Ref> a@21@01 i@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
; [eval] (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
(declare-const i@113@01 Int)
(push) ; 11
; [eval] (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val
; [eval] (i in [storeIndex..j))
; [eval] [storeIndex..j)
(push) ; 12
; [then-branch: 57 | i@113@01 in [storeIndex@105@01..j@106@01] | live]
; [else-branch: 57 | !(i@113@01 in [storeIndex@105@01..j@106@01]) | live]
(push) ; 13
; [then-branch: 57 | i@113@01 in [storeIndex@105@01..j@106@01]]
(assert (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
; [eval] pivotValue <= loc(a, i).val
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@55@01))
      (=
        ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
    :qid |qp.fvfValDef9|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 i@113@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 i@113@01))))
      (- $Perm.Write (pTaken@78@01 (loc<Ref> a@21@01 i@113@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 i@113@01) (loc<Ref> a@21@01 j@55@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 57 | !(i@113@01 in [storeIndex@105@01..j@106@01])]
(assert (not (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
  :qid |qp.fvfValDef9|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
  (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
  :qid |qp.fvfValDef9|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@113@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
    (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
  :pattern ((Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@105@01 j@106@01)
    i@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@113@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
    (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@105@01 j@106@01)
    i@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@113@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
    (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
  :pattern ((loc<Ref> a@21@01 i@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(push) ; 11
(assert (not (forall ((i@113@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) (loc<Ref> a@21@01 i@113@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@105@01 j@106@01)
    i@113@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@105@01 j@106@01)
    i@113@01))
  :pattern ((loc<Ref> a@21@01 i@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@113@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) (loc<Ref> a@21@01 i@113@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@105@01 j@106@01) i@113@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@105@01 j@106@01)
    i@113@01))
  :pattern ((loc<Ref> a@21@01 i@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(push) ; 11
(assert (not (= (Seq_length pw@104@01) (- (+ right@23@01 1) left@22@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (= (Seq_length pw@104@01) (- (+ right@23@01 1) left@22@01)))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@114@01 Int)
(push) ; 11
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 12
; [then-branch: 58 | !(0 <= i@114@01) | live]
; [else-branch: 58 | 0 <= i@114@01 | live]
(push) ; 13
; [then-branch: 58 | !(0 <= i@114@01)]
(assert (not (<= 0 i@114@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 58 | 0 <= i@114@01]
(assert (<= 0 i@114@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@114@01) (not (<= 0 i@114@01))))
(push) ; 12
; [then-branch: 59 | 0 <= i@114@01 && i@114@01 < |pw@104@01| | live]
; [else-branch: 59 | !(0 <= i@114@01 && i@114@01 < |pw@104@01|) | live]
(push) ; 13
; [then-branch: 59 | 0 <= i@114@01 && i@114@01 < |pw@104@01|]
(assert (and (<= 0 i@114@01) (< i@114@01 (Seq_length pw@104@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 14
(assert (not (>= i@114@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
; [then-branch: 60 | !(left@22@01 <= pw@104@01[i@114@01]) | live]
; [else-branch: 60 | left@22@01 <= pw@104@01[i@114@01] | live]
(push) ; 15
; [then-branch: 60 | !(left@22@01 <= pw@104@01[i@114@01])]
(assert (not (<= left@22@01 (Seq_index pw@104@01 i@114@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 60 | left@22@01 <= pw@104@01[i@114@01]]
(assert (<= left@22@01 (Seq_index pw@104@01 i@114@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 16
(assert (not (>= i@114@01 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@104@01 i@114@01))
  (not (<= left@22@01 (Seq_index pw@104@01 i@114@01)))))
(pop) ; 13
(push) ; 13
; [else-branch: 59 | !(0 <= i@114@01 && i@114@01 < |pw@104@01|)]
(assert (not (and (<= 0 i@114@01) (< i@114@01 (Seq_length pw@104@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and (<= 0 i@114@01) (< i@114@01 (Seq_length pw@104@01)))
  (and
    (<= 0 i@114@01)
    (< i@114@01 (Seq_length pw@104@01))
    (or
      (<= left@22@01 (Seq_index pw@104@01 i@114@01))
      (not (<= left@22@01 (Seq_index pw@104@01 i@114@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@114@01) (< i@114@01 (Seq_length pw@104@01))))
  (and (<= 0 i@114@01) (< i@114@01 (Seq_length pw@104@01)))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@114@01 Int)) (!
  (and
    (or (<= 0 i@114@01) (not (<= 0 i@114@01)))
    (=>
      (and (<= 0 i@114@01) (< i@114@01 (Seq_length pw@104@01)))
      (and
        (<= 0 i@114@01)
        (< i@114@01 (Seq_length pw@104@01))
        (or
          (<= left@22@01 (Seq_index pw@104@01 i@114@01))
          (not (<= left@22@01 (Seq_index pw@104@01 i@114@01))))))
    (or
      (not (and (<= 0 i@114@01) (< i@114@01 (Seq_length pw@104@01))))
      (and (<= 0 i@114@01) (< i@114@01 (Seq_length pw@104@01)))))
  :pattern ((Seq_index pw@104@01 i@114@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(push) ; 11
(assert (not (forall ((i@114@01 Int)) (!
  (=>
    (and (<= 0 i@114@01) (< i@114@01 (Seq_length pw@104@01)))
    (and
      (<= left@22@01 (Seq_index pw@104@01 i@114@01))
      (<= (Seq_index pw@104@01 i@114@01) right@23@01)))
  :pattern ((Seq_index pw@104@01 i@114@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.16s
; (get-info :all-statistics)
(assert (forall ((i@114@01 Int)) (!
  (=>
    (and (<= 0 i@114@01) (< i@114@01 (Seq_length pw@104@01)))
    (and
      (<= left@22@01 (Seq_index pw@104@01 i@114@01))
      (<= (Seq_index pw@104@01 i@114@01) right@23@01)))
  :pattern ((Seq_index pw@104@01 i@114@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
; [eval] (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
(declare-const i@115@01 Int)
(declare-const k@116@01 Int)
(push) ; 11
; [eval] 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]
; [eval] 0 <= i && (i < k && k < |pw|)
; [eval] 0 <= i
(push) ; 12
; [then-branch: 61 | !(0 <= i@115@01) | live]
; [else-branch: 61 | 0 <= i@115@01 | live]
(push) ; 13
; [then-branch: 61 | !(0 <= i@115@01)]
(assert (not (<= 0 i@115@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 61 | 0 <= i@115@01]
(assert (<= 0 i@115@01))
; [eval] i < k
(push) ; 14
; [then-branch: 62 | !(i@115@01 < k@116@01) | live]
; [else-branch: 62 | i@115@01 < k@116@01 | live]
(push) ; 15
; [then-branch: 62 | !(i@115@01 < k@116@01)]
(assert (not (< i@115@01 k@116@01)))
(pop) ; 15
(push) ; 15
; [else-branch: 62 | i@115@01 < k@116@01]
(assert (< i@115@01 k@116@01))
; [eval] k < |pw|
; [eval] |pw|
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (< i@115@01 k@116@01) (not (< i@115@01 k@116@01))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@115@01)
  (and (<= 0 i@115@01) (or (< i@115@01 k@116@01) (not (< i@115@01 k@116@01))))))
(assert (or (<= 0 i@115@01) (not (<= 0 i@115@01))))
(push) ; 12
; [then-branch: 63 | 0 <= i@115@01 && i@115@01 < k@116@01 && k@116@01 < |pw@104@01| | live]
; [else-branch: 63 | !(0 <= i@115@01 && i@115@01 < k@116@01 && k@116@01 < |pw@104@01|) | live]
(push) ; 13
; [then-branch: 63 | 0 <= i@115@01 && i@115@01 < k@116@01 && k@116@01 < |pw@104@01|]
(assert (and
  (<= 0 i@115@01)
  (and (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01)))))
; [eval] pw[i] != pw[k]
; [eval] pw[i]
(push) ; 14
(assert (not (>= i@115@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (< i@115@01 (Seq_length pw@104@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] pw[k]
(push) ; 14
(assert (not (>= k@116@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 63 | !(0 <= i@115@01 && i@115@01 < k@116@01 && k@116@01 < |pw@104@01|)]
(assert (not
  (and
    (<= 0 i@115@01)
    (and (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01))))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@115@01)
    (and (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01))))
  (and (<= 0 i@115@01) (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@115@01)
      (and (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01)))))
  (and
    (<= 0 i@115@01)
    (and (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01))))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@115@01 Int) (k@116@01 Int)) (!
  (and
    (=>
      (<= 0 i@115@01)
      (and
        (<= 0 i@115@01)
        (or (< i@115@01 k@116@01) (not (< i@115@01 k@116@01)))))
    (or (<= 0 i@115@01) (not (<= 0 i@115@01)))
    (=>
      (and
        (<= 0 i@115@01)
        (and (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01))))
      (and
        (<= 0 i@115@01)
        (< i@115@01 k@116@01)
        (< k@116@01 (Seq_length pw@104@01))))
    (or
      (not
        (and
          (<= 0 i@115@01)
          (and (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01)))))
      (and
        (<= 0 i@115@01)
        (and (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01))))))
  :pattern ((Seq_index pw@104@01 i@115@01) (Seq_index pw@104@01 k@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(push) ; 11
(assert (not (forall ((i@115@01 Int) (k@116@01 Int)) (!
  (=>
    (and
      (<= 0 i@115@01)
      (and (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01))))
    (not (= (Seq_index pw@104@01 i@115@01) (Seq_index pw@104@01 k@116@01))))
  :pattern ((Seq_index pw@104@01 i@115@01) (Seq_index pw@104@01 k@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.32s
; (get-info :all-statistics)
(assert (forall ((i@115@01 Int) (k@116@01 Int)) (!
  (=>
    (and
      (<= 0 i@115@01)
      (and (< i@115@01 k@116@01) (< k@116@01 (Seq_length pw@104@01))))
    (not (= (Seq_index pw@104@01 i@115@01) (Seq_index pw@104@01 k@116@01))))
  :pattern ((Seq_index pw@104@01 i@115@01) (Seq_index pw@104@01 k@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
; [eval] (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
(declare-const i$0@117@01 Int)
(push) ; 11
; [eval] 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] 0 <= i$0 && i$0 < |pw|
; [eval] 0 <= i$0
(push) ; 12
; [then-branch: 64 | !(0 <= i$0@117@01) | live]
; [else-branch: 64 | 0 <= i$0@117@01 | live]
(push) ; 13
; [then-branch: 64 | !(0 <= i$0@117@01)]
(assert (not (<= 0 i$0@117@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 64 | 0 <= i$0@117@01]
(assert (<= 0 i$0@117@01))
; [eval] i$0 < |pw|
; [eval] |pw|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i$0@117@01) (not (<= 0 i$0@117@01))))
(push) ; 12
; [then-branch: 65 | 0 <= i$0@117@01 && i$0@117@01 < |pw@104@01| | live]
; [else-branch: 65 | !(0 <= i$0@117@01 && i$0@117@01 < |pw@104@01|) | live]
(push) ; 13
; [then-branch: 65 | 0 <= i$0@117@01 && i$0@117@01 < |pw@104@01|]
(assert (and (<= 0 i$0@117@01) (< i$0@117@01 (Seq_length pw@104@01))))
; [eval] loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] loc(a, left + i$0)
; [eval] left + i$0
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@55@01))
      (=
        ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
    :qid |qp.fvfValDef9|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@117@01)))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@117@01)))))
      (- $Perm.Write (pTaken@78@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@117@01))))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 (+ left@22@01 i$0@117@01)) (loc<Ref> a@21@01 j@55@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i$0]).val)
; [eval] loc(a, pw[i$0])
; [eval] pw[i$0]
(push) ; 14
(assert (not (>= i$0@117@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@104@01 i$0@117@01)))
  (and
    (<=
      left@22@01
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@104@01 i$0@117@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@104@01 i$0@117@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 65 | !(0 <= i$0@117@01 && i$0@117@01 < |pw@104@01|)]
(assert (not (and (<= 0 i$0@117@01) (< i$0@117@01 (Seq_length pw@104@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
  :qid |qp.fvfValDef9|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i$0@117@01) (< i$0@117@01 (Seq_length pw@104@01))))
  (and (<= 0 i$0@117@01) (< i$0@117@01 (Seq_length pw@104@01)))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@55@01))
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@101@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@102@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@101@01  $FVF<val>) r))
  :qid |qp.fvfValDef9|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$0@117@01 Int)) (!
  (and
    (or (<= 0 i$0@117@01) (not (<= 0 i$0@117@01)))
    (or
      (not (and (<= 0 i$0@117@01) (< i$0@117@01 (Seq_length pw@104@01))))
      (and (<= 0 i$0@117@01) (< i$0@117@01 (Seq_length pw@104@01)))))
  :pattern ((Seq_index pw@104@01 i$0@117@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(push) ; 11
(assert (not (forall ((i$0@117@01 Int)) (!
  (=>
    (and (<= 0 i$0@117@01) (< i$0@117@01 (Seq_length pw@104@01)))
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@117@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@104@01
        i$0@117@01)))))
  :pattern ((Seq_index pw@104@01 i$0@117@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|))))
(check-sat)
; unsat
(pop) ; 11
; 0.21s
; (get-info :all-statistics)
(assert (forall ((i$0@117@01 Int)) (!
  (=>
    (and (<= 0 i$0@117@01) (< i$0@117@01 (Seq_length pw@104@01)))
    (=
      ($FVF.lookup_val (as sm@102@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@117@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@104@01
        i$0@117@01)))))
  :pattern ((Seq_index pw@104@01 i$0@117@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
(pop) ; 10
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 42 | !(Lookup(val, First:(Second:(Second:(Second:(Second:($t@56@01))))), loc[Ref](a@21@01, j@55@01)) < pivotValue@43@01)]
(assert (not
  (<
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 j@55@01))
    pivotValue@43@01)))
(pop) ; 8
; [eval] !(loc(a, j).val < pivotValue)
; [eval] loc(a, j).val < pivotValue
; [eval] loc(a, j)
(push) ; 8
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 j@55@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 j@55@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (<
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 j@55@01))
  pivotValue@43@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (<
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 j@55@01))
    pivotValue@43@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; [then-branch: 66 | !(Lookup(val, First:(Second:(Second:(Second:(Second:($t@56@01))))), loc[Ref](a@21@01, j@55@01)) < pivotValue@43@01) | live]
; [else-branch: 66 | Lookup(val, First:(Second:(Second:(Second:(Second:($t@56@01))))), loc[Ref](a@21@01, j@55@01)) < pivotValue@43@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 66 | !(Lookup(val, First:(Second:(Second:(Second:(Second:($t@56@01))))), loc[Ref](a@21@01, j@55@01)) < pivotValue@43@01)]
(assert (not
  (<
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 j@55@01))
    pivotValue@43@01)))
; [exec]
; j := j + 1
; [eval] j + 1
(declare-const j@118@01 Int)
(assert (= j@118@01 (+ j@55@01 1)))
; Loop head block: Re-establish invariant
; [eval] left <= j
(push) ; 9
(assert (not (<= left@22@01 j@118@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 j@118@01))
; [eval] j <= right
(push) ; 9
(assert (not (<= j@118@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= j@118@01 right@23@01))
; [eval] left <= storeIndex
; [eval] storeIndex <= j
(push) ; 9
(assert (not (<= storeIndex@54@01 j@118@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= storeIndex@54@01 j@118@01))
(declare-const i@119@01 Int)
(push) ; 9
; [eval] (i in [left..right + 1))
; [eval] [left..right + 1)
; [eval] right + 1
(assert (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@119@01))
; [eval] loc(a, i)
(pop) ; 9
(declare-fun inv@120@01 ($Ref) Int)
(declare-fun img@121@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((i1@119@01 Int) (i2@119@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i1@119@01)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i2@119@01)
      (= (loc<Ref> a@21@01 i1@119@01) (loc<Ref> a@21@01 i2@119@01)))
    (= i1@119@01 i2@119@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@119@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@119@01)
    (and
      (= (inv@120@01 (loc<Ref> a@21@01 i@119@01)) i@119@01)
      (img@121@01 (loc<Ref> a@21@01 i@119@01))))
  :pattern ((loc<Ref> a@21@01 i@119@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@120@01 r)))
    (= (loc<Ref> a@21@01 (inv@120@01 r)) r))
  :pattern ((inv@120@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@122@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@120@01 r))
      (img@121@01 r)
      (= r (loc<Ref> a@21@01 (inv@120@01 r))))
    ($Perm.min
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
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
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@122@01 r))
    $Perm.No)
  
  :qid |quant-u-19020|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@120@01 r))
      (img@121@01 r)
      (= r (loc<Ref> a@21@01 (inv@120@01 r))))
    (= (- $Perm.Write (pTaken@122@01 r)) $Perm.No))
  
  :qid |quant-u-19021|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, right).val == pivotValue
; [eval] loc(a, right)
(set-option :timeout 0)
(push) ; 9
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 right@23@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 right@23@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
(declare-const i@123@01 Int)
(push) ; 9
; [eval] (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue
; [eval] (i in [left..storeIndex))
; [eval] [left..storeIndex)
(push) ; 10
; [then-branch: 67 | i@123@01 in [left@22@01..storeIndex@54@01] | live]
; [else-branch: 67 | !(i@123@01 in [left@22@01..storeIndex@54@01]) | live]
(push) ; 11
; [then-branch: 67 | i@123@01 in [left@22@01..storeIndex@54@01]]
(assert (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
; [eval] loc(a, i).val < pivotValue
; [eval] loc(a, i)
(push) ; 12
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 i@123@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 i@123@01))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 67 | !(i@123@01 in [left@22@01..storeIndex@54@01])]
(assert (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
  (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01)))
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@123@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@123@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@123@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
  :pattern ((loc<Ref> a@21@01 i@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(push) ; 9
(assert (not (forall ((i@123@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01)
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 i@123@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@123@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@123@01))
  :pattern ((loc<Ref> a@21@01 i@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@123@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01)
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 i@123@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@54@01) i@123@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@54@01)
    i@123@01))
  :pattern ((loc<Ref> a@21@01 i@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
; [eval] (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
(declare-const i@124@01 Int)
(push) ; 9
; [eval] (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val
; [eval] (i in [storeIndex..j))
; [eval] [storeIndex..j)
(push) ; 10
; [then-branch: 68 | i@124@01 in [storeIndex@54@01..j@118@01] | live]
; [else-branch: 68 | !(i@124@01 in [storeIndex@54@01..j@118@01]) | live]
(push) ; 11
; [then-branch: 68 | i@124@01 in [storeIndex@54@01..j@118@01]]
(assert (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
; [eval] pivotValue <= loc(a, i).val
; [eval] loc(a, i)
(push) ; 12
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 i@124@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 i@124@01))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 68 | !(i@124@01 in [storeIndex@54@01..j@118@01])]
(assert (not (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01)))
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@124@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
    (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :pattern ((Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@124@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
    (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@124@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
    (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :pattern ((loc<Ref> a@21@01 i@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(push) ; 9
(assert (not (forall ((i@124@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 i@124@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :pattern ((loc<Ref> a@21@01 i@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|))))
(check-sat)
; unsat
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@124@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 i@124@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :pattern ((Seq_contains_trigger (Seq_range storeIndex@54@01 j@118@01) i@124@01))
  :pattern ((loc<Ref> a@21@01 i@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@125@01 Int)
(push) ; 9
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 10
; [then-branch: 69 | !(0 <= i@125@01) | live]
; [else-branch: 69 | 0 <= i@125@01 | live]
(push) ; 11
; [then-branch: 69 | !(0 <= i@125@01)]
(assert (not (<= 0 i@125@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 69 | 0 <= i@125@01]
(assert (<= 0 i@125@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@125@01) (not (<= 0 i@125@01))))
(push) ; 10
; [then-branch: 70 | 0 <= i@125@01 && i@125@01 < |pw@53@01| | live]
; [else-branch: 70 | !(0 <= i@125@01 && i@125@01 < |pw@53@01|) | live]
(push) ; 11
; [then-branch: 70 | 0 <= i@125@01 && i@125@01 < |pw@53@01|]
(assert (and (<= 0 i@125@01) (< i@125@01 (Seq_length pw@53@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 12
(assert (not (>= i@125@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
; [then-branch: 71 | !(left@22@01 <= pw@53@01[i@125@01]) | live]
; [else-branch: 71 | left@22@01 <= pw@53@01[i@125@01] | live]
(push) ; 13
; [then-branch: 71 | !(left@22@01 <= pw@53@01[i@125@01])]
(assert (not (<= left@22@01 (Seq_index pw@53@01 i@125@01))))
(pop) ; 13
(push) ; 13
; [else-branch: 71 | left@22@01 <= pw@53@01[i@125@01]]
(assert (<= left@22@01 (Seq_index pw@53@01 i@125@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 14
(assert (not (>= i@125@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@53@01 i@125@01))
  (not (<= left@22@01 (Seq_index pw@53@01 i@125@01)))))
(pop) ; 11
(push) ; 11
; [else-branch: 70 | !(0 <= i@125@01 && i@125@01 < |pw@53@01|)]
(assert (not (and (<= 0 i@125@01) (< i@125@01 (Seq_length pw@53@01)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (and (<= 0 i@125@01) (< i@125@01 (Seq_length pw@53@01)))
  (and
    (<= 0 i@125@01)
    (< i@125@01 (Seq_length pw@53@01))
    (or
      (<= left@22@01 (Seq_index pw@53@01 i@125@01))
      (not (<= left@22@01 (Seq_index pw@53@01 i@125@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@125@01) (< i@125@01 (Seq_length pw@53@01))))
  (and (<= 0 i@125@01) (< i@125@01 (Seq_length pw@53@01)))))
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@125@01 Int)) (!
  (and
    (or (<= 0 i@125@01) (not (<= 0 i@125@01)))
    (=>
      (and (<= 0 i@125@01) (< i@125@01 (Seq_length pw@53@01)))
      (and
        (<= 0 i@125@01)
        (< i@125@01 (Seq_length pw@53@01))
        (or
          (<= left@22@01 (Seq_index pw@53@01 i@125@01))
          (not (<= left@22@01 (Seq_index pw@53@01 i@125@01))))))
    (or
      (not (and (<= 0 i@125@01) (< i@125@01 (Seq_length pw@53@01))))
      (and (<= 0 i@125@01) (< i@125@01 (Seq_length pw@53@01)))))
  :pattern ((Seq_index pw@53@01 i@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(push) ; 9
(assert (not (forall ((i@125@01 Int)) (!
  (=>
    (and (<= 0 i@125@01) (< i@125@01 (Seq_length pw@53@01)))
    (and
      (<= left@22@01 (Seq_index pw@53@01 i@125@01))
      (<= (Seq_index pw@53@01 i@125@01) right@23@01)))
  :pattern ((Seq_index pw@53@01 i@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@125@01 Int)) (!
  (=>
    (and (<= 0 i@125@01) (< i@125@01 (Seq_length pw@53@01)))
    (and
      (<= left@22@01 (Seq_index pw@53@01 i@125@01))
      (<= (Seq_index pw@53@01 i@125@01) right@23@01)))
  :pattern ((Seq_index pw@53@01 i@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
; [eval] (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
(declare-const i@126@01 Int)
(declare-const k@127@01 Int)
(push) ; 9
; [eval] 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]
; [eval] 0 <= i && (i < k && k < |pw|)
; [eval] 0 <= i
(push) ; 10
; [then-branch: 72 | !(0 <= i@126@01) | live]
; [else-branch: 72 | 0 <= i@126@01 | live]
(push) ; 11
; [then-branch: 72 | !(0 <= i@126@01)]
(assert (not (<= 0 i@126@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 72 | 0 <= i@126@01]
(assert (<= 0 i@126@01))
; [eval] i < k
(push) ; 12
; [then-branch: 73 | !(i@126@01 < k@127@01) | live]
; [else-branch: 73 | i@126@01 < k@127@01 | live]
(push) ; 13
; [then-branch: 73 | !(i@126@01 < k@127@01)]
(assert (not (< i@126@01 k@127@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 73 | i@126@01 < k@127@01]
(assert (< i@126@01 k@127@01))
; [eval] k < |pw|
; [eval] |pw|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (< i@126@01 k@127@01) (not (< i@126@01 k@127@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@126@01)
  (and (<= 0 i@126@01) (or (< i@126@01 k@127@01) (not (< i@126@01 k@127@01))))))
(assert (or (<= 0 i@126@01) (not (<= 0 i@126@01))))
(push) ; 10
; [then-branch: 74 | 0 <= i@126@01 && i@126@01 < k@127@01 && k@127@01 < |pw@53@01| | live]
; [else-branch: 74 | !(0 <= i@126@01 && i@126@01 < k@127@01 && k@127@01 < |pw@53@01|) | live]
(push) ; 11
; [then-branch: 74 | 0 <= i@126@01 && i@126@01 < k@127@01 && k@127@01 < |pw@53@01|]
(assert (and
  (<= 0 i@126@01)
  (and (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01)))))
; [eval] pw[i] != pw[k]
; [eval] pw[i]
(push) ; 12
(assert (not (>= i@126@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (< i@126@01 (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] pw[k]
(push) ; 12
(assert (not (>= k@127@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 74 | !(0 <= i@126@01 && i@126@01 < k@127@01 && k@127@01 < |pw@53@01|)]
(assert (not
  (and
    (<= 0 i@126@01)
    (and (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01))))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@126@01)
    (and (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01))))
  (and (<= 0 i@126@01) (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@126@01)
      (and (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01)))))
  (and
    (<= 0 i@126@01)
    (and (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01))))))
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@126@01 Int) (k@127@01 Int)) (!
  (and
    (=>
      (<= 0 i@126@01)
      (and
        (<= 0 i@126@01)
        (or (< i@126@01 k@127@01) (not (< i@126@01 k@127@01)))))
    (or (<= 0 i@126@01) (not (<= 0 i@126@01)))
    (=>
      (and
        (<= 0 i@126@01)
        (and (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01))))
      (and
        (<= 0 i@126@01)
        (< i@126@01 k@127@01)
        (< k@127@01 (Seq_length pw@53@01))))
    (or
      (not
        (and
          (<= 0 i@126@01)
          (and (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01)))))
      (and
        (<= 0 i@126@01)
        (and (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01))))))
  :pattern ((Seq_index pw@53@01 i@126@01) (Seq_index pw@53@01 k@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(push) ; 9
(assert (not (forall ((i@126@01 Int) (k@127@01 Int)) (!
  (=>
    (and
      (<= 0 i@126@01)
      (and (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01))))
    (not (= (Seq_index pw@53@01 i@126@01) (Seq_index pw@53@01 k@127@01))))
  :pattern ((Seq_index pw@53@01 i@126@01) (Seq_index pw@53@01 k@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@126@01 Int) (k@127@01 Int)) (!
  (=>
    (and
      (<= 0 i@126@01)
      (and (< i@126@01 k@127@01) (< k@127@01 (Seq_length pw@53@01))))
    (not (= (Seq_index pw@53@01 i@126@01) (Seq_index pw@53@01 k@127@01))))
  :pattern ((Seq_index pw@53@01 i@126@01) (Seq_index pw@53@01 k@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
; [eval] (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
(declare-const i$0@128@01 Int)
(push) ; 9
; [eval] 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] 0 <= i$0 && i$0 < |pw|
; [eval] 0 <= i$0
(push) ; 10
; [then-branch: 75 | !(0 <= i$0@128@01) | live]
; [else-branch: 75 | 0 <= i$0@128@01 | live]
(push) ; 11
; [then-branch: 75 | !(0 <= i$0@128@01)]
(assert (not (<= 0 i$0@128@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 75 | 0 <= i$0@128@01]
(assert (<= 0 i$0@128@01))
; [eval] i$0 < |pw|
; [eval] |pw|
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i$0@128@01) (not (<= 0 i$0@128@01))))
(push) ; 10
; [then-branch: 76 | 0 <= i$0@128@01 && i$0@128@01 < |pw@53@01| | live]
; [else-branch: 76 | !(0 <= i$0@128@01 && i$0@128@01 < |pw@53@01|) | live]
(push) ; 11
; [then-branch: 76 | 0 <= i$0@128@01 && i$0@128@01 < |pw@53@01|]
(assert (and (<= 0 i$0@128@01) (< i$0@128@01 (Seq_length pw@53@01))))
; [eval] loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] loc(a, left + i$0)
; [eval] left + i$0
(push) ; 12
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@128@01)))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@128@01)))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i$0]).val)
; [eval] loc(a, pw[i$0])
; [eval] pw[i$0]
(push) ; 12
(assert (not (>= i$0@128@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@53@01 i$0@128@01)))
  (and
    (<=
      left@22@01
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@53@01 i$0@128@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@53@01 i$0@128@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 76 | !(0 <= i$0@128@01 && i$0@128@01 < |pw@53@01|)]
(assert (not (and (<= 0 i$0@128@01) (< i$0@128@01 (Seq_length pw@53@01)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 i$0@128@01) (< i$0@128@01 (Seq_length pw@53@01))))
  (and (<= 0 i$0@128@01) (< i$0@128@01 (Seq_length pw@53@01)))))
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$0@128@01 Int)) (!
  (and
    (or (<= 0 i$0@128@01) (not (<= 0 i$0@128@01)))
    (or
      (not (and (<= 0 i$0@128@01) (< i$0@128@01 (Seq_length pw@53@01))))
      (and (<= 0 i$0@128@01) (< i$0@128@01 (Seq_length pw@53@01)))))
  :pattern ((Seq_index pw@53@01 i$0@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(push) ; 9
(assert (not (forall ((i$0@128@01 Int)) (!
  (=>
    (and (<= 0 i$0@128@01) (< i$0@128@01 (Seq_length pw@53@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@128@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@53@01
        i$0@128@01)))))
  :pattern ((Seq_index pw@53@01 i$0@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i$0@128@01 Int)) (!
  (=>
    (and (<= 0 i$0@128@01) (< i$0@128@01 (Seq_length pw@53@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@128@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@53@01
        i$0@128@01)))))
  :pattern ((Seq_index pw@53@01 i$0@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
(pop) ; 8
(push) ; 8
; [else-branch: 66 | Lookup(val, First:(Second:(Second:(Second:(Second:($t@56@01))))), loc[Ref](a@21@01, j@55@01)) < pivotValue@43@01]
(assert (<
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 j@55@01))
  pivotValue@43@01))
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 41 | !(j@55@01 < right@23@01)]
(assert (not (< j@55@01 right@23@01)))
(pop) ; 7
; [eval] !(j < right)
; [eval] j < right
(push) ; 7
(set-option :timeout 10)
(assert (not (< j@55@01 right@23@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (< j@55@01 right@23@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; [then-branch: 77 | !(j@55@01 < right@23@01) | live]
; [else-branch: 77 | j@55@01 < right@23@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 77 | !(j@55@01 < right@23@01)]
(assert (not (< j@55@01 right@23@01)))
; [exec]
; swap(a, right, storeIndex)
; [eval] 0 <= i
; [eval] i < len(a)
; [eval] len(a)
; [eval] 0 <= j
(push) ; 8
(assert (not (<= 0 storeIndex@54@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 storeIndex@54@01))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 8
(assert (not (< storeIndex@54@01 (len<Int> a@21@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (< storeIndex@54@01 (len<Int> a@21@01)))
; [eval] loc(a, i)
; Precomputing data for removing quantified permissions
(define-fun pTaken@129@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@21@01 right@23@01))
    ($Perm.min
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
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
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@129@01 r))
    $Perm.No)
  
  :qid |quant-u-19023|))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@129@01 r) $Perm.No)
  
  :qid |quant-u-19024|))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (= (- $Perm.Write (pTaken@129@01 r)) $Perm.No))
  
  :qid |quant-u-19025|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] i != j
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= right@23@01 storeIndex@54@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= right@23@01 storeIndex@54@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | right@23@01 != storeIndex@54@01 | live]
; [else-branch: 78 | right@23@01 == storeIndex@54@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 78 | right@23@01 != storeIndex@54@01]
(assert (not (= right@23@01 storeIndex@54@01)))
; [eval] loc(a, j)
; Precomputing data for removing quantified permissions
(define-fun pTaken@130@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    ($Perm.min
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- $Perm.Write (pTaken@129@01 r))
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
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- $Perm.Write (pTaken@129@01 r))
        $Perm.No)
      (pTaken@130@01 r))
    $Perm.No)
  
  :qid |quant-u-19027|))))
(check-sat)
; unknown
(pop) ; 9
; 0.35s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@130@01 r) $Perm.No)
  
  :qid |quant-u-19028|))))
(check-sat)
; unknown
(pop) ; 9
; 0.02s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (= (- $Perm.Write (pTaken@130@01 r)) $Perm.No))
  
  :qid |quant-u-19029|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@131@01 $Snap)
(assert (= $t@131@01 ($Snap.combine ($Snap.first $t@131@01) ($Snap.second $t@131@01))))
; [eval] loc(a, i)
(declare-const sm@132@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@132@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@131@01))))
(assert (=
  ($Snap.second $t@131@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@131@01))
    ($Snap.second ($Snap.second $t@131@01)))))
; [eval] i != j
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= right@23@01 storeIndex@54@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | right@23@01 != storeIndex@54@01 | live]
; [else-branch: 79 | right@23@01 == storeIndex@54@01 | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 79 | right@23@01 != storeIndex@54@01]
; [eval] loc(a, j)
(declare-const sm@133@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@133@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@131@01)))))
(push) ; 10
(set-option :timeout 10)
(assert (not (and
  (and
    (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
    (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01)))
  (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 right@23@01)))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
  (not (= (loc<Ref> a@21@01 storeIndex@54@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@131@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@131@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@131@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@131@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
(declare-const sm@134@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :qid |qp.fvfValDef13|)))
(declare-const pm@135@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@135@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@59@01 r)
            (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
          (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r))
          $Perm.No)
        (ite (= r (loc<Ref> a@21@01 right@23@01)) $Perm.Write $Perm.No))
      (ite (= r (loc<Ref> a@21@01 storeIndex@54@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_val (as pm@135@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(set-option :timeout 0)
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_val (as pm@135@01  $FPM) (loc<Ref> a@21@01 right@23@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 10
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 storeIndex@54@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@131@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))
        (-
          (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 storeIndex@54@01)))
          (pTaken@130@01 (loc<Ref> a@21@01 storeIndex@54@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(push) ; 10
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 right@23@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 right@23@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 right@23@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; pw := pw[storeIndex - left := pw[right - left]][right - left :=
;   pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[right - left]][right - left := pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[right - left]]
; [eval] storeIndex - left
; [eval] pw[right - left]
; [eval] right - left
(set-option :timeout 0)
(push) ; 10
(assert (not (>= (- right@23@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< (- right@23@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (>= (- storeIndex@54@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< (- storeIndex@54@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] right - left
; [eval] pw[storeIndex - left]
; [eval] storeIndex - left
(push) ; 10
(assert (not (>= (- storeIndex@54@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< (- storeIndex@54@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (>= (- right@23@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  (- right@23@01 left@22@01)
  (Seq_length
    (Seq_append
      (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
      (Seq_append
        (Seq_singleton (Seq_index pw@53@01 (- right@23@01 left@22@01)))
        (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const pw@136@01 Seq<Int>)
(assert (=
  pw@136@01
  (Seq_append
    (Seq_take
      (Seq_append
        (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
        (Seq_append
          (Seq_singleton (Seq_index pw@53@01 (- right@23@01 left@22@01)))
          (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))
      (- right@23@01 left@22@01))
    (Seq_append
      (Seq_singleton (Seq_index pw@53@01 (- storeIndex@54@01 left@22@01)))
      (Seq_drop
        (Seq_append
          (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
          (Seq_append
            (Seq_singleton (Seq_index pw@53@01 (- right@23@01 left@22@01)))
            (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))
        (+ (- right@23@01 left@22@01) 1))))))
; [eval] left <= storeIndex
; [eval] storeIndex <= right
(push) ; 10
(assert (not (<= storeIndex@54@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= storeIndex@54@01 right@23@01))
(declare-const i@137@01 Int)
(push) ; 10
; [eval] left <= i && i <= right
; [eval] left <= i
(push) ; 11
; [then-branch: 80 | !(left@22@01 <= i@137@01) | live]
; [else-branch: 80 | left@22@01 <= i@137@01 | live]
(push) ; 12
; [then-branch: 80 | !(left@22@01 <= i@137@01)]
(assert (not (<= left@22@01 i@137@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 80 | left@22@01 <= i@137@01]
(assert (<= left@22@01 i@137@01))
; [eval] i <= right
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= left@22@01 i@137@01) (not (<= left@22@01 i@137@01))))
(assert (and (<= left@22@01 i@137@01) (<= i@137@01 right@23@01)))
; [eval] loc(a, i)
(pop) ; 10
(declare-fun inv@138@01 ($Ref) Int)
(declare-fun img@139@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@137@01 Int)) (!
  (=>
    (and (<= left@22@01 i@137@01) (<= i@137@01 right@23@01))
    (or (<= left@22@01 i@137@01) (not (<= left@22@01 i@137@01))))
  :pattern ((loc<Ref> a@21@01 i@137@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((i1@137@01 Int) (i2@137@01 Int)) (!
  (=>
    (and
      (and (<= left@22@01 i1@137@01) (<= i1@137@01 right@23@01))
      (and (<= left@22@01 i2@137@01) (<= i2@137@01 right@23@01))
      (= (loc<Ref> a@21@01 i1@137@01) (loc<Ref> a@21@01 i2@137@01)))
    (= i1@137@01 i2@137@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@137@01 Int)) (!
  (=>
    (and (<= left@22@01 i@137@01) (<= i@137@01 right@23@01))
    (and
      (= (inv@138@01 (loc<Ref> a@21@01 i@137@01)) i@137@01)
      (img@139@01 (loc<Ref> a@21@01 i@137@01))))
  :pattern ((loc<Ref> a@21@01 i@137@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@139@01 r)
      (and (<= left@22@01 (inv@138@01 r)) (<= (inv@138@01 r) right@23@01)))
    (= (loc<Ref> a@21@01 (inv@138@01 r)) r))
  :pattern ((inv@138@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@140@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@22@01 (inv@138@01 r)) (<= (inv@138@01 r) right@23@01))
      (img@139@01 r)
      (= r (loc<Ref> a@21@01 (inv@138@01 r))))
    ($Perm.min
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@141@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@22@01 (inv@138@01 r)) (<= (inv@138@01 r) right@23@01))
      (img@139@01 r)
      (= r (loc<Ref> a@21@01 (inv@138@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 right@23@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@140@01 r)))
    $Perm.No))
(define-fun pTaken@142@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@22@01 (inv@138@01 r)) (<= (inv@138@01 r) right@23@01))
      (img@139@01 r)
      (= r (loc<Ref> a@21@01 (inv@138@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 storeIndex@54@01)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@140@01 r)) (pTaken@141@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r))
        $Perm.No)
      (pTaken@140@01 r))
    $Perm.No)
  
  :qid |quant-u-19032|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@22@01 (inv@138@01 r)) (<= (inv@138@01 r) right@23@01))
      (img@139@01 r)
      (= r (loc<Ref> a@21@01 (inv@138@01 r))))
    (= (- $Perm.Write (pTaken@140@01 r)) $Perm.No))
  
  :qid |quant-u-19033|))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)
    (pTaken@141@01 (loc<Ref> a@21@01 right@23@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@22@01 (inv@138@01 r)) (<= (inv@138@01 r) right@23@01))
      (img@139@01 r)
      (= r (loc<Ref> a@21@01 (inv@138@01 r))))
    (= (- (- $Perm.Write (pTaken@140@01 r)) (pTaken@141@01 r)) $Perm.No))
  
  :qid |quant-u-19035|))))
(check-sat)
; unknown
(pop) ; 10
; 0.02s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)
    (pTaken@142@01 (loc<Ref> a@21@01 storeIndex@54@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@22@01 (inv@138@01 r)) (<= (inv@138@01 r) right@23@01))
      (img@139@01 r)
      (= r (loc<Ref> a@21@01 (inv@138@01 r))))
    (=
      (-
        (- (- $Perm.Write (pTaken@140@01 r)) (pTaken@141@01 r))
        (pTaken@142@01 r))
      $Perm.No))
  
  :qid |quant-u-19037|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, storeIndex).val == old(loc(a, pivotIndex).val)
; [eval] loc(a, storeIndex)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
    :qid |qp.fvfValDef13|))))
(set-option :timeout 0)
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))
        (-
          (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 storeIndex@54@01)))
          (pTaken@130@01 (loc<Ref> a@21@01 storeIndex@54@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pivotIndex).val)
; [eval] loc(a, pivotIndex)
(push) ; 10
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 pivotIndex@24@01))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)))
    (<= (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (=
  ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 pivotIndex@24@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 pivotIndex@24@01))))
; [eval] (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val < loc(a, storeIndex).val)
(declare-const i@143@01 Int)
(push) ; 10
; [eval] left <= i && i < storeIndex ==> loc(a, i).val < loc(a, storeIndex).val
; [eval] left <= i && i < storeIndex
; [eval] left <= i
(push) ; 11
; [then-branch: 81 | !(left@22@01 <= i@143@01) | live]
; [else-branch: 81 | left@22@01 <= i@143@01 | live]
(push) ; 12
; [then-branch: 81 | !(left@22@01 <= i@143@01)]
(assert (not (<= left@22@01 i@143@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 81 | left@22@01 <= i@143@01]
(assert (<= left@22@01 i@143@01))
; [eval] i < storeIndex
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= left@22@01 i@143@01) (not (<= left@22@01 i@143@01))))
(push) ; 11
; [then-branch: 82 | left@22@01 <= i@143@01 && i@143@01 < storeIndex@54@01 | live]
; [else-branch: 82 | !(left@22@01 <= i@143@01 && i@143@01 < storeIndex@54@01) | live]
(push) ; 12
; [then-branch: 82 | left@22@01 <= i@143@01 && i@143@01 < storeIndex@54@01]
(assert (and (<= left@22@01 i@143@01) (< i@143@01 storeIndex@54@01)))
; [eval] loc(a, i).val < loc(a, storeIndex).val
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 i@143@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 i@143@01))))
        (-
          (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 i@143@01)))
          (pTaken@130@01 (loc<Ref> a@21@01 i@143@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 i@143@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 i@143@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, storeIndex)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))
        (-
          (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 storeIndex@54@01)))
          (pTaken@130@01 (loc<Ref> a@21@01 storeIndex@54@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 82 | !(left@22@01 <= i@143@01 && i@143@01 < storeIndex@54@01)]
(assert (not (and (<= left@22@01 i@143@01) (< i@143@01 storeIndex@54@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :qid |qp.fvfValDef13|)))
; Joined path conditions
(assert (or
  (not (and (<= left@22@01 i@143@01) (< i@143@01 storeIndex@54@01)))
  (and (<= left@22@01 i@143@01) (< i@143@01 storeIndex@54@01))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :qid |qp.fvfValDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@143@01 Int)) (!
  (and
    (or (<= left@22@01 i@143@01) (not (<= left@22@01 i@143@01)))
    (or
      (not (and (<= left@22@01 i@143@01) (< i@143@01 storeIndex@54@01)))
      (and (<= left@22@01 i@143@01) (< i@143@01 storeIndex@54@01))))
  :pattern ((loc<Ref> a@21@01 i@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99-aux|)))
(push) ; 10
(assert (not (forall ((i@143@01 Int)) (!
  (=>
    (and (<= left@22@01 i@143@01) (< i@143@01 storeIndex@54@01))
    (<
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 i@143@01))
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))))
  :pattern ((loc<Ref> a@21@01 i@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@143@01 Int)) (!
  (=>
    (and (<= left@22@01 i@143@01) (< i@143@01 storeIndex@54@01))
    (<
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 i@143@01))
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))))
  :pattern ((loc<Ref> a@21@01 i@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99|)))
; [eval] (forall i: Int :: { loc(a, i) } storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val)
(declare-const i@144@01 Int)
(push) ; 10
; [eval] storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val
; [eval] storeIndex < i && i <= right
; [eval] storeIndex < i
(push) ; 11
; [then-branch: 83 | !(storeIndex@54@01 < i@144@01) | live]
; [else-branch: 83 | storeIndex@54@01 < i@144@01 | live]
(push) ; 12
; [then-branch: 83 | !(storeIndex@54@01 < i@144@01)]
(assert (not (< storeIndex@54@01 i@144@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 83 | storeIndex@54@01 < i@144@01]
(assert (< storeIndex@54@01 i@144@01))
; [eval] i <= right
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< storeIndex@54@01 i@144@01) (not (< storeIndex@54@01 i@144@01))))
(push) ; 11
; [then-branch: 84 | storeIndex@54@01 < i@144@01 && i@144@01 <= right@23@01 | live]
; [else-branch: 84 | !(storeIndex@54@01 < i@144@01 && i@144@01 <= right@23@01) | live]
(push) ; 12
; [then-branch: 84 | storeIndex@54@01 < i@144@01 && i@144@01 <= right@23@01]
(assert (and (< storeIndex@54@01 i@144@01) (<= i@144@01 right@23@01)))
; [eval] loc(a, storeIndex).val <= loc(a, i).val
; [eval] loc(a, storeIndex)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))
        (-
          (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 storeIndex@54@01)))
          (pTaken@130@01 (loc<Ref> a@21@01 storeIndex@54@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 i@144@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 i@144@01))))
        (-
          (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 i@144@01)))
          (pTaken@130@01 (loc<Ref> a@21@01 i@144@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 i@144@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 i@144@01) (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 84 | !(storeIndex@54@01 < i@144@01 && i@144@01 <= right@23@01)]
(assert (not (and (< storeIndex@54@01 i@144@01) (<= i@144@01 right@23@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :qid |qp.fvfValDef13|)))
; Joined path conditions
(assert (or
  (not (and (< storeIndex@54@01 i@144@01) (<= i@144@01 right@23@01)))
  (and (< storeIndex@54@01 i@144@01) (<= i@144@01 right@23@01))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :qid |qp.fvfValDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@144@01 Int)) (!
  (and
    (or (< storeIndex@54@01 i@144@01) (not (< storeIndex@54@01 i@144@01)))
    (or
      (not (and (< storeIndex@54@01 i@144@01) (<= i@144@01 right@23@01)))
      (and (< storeIndex@54@01 i@144@01) (<= i@144@01 right@23@01))))
  :pattern ((loc<Ref> a@21@01 i@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100-aux|)))
(push) ; 10
(assert (not (forall ((i@144@01 Int)) (!
  (=>
    (and (< storeIndex@54@01 i@144@01) (<= i@144@01 right@23@01))
    (<=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 i@144@01))))
  :pattern ((loc<Ref> a@21@01 i@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100|))))
(check-sat)
; unsat
(pop) ; 10
; 0.03s
; (get-info :all-statistics)
(assert (forall ((i@144@01 Int)) (!
  (=>
    (and (< storeIndex@54@01 i@144@01) (<= i@144@01 right@23@01))
    (<=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 i@144@01))))
  :pattern ((loc<Ref> a@21@01 i@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(push) ; 10
(assert (not (= (Seq_length pw@136@01) (- (+ right@23@01 1) left@22@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (= (Seq_length pw@136@01) (- (+ right@23@01 1) left@22@01)))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@145@01 Int)
(push) ; 10
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 11
; [then-branch: 85 | !(0 <= i@145@01) | live]
; [else-branch: 85 | 0 <= i@145@01 | live]
(push) ; 12
; [then-branch: 85 | !(0 <= i@145@01)]
(assert (not (<= 0 i@145@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 85 | 0 <= i@145@01]
(assert (<= 0 i@145@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@145@01) (not (<= 0 i@145@01))))
(push) ; 11
; [then-branch: 86 | 0 <= i@145@01 && i@145@01 < |pw@136@01| | live]
; [else-branch: 86 | !(0 <= i@145@01 && i@145@01 < |pw@136@01|) | live]
(push) ; 12
; [then-branch: 86 | 0 <= i@145@01 && i@145@01 < |pw@136@01|]
(assert (and (<= 0 i@145@01) (< i@145@01 (Seq_length pw@136@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 13
(assert (not (>= i@145@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
; [then-branch: 87 | !(left@22@01 <= pw@136@01[i@145@01]) | live]
; [else-branch: 87 | left@22@01 <= pw@136@01[i@145@01] | live]
(push) ; 14
; [then-branch: 87 | !(left@22@01 <= pw@136@01[i@145@01])]
(assert (not (<= left@22@01 (Seq_index pw@136@01 i@145@01))))
(pop) ; 14
(push) ; 14
; [else-branch: 87 | left@22@01 <= pw@136@01[i@145@01]]
(assert (<= left@22@01 (Seq_index pw@136@01 i@145@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 15
(assert (not (>= i@145@01 0)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@136@01 i@145@01))
  (not (<= left@22@01 (Seq_index pw@136@01 i@145@01)))))
(pop) ; 12
(push) ; 12
; [else-branch: 86 | !(0 <= i@145@01 && i@145@01 < |pw@136@01|)]
(assert (not (and (<= 0 i@145@01) (< i@145@01 (Seq_length pw@136@01)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (and (<= 0 i@145@01) (< i@145@01 (Seq_length pw@136@01)))
  (and
    (<= 0 i@145@01)
    (< i@145@01 (Seq_length pw@136@01))
    (or
      (<= left@22@01 (Seq_index pw@136@01 i@145@01))
      (not (<= left@22@01 (Seq_index pw@136@01 i@145@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@145@01) (< i@145@01 (Seq_length pw@136@01))))
  (and (<= 0 i@145@01) (< i@145@01 (Seq_length pw@136@01)))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@145@01 Int)) (!
  (and
    (or (<= 0 i@145@01) (not (<= 0 i@145@01)))
    (=>
      (and (<= 0 i@145@01) (< i@145@01 (Seq_length pw@136@01)))
      (and
        (<= 0 i@145@01)
        (< i@145@01 (Seq_length pw@136@01))
        (or
          (<= left@22@01 (Seq_index pw@136@01 i@145@01))
          (not (<= left@22@01 (Seq_index pw@136@01 i@145@01))))))
    (or
      (not (and (<= 0 i@145@01) (< i@145@01 (Seq_length pw@136@01))))
      (and (<= 0 i@145@01) (< i@145@01 (Seq_length pw@136@01)))))
  :pattern ((Seq_index pw@136@01 i@145@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82-aux|)))
(push) ; 10
(assert (not (forall ((i@145@01 Int)) (!
  (=>
    (and (<= 0 i@145@01) (< i@145@01 (Seq_length pw@136@01)))
    (and
      (<= left@22@01 (Seq_index pw@136@01 i@145@01))
      (<= (Seq_index pw@136@01 i@145@01) right@23@01)))
  :pattern ((Seq_index pw@136@01 i@145@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82|))))
(check-sat)
; unsat
(pop) ; 10
; 0.12s
; (get-info :all-statistics)
(assert (forall ((i@145@01 Int)) (!
  (=>
    (and (<= 0 i@145@01) (< i@145@01 (Seq_length pw@136@01)))
    (and
      (<= left@22@01 (Seq_index pw@136@01 i@145@01))
      (<= (Seq_index pw@136@01 i@145@01) right@23@01)))
  :pattern ((Seq_index pw@136@01 i@145@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82|)))
; [eval] (forall i: Int, j: Int :: { pw[i], pw[j] } 0 <= i && (i < j && j < |pw|) ==> pw[i] != pw[j])
(declare-const i@146@01 Int)
(declare-const j@147@01 Int)
(push) ; 10
; [eval] 0 <= i && (i < j && j < |pw|) ==> pw[i] != pw[j]
; [eval] 0 <= i && (i < j && j < |pw|)
; [eval] 0 <= i
(push) ; 11
; [then-branch: 88 | !(0 <= i@146@01) | live]
; [else-branch: 88 | 0 <= i@146@01 | live]
(push) ; 12
; [then-branch: 88 | !(0 <= i@146@01)]
(assert (not (<= 0 i@146@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 88 | 0 <= i@146@01]
(assert (<= 0 i@146@01))
; [eval] i < j
(push) ; 13
; [then-branch: 89 | !(i@146@01 < j@147@01) | live]
; [else-branch: 89 | i@146@01 < j@147@01 | live]
(push) ; 14
; [then-branch: 89 | !(i@146@01 < j@147@01)]
(assert (not (< i@146@01 j@147@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 89 | i@146@01 < j@147@01]
(assert (< i@146@01 j@147@01))
; [eval] j < |pw|
; [eval] |pw|
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or (< i@146@01 j@147@01) (not (< i@146@01 j@147@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@146@01)
  (and (<= 0 i@146@01) (or (< i@146@01 j@147@01) (not (< i@146@01 j@147@01))))))
(assert (or (<= 0 i@146@01) (not (<= 0 i@146@01))))
(push) ; 11
; [then-branch: 90 | 0 <= i@146@01 && i@146@01 < j@147@01 && j@147@01 < |pw@136@01| | live]
; [else-branch: 90 | !(0 <= i@146@01 && i@146@01 < j@147@01 && j@147@01 < |pw@136@01|) | live]
(push) ; 12
; [then-branch: 90 | 0 <= i@146@01 && i@146@01 < j@147@01 && j@147@01 < |pw@136@01|]
(assert (and
  (<= 0 i@146@01)
  (and (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01)))))
; [eval] pw[i] != pw[j]
; [eval] pw[i]
(push) ; 13
(assert (not (>= i@146@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< i@146@01 (Seq_length pw@136@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] pw[j]
(push) ; 13
(assert (not (>= j@147@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 90 | !(0 <= i@146@01 && i@146@01 < j@147@01 && j@147@01 < |pw@136@01|)]
(assert (not
  (and
    (<= 0 i@146@01)
    (and (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@146@01)
    (and (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01))))
  (and (<= 0 i@146@01) (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@146@01)
      (and (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01)))))
  (and
    (<= 0 i@146@01)
    (and (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01))))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@146@01 Int) (j@147@01 Int)) (!
  (and
    (=>
      (<= 0 i@146@01)
      (and
        (<= 0 i@146@01)
        (or (< i@146@01 j@147@01) (not (< i@146@01 j@147@01)))))
    (or (<= 0 i@146@01) (not (<= 0 i@146@01)))
    (=>
      (and
        (<= 0 i@146@01)
        (and (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01))))
      (and
        (<= 0 i@146@01)
        (< i@146@01 j@147@01)
        (< j@147@01 (Seq_length pw@136@01))))
    (or
      (not
        (and
          (<= 0 i@146@01)
          (and (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01)))))
      (and
        (<= 0 i@146@01)
        (and (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01))))))
  :pattern ((Seq_index pw@136@01 i@146@01) (Seq_index pw@136@01 j@147@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@67@11@67@82-aux|)))
(push) ; 10
(assert (not (forall ((i@146@01 Int) (j@147@01 Int)) (!
  (=>
    (and
      (<= 0 i@146@01)
      (and (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01))))
    (not (= (Seq_index pw@136@01 i@146@01) (Seq_index pw@136@01 j@147@01))))
  :pattern ((Seq_index pw@136@01 i@146@01) (Seq_index pw@136@01 j@147@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@67@11@67@82|))))
(check-sat)
; unsat
(pop) ; 10
; 0.14s
; (get-info :all-statistics)
(assert (forall ((i@146@01 Int) (j@147@01 Int)) (!
  (=>
    (and
      (<= 0 i@146@01)
      (and (< i@146@01 j@147@01) (< j@147@01 (Seq_length pw@136@01))))
    (not (= (Seq_index pw@136@01 i@146@01) (Seq_index pw@136@01 j@147@01))))
  :pattern ((Seq_index pw@136@01 i@146@01) (Seq_index pw@136@01 j@147@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@67@11@67@82|)))
; [eval] (forall i: Int :: { old(pw[i]) } 0 <= i && i < |pw| ==> loc(a, left + i).val == old(loc(a, pw[i]).val))
(declare-const i@148@01 Int)
(push) ; 10
; [eval] 0 <= i && i < |pw| ==> loc(a, left + i).val == old(loc(a, pw[i]).val)
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 11
; [then-branch: 91 | !(0 <= i@148@01) | live]
; [else-branch: 91 | 0 <= i@148@01 | live]
(push) ; 12
; [then-branch: 91 | !(0 <= i@148@01)]
(assert (not (<= 0 i@148@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 91 | 0 <= i@148@01]
(assert (<= 0 i@148@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@148@01) (not (<= 0 i@148@01))))
(push) ; 11
; [then-branch: 92 | 0 <= i@148@01 && i@148@01 < |pw@136@01| | live]
; [else-branch: 92 | !(0 <= i@148@01 && i@148@01 < |pw@136@01|) | live]
(push) ; 12
; [then-branch: 92 | 0 <= i@148@01 && i@148@01 < |pw@136@01|]
(assert (and (<= 0 i@148@01) (< i@148@01 (Seq_length pw@136@01))))
; [eval] loc(a, left + i).val == old(loc(a, pw[i]).val)
; [eval] loc(a, left + i)
; [eval] left + i
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@54@01))
      (=
        ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@59@01 (loc<Ref> a@21@01 (+ left@22@01 i@148@01)))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@58@01 (loc<Ref> a@21@01 (+ left@22@01 i@148@01)))))
        (-
          (-
            $Perm.Write
            (pTaken@129@01 (loc<Ref> a@21@01 (+ left@22@01 i@148@01))))
          (pTaken@130@01 (loc<Ref> a@21@01 (+ left@22@01 i@148@01))))
        $Perm.No)
      (ite
        (=
          (loc<Ref> a@21@01 (+ left@22@01 i@148@01))
          (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (loc<Ref> a@21@01 (+ left@22@01 i@148@01))
        (loc<Ref> a@21@01 storeIndex@54@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i]).val)
; [eval] loc(a, pw[i])
; [eval] pw[i]
(push) ; 13
(assert (not (>= i@148@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@136@01 i@148@01)))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@136@01 i@148@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@136@01 i@148@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 92 | !(0 <= i@148@01 && i@148@01 < |pw@136@01|)]
(assert (not (and (<= 0 i@148@01) (< i@148@01 (Seq_length pw@136@01)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :qid |qp.fvfValDef13|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@148@01) (< i@148@01 (Seq_length pw@136@01))))
  (and (<= 0 i@148@01) (< i@148@01 (Seq_length pw@136@01)))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@132@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@132@01  $FVF<val>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@54@01))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@134@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :qid |qp.fvfValDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@148@01 Int)) (!
  (and
    (or (<= 0 i@148@01) (not (<= 0 i@148@01)))
    (or
      (not (and (<= 0 i@148@01) (< i@148@01 (Seq_length pw@136@01))))
      (and (<= 0 i@148@01) (< i@148@01 (Seq_length pw@136@01)))))
  :pattern ((Seq_index pw@136@01 i@148@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@69@11@69@32-aux|)))
(push) ; 10
(assert (not (forall ((i@148@01 Int)) (!
  (=>
    (and (<= 0 i@148@01) (< i@148@01 (Seq_length pw@136@01)))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i@148@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@136@01
        i@148@01)))))
  :pattern ((Seq_index pw@136@01 i@148@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@69@11@69@32|))))
(check-sat)
; unsat
(pop) ; 10
; 0.24s
; (get-info :all-statistics)
(assert (forall ((i@148@01 Int)) (!
  (=>
    (and (<= 0 i@148@01) (< i@148@01 (Seq_length pw@136@01)))
    (=
      ($FVF.lookup_val (as sm@134@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i@148@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@136@01
        i@148@01)))))
  :pattern ((Seq_index pw@136@01 i@148@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@69@11@69@32|)))
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 78 | right@23@01 == storeIndex@54@01]
(assert (= right@23@01 storeIndex@54@01))
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 ($Snap.combine ($Snap.first $t@149@01) ($Snap.second $t@149@01))))
; [eval] loc(a, i)
(declare-const sm@150@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@150@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@149@01))))
(assert (=
  ($Snap.second $t@149@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@149@01))
    ($Snap.second ($Snap.second $t@149@01)))))
; [eval] i != j
; [then-branch: 93 | right@23@01 != storeIndex@54@01 | dead]
; [else-branch: 93 | right@23@01 == storeIndex@54@01 | live]
(push) ; 9
; [else-branch: 93 | right@23@01 == storeIndex@54@01]
(assert (= ($Snap.first ($Snap.second $t@149@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@149@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@149@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@149@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
(declare-const sm@151@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
  :qid |qp.fvfValDef16|)))
(declare-const pm@152@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@152@01  $FPM) r)
    (+
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- $Perm.Write (pTaken@129@01 r))
        $Perm.No)
      (ite (= r (loc<Ref> a@21@01 right@23@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_val (as pm@152@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_val (as pm@152@01  $FPM) (loc<Ref> a@21@01 right@23@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 10
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 storeIndex@54@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@149@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
    :qid |qp.fvfValDef16|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))
      (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 storeIndex@54@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(push) ; 10
(assert (not (and
  (img@59@01 (loc<Ref> a@21@01 right@23@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@58@01 (loc<Ref> a@21@01 right@23@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) (loc<Ref> a@21@01 right@23@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; pw := pw[storeIndex - left := pw[right - left]][right - left :=
;   pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[right - left]][right - left := pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[right - left]]
; [eval] storeIndex - left
; [eval] pw[right - left]
; [eval] right - left
(set-option :timeout 0)
(push) ; 10
(assert (not (>= (- right@23@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< (- right@23@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (>= (- storeIndex@54@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< (- storeIndex@54@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] right - left
; [eval] pw[storeIndex - left]
; [eval] storeIndex - left
(push) ; 10
(assert (not (>= (- storeIndex@54@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< (- storeIndex@54@01 left@22@01) (Seq_length pw@53@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (>= (- right@23@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  (- right@23@01 left@22@01)
  (Seq_length
    (Seq_append
      (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
      (Seq_append
        (Seq_singleton (Seq_index pw@53@01 (- right@23@01 left@22@01)))
        (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const pw@153@01 Seq<Int>)
(assert (=
  pw@153@01
  (Seq_append
    (Seq_take
      (Seq_append
        (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
        (Seq_append
          (Seq_singleton (Seq_index pw@53@01 (- right@23@01 left@22@01)))
          (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))
      (- right@23@01 left@22@01))
    (Seq_append
      (Seq_singleton (Seq_index pw@53@01 (- storeIndex@54@01 left@22@01)))
      (Seq_drop
        (Seq_append
          (Seq_take pw@53@01 (- storeIndex@54@01 left@22@01))
          (Seq_append
            (Seq_singleton (Seq_index pw@53@01 (- right@23@01 left@22@01)))
            (Seq_drop pw@53@01 (+ (- storeIndex@54@01 left@22@01) 1))))
        (+ (- right@23@01 left@22@01) 1))))))
; [eval] left <= storeIndex
; [eval] storeIndex <= right
(push) ; 10
(assert (not (<= storeIndex@54@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= storeIndex@54@01 right@23@01))
(declare-const i@154@01 Int)
(push) ; 10
; [eval] left <= i && i <= right
; [eval] left <= i
(push) ; 11
; [then-branch: 94 | !(left@22@01 <= i@154@01) | live]
; [else-branch: 94 | left@22@01 <= i@154@01 | live]
(push) ; 12
; [then-branch: 94 | !(left@22@01 <= i@154@01)]
(assert (not (<= left@22@01 i@154@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 94 | left@22@01 <= i@154@01]
(assert (<= left@22@01 i@154@01))
; [eval] i <= right
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= left@22@01 i@154@01) (not (<= left@22@01 i@154@01))))
(assert (and (<= left@22@01 i@154@01) (<= i@154@01 right@23@01)))
; [eval] loc(a, i)
(pop) ; 10
(declare-fun inv@155@01 ($Ref) Int)
(declare-fun img@156@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@154@01 Int)) (!
  (=>
    (and (<= left@22@01 i@154@01) (<= i@154@01 right@23@01))
    (or (<= left@22@01 i@154@01) (not (<= left@22@01 i@154@01))))
  :pattern ((loc<Ref> a@21@01 i@154@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((i1@154@01 Int) (i2@154@01 Int)) (!
  (=>
    (and
      (and (<= left@22@01 i1@154@01) (<= i1@154@01 right@23@01))
      (and (<= left@22@01 i2@154@01) (<= i2@154@01 right@23@01))
      (= (loc<Ref> a@21@01 i1@154@01) (loc<Ref> a@21@01 i2@154@01)))
    (= i1@154@01 i2@154@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@154@01 Int)) (!
  (=>
    (and (<= left@22@01 i@154@01) (<= i@154@01 right@23@01))
    (and
      (= (inv@155@01 (loc<Ref> a@21@01 i@154@01)) i@154@01)
      (img@156@01 (loc<Ref> a@21@01 i@154@01))))
  :pattern ((loc<Ref> a@21@01 i@154@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@156@01 r)
      (and (<= left@22@01 (inv@155@01 r)) (<= (inv@155@01 r) right@23@01)))
    (= (loc<Ref> a@21@01 (inv@155@01 r)) r))
  :pattern ((inv@155@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@157@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@22@01 (inv@155@01 r)) (<= (inv@155@01 r) right@23@01))
      (img@156@01 r)
      (= r (loc<Ref> a@21@01 (inv@155@01 r))))
    ($Perm.min
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- $Perm.Write (pTaken@129@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@158@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@22@01 (inv@155@01 r)) (<= (inv@155@01 r) right@23@01))
      (img@156@01 r)
      (= r (loc<Ref> a@21@01 (inv@155@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 right@23@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@157@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (- $Perm.Write (pTaken@129@01 r))
        $Perm.No)
      (pTaken@157@01 r))
    $Perm.No)
  
  :qid |quant-u-19040|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@22@01 (inv@155@01 r)) (<= (inv@155@01 r) right@23@01))
      (img@156@01 r)
      (= r (loc<Ref> a@21@01 (inv@155@01 r))))
    (= (- $Perm.Write (pTaken@157@01 r)) $Perm.No))
  
  :qid |quant-u-19041|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)
    (pTaken@158@01 (loc<Ref> a@21@01 right@23@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@22@01 (inv@155@01 r)) (<= (inv@155@01 r) right@23@01))
      (img@156@01 r)
      (= r (loc<Ref> a@21@01 (inv@155@01 r))))
    (= (- (- $Perm.Write (pTaken@157@01 r)) (pTaken@158@01 r)) $Perm.No))
  
  :qid |quant-u-19043|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, storeIndex).val == old(loc(a, pivotIndex).val)
; [eval] loc(a, storeIndex)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
    :qid |qp.fvfValDef16|))))
(set-option :timeout 0)
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))
      (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 storeIndex@54@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pivotIndex).val)
; [eval] loc(a, pivotIndex)
(push) ; 10
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 pivotIndex@24@01))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)))
    (<= (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (=
  ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 pivotIndex@24@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 pivotIndex@24@01))))
; [eval] (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val < loc(a, storeIndex).val)
(declare-const i@159@01 Int)
(push) ; 10
; [eval] left <= i && i < storeIndex ==> loc(a, i).val < loc(a, storeIndex).val
; [eval] left <= i && i < storeIndex
; [eval] left <= i
(push) ; 11
; [then-branch: 95 | !(left@22@01 <= i@159@01) | live]
; [else-branch: 95 | left@22@01 <= i@159@01 | live]
(push) ; 12
; [then-branch: 95 | !(left@22@01 <= i@159@01)]
(assert (not (<= left@22@01 i@159@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 95 | left@22@01 <= i@159@01]
(assert (<= left@22@01 i@159@01))
; [eval] i < storeIndex
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= left@22@01 i@159@01) (not (<= left@22@01 i@159@01))))
(push) ; 11
; [then-branch: 96 | left@22@01 <= i@159@01 && i@159@01 < storeIndex@54@01 | live]
; [else-branch: 96 | !(left@22@01 <= i@159@01 && i@159@01 < storeIndex@54@01) | live]
(push) ; 12
; [then-branch: 96 | left@22@01 <= i@159@01 && i@159@01 < storeIndex@54@01]
(assert (and (<= left@22@01 i@159@01) (< i@159@01 storeIndex@54@01)))
; [eval] loc(a, i).val < loc(a, storeIndex).val
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
    :qid |qp.fvfValDef16|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 i@159@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 i@159@01))))
      (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 i@159@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 i@159@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, storeIndex)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
    :qid |qp.fvfValDef16|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))
      (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 storeIndex@54@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 96 | !(left@22@01 <= i@159@01 && i@159@01 < storeIndex@54@01)]
(assert (not (and (<= left@22@01 i@159@01) (< i@159@01 storeIndex@54@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
  :qid |qp.fvfValDef16|)))
; Joined path conditions
(assert (or
  (not (and (<= left@22@01 i@159@01) (< i@159@01 storeIndex@54@01)))
  (and (<= left@22@01 i@159@01) (< i@159@01 storeIndex@54@01))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
  :qid |qp.fvfValDef16|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@159@01 Int)) (!
  (and
    (or (<= left@22@01 i@159@01) (not (<= left@22@01 i@159@01)))
    (or
      (not (and (<= left@22@01 i@159@01) (< i@159@01 storeIndex@54@01)))
      (and (<= left@22@01 i@159@01) (< i@159@01 storeIndex@54@01))))
  :pattern ((loc<Ref> a@21@01 i@159@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99-aux|)))
(push) ; 10
(assert (not (forall ((i@159@01 Int)) (!
  (=>
    (and (<= left@22@01 i@159@01) (< i@159@01 storeIndex@54@01))
    (<
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 i@159@01))
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))))
  :pattern ((loc<Ref> a@21@01 i@159@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@159@01 Int)) (!
  (=>
    (and (<= left@22@01 i@159@01) (< i@159@01 storeIndex@54@01))
    (<
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 i@159@01))
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))))
  :pattern ((loc<Ref> a@21@01 i@159@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99|)))
; [eval] (forall i: Int :: { loc(a, i) } storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val)
(declare-const i@160@01 Int)
(push) ; 10
; [eval] storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val
; [eval] storeIndex < i && i <= right
; [eval] storeIndex < i
(push) ; 11
; [then-branch: 97 | !(storeIndex@54@01 < i@160@01) | live]
; [else-branch: 97 | storeIndex@54@01 < i@160@01 | live]
(push) ; 12
; [then-branch: 97 | !(storeIndex@54@01 < i@160@01)]
(assert (not (< storeIndex@54@01 i@160@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 97 | storeIndex@54@01 < i@160@01]
(assert (< storeIndex@54@01 i@160@01))
; [eval] i <= right
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< storeIndex@54@01 i@160@01) (not (< storeIndex@54@01 i@160@01))))
(push) ; 11
; [then-branch: 98 | storeIndex@54@01 < i@160@01 && i@160@01 <= right@23@01 | live]
; [else-branch: 98 | !(storeIndex@54@01 < i@160@01 && i@160@01 <= right@23@01) | live]
(push) ; 12
; [then-branch: 98 | storeIndex@54@01 < i@160@01 && i@160@01 <= right@23@01]
(assert (and (< storeIndex@54@01 i@160@01) (<= i@160@01 right@23@01)))
; [eval] loc(a, storeIndex).val <= loc(a, i).val
; [eval] loc(a, storeIndex)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
    :qid |qp.fvfValDef16|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 storeIndex@54@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 storeIndex@54@01))))
      (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 storeIndex@54@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 storeIndex@54@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
    :qid |qp.fvfValDef16|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 i@160@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 i@160@01))))
      (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 i@160@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 i@160@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 98 | !(storeIndex@54@01 < i@160@01 && i@160@01 <= right@23@01)]
(assert (not (and (< storeIndex@54@01 i@160@01) (<= i@160@01 right@23@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
  :qid |qp.fvfValDef16|)))
; Joined path conditions
(assert (or
  (not (and (< storeIndex@54@01 i@160@01) (<= i@160@01 right@23@01)))
  (and (< storeIndex@54@01 i@160@01) (<= i@160@01 right@23@01))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
  :qid |qp.fvfValDef16|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@160@01 Int)) (!
  (and
    (or (< storeIndex@54@01 i@160@01) (not (< storeIndex@54@01 i@160@01)))
    (or
      (not (and (< storeIndex@54@01 i@160@01) (<= i@160@01 right@23@01)))
      (and (< storeIndex@54@01 i@160@01) (<= i@160@01 right@23@01))))
  :pattern ((loc<Ref> a@21@01 i@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100-aux|)))
(push) ; 10
(assert (not (forall ((i@160@01 Int)) (!
  (=>
    (and (< storeIndex@54@01 i@160@01) (<= i@160@01 right@23@01))
    (<=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 i@160@01))))
  :pattern ((loc<Ref> a@21@01 i@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@160@01 Int)) (!
  (=>
    (and (< storeIndex@54@01 i@160@01) (<= i@160@01 right@23@01))
    (<=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@54@01))
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 i@160@01))))
  :pattern ((loc<Ref> a@21@01 i@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(push) ; 10
(assert (not (= (Seq_length pw@153@01) (- (+ right@23@01 1) left@22@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length pw@153@01) (- (+ right@23@01 1) left@22@01)))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@161@01 Int)
(push) ; 10
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 11
; [then-branch: 99 | !(0 <= i@161@01) | live]
; [else-branch: 99 | 0 <= i@161@01 | live]
(push) ; 12
; [then-branch: 99 | !(0 <= i@161@01)]
(assert (not (<= 0 i@161@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 99 | 0 <= i@161@01]
(assert (<= 0 i@161@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@161@01) (not (<= 0 i@161@01))))
(push) ; 11
; [then-branch: 100 | 0 <= i@161@01 && i@161@01 < |pw@153@01| | live]
; [else-branch: 100 | !(0 <= i@161@01 && i@161@01 < |pw@153@01|) | live]
(push) ; 12
; [then-branch: 100 | 0 <= i@161@01 && i@161@01 < |pw@153@01|]
(assert (and (<= 0 i@161@01) (< i@161@01 (Seq_length pw@153@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 13
(assert (not (>= i@161@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
; [then-branch: 101 | !(left@22@01 <= pw@153@01[i@161@01]) | live]
; [else-branch: 101 | left@22@01 <= pw@153@01[i@161@01] | live]
(push) ; 14
; [then-branch: 101 | !(left@22@01 <= pw@153@01[i@161@01])]
(assert (not (<= left@22@01 (Seq_index pw@153@01 i@161@01))))
(pop) ; 14
(push) ; 14
; [else-branch: 101 | left@22@01 <= pw@153@01[i@161@01]]
(assert (<= left@22@01 (Seq_index pw@153@01 i@161@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 15
(assert (not (>= i@161@01 0)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@153@01 i@161@01))
  (not (<= left@22@01 (Seq_index pw@153@01 i@161@01)))))
(pop) ; 12
(push) ; 12
; [else-branch: 100 | !(0 <= i@161@01 && i@161@01 < |pw@153@01|)]
(assert (not (and (<= 0 i@161@01) (< i@161@01 (Seq_length pw@153@01)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (and (<= 0 i@161@01) (< i@161@01 (Seq_length pw@153@01)))
  (and
    (<= 0 i@161@01)
    (< i@161@01 (Seq_length pw@153@01))
    (or
      (<= left@22@01 (Seq_index pw@153@01 i@161@01))
      (not (<= left@22@01 (Seq_index pw@153@01 i@161@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@161@01) (< i@161@01 (Seq_length pw@153@01))))
  (and (<= 0 i@161@01) (< i@161@01 (Seq_length pw@153@01)))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@161@01 Int)) (!
  (and
    (or (<= 0 i@161@01) (not (<= 0 i@161@01)))
    (=>
      (and (<= 0 i@161@01) (< i@161@01 (Seq_length pw@153@01)))
      (and
        (<= 0 i@161@01)
        (< i@161@01 (Seq_length pw@153@01))
        (or
          (<= left@22@01 (Seq_index pw@153@01 i@161@01))
          (not (<= left@22@01 (Seq_index pw@153@01 i@161@01))))))
    (or
      (not (and (<= 0 i@161@01) (< i@161@01 (Seq_length pw@153@01))))
      (and (<= 0 i@161@01) (< i@161@01 (Seq_length pw@153@01)))))
  :pattern ((Seq_index pw@153@01 i@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82-aux|)))
(push) ; 10
(assert (not (forall ((i@161@01 Int)) (!
  (=>
    (and (<= 0 i@161@01) (< i@161@01 (Seq_length pw@153@01)))
    (and
      (<= left@22@01 (Seq_index pw@153@01 i@161@01))
      (<= (Seq_index pw@153@01 i@161@01) right@23@01)))
  :pattern ((Seq_index pw@153@01 i@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@161@01 Int)) (!
  (=>
    (and (<= 0 i@161@01) (< i@161@01 (Seq_length pw@153@01)))
    (and
      (<= left@22@01 (Seq_index pw@153@01 i@161@01))
      (<= (Seq_index pw@153@01 i@161@01) right@23@01)))
  :pattern ((Seq_index pw@153@01 i@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82|)))
; [eval] (forall i: Int, j: Int :: { pw[i], pw[j] } 0 <= i && (i < j && j < |pw|) ==> pw[i] != pw[j])
(declare-const i@162@01 Int)
(declare-const j@163@01 Int)
(push) ; 10
; [eval] 0 <= i && (i < j && j < |pw|) ==> pw[i] != pw[j]
; [eval] 0 <= i && (i < j && j < |pw|)
; [eval] 0 <= i
(push) ; 11
; [then-branch: 102 | !(0 <= i@162@01) | live]
; [else-branch: 102 | 0 <= i@162@01 | live]
(push) ; 12
; [then-branch: 102 | !(0 <= i@162@01)]
(assert (not (<= 0 i@162@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 102 | 0 <= i@162@01]
(assert (<= 0 i@162@01))
; [eval] i < j
(push) ; 13
; [then-branch: 103 | !(i@162@01 < j@163@01) | live]
; [else-branch: 103 | i@162@01 < j@163@01 | live]
(push) ; 14
; [then-branch: 103 | !(i@162@01 < j@163@01)]
(assert (not (< i@162@01 j@163@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 103 | i@162@01 < j@163@01]
(assert (< i@162@01 j@163@01))
; [eval] j < |pw|
; [eval] |pw|
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or (< i@162@01 j@163@01) (not (< i@162@01 j@163@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@162@01)
  (and (<= 0 i@162@01) (or (< i@162@01 j@163@01) (not (< i@162@01 j@163@01))))))
(assert (or (<= 0 i@162@01) (not (<= 0 i@162@01))))
(push) ; 11
; [then-branch: 104 | 0 <= i@162@01 && i@162@01 < j@163@01 && j@163@01 < |pw@153@01| | live]
; [else-branch: 104 | !(0 <= i@162@01 && i@162@01 < j@163@01 && j@163@01 < |pw@153@01|) | live]
(push) ; 12
; [then-branch: 104 | 0 <= i@162@01 && i@162@01 < j@163@01 && j@163@01 < |pw@153@01|]
(assert (and
  (<= 0 i@162@01)
  (and (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01)))))
; [eval] pw[i] != pw[j]
; [eval] pw[i]
(push) ; 13
(assert (not (>= i@162@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< i@162@01 (Seq_length pw@153@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] pw[j]
(push) ; 13
(assert (not (>= j@163@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 104 | !(0 <= i@162@01 && i@162@01 < j@163@01 && j@163@01 < |pw@153@01|)]
(assert (not
  (and
    (<= 0 i@162@01)
    (and (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@162@01)
    (and (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01))))
  (and (<= 0 i@162@01) (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@162@01)
      (and (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01)))))
  (and
    (<= 0 i@162@01)
    (and (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01))))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@162@01 Int) (j@163@01 Int)) (!
  (and
    (=>
      (<= 0 i@162@01)
      (and
        (<= 0 i@162@01)
        (or (< i@162@01 j@163@01) (not (< i@162@01 j@163@01)))))
    (or (<= 0 i@162@01) (not (<= 0 i@162@01)))
    (=>
      (and
        (<= 0 i@162@01)
        (and (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01))))
      (and
        (<= 0 i@162@01)
        (< i@162@01 j@163@01)
        (< j@163@01 (Seq_length pw@153@01))))
    (or
      (not
        (and
          (<= 0 i@162@01)
          (and (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01)))))
      (and
        (<= 0 i@162@01)
        (and (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01))))))
  :pattern ((Seq_index pw@153@01 i@162@01) (Seq_index pw@153@01 j@163@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@67@11@67@82-aux|)))
(push) ; 10
(assert (not (forall ((i@162@01 Int) (j@163@01 Int)) (!
  (=>
    (and
      (<= 0 i@162@01)
      (and (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01))))
    (not (= (Seq_index pw@153@01 i@162@01) (Seq_index pw@153@01 j@163@01))))
  :pattern ((Seq_index pw@153@01 i@162@01) (Seq_index pw@153@01 j@163@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@67@11@67@82|))))
(check-sat)
; unsat
(pop) ; 10
; 0.02s
; (get-info :all-statistics)
(assert (forall ((i@162@01 Int) (j@163@01 Int)) (!
  (=>
    (and
      (<= 0 i@162@01)
      (and (< i@162@01 j@163@01) (< j@163@01 (Seq_length pw@153@01))))
    (not (= (Seq_index pw@153@01 i@162@01) (Seq_index pw@153@01 j@163@01))))
  :pattern ((Seq_index pw@153@01 i@162@01) (Seq_index pw@153@01 j@163@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@67@11@67@82|)))
; [eval] (forall i: Int :: { old(pw[i]) } 0 <= i && i < |pw| ==> loc(a, left + i).val == old(loc(a, pw[i]).val))
(declare-const i@164@01 Int)
(push) ; 10
; [eval] 0 <= i && i < |pw| ==> loc(a, left + i).val == old(loc(a, pw[i]).val)
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 11
; [then-branch: 105 | !(0 <= i@164@01) | live]
; [else-branch: 105 | 0 <= i@164@01 | live]
(push) ; 12
; [then-branch: 105 | !(0 <= i@164@01)]
(assert (not (<= 0 i@164@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 105 | 0 <= i@164@01]
(assert (<= 0 i@164@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@164@01) (not (<= 0 i@164@01))))
(push) ; 11
; [then-branch: 106 | 0 <= i@164@01 && i@164@01 < |pw@153@01| | live]
; [else-branch: 106 | !(0 <= i@164@01 && i@164@01 < |pw@153@01|) | live]
(push) ; 12
; [then-branch: 106 | 0 <= i@164@01 && i@164@01 < |pw@153@01|]
(assert (and (<= 0 i@164@01) (< i@164@01 (Seq_length pw@153@01))))
; [eval] loc(a, left + i).val == old(loc(a, pw[i]).val)
; [eval] loc(a, left + i)
; [eval] left + i
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@59@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
    :qid |qp.fvfValDef16|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@59@01 (loc<Ref> a@21@01 (+ left@22@01 i@164@01)))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@58@01 (loc<Ref> a@21@01 (+ left@22@01 i@164@01)))))
      (- $Perm.Write (pTaken@129@01 (loc<Ref> a@21@01 (+ left@22@01 i@164@01))))
      $Perm.No)
    (ite
      (=
        (loc<Ref> a@21@01 (+ left@22@01 i@164@01))
        (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i]).val)
; [eval] loc(a, pw[i])
; [eval] pw[i]
(push) ; 13
(assert (not (>= i@164@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@153@01 i@164@01)))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@153@01 i@164@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@153@01 i@164@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 106 | !(0 <= i@164@01 && i@164@01 < |pw@153@01|)]
(assert (not (and (<= 0 i@164@01) (< i@164@01 (Seq_length pw@153@01)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
  :qid |qp.fvfValDef16|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@164@01) (< i@164@01 (Seq_length pw@153@01))))
  (and (<= 0 i@164@01) (< i@164@01 (Seq_length pw@153@01)))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@59@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@58@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@129@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@150@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@151@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@150@01  $FVF<val>) r))
  :qid |qp.fvfValDef16|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@164@01 Int)) (!
  (and
    (or (<= 0 i@164@01) (not (<= 0 i@164@01)))
    (or
      (not (and (<= 0 i@164@01) (< i@164@01 (Seq_length pw@153@01))))
      (and (<= 0 i@164@01) (< i@164@01 (Seq_length pw@153@01)))))
  :pattern ((Seq_index pw@153@01 i@164@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@69@11@69@32-aux|)))
(push) ; 10
(assert (not (forall ((i@164@01 Int)) (!
  (=>
    (and (<= 0 i@164@01) (< i@164@01 (Seq_length pw@153@01)))
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i@164@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@153@01
        i@164@01)))))
  :pattern ((Seq_index pw@153@01 i@164@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@69@11@69@32|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@164@01 Int)) (!
  (=>
    (and (<= 0 i@164@01) (< i@164@01 (Seq_length pw@153@01)))
    (=
      ($FVF.lookup_val (as sm@151@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i@164@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@153@01
        i@164@01)))))
  :pattern ((Seq_index pw@153@01 i@164@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@69@11@69@32|)))
(pop) ; 9
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 77 | j@55@01 < right@23@01]
(assert (< j@55@01 right@23@01))
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 19 | pivotIndex@24@01 == right@23@01]
(assert (= pivotIndex@24@01 right@23@01))
(declare-const $t@165@01 $Snap)
(assert (= $t@165@01 ($Snap.combine ($Snap.first $t@165@01) ($Snap.second $t@165@01))))
; [eval] loc(a, i)
(declare-const sm@166@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@166@01  $FVF<val>) (loc<Ref> a@21@01 pivotIndex@24@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@165@01))))
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 pivotIndex@24@01) (loc<Ref> a@21@01 pivotIndex@24@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 pivotIndex@24@01) (loc<Ref> a@21@01 pivotIndex@24@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 pivotIndex@24@01) (loc<Ref> a@21@01 pivotIndex@24@01))
  (not (= (loc<Ref> a@21@01 pivotIndex@24@01) $Ref.null))))
(assert (=
  ($Snap.second $t@165@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@165@01))
    ($Snap.second ($Snap.second $t@165@01)))))
; [eval] i != j
; [then-branch: 107 | pivotIndex@24@01 != right@23@01 | dead]
; [else-branch: 107 | pivotIndex@24@01 == right@23@01 | live]
(push) ; 4
; [else-branch: 107 | pivotIndex@24@01 == right@23@01]
(assert (= ($Snap.first ($Snap.second $t@165@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@165@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@165@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@165@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@165@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
(declare-const sm@167@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
  :qid |qp.fvfValDef19|)))
(declare-const pm@168@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@168@01  $FPM) r)
    (+
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (- $Perm.Write (pTaken@45@01 r))
        $Perm.No)
      (ite (= r (loc<Ref> a@21@01 pivotIndex@24@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_val (as pm@168@01  $FPM) r))
  :qid |qp.resPrmSumDef20|)))
(push) ; 5
(assert (not (<
  $Perm.No
  ($FVF.perm_val (as pm@168@01  $FPM) (loc<Ref> a@21@01 pivotIndex@24@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 5
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 right@23@01))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 right@23@01)))
    (<= (inv@29@01 (loc<Ref> a@21@01 right@23@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@167@01  $FVF<val>) (loc<Ref> a@21@01 pivotIndex@24@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 right@23@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@165@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 pivotIndex@24@01))
      (=
        ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
    :qid |qp.fvfValDef19|))))
(push) ; 5
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@30@01 (loc<Ref> a@21@01 right@23@01))
        (and
          (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 right@23@01)))
          (<= (inv@29@01 (loc<Ref> a@21@01 right@23@01)) right@23@01)))
      (- $Perm.Write (pTaken@45@01 (loc<Ref> a@21@01 right@23@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 pivotIndex@24@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(push) ; 5
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 pivotIndex@24@01))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)))
    (<= (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@167@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 pivotIndex@24@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; pw := pw[pivotIndex - left := pw[right - left]][right - left :=
;   pw[pivotIndex - left]]
; [eval] pw[pivotIndex - left := pw[right - left]][right - left := pw[pivotIndex - left]]
; [eval] pw[pivotIndex - left := pw[right - left]]
; [eval] pivotIndex - left
; [eval] pw[right - left]
; [eval] right - left
(set-option :timeout 0)
(push) ; 5
(assert (not (>= (- right@23@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- right@23@01 left@22@01) (Seq_length pw@44@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (>= (- pivotIndex@24@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- pivotIndex@24@01 left@22@01) (Seq_length pw@44@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] right - left
; [eval] pw[pivotIndex - left]
; [eval] pivotIndex - left
(push) ; 5
(assert (not (>= (- pivotIndex@24@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- pivotIndex@24@01 left@22@01) (Seq_length pw@44@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (>= (- right@23@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  (- right@23@01 left@22@01)
  (Seq_length
    (Seq_append
      (Seq_take pw@44@01 (- pivotIndex@24@01 left@22@01))
      (Seq_append
        (Seq_singleton (Seq_index pw@44@01 (- right@23@01 left@22@01)))
        (Seq_drop pw@44@01 (+ (- pivotIndex@24@01 left@22@01) 1))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const pw@169@01 Seq<Int>)
(assert (=
  pw@169@01
  (Seq_append
    (Seq_take
      (Seq_append
        (Seq_take pw@44@01 (- pivotIndex@24@01 left@22@01))
        (Seq_append
          (Seq_singleton (Seq_index pw@44@01 (- right@23@01 left@22@01)))
          (Seq_drop pw@44@01 (+ (- pivotIndex@24@01 left@22@01) 1))))
      (- right@23@01 left@22@01))
    (Seq_append
      (Seq_singleton (Seq_index pw@44@01 (- pivotIndex@24@01 left@22@01)))
      (Seq_drop
        (Seq_append
          (Seq_take pw@44@01 (- pivotIndex@24@01 left@22@01))
          (Seq_append
            (Seq_singleton (Seq_index pw@44@01 (- right@23@01 left@22@01)))
            (Seq_drop pw@44@01 (+ (- pivotIndex@24@01 left@22@01) 1))))
        (+ (- right@23@01 left@22@01) 1))))))
; [exec]
; storeIndex := left
; [exec]
; j := left
(declare-const pw@170@01 Seq<Int>)
(declare-const storeIndex@171@01 Int)
(declare-const j@172@01 Int)
(push) ; 5
; Loop head block: Check well-definedness of invariant
(declare-const $t@173@01 $Snap)
(assert (= $t@173@01 ($Snap.combine ($Snap.first $t@173@01) ($Snap.second $t@173@01))))
(assert (= ($Snap.first $t@173@01) $Snap.unit))
; [eval] left <= j
(assert (<= left@22@01 j@172@01))
(assert (=
  ($Snap.second $t@173@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@173@01))
    ($Snap.second ($Snap.second $t@173@01)))))
(assert (= ($Snap.first ($Snap.second $t@173@01)) $Snap.unit))
; [eval] j <= right
(assert (<= j@172@01 right@23@01))
(assert (=
  ($Snap.second ($Snap.second $t@173@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@173@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@173@01))) $Snap.unit))
; [eval] left <= storeIndex
(assert (<= left@22@01 storeIndex@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@173@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@173@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@173@01))))
  $Snap.unit))
; [eval] storeIndex <= j
(assert (<= storeIndex@171@01 j@172@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))
(declare-const i@174@01 Int)
(push) ; 6
; [eval] (i in [left..right + 1))
; [eval] [left..right + 1)
; [eval] right + 1
(assert (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@174@01))
; [eval] loc(a, i)
(pop) ; 6
(declare-fun inv@175@01 ($Ref) Int)
(declare-fun img@176@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((i1@174@01 Int) (i2@174@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i1@174@01)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i2@174@01)
      (= (loc<Ref> a@21@01 i1@174@01) (loc<Ref> a@21@01 i2@174@01)))
    (= i1@174@01 i2@174@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@174@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@174@01)
    (and
      (= (inv@175@01 (loc<Ref> a@21@01 i@174@01)) i@174@01)
      (img@176@01 (loc<Ref> a@21@01 i@174@01))))
  :pattern ((loc<Ref> a@21@01 i@174@01))
  :qid |quant-u-19045|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@176@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
    (= (loc<Ref> a@21@01 (inv@175@01 r)) r))
  :pattern ((inv@175@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@174@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@174@01)
    (not (= (loc<Ref> a@21@01 i@174@01) $Ref.null)))
  :pattern ((loc<Ref> a@21@01 i@174@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))
  $Snap.unit))
; [eval] loc(a, right).val == pivotValue
; [eval] loc(a, right)
(push) ; 6
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 right@23@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 right@23@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))
  $Snap.unit))
; [eval] (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
(declare-const i@177@01 Int)
(push) ; 6
; [eval] (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue
; [eval] (i in [left..storeIndex))
; [eval] [left..storeIndex)
(push) ; 7
; [then-branch: 108 | i@177@01 in [left@22@01..storeIndex@171@01] | live]
; [else-branch: 108 | !(i@177@01 in [left@22@01..storeIndex@171@01]) | live]
(push) ; 8
; [then-branch: 108 | i@177@01 in [left@22@01..storeIndex@171@01]]
(assert (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
; [eval] loc(a, i).val < pivotValue
; [eval] loc(a, i)
(push) ; 9
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 i@177@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 i@177@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 108 | !(i@177@01 in [left@22@01..storeIndex@171@01])]
(assert (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01)))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@177@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@177@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@177@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  :pattern ((loc<Ref> a@21@01 i@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@177@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01)
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 i@177@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@177@01))
  :pattern ((loc<Ref> a@21@01 i@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
(declare-const i@178@01 Int)
(push) ; 6
; [eval] (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val
; [eval] (i in [storeIndex..j))
; [eval] [storeIndex..j)
(push) ; 7
; [then-branch: 109 | i@178@01 in [storeIndex@171@01..j@172@01] | live]
; [else-branch: 109 | !(i@178@01 in [storeIndex@171@01..j@172@01]) | live]
(push) ; 8
; [then-branch: 109 | i@178@01 in [storeIndex@171@01..j@172@01]]
(assert (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
; [eval] pivotValue <= loc(a, i).val
; [eval] loc(a, i)
(push) ; 9
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 i@178@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 i@178@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 109 | !(i@178@01 in [storeIndex@171@01..j@172@01])]
(assert (not (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01)))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@178@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
    (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  :pattern ((Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@172@01)
    i@178@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@178@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
    (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@172@01)
    i@178@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@178@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
    (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  :pattern ((loc<Ref> a@21@01 i@178@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@178@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 i@178@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@172@01)
    i@178@01))
  :pattern ((loc<Ref> a@21@01 i@178@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))
  $Snap.unit))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(assert (= (Seq_length pw@170@01) (- (+ right@23@01 1) left@22@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@179@01 Int)
(push) ; 6
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 7
; [then-branch: 110 | !(0 <= i@179@01) | live]
; [else-branch: 110 | 0 <= i@179@01 | live]
(push) ; 8
; [then-branch: 110 | !(0 <= i@179@01)]
(assert (not (<= 0 i@179@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 110 | 0 <= i@179@01]
(assert (<= 0 i@179@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@179@01) (not (<= 0 i@179@01))))
(push) ; 7
; [then-branch: 111 | 0 <= i@179@01 && i@179@01 < |pw@170@01| | live]
; [else-branch: 111 | !(0 <= i@179@01 && i@179@01 < |pw@170@01|) | live]
(push) ; 8
; [then-branch: 111 | 0 <= i@179@01 && i@179@01 < |pw@170@01|]
(assert (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 9
(assert (not (>= i@179@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
; [then-branch: 112 | !(left@22@01 <= pw@170@01[i@179@01]) | live]
; [else-branch: 112 | left@22@01 <= pw@170@01[i@179@01] | live]
(push) ; 10
; [then-branch: 112 | !(left@22@01 <= pw@170@01[i@179@01])]
(assert (not (<= left@22@01 (Seq_index pw@170@01 i@179@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 112 | left@22@01 <= pw@170@01[i@179@01]]
(assert (<= left@22@01 (Seq_index pw@170@01 i@179@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 11
(assert (not (>= i@179@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@170@01 i@179@01))
  (not (<= left@22@01 (Seq_index pw@170@01 i@179@01)))))
(pop) ; 8
(push) ; 8
; [else-branch: 111 | !(0 <= i@179@01 && i@179@01 < |pw@170@01|)]
(assert (not (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01)))
  (and
    (<= 0 i@179@01)
    (< i@179@01 (Seq_length pw@170@01))
    (or
      (<= left@22@01 (Seq_index pw@170@01 i@179@01))
      (not (<= left@22@01 (Seq_index pw@170@01 i@179@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01))))
  (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@179@01 Int)) (!
  (and
    (or (<= 0 i@179@01) (not (<= 0 i@179@01)))
    (=>
      (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01)))
      (and
        (<= 0 i@179@01)
        (< i@179@01 (Seq_length pw@170@01))
        (or
          (<= left@22@01 (Seq_index pw@170@01 i@179@01))
          (not (<= left@22@01 (Seq_index pw@170@01 i@179@01))))))
    (or
      (not (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01))))
      (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01)))))
  :pattern ((Seq_index pw@170@01 i@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(assert (forall ((i@179@01 Int)) (!
  (=>
    (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01)))
    (and
      (<= left@22@01 (Seq_index pw@170@01 i@179@01))
      (<= (Seq_index pw@170@01 i@179@01) right@23@01)))
  :pattern ((Seq_index pw@170@01 i@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))))
  $Snap.unit))
; [eval] (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
(declare-const i@180@01 Int)
(declare-const k@181@01 Int)
(push) ; 6
; [eval] 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]
; [eval] 0 <= i && (i < k && k < |pw|)
; [eval] 0 <= i
(push) ; 7
; [then-branch: 113 | !(0 <= i@180@01) | live]
; [else-branch: 113 | 0 <= i@180@01 | live]
(push) ; 8
; [then-branch: 113 | !(0 <= i@180@01)]
(assert (not (<= 0 i@180@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 113 | 0 <= i@180@01]
(assert (<= 0 i@180@01))
; [eval] i < k
(push) ; 9
; [then-branch: 114 | !(i@180@01 < k@181@01) | live]
; [else-branch: 114 | i@180@01 < k@181@01 | live]
(push) ; 10
; [then-branch: 114 | !(i@180@01 < k@181@01)]
(assert (not (< i@180@01 k@181@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 114 | i@180@01 < k@181@01]
(assert (< i@180@01 k@181@01))
; [eval] k < |pw|
; [eval] |pw|
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< i@180@01 k@181@01) (not (< i@180@01 k@181@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@180@01)
  (and (<= 0 i@180@01) (or (< i@180@01 k@181@01) (not (< i@180@01 k@181@01))))))
(assert (or (<= 0 i@180@01) (not (<= 0 i@180@01))))
(push) ; 7
; [then-branch: 115 | 0 <= i@180@01 && i@180@01 < k@181@01 && k@181@01 < |pw@170@01| | live]
; [else-branch: 115 | !(0 <= i@180@01 && i@180@01 < k@181@01 && k@181@01 < |pw@170@01|) | live]
(push) ; 8
; [then-branch: 115 | 0 <= i@180@01 && i@180@01 < k@181@01 && k@181@01 < |pw@170@01|]
(assert (and
  (<= 0 i@180@01)
  (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01)))))
; [eval] pw[i] != pw[k]
; [eval] pw[i]
(push) ; 9
(assert (not (>= i@180@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i@180@01 (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] pw[k]
(push) ; 9
(assert (not (>= k@181@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 115 | !(0 <= i@180@01 && i@180@01 < k@181@01 && k@181@01 < |pw@170@01|)]
(assert (not
  (and
    (<= 0 i@180@01)
    (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@180@01)
    (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01))))
  (and (<= 0 i@180@01) (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@180@01)
      (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01)))))
  (and
    (<= 0 i@180@01)
    (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@180@01 Int) (k@181@01 Int)) (!
  (and
    (=>
      (<= 0 i@180@01)
      (and
        (<= 0 i@180@01)
        (or (< i@180@01 k@181@01) (not (< i@180@01 k@181@01)))))
    (or (<= 0 i@180@01) (not (<= 0 i@180@01)))
    (=>
      (and
        (<= 0 i@180@01)
        (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01))))
      (and
        (<= 0 i@180@01)
        (< i@180@01 k@181@01)
        (< k@181@01 (Seq_length pw@170@01))))
    (or
      (not
        (and
          (<= 0 i@180@01)
          (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01)))))
      (and
        (<= 0 i@180@01)
        (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01))))))
  :pattern ((Seq_index pw@170@01 i@180@01) (Seq_index pw@170@01 k@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(assert (forall ((i@180@01 Int) (k@181@01 Int)) (!
  (=>
    (and
      (<= 0 i@180@01)
      (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01))))
    (not (= (Seq_index pw@170@01 i@180@01) (Seq_index pw@170@01 k@181@01))))
  :pattern ((Seq_index pw@170@01 i@180@01) (Seq_index pw@170@01 k@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))))
  $Snap.unit))
; [eval] (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
(declare-const i$0@182@01 Int)
(push) ; 6
; [eval] 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] 0 <= i$0 && i$0 < |pw|
; [eval] 0 <= i$0
(push) ; 7
; [then-branch: 116 | !(0 <= i$0@182@01) | live]
; [else-branch: 116 | 0 <= i$0@182@01 | live]
(push) ; 8
; [then-branch: 116 | !(0 <= i$0@182@01)]
(assert (not (<= 0 i$0@182@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 116 | 0 <= i$0@182@01]
(assert (<= 0 i$0@182@01))
; [eval] i$0 < |pw|
; [eval] |pw|
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i$0@182@01) (not (<= 0 i$0@182@01))))
(push) ; 7
; [then-branch: 117 | 0 <= i$0@182@01 && i$0@182@01 < |pw@170@01| | live]
; [else-branch: 117 | !(0 <= i$0@182@01 && i$0@182@01 < |pw@170@01|) | live]
(push) ; 8
; [then-branch: 117 | 0 <= i$0@182@01 && i$0@182@01 < |pw@170@01|]
(assert (and (<= 0 i$0@182@01) (< i$0@182@01 (Seq_length pw@170@01))))
; [eval] loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] loc(a, left + i$0)
; [eval] left + i$0
(push) ; 9
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@182@01)))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@182@01)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i$0]).val)
; [eval] loc(a, pw[i$0])
; [eval] pw[i$0]
(push) ; 9
(assert (not (>= i$0@182@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@170@01 i$0@182@01)))
  (and
    (<=
      left@22@01
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@170@01 i$0@182@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@170@01 i$0@182@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 117 | !(0 <= i$0@182@01 && i$0@182@01 < |pw@170@01|)]
(assert (not (and (<= 0 i$0@182@01) (< i$0@182@01 (Seq_length pw@170@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 i$0@182@01) (< i$0@182@01 (Seq_length pw@170@01))))
  (and (<= 0 i$0@182@01) (< i$0@182@01 (Seq_length pw@170@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$0@182@01 Int)) (!
  (and
    (or (<= 0 i$0@182@01) (not (<= 0 i$0@182@01)))
    (or
      (not (and (<= 0 i$0@182@01) (< i$0@182@01 (Seq_length pw@170@01))))
      (and (<= 0 i$0@182@01) (< i$0@182@01 (Seq_length pw@170@01)))))
  :pattern ((Seq_index pw@170@01 i$0@182@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(assert (forall ((i$0@182@01 Int)) (!
  (=>
    (and (<= 0 i$0@182@01) (< i$0@182@01 (Seq_length pw@170@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@182@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@170@01
        i$0@182@01)))))
  :pattern ((Seq_index pw@170@01 i$0@182@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
(pop) ; 5
(push) ; 5
; Loop head block: Establish invariant
; [eval] left <= j
; [eval] j <= right
(push) ; 6
(assert (not (<= left@22@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 right@23@01))
; [eval] left <= storeIndex
; [eval] storeIndex <= j
(declare-const i@183@01 Int)
(push) ; 6
; [eval] (i in [left..right + 1))
; [eval] [left..right + 1)
; [eval] right + 1
(assert (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@183@01))
; [eval] loc(a, i)
(pop) ; 6
(declare-fun inv@184@01 ($Ref) Int)
(declare-fun img@185@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((i1@183@01 Int) (i2@183@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i1@183@01)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i2@183@01)
      (= (loc<Ref> a@21@01 i1@183@01) (loc<Ref> a@21@01 i2@183@01)))
    (= i1@183@01 i2@183@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@183@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@183@01)
    (and
      (= (inv@184@01 (loc<Ref> a@21@01 i@183@01)) i@183@01)
      (img@185@01 (loc<Ref> a@21@01 i@183@01))))
  :pattern ((loc<Ref> a@21@01 i@183@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@185@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@184@01 r)))
    (= (loc<Ref> a@21@01 (inv@184@01 r)) r))
  :pattern ((inv@184@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@186@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@184@01 r))
      (img@185@01 r)
      (= r (loc<Ref> a@21@01 (inv@184@01 r))))
    ($Perm.min
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (- $Perm.Write (pTaken@45@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@187@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@184@01 r))
      (img@185@01 r)
      (= r (loc<Ref> a@21@01 (inv@184@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 pivotIndex@24@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@186@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
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
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (- $Perm.Write (pTaken@45@01 r))
        $Perm.No)
      (pTaken@186@01 r))
    $Perm.No)
  
  :qid |quant-u-19048|))))
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
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@184@01 r))
      (img@185@01 r)
      (= r (loc<Ref> a@21@01 (inv@184@01 r))))
    (= (- $Perm.Write (pTaken@186@01 r)) $Perm.No))
  
  :qid |quant-u-19049|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 pivotIndex@24@01) (loc<Ref> a@21@01 pivotIndex@24@01))
      $Perm.Write
      $Perm.No)
    (pTaken@187@01 (loc<Ref> a@21@01 pivotIndex@24@01)))
  $Perm.No)))
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
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@184@01 r))
      (img@185@01 r)
      (= r (loc<Ref> a@21@01 (inv@184@01 r))))
    (= (- (- $Perm.Write (pTaken@186@01 r)) (pTaken@187@01 r)) $Perm.No))
  
  :qid |quant-u-19051|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, right).val == pivotValue
; [eval] loc(a, right)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 pivotIndex@24@01))
      (=
        ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
    :qid |qp.fvfValDef19|))))
(set-option :timeout 0)
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@30@01 (loc<Ref> a@21@01 right@23@01))
        (and
          (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 right@23@01)))
          (<= (inv@29@01 (loc<Ref> a@21@01 right@23@01)) right@23@01)))
      (- $Perm.Write (pTaken@45@01 (loc<Ref> a@21@01 right@23@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 pivotIndex@24@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (=
  ($FVF.lookup_val (as sm@167@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@167@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01))
; [eval] (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
(declare-const i@188@01 Int)
(push) ; 6
; [eval] (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue
; [eval] (i in [left..storeIndex))
; [eval] [left..storeIndex)
(push) ; 7
; [then-branch: 118 | i@188@01 in [left@22@01..left@22@01] | live]
; [else-branch: 118 | !(i@188@01 in [left@22@01..left@22@01]) | live]
(push) ; 8
; [then-branch: 118 | i@188@01 in [left@22@01..left@22@01]]
(assert (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
; [eval] loc(a, i).val < pivotValue
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 pivotIndex@24@01))
      (=
        ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
    :qid |qp.fvfValDef19|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@30@01 (loc<Ref> a@21@01 i@188@01))
        (and
          (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 i@188@01)))
          (<= (inv@29@01 (loc<Ref> a@21@01 i@188@01)) right@23@01)))
      (- $Perm.Write (pTaken@45@01 (loc<Ref> a@21@01 i@188@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 i@188@01) (loc<Ref> a@21@01 pivotIndex@24@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 118 | !(i@188@01 in [left@22@01..left@22@01])]
(assert (not (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
  :qid |qp.fvfValDef19|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
  (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01)))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
  :qid |qp.fvfValDef19|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@188@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@188@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@188@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
  :pattern ((loc<Ref> a@21@01 i@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(push) ; 6
(assert (not (forall ((i@188@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01)
    (<
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) (loc<Ref> a@21@01 i@188@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@188@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@188@01))
  :pattern ((loc<Ref> a@21@01 i@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@188@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 left@22@01) i@188@01)
    (<
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) (loc<Ref> a@21@01 i@188@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@188@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@188@01))
  :pattern ((loc<Ref> a@21@01 i@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
; [eval] (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
(declare-const i@189@01 Int)
(push) ; 6
; [eval] (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val
; [eval] (i in [storeIndex..j))
; [eval] [storeIndex..j)
(push) ; 7
; [then-branch: 119 | i@189@01 in [left@22@01..left@22@01] | live]
; [else-branch: 119 | !(i@189@01 in [left@22@01..left@22@01]) | live]
(push) ; 8
; [then-branch: 119 | i@189@01 in [left@22@01..left@22@01]]
(assert (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
; [eval] pivotValue <= loc(a, i).val
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 pivotIndex@24@01))
      (=
        ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
    :qid |qp.fvfValDef19|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@30@01 (loc<Ref> a@21@01 i@189@01))
        (and
          (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 i@189@01)))
          (<= (inv@29@01 (loc<Ref> a@21@01 i@189@01)) right@23@01)))
      (- $Perm.Write (pTaken@45@01 (loc<Ref> a@21@01 i@189@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 i@189@01) (loc<Ref> a@21@01 pivotIndex@24@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 119 | !(i@189@01 in [left@22@01..left@22@01])]
(assert (not (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
  :qid |qp.fvfValDef19|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
  (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01)))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
  :qid |qp.fvfValDef19|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@189@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@189@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@189@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
    (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
  :pattern ((loc<Ref> a@21@01 i@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(push) ; 6
(assert (not (forall ((i@189@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) (loc<Ref> a@21@01 i@189@01))))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@189@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@189@01))
  :pattern ((loc<Ref> a@21@01 i@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@189@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 left@22@01) i@189@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) (loc<Ref> a@21@01 i@189@01))))
  :pattern ((Seq_contains (Seq_range left@22@01 left@22@01) i@189@01))
  :pattern ((Seq_contains_trigger (Seq_range left@22@01 left@22@01) i@189@01))
  :pattern ((loc<Ref> a@21@01 i@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(push) ; 6
(assert (not (= (Seq_length pw@169@01) (- (+ right@23@01 1) left@22@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length pw@169@01) (- (+ right@23@01 1) left@22@01)))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@190@01 Int)
(push) ; 6
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 7
; [then-branch: 120 | !(0 <= i@190@01) | live]
; [else-branch: 120 | 0 <= i@190@01 | live]
(push) ; 8
; [then-branch: 120 | !(0 <= i@190@01)]
(assert (not (<= 0 i@190@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 120 | 0 <= i@190@01]
(assert (<= 0 i@190@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@190@01) (not (<= 0 i@190@01))))
(push) ; 7
; [then-branch: 121 | 0 <= i@190@01 && i@190@01 < |pw@169@01| | live]
; [else-branch: 121 | !(0 <= i@190@01 && i@190@01 < |pw@169@01|) | live]
(push) ; 8
; [then-branch: 121 | 0 <= i@190@01 && i@190@01 < |pw@169@01|]
(assert (and (<= 0 i@190@01) (< i@190@01 (Seq_length pw@169@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 9
(assert (not (>= i@190@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
; [then-branch: 122 | !(left@22@01 <= pw@169@01[i@190@01]) | live]
; [else-branch: 122 | left@22@01 <= pw@169@01[i@190@01] | live]
(push) ; 10
; [then-branch: 122 | !(left@22@01 <= pw@169@01[i@190@01])]
(assert (not (<= left@22@01 (Seq_index pw@169@01 i@190@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 122 | left@22@01 <= pw@169@01[i@190@01]]
(assert (<= left@22@01 (Seq_index pw@169@01 i@190@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 11
(assert (not (>= i@190@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@169@01 i@190@01))
  (not (<= left@22@01 (Seq_index pw@169@01 i@190@01)))))
(pop) ; 8
(push) ; 8
; [else-branch: 121 | !(0 <= i@190@01 && i@190@01 < |pw@169@01|)]
(assert (not (and (<= 0 i@190@01) (< i@190@01 (Seq_length pw@169@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and (<= 0 i@190@01) (< i@190@01 (Seq_length pw@169@01)))
  (and
    (<= 0 i@190@01)
    (< i@190@01 (Seq_length pw@169@01))
    (or
      (<= left@22@01 (Seq_index pw@169@01 i@190@01))
      (not (<= left@22@01 (Seq_index pw@169@01 i@190@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@190@01) (< i@190@01 (Seq_length pw@169@01))))
  (and (<= 0 i@190@01) (< i@190@01 (Seq_length pw@169@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@190@01 Int)) (!
  (and
    (or (<= 0 i@190@01) (not (<= 0 i@190@01)))
    (=>
      (and (<= 0 i@190@01) (< i@190@01 (Seq_length pw@169@01)))
      (and
        (<= 0 i@190@01)
        (< i@190@01 (Seq_length pw@169@01))
        (or
          (<= left@22@01 (Seq_index pw@169@01 i@190@01))
          (not (<= left@22@01 (Seq_index pw@169@01 i@190@01))))))
    (or
      (not (and (<= 0 i@190@01) (< i@190@01 (Seq_length pw@169@01))))
      (and (<= 0 i@190@01) (< i@190@01 (Seq_length pw@169@01)))))
  :pattern ((Seq_index pw@169@01 i@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(push) ; 6
(assert (not (forall ((i@190@01 Int)) (!
  (=>
    (and (<= 0 i@190@01) (< i@190@01 (Seq_length pw@169@01)))
    (and
      (<= left@22@01 (Seq_index pw@169@01 i@190@01))
      (<= (Seq_index pw@169@01 i@190@01) right@23@01)))
  :pattern ((Seq_index pw@169@01 i@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@190@01 Int)) (!
  (=>
    (and (<= 0 i@190@01) (< i@190@01 (Seq_length pw@169@01)))
    (and
      (<= left@22@01 (Seq_index pw@169@01 i@190@01))
      (<= (Seq_index pw@169@01 i@190@01) right@23@01)))
  :pattern ((Seq_index pw@169@01 i@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
; [eval] (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
(declare-const i@191@01 Int)
(declare-const k@192@01 Int)
(push) ; 6
; [eval] 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]
; [eval] 0 <= i && (i < k && k < |pw|)
; [eval] 0 <= i
(push) ; 7
; [then-branch: 123 | !(0 <= i@191@01) | live]
; [else-branch: 123 | 0 <= i@191@01 | live]
(push) ; 8
; [then-branch: 123 | !(0 <= i@191@01)]
(assert (not (<= 0 i@191@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 123 | 0 <= i@191@01]
(assert (<= 0 i@191@01))
; [eval] i < k
(push) ; 9
; [then-branch: 124 | !(i@191@01 < k@192@01) | live]
; [else-branch: 124 | i@191@01 < k@192@01 | live]
(push) ; 10
; [then-branch: 124 | !(i@191@01 < k@192@01)]
(assert (not (< i@191@01 k@192@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 124 | i@191@01 < k@192@01]
(assert (< i@191@01 k@192@01))
; [eval] k < |pw|
; [eval] |pw|
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< i@191@01 k@192@01) (not (< i@191@01 k@192@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@191@01)
  (and (<= 0 i@191@01) (or (< i@191@01 k@192@01) (not (< i@191@01 k@192@01))))))
(assert (or (<= 0 i@191@01) (not (<= 0 i@191@01))))
(push) ; 7
; [then-branch: 125 | 0 <= i@191@01 && i@191@01 < k@192@01 && k@192@01 < |pw@169@01| | live]
; [else-branch: 125 | !(0 <= i@191@01 && i@191@01 < k@192@01 && k@192@01 < |pw@169@01|) | live]
(push) ; 8
; [then-branch: 125 | 0 <= i@191@01 && i@191@01 < k@192@01 && k@192@01 < |pw@169@01|]
(assert (and
  (<= 0 i@191@01)
  (and (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01)))))
; [eval] pw[i] != pw[k]
; [eval] pw[i]
(push) ; 9
(assert (not (>= i@191@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i@191@01 (Seq_length pw@169@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] pw[k]
(push) ; 9
(assert (not (>= k@192@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 125 | !(0 <= i@191@01 && i@191@01 < k@192@01 && k@192@01 < |pw@169@01|)]
(assert (not
  (and
    (<= 0 i@191@01)
    (and (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@191@01)
    (and (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01))))
  (and (<= 0 i@191@01) (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@191@01)
      (and (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01)))))
  (and
    (<= 0 i@191@01)
    (and (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@191@01 Int) (k@192@01 Int)) (!
  (and
    (=>
      (<= 0 i@191@01)
      (and
        (<= 0 i@191@01)
        (or (< i@191@01 k@192@01) (not (< i@191@01 k@192@01)))))
    (or (<= 0 i@191@01) (not (<= 0 i@191@01)))
    (=>
      (and
        (<= 0 i@191@01)
        (and (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01))))
      (and
        (<= 0 i@191@01)
        (< i@191@01 k@192@01)
        (< k@192@01 (Seq_length pw@169@01))))
    (or
      (not
        (and
          (<= 0 i@191@01)
          (and (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01)))))
      (and
        (<= 0 i@191@01)
        (and (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01))))))
  :pattern ((Seq_index pw@169@01 i@191@01) (Seq_index pw@169@01 k@192@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(push) ; 6
(assert (not (forall ((i@191@01 Int) (k@192@01 Int)) (!
  (=>
    (and
      (<= 0 i@191@01)
      (and (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01))))
    (not (= (Seq_index pw@169@01 i@191@01) (Seq_index pw@169@01 k@192@01))))
  :pattern ((Seq_index pw@169@01 i@191@01) (Seq_index pw@169@01 k@192@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@191@01 Int) (k@192@01 Int)) (!
  (=>
    (and
      (<= 0 i@191@01)
      (and (< i@191@01 k@192@01) (< k@192@01 (Seq_length pw@169@01))))
    (not (= (Seq_index pw@169@01 i@191@01) (Seq_index pw@169@01 k@192@01))))
  :pattern ((Seq_index pw@169@01 i@191@01) (Seq_index pw@169@01 k@192@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
; [eval] (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
(declare-const i$0@193@01 Int)
(push) ; 6
; [eval] 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] 0 <= i$0 && i$0 < |pw|
; [eval] 0 <= i$0
(push) ; 7
; [then-branch: 126 | !(0 <= i$0@193@01) | live]
; [else-branch: 126 | 0 <= i$0@193@01 | live]
(push) ; 8
; [then-branch: 126 | !(0 <= i$0@193@01)]
(assert (not (<= 0 i$0@193@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 126 | 0 <= i$0@193@01]
(assert (<= 0 i$0@193@01))
; [eval] i$0 < |pw|
; [eval] |pw|
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i$0@193@01) (not (<= 0 i$0@193@01))))
(push) ; 7
; [then-branch: 127 | 0 <= i$0@193@01 && i$0@193@01 < |pw@169@01| | live]
; [else-branch: 127 | !(0 <= i$0@193@01 && i$0@193@01 < |pw@169@01|) | live]
(push) ; 8
; [then-branch: 127 | 0 <= i$0@193@01 && i$0@193@01 < |pw@169@01|]
(assert (and (<= 0 i$0@193@01) (< i$0@193@01 (Seq_length pw@169@01))))
; [eval] loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] loc(a, left + i$0)
; [eval] left + i$0
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@30@01 r)
          (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
        (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 pivotIndex@24@01))
      (=
        ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
    :qid |qp.fvfValDef19|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@30@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@193@01)))
        (and
          (<=
            left@22@01
            (inv@29@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@193@01))))
          (<=
            (inv@29@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@193@01)))
            right@23@01)))
      (- $Perm.Write (pTaken@45@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@193@01))))
      $Perm.No)
    (ite
      (=
        (loc<Ref> a@21@01 (+ left@22@01 i$0@193@01))
        (loc<Ref> a@21@01 pivotIndex@24@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i$0]).val)
; [eval] loc(a, pw[i$0])
; [eval] pw[i$0]
(push) ; 9
(assert (not (>= i$0@193@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@169@01 i$0@193@01)))
  (and
    (<=
      left@22@01
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@169@01 i$0@193@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@169@01 i$0@193@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 127 | !(0 <= i$0@193@01 && i$0@193@01 < |pw@169@01|)]
(assert (not (and (<= 0 i$0@193@01) (< i$0@193@01 (Seq_length pw@169@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
  :qid |qp.fvfValDef19|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i$0@193@01) (< i$0@193@01 (Seq_length pw@169@01))))
  (and (<= 0 i$0@193@01) (< i$0@193@01 (Seq_length pw@169@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@30@01 r)
        (and (<= left@22@01 (inv@29@01 r)) (<= (inv@29@01 r) right@23@01)))
      (< $Perm.No (- $Perm.Write (pTaken@45@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 pivotIndex@24@01))
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@167@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
  :qid |qp.fvfValDef19|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$0@193@01 Int)) (!
  (and
    (or (<= 0 i$0@193@01) (not (<= 0 i$0@193@01)))
    (or
      (not (and (<= 0 i$0@193@01) (< i$0@193@01 (Seq_length pw@169@01))))
      (and (<= 0 i$0@193@01) (< i$0@193@01 (Seq_length pw@169@01)))))
  :pattern ((Seq_index pw@169@01 i$0@193@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(push) ; 6
(assert (not (forall ((i$0@193@01 Int)) (!
  (=>
    (and (<= 0 i$0@193@01) (< i$0@193@01 (Seq_length pw@169@01)))
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@193@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@169@01
        i$0@193@01)))))
  :pattern ((Seq_index pw@169@01 i$0@193@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|))))
(check-sat)
; unsat
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i$0@193@01 Int)) (!
  (=>
    (and (<= 0 i$0@193@01) (< i$0@193@01 (Seq_length pw@169@01)))
    (=
      ($FVF.lookup_val (as sm@167@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@193@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@169@01
        i$0@193@01)))))
  :pattern ((Seq_index pw@169@01 i$0@193@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 6
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@176@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
    (= (loc<Ref> a@21@01 (inv@175@01 r)) r))
  :pattern ((inv@175@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((i@174@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@174@01)
    (and
      (= (inv@175@01 (loc<Ref> a@21@01 i@174@01)) i@174@01)
      (img@176@01 (loc<Ref> a@21@01 i@174@01))))
  :pattern ((loc<Ref> a@21@01 i@174@01))
  :qid |quant-u-19045|)))
(assert (forall ((i@174@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@174@01)
    (not (= (loc<Ref> a@21@01 i@174@01) $Ref.null)))
  :pattern ((loc<Ref> a@21@01 i@174@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))
  $Snap.unit))
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))
  $Snap.unit))
(assert (forall ((i@177@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@177@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@177@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  :pattern ((loc<Ref> a@21@01 i@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@177@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01)
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 i@177@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@177@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@177@01))
  :pattern ((loc<Ref> a@21@01 i@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))
  $Snap.unit))
(assert (forall ((i@178@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
    (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  :pattern ((Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@172@01)
    i@178@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@178@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
    (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@172@01)
    i@178@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@178@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
    (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  :pattern ((loc<Ref> a@21@01 i@178@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@178@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 i@178@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@171@01 j@172@01) i@178@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@172@01)
    i@178@01))
  :pattern ((loc<Ref> a@21@01 i@178@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))
  $Snap.unit))
(assert (= (Seq_length pw@170@01) (- (+ right@23@01 1) left@22@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))
  $Snap.unit))
(assert (forall ((i@179@01 Int)) (!
  (and
    (or (<= 0 i@179@01) (not (<= 0 i@179@01)))
    (=>
      (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01)))
      (and
        (<= 0 i@179@01)
        (< i@179@01 (Seq_length pw@170@01))
        (or
          (<= left@22@01 (Seq_index pw@170@01 i@179@01))
          (not (<= left@22@01 (Seq_index pw@170@01 i@179@01))))))
    (or
      (not (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01))))
      (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01)))))
  :pattern ((Seq_index pw@170@01 i@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(assert (forall ((i@179@01 Int)) (!
  (=>
    (and (<= 0 i@179@01) (< i@179@01 (Seq_length pw@170@01)))
    (and
      (<= left@22@01 (Seq_index pw@170@01 i@179@01))
      (<= (Seq_index pw@170@01 i@179@01) right@23@01)))
  :pattern ((Seq_index pw@170@01 i@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))))
  $Snap.unit))
(assert (forall ((i@180@01 Int) (k@181@01 Int)) (!
  (and
    (=>
      (<= 0 i@180@01)
      (and
        (<= 0 i@180@01)
        (or (< i@180@01 k@181@01) (not (< i@180@01 k@181@01)))))
    (or (<= 0 i@180@01) (not (<= 0 i@180@01)))
    (=>
      (and
        (<= 0 i@180@01)
        (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01))))
      (and
        (<= 0 i@180@01)
        (< i@180@01 k@181@01)
        (< k@181@01 (Seq_length pw@170@01))))
    (or
      (not
        (and
          (<= 0 i@180@01)
          (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01)))))
      (and
        (<= 0 i@180@01)
        (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01))))))
  :pattern ((Seq_index pw@170@01 i@180@01) (Seq_index pw@170@01 k@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(assert (forall ((i@180@01 Int) (k@181@01 Int)) (!
  (=>
    (and
      (<= 0 i@180@01)
      (and (< i@180@01 k@181@01) (< k@181@01 (Seq_length pw@170@01))))
    (not (= (Seq_index pw@170@01 i@180@01) (Seq_index pw@170@01 k@181@01))))
  :pattern ((Seq_index pw@170@01 i@180@01) (Seq_index pw@170@01 k@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))))))
  $Snap.unit))
(assert (forall ((i$0@182@01 Int)) (!
  (and
    (or (<= 0 i$0@182@01) (not (<= 0 i$0@182@01)))
    (or
      (not (and (<= 0 i$0@182@01) (< i$0@182@01 (Seq_length pw@170@01))))
      (and (<= 0 i$0@182@01) (< i$0@182@01 (Seq_length pw@170@01)))))
  :pattern ((Seq_index pw@170@01 i$0@182@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(assert (forall ((i$0@182@01 Int)) (!
  (=>
    (and (<= 0 i$0@182@01) (< i$0@182@01 (Seq_length pw@170@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@182@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@170@01
        i$0@182@01)))))
  :pattern ((Seq_index pw@170@01 i$0@182@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
(assert (= $t@173@01 ($Snap.combine ($Snap.first $t@173@01) ($Snap.second $t@173@01))))
(assert (= ($Snap.first $t@173@01) $Snap.unit))
(assert (<= left@22@01 j@172@01))
(assert (=
  ($Snap.second $t@173@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@173@01))
    ($Snap.second ($Snap.second $t@173@01)))))
(assert (= ($Snap.first ($Snap.second $t@173@01)) $Snap.unit))
(assert (<= j@172@01 right@23@01))
(assert (=
  ($Snap.second ($Snap.second $t@173@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@173@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@173@01))) $Snap.unit))
(assert (<= left@22@01 storeIndex@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@173@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@173@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@173@01))))
  $Snap.unit))
(assert (<= storeIndex@171@01 j@172@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01))))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 7
; [eval] j < right
(pop) ; 7
(push) ; 7
; [eval] !(j < right)
; [eval] j < right
(pop) ; 7
; Loop head block: Follow loop-internal edges
; [eval] j < right
(push) ; 7
(set-option :timeout 10)
(assert (not (not (< j@172@01 right@23@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< j@172@01 right@23@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 128 | j@172@01 < right@23@01 | live]
; [else-branch: 128 | !(j@172@01 < right@23@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 128 | j@172@01 < right@23@01]
(assert (< j@172@01 right@23@01))
; [eval] loc(a, j).val < pivotValue
; [eval] loc(a, j)
(push) ; 8
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 j@172@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 j@172@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (<
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 j@172@01))
    pivotValue@43@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (<
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 j@172@01))
  pivotValue@43@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; [then-branch: 129 | Lookup(val, First:(Second:(Second:(Second:(Second:($t@173@01))))), loc[Ref](a@21@01, j@172@01)) < pivotValue@43@01 | live]
; [else-branch: 129 | !(Lookup(val, First:(Second:(Second:(Second:(Second:($t@173@01))))), loc[Ref](a@21@01, j@172@01)) < pivotValue@43@01) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 129 | Lookup(val, First:(Second:(Second:(Second:(Second:($t@173@01))))), loc[Ref](a@21@01, j@172@01)) < pivotValue@43@01]
(assert (<
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 j@172@01))
  pivotValue@43@01))
; [exec]
; swap(a, j, storeIndex)
; [eval] 0 <= i
(push) ; 9
(assert (not (<= 0 j@172@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 j@172@01))
; [eval] i < len(a)
; [eval] len(a)
(push) ; 9
(assert (not (< j@172@01 (len<Int> a@21@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< j@172@01 (len<Int> a@21@01)))
; [eval] 0 <= j
(push) ; 9
(assert (not (<= 0 storeIndex@171@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 storeIndex@171@01))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 9
(assert (not (< storeIndex@171@01 (len<Int> a@21@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< storeIndex@171@01 (len<Int> a@21@01)))
; [eval] loc(a, i)
; Precomputing data for removing quantified permissions
(define-fun pTaken@194@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@21@01 j@172@01))
    ($Perm.min
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
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
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@194@01 r))
    $Perm.No)
  
  :qid |quant-u-19053|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@194@01 r) $Perm.No)
  
  :qid |quant-u-19054|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (= (- $Perm.Write (pTaken@194@01 r)) $Perm.No))
  
  :qid |quant-u-19055|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] i != j
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= j@172@01 storeIndex@171@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= j@172@01 storeIndex@171@01))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 130 | j@172@01 != storeIndex@171@01 | live]
; [else-branch: 130 | j@172@01 == storeIndex@171@01 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 130 | j@172@01 != storeIndex@171@01]
(assert (not (= j@172@01 storeIndex@171@01)))
; [eval] loc(a, j)
; Precomputing data for removing quantified permissions
(define-fun pTaken@195@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    ($Perm.min
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- $Perm.Write (pTaken@194@01 r))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- $Perm.Write (pTaken@194@01 r))
        $Perm.No)
      (pTaken@195@01 r))
    $Perm.No)
  
  :qid |quant-u-19057|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@195@01 r) $Perm.No)
  
  :qid |quant-u-19058|))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (= (- $Perm.Write (pTaken@195@01 r)) $Perm.No))
  
  :qid |quant-u-19059|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@196@01 $Snap)
(assert (= $t@196@01 ($Snap.combine ($Snap.first $t@196@01) ($Snap.second $t@196@01))))
; [eval] loc(a, i)
(declare-const sm@197@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@197@01  $FVF<val>) (loc<Ref> a@21@01 j@172@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@196@01))))
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 j@172@01) (loc<Ref> a@21@01 j@172@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 j@172@01) (loc<Ref> a@21@01 j@172@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 j@172@01) (loc<Ref> a@21@01 j@172@01))
  (not (= (loc<Ref> a@21@01 j@172@01) $Ref.null))))
(assert (=
  ($Snap.second $t@196@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@196@01))
    ($Snap.second ($Snap.second $t@196@01)))))
; [eval] i != j
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= j@172@01 storeIndex@171@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 131 | j@172@01 != storeIndex@171@01 | live]
; [else-branch: 131 | j@172@01 == storeIndex@171@01 | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 131 | j@172@01 != storeIndex@171@01]
; [eval] loc(a, j)
(declare-const sm@198@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@198@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@196@01)))))
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 storeIndex@171@01))
    (= (loc<Ref> a@21@01 j@172@01) (loc<Ref> a@21@01 j@172@01)))
  (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 j@172@01)))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 storeIndex@171@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 storeIndex@171@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 storeIndex@171@01))
  (not (= (loc<Ref> a@21@01 storeIndex@171@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@196@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@196@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@196@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@196@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
(declare-const sm@199@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
  :qid |qp.fvfValDef23|)))
(declare-const pm@200@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@200@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@176@01 r)
            (Seq_contains
              (Seq_range left@22@01 (+ right@23@01 1))
              (inv@175@01 r)))
          (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r))
          $Perm.No)
        (ite (= r (loc<Ref> a@21@01 j@172@01)) $Perm.Write $Perm.No))
      (ite (= r (loc<Ref> a@21@01 storeIndex@171@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_val (as pm@200@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
(set-option :timeout 0)
(push) ; 11
(assert (not (< $Perm.No ($FVF.perm_val (as pm@200@01  $FPM) (loc<Ref> a@21@01 j@172@01)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 11
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 storeIndex@171@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 storeIndex@171@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@199@01  $FVF<val>) (loc<Ref> a@21@01 j@172@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 storeIndex@171@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@196@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef21|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@172@01))
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
    :qid |qp.fvfValDef22|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
    :qid |qp.fvfValDef23|))))
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 storeIndex@171@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 storeIndex@171@01))))
        (-
          (- $Perm.Write (pTaken@194@01 (loc<Ref> a@21@01 storeIndex@171@01)))
          (pTaken@195@01 (loc<Ref> a@21@01 storeIndex@171@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 j@172@01))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (loc<Ref> a@21@01 storeIndex@171@01)
        (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(push) ; 11
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 j@172@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 j@172@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@199@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 j@172@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; pw := pw[storeIndex - left := pw[j - left]][j - left :=
;   pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[j - left]][j - left := pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[j - left]]
; [eval] storeIndex - left
; [eval] pw[j - left]
; [eval] j - left
(set-option :timeout 0)
(push) ; 11
(assert (not (>= (- j@172@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- j@172@01 left@22@01) (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (>= (- storeIndex@171@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- storeIndex@171@01 left@22@01) (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] j - left
; [eval] pw[storeIndex - left]
; [eval] storeIndex - left
(push) ; 11
(assert (not (>= (- storeIndex@171@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- storeIndex@171@01 left@22@01) (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (>= (- j@172@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  (- j@172@01 left@22@01)
  (Seq_length
    (Seq_append
      (Seq_take pw@170@01 (- storeIndex@171@01 left@22@01))
      (Seq_append
        (Seq_singleton (Seq_index pw@170@01 (- j@172@01 left@22@01)))
        (Seq_drop pw@170@01 (+ (- storeIndex@171@01 left@22@01) 1))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const pw@201@01 Seq<Int>)
(assert (=
  pw@201@01
  (Seq_append
    (Seq_take
      (Seq_append
        (Seq_take pw@170@01 (- storeIndex@171@01 left@22@01))
        (Seq_append
          (Seq_singleton (Seq_index pw@170@01 (- j@172@01 left@22@01)))
          (Seq_drop pw@170@01 (+ (- storeIndex@171@01 left@22@01) 1))))
      (- j@172@01 left@22@01))
    (Seq_append
      (Seq_singleton (Seq_index pw@170@01 (- storeIndex@171@01 left@22@01)))
      (Seq_drop
        (Seq_append
          (Seq_take pw@170@01 (- storeIndex@171@01 left@22@01))
          (Seq_append
            (Seq_singleton (Seq_index pw@170@01 (- j@172@01 left@22@01)))
            (Seq_drop pw@170@01 (+ (- storeIndex@171@01 left@22@01) 1))))
        (+ (- j@172@01 left@22@01) 1))))))
; [exec]
; storeIndex := storeIndex + 1
; [eval] storeIndex + 1
(declare-const storeIndex@202@01 Int)
(assert (= storeIndex@202@01 (+ storeIndex@171@01 1)))
; [exec]
; j := j + 1
; [eval] j + 1
(declare-const j@203@01 Int)
(assert (= j@203@01 (+ j@172@01 1)))
; Loop head block: Re-establish invariant
; [eval] left <= j
(push) ; 11
(assert (not (<= left@22@01 j@203@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 j@203@01))
; [eval] j <= right
(push) ; 11
(assert (not (<= j@203@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= j@203@01 right@23@01))
; [eval] left <= storeIndex
(push) ; 11
(assert (not (<= left@22@01 storeIndex@202@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 storeIndex@202@01))
; [eval] storeIndex <= j
(push) ; 11
(assert (not (<= storeIndex@202@01 j@203@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= storeIndex@202@01 j@203@01))
(declare-const i@204@01 Int)
(push) ; 11
; [eval] (i in [left..right + 1))
; [eval] [left..right + 1)
; [eval] right + 1
(assert (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@204@01))
; [eval] loc(a, i)
(pop) ; 11
(declare-fun inv@205@01 ($Ref) Int)
(declare-fun img@206@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((i1@204@01 Int) (i2@204@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i1@204@01)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i2@204@01)
      (= (loc<Ref> a@21@01 i1@204@01) (loc<Ref> a@21@01 i2@204@01)))
    (= i1@204@01 i2@204@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@204@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@204@01)
    (and
      (= (inv@205@01 (loc<Ref> a@21@01 i@204@01)) i@204@01)
      (img@206@01 (loc<Ref> a@21@01 i@204@01))))
  :pattern ((loc<Ref> a@21@01 i@204@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@206@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@205@01 r)))
    (= (loc<Ref> a@21@01 (inv@205@01 r)) r))
  :pattern ((inv@205@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@207@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@205@01 r))
      (img@206@01 r)
      (= r (loc<Ref> a@21@01 (inv@205@01 r))))
    ($Perm.min
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@208@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@205@01 r))
      (img@206@01 r)
      (= r (loc<Ref> a@21@01 (inv@205@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 j@172@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@207@01 r)))
    $Perm.No))
(define-fun pTaken@209@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@205@01 r))
      (img@206@01 r)
      (= r (loc<Ref> a@21@01 (inv@205@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 storeIndex@171@01)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@207@01 r)) (pTaken@208@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r))
        $Perm.No)
      (pTaken@207@01 r))
    $Perm.No)
  
  :qid |quant-u-19062|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@205@01 r))
      (img@206@01 r)
      (= r (loc<Ref> a@21@01 (inv@205@01 r))))
    (= (- $Perm.Write (pTaken@207@01 r)) $Perm.No))
  
  :qid |quant-u-19063|))))
(check-sat)
; unknown
(pop) ; 11
; 0.44s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 j@172@01) (loc<Ref> a@21@01 j@172@01))
      $Perm.Write
      $Perm.No)
    (pTaken@208@01 (loc<Ref> a@21@01 j@172@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@205@01 r))
      (img@206@01 r)
      (= r (loc<Ref> a@21@01 (inv@205@01 r))))
    (= (- (- $Perm.Write (pTaken@207@01 r)) (pTaken@208@01 r)) $Perm.No))
  
  :qid |quant-u-19065|))))
(check-sat)
; unknown
(pop) ; 11
; 0.42s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> a@21@01 storeIndex@171@01)
        (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)
    (pTaken@209@01 (loc<Ref> a@21@01 storeIndex@171@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@205@01 r))
      (img@206@01 r)
      (= r (loc<Ref> a@21@01 (inv@205@01 r))))
    (=
      (-
        (- (- $Perm.Write (pTaken@207@01 r)) (pTaken@208@01 r))
        (pTaken@209@01 r))
      $Perm.No))
  
  :qid |quant-u-19067|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, right).val == pivotValue
; [eval] loc(a, right)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef21|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@172@01))
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
    :qid |qp.fvfValDef22|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
    :qid |qp.fvfValDef23|))))
(set-option :timeout 0)
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 right@23@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 right@23@01))))
        (-
          (- $Perm.Write (pTaken@194@01 (loc<Ref> a@21@01 right@23@01)))
          (pTaken@195@01 (loc<Ref> a@21@01 right@23@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 j@172@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (=
  ($FVF.lookup_val (as sm@199@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@199@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01))
; [eval] (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
(declare-const i@210@01 Int)
(push) ; 11
; [eval] (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue
; [eval] (i in [left..storeIndex))
; [eval] [left..storeIndex)
(push) ; 12
; [then-branch: 132 | i@210@01 in [left@22@01..storeIndex@202@01] | live]
; [else-branch: 132 | !(i@210@01 in [left@22@01..storeIndex@202@01]) | live]
(push) ; 13
; [then-branch: 132 | i@210@01 in [left@22@01..storeIndex@202@01]]
(assert (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
; [eval] loc(a, i).val < pivotValue
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef21|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@172@01))
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
    :qid |qp.fvfValDef22|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
    :qid |qp.fvfValDef23|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 i@210@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 i@210@01))))
        (-
          (- $Perm.Write (pTaken@194@01 (loc<Ref> a@21@01 i@210@01)))
          (pTaken@195@01 (loc<Ref> a@21@01 i@210@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 i@210@01) (loc<Ref> a@21@01 j@172@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 i@210@01) (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 132 | !(i@210@01 in [left@22@01..storeIndex@202@01])]
(assert (not (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
  :qid |qp.fvfValDef23|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
  (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
  :qid |qp.fvfValDef23|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@210@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@202@01)
    i@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@210@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@202@01)
    i@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@210@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
  :pattern ((loc<Ref> a@21@01 i@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(push) ; 11
(assert (not (forall ((i@210@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01)
    (<
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) (loc<Ref> a@21@01 i@210@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@202@01)
    i@210@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@202@01)
    i@210@01))
  :pattern ((loc<Ref> a@21@01 i@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.10s
; (get-info :all-statistics)
(assert (forall ((i@210@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01)
    (<
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) (loc<Ref> a@21@01 i@210@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@202@01) i@210@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@202@01)
    i@210@01))
  :pattern ((loc<Ref> a@21@01 i@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
; [eval] (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
(declare-const i@211@01 Int)
(push) ; 11
; [eval] (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val
; [eval] (i in [storeIndex..j))
; [eval] [storeIndex..j)
(push) ; 12
; [then-branch: 133 | i@211@01 in [storeIndex@202@01..j@203@01] | live]
; [else-branch: 133 | !(i@211@01 in [storeIndex@202@01..j@203@01]) | live]
(push) ; 13
; [then-branch: 133 | i@211@01 in [storeIndex@202@01..j@203@01]]
(assert (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
; [eval] pivotValue <= loc(a, i).val
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef21|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@172@01))
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
    :qid |qp.fvfValDef22|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
    :qid |qp.fvfValDef23|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 i@211@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 i@211@01))))
        (-
          (- $Perm.Write (pTaken@194@01 (loc<Ref> a@21@01 i@211@01)))
          (pTaken@195@01 (loc<Ref> a@21@01 i@211@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 i@211@01) (loc<Ref> a@21@01 j@172@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 i@211@01) (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 133 | !(i@211@01 in [storeIndex@202@01..j@203@01])]
(assert (not (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
  :qid |qp.fvfValDef23|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
  (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
  :qid |qp.fvfValDef23|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@211@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
    (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
  :pattern ((Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@202@01 j@203@01)
    i@211@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@211@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
    (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@202@01 j@203@01)
    i@211@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@211@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
    (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
  :pattern ((loc<Ref> a@21@01 i@211@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(push) ; 11
(assert (not (forall ((i@211@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) (loc<Ref> a@21@01 i@211@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@202@01 j@203@01)
    i@211@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@202@01 j@203@01)
    i@211@01))
  :pattern ((loc<Ref> a@21@01 i@211@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|))))
(check-sat)
; unsat
(pop) ; 11
; 0.10s
; (get-info :all-statistics)
(assert (forall ((i@211@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) (loc<Ref> a@21@01 i@211@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@202@01 j@203@01) i@211@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@202@01 j@203@01)
    i@211@01))
  :pattern ((loc<Ref> a@21@01 i@211@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(push) ; 11
(assert (not (= (Seq_length pw@201@01) (- (+ right@23@01 1) left@22@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (= (Seq_length pw@201@01) (- (+ right@23@01 1) left@22@01)))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@212@01 Int)
(push) ; 11
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 12
; [then-branch: 134 | !(0 <= i@212@01) | live]
; [else-branch: 134 | 0 <= i@212@01 | live]
(push) ; 13
; [then-branch: 134 | !(0 <= i@212@01)]
(assert (not (<= 0 i@212@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 134 | 0 <= i@212@01]
(assert (<= 0 i@212@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@212@01) (not (<= 0 i@212@01))))
(push) ; 12
; [then-branch: 135 | 0 <= i@212@01 && i@212@01 < |pw@201@01| | live]
; [else-branch: 135 | !(0 <= i@212@01 && i@212@01 < |pw@201@01|) | live]
(push) ; 13
; [then-branch: 135 | 0 <= i@212@01 && i@212@01 < |pw@201@01|]
(assert (and (<= 0 i@212@01) (< i@212@01 (Seq_length pw@201@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 14
(assert (not (>= i@212@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
; [then-branch: 136 | !(left@22@01 <= pw@201@01[i@212@01]) | live]
; [else-branch: 136 | left@22@01 <= pw@201@01[i@212@01] | live]
(push) ; 15
; [then-branch: 136 | !(left@22@01 <= pw@201@01[i@212@01])]
(assert (not (<= left@22@01 (Seq_index pw@201@01 i@212@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 136 | left@22@01 <= pw@201@01[i@212@01]]
(assert (<= left@22@01 (Seq_index pw@201@01 i@212@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 16
(assert (not (>= i@212@01 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@201@01 i@212@01))
  (not (<= left@22@01 (Seq_index pw@201@01 i@212@01)))))
(pop) ; 13
(push) ; 13
; [else-branch: 135 | !(0 <= i@212@01 && i@212@01 < |pw@201@01|)]
(assert (not (and (<= 0 i@212@01) (< i@212@01 (Seq_length pw@201@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and (<= 0 i@212@01) (< i@212@01 (Seq_length pw@201@01)))
  (and
    (<= 0 i@212@01)
    (< i@212@01 (Seq_length pw@201@01))
    (or
      (<= left@22@01 (Seq_index pw@201@01 i@212@01))
      (not (<= left@22@01 (Seq_index pw@201@01 i@212@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@212@01) (< i@212@01 (Seq_length pw@201@01))))
  (and (<= 0 i@212@01) (< i@212@01 (Seq_length pw@201@01)))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@212@01 Int)) (!
  (and
    (or (<= 0 i@212@01) (not (<= 0 i@212@01)))
    (=>
      (and (<= 0 i@212@01) (< i@212@01 (Seq_length pw@201@01)))
      (and
        (<= 0 i@212@01)
        (< i@212@01 (Seq_length pw@201@01))
        (or
          (<= left@22@01 (Seq_index pw@201@01 i@212@01))
          (not (<= left@22@01 (Seq_index pw@201@01 i@212@01))))))
    (or
      (not (and (<= 0 i@212@01) (< i@212@01 (Seq_length pw@201@01))))
      (and (<= 0 i@212@01) (< i@212@01 (Seq_length pw@201@01)))))
  :pattern ((Seq_index pw@201@01 i@212@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(push) ; 11
(assert (not (forall ((i@212@01 Int)) (!
  (=>
    (and (<= 0 i@212@01) (< i@212@01 (Seq_length pw@201@01)))
    (and
      (<= left@22@01 (Seq_index pw@201@01 i@212@01))
      (<= (Seq_index pw@201@01 i@212@01) right@23@01)))
  :pattern ((Seq_index pw@201@01 i@212@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.15s
; (get-info :all-statistics)
(assert (forall ((i@212@01 Int)) (!
  (=>
    (and (<= 0 i@212@01) (< i@212@01 (Seq_length pw@201@01)))
    (and
      (<= left@22@01 (Seq_index pw@201@01 i@212@01))
      (<= (Seq_index pw@201@01 i@212@01) right@23@01)))
  :pattern ((Seq_index pw@201@01 i@212@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
; [eval] (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
(declare-const i@213@01 Int)
(declare-const k@214@01 Int)
(push) ; 11
; [eval] 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]
; [eval] 0 <= i && (i < k && k < |pw|)
; [eval] 0 <= i
(push) ; 12
; [then-branch: 137 | !(0 <= i@213@01) | live]
; [else-branch: 137 | 0 <= i@213@01 | live]
(push) ; 13
; [then-branch: 137 | !(0 <= i@213@01)]
(assert (not (<= 0 i@213@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 137 | 0 <= i@213@01]
(assert (<= 0 i@213@01))
; [eval] i < k
(push) ; 14
; [then-branch: 138 | !(i@213@01 < k@214@01) | live]
; [else-branch: 138 | i@213@01 < k@214@01 | live]
(push) ; 15
; [then-branch: 138 | !(i@213@01 < k@214@01)]
(assert (not (< i@213@01 k@214@01)))
(pop) ; 15
(push) ; 15
; [else-branch: 138 | i@213@01 < k@214@01]
(assert (< i@213@01 k@214@01))
; [eval] k < |pw|
; [eval] |pw|
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (< i@213@01 k@214@01) (not (< i@213@01 k@214@01))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@213@01)
  (and (<= 0 i@213@01) (or (< i@213@01 k@214@01) (not (< i@213@01 k@214@01))))))
(assert (or (<= 0 i@213@01) (not (<= 0 i@213@01))))
(push) ; 12
; [then-branch: 139 | 0 <= i@213@01 && i@213@01 < k@214@01 && k@214@01 < |pw@201@01| | live]
; [else-branch: 139 | !(0 <= i@213@01 && i@213@01 < k@214@01 && k@214@01 < |pw@201@01|) | live]
(push) ; 13
; [then-branch: 139 | 0 <= i@213@01 && i@213@01 < k@214@01 && k@214@01 < |pw@201@01|]
(assert (and
  (<= 0 i@213@01)
  (and (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01)))))
; [eval] pw[i] != pw[k]
; [eval] pw[i]
(push) ; 14
(assert (not (>= i@213@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (< i@213@01 (Seq_length pw@201@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] pw[k]
(push) ; 14
(assert (not (>= k@214@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 139 | !(0 <= i@213@01 && i@213@01 < k@214@01 && k@214@01 < |pw@201@01|)]
(assert (not
  (and
    (<= 0 i@213@01)
    (and (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01))))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@213@01)
    (and (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01))))
  (and (<= 0 i@213@01) (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@213@01)
      (and (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01)))))
  (and
    (<= 0 i@213@01)
    (and (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01))))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@213@01 Int) (k@214@01 Int)) (!
  (and
    (=>
      (<= 0 i@213@01)
      (and
        (<= 0 i@213@01)
        (or (< i@213@01 k@214@01) (not (< i@213@01 k@214@01)))))
    (or (<= 0 i@213@01) (not (<= 0 i@213@01)))
    (=>
      (and
        (<= 0 i@213@01)
        (and (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01))))
      (and
        (<= 0 i@213@01)
        (< i@213@01 k@214@01)
        (< k@214@01 (Seq_length pw@201@01))))
    (or
      (not
        (and
          (<= 0 i@213@01)
          (and (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01)))))
      (and
        (<= 0 i@213@01)
        (and (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01))))))
  :pattern ((Seq_index pw@201@01 i@213@01) (Seq_index pw@201@01 k@214@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(push) ; 11
(assert (not (forall ((i@213@01 Int) (k@214@01 Int)) (!
  (=>
    (and
      (<= 0 i@213@01)
      (and (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01))))
    (not (= (Seq_index pw@201@01 i@213@01) (Seq_index pw@201@01 k@214@01))))
  :pattern ((Seq_index pw@201@01 i@213@01) (Seq_index pw@201@01 k@214@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.70s
; (get-info :all-statistics)
(assert (forall ((i@213@01 Int) (k@214@01 Int)) (!
  (=>
    (and
      (<= 0 i@213@01)
      (and (< i@213@01 k@214@01) (< k@214@01 (Seq_length pw@201@01))))
    (not (= (Seq_index pw@201@01 i@213@01) (Seq_index pw@201@01 k@214@01))))
  :pattern ((Seq_index pw@201@01 i@213@01) (Seq_index pw@201@01 k@214@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
; [eval] (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
(declare-const i$0@215@01 Int)
(push) ; 11
; [eval] 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] 0 <= i$0 && i$0 < |pw|
; [eval] 0 <= i$0
(push) ; 12
; [then-branch: 140 | !(0 <= i$0@215@01) | live]
; [else-branch: 140 | 0 <= i$0@215@01 | live]
(push) ; 13
; [then-branch: 140 | !(0 <= i$0@215@01)]
(assert (not (<= 0 i$0@215@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 140 | 0 <= i$0@215@01]
(assert (<= 0 i$0@215@01))
; [eval] i$0 < |pw|
; [eval] |pw|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i$0@215@01) (not (<= 0 i$0@215@01))))
(push) ; 12
; [then-branch: 141 | 0 <= i$0@215@01 && i$0@215@01 < |pw@201@01| | live]
; [else-branch: 141 | !(0 <= i$0@215@01 && i$0@215@01 < |pw@201@01|) | live]
(push) ; 13
; [then-branch: 141 | 0 <= i$0@215@01 && i$0@215@01 < |pw@201@01|]
(assert (and (<= 0 i$0@215@01) (< i$0@215@01 (Seq_length pw@201@01))))
; [eval] loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] loc(a, left + i$0)
; [eval] left + i$0
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef21|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@172@01))
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
    :qid |qp.fvfValDef22|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
    :qid |qp.fvfValDef23|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@215@01)))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@215@01)))))
        (-
          (-
            $Perm.Write
            (pTaken@194@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@215@01))))
          (pTaken@195@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@215@01))))
        $Perm.No)
      (ite
        (=
          (loc<Ref> a@21@01 (+ left@22@01 i$0@215@01))
          (loc<Ref> a@21@01 j@172@01))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (loc<Ref> a@21@01 (+ left@22@01 i$0@215@01))
        (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i$0]).val)
; [eval] loc(a, pw[i$0])
; [eval] pw[i$0]
(push) ; 14
(assert (not (>= i$0@215@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@201@01 i$0@215@01)))
  (and
    (<=
      left@22@01
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@201@01 i$0@215@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@201@01 i$0@215@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 141 | !(0 <= i$0@215@01 && i$0@215@01 < |pw@201@01|)]
(assert (not (and (<= 0 i$0@215@01) (< i$0@215@01 (Seq_length pw@201@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
  :qid |qp.fvfValDef23|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i$0@215@01) (< i$0@215@01 (Seq_length pw@201@01))))
  (and (<= 0 i$0@215@01) (< i$0@215@01 (Seq_length pw@201@01)))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@197@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@197@01  $FVF<val>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@198@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@198@01  $FVF<val>) r))
  :qid |qp.fvfValDef23|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$0@215@01 Int)) (!
  (and
    (or (<= 0 i$0@215@01) (not (<= 0 i$0@215@01)))
    (or
      (not (and (<= 0 i$0@215@01) (< i$0@215@01 (Seq_length pw@201@01))))
      (and (<= 0 i$0@215@01) (< i$0@215@01 (Seq_length pw@201@01)))))
  :pattern ((Seq_index pw@201@01 i$0@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(push) ; 11
(assert (not (forall ((i$0@215@01 Int)) (!
  (=>
    (and (<= 0 i$0@215@01) (< i$0@215@01 (Seq_length pw@201@01)))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@215@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@201@01
        i$0@215@01)))))
  :pattern ((Seq_index pw@201@01 i$0@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|))))
(check-sat)
; unsat
(pop) ; 11
; 0.70s
; (get-info :all-statistics)
(assert (forall ((i$0@215@01 Int)) (!
  (=>
    (and (<= 0 i$0@215@01) (< i$0@215@01 (Seq_length pw@201@01)))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@215@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@201@01
        i$0@215@01)))))
  :pattern ((Seq_index pw@201@01 i$0@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 130 | j@172@01 == storeIndex@171@01]
(assert (= j@172@01 storeIndex@171@01))
(declare-const $t@216@01 $Snap)
(assert (= $t@216@01 ($Snap.combine ($Snap.first $t@216@01) ($Snap.second $t@216@01))))
; [eval] loc(a, i)
(declare-const sm@217@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@217@01  $FVF<val>) (loc<Ref> a@21@01 j@172@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@216@01))))
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 j@172@01) (loc<Ref> a@21@01 j@172@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 j@172@01) (loc<Ref> a@21@01 j@172@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 j@172@01) (loc<Ref> a@21@01 j@172@01))
  (not (= (loc<Ref> a@21@01 j@172@01) $Ref.null))))
(assert (=
  ($Snap.second $t@216@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@216@01))
    ($Snap.second ($Snap.second $t@216@01)))))
; [eval] i != j
; [then-branch: 142 | j@172@01 != storeIndex@171@01 | dead]
; [else-branch: 142 | j@172@01 == storeIndex@171@01 | live]
(push) ; 10
; [else-branch: 142 | j@172@01 == storeIndex@171@01]
(assert (= ($Snap.first ($Snap.second $t@216@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@216@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@216@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@216@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
(declare-const sm@218@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
(declare-const pm@219@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@219@01  $FPM) r)
    (+
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- $Perm.Write (pTaken@194@01 r))
        $Perm.No)
      (ite (= r (loc<Ref> a@21@01 j@172@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_val (as pm@219@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(push) ; 11
(assert (not (< $Perm.No ($FVF.perm_val (as pm@219@01  $FPM) (loc<Ref> a@21@01 j@172@01)))))
(check-sat)
; unsat
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 11
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 storeIndex@171@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 storeIndex@171@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@218@01  $FVF<val>) (loc<Ref> a@21@01 j@172@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 storeIndex@171@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@216@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@172@01))
      (=
        ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
    :qid |qp.fvfValDef26|))))
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@176@01 (loc<Ref> a@21@01 storeIndex@171@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@175@01 (loc<Ref> a@21@01 storeIndex@171@01))))
      (- $Perm.Write (pTaken@194@01 (loc<Ref> a@21@01 storeIndex@171@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 j@172@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(push) ; 11
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 j@172@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 j@172@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@218@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 j@172@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; pw := pw[storeIndex - left := pw[j - left]][j - left :=
;   pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[j - left]][j - left := pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[j - left]]
; [eval] storeIndex - left
; [eval] pw[j - left]
; [eval] j - left
(set-option :timeout 0)
(push) ; 11
(assert (not (>= (- j@172@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- j@172@01 left@22@01) (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (>= (- storeIndex@171@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- storeIndex@171@01 left@22@01) (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] j - left
; [eval] pw[storeIndex - left]
; [eval] storeIndex - left
(push) ; 11
(assert (not (>= (- storeIndex@171@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- storeIndex@171@01 left@22@01) (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (>= (- j@172@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  (- j@172@01 left@22@01)
  (Seq_length
    (Seq_append
      (Seq_take pw@170@01 (- storeIndex@171@01 left@22@01))
      (Seq_append
        (Seq_singleton (Seq_index pw@170@01 (- j@172@01 left@22@01)))
        (Seq_drop pw@170@01 (+ (- storeIndex@171@01 left@22@01) 1))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const pw@220@01 Seq<Int>)
(assert (=
  pw@220@01
  (Seq_append
    (Seq_take
      (Seq_append
        (Seq_take pw@170@01 (- storeIndex@171@01 left@22@01))
        (Seq_append
          (Seq_singleton (Seq_index pw@170@01 (- j@172@01 left@22@01)))
          (Seq_drop pw@170@01 (+ (- storeIndex@171@01 left@22@01) 1))))
      (- j@172@01 left@22@01))
    (Seq_append
      (Seq_singleton (Seq_index pw@170@01 (- storeIndex@171@01 left@22@01)))
      (Seq_drop
        (Seq_append
          (Seq_take pw@170@01 (- storeIndex@171@01 left@22@01))
          (Seq_append
            (Seq_singleton (Seq_index pw@170@01 (- j@172@01 left@22@01)))
            (Seq_drop pw@170@01 (+ (- storeIndex@171@01 left@22@01) 1))))
        (+ (- j@172@01 left@22@01) 1))))))
; [exec]
; storeIndex := storeIndex + 1
; [eval] storeIndex + 1
(declare-const storeIndex@221@01 Int)
(assert (= storeIndex@221@01 (+ storeIndex@171@01 1)))
; [exec]
; j := j + 1
; [eval] j + 1
(declare-const j@222@01 Int)
(assert (= j@222@01 (+ j@172@01 1)))
; Loop head block: Re-establish invariant
; [eval] left <= j
(push) ; 11
(assert (not (<= left@22@01 j@222@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 j@222@01))
; [eval] j <= right
(push) ; 11
(assert (not (<= j@222@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= j@222@01 right@23@01))
; [eval] left <= storeIndex
(push) ; 11
(assert (not (<= left@22@01 storeIndex@221@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 storeIndex@221@01))
; [eval] storeIndex <= j
(push) ; 11
(assert (not (<= storeIndex@221@01 j@222@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= storeIndex@221@01 j@222@01))
(declare-const i@223@01 Int)
(push) ; 11
; [eval] (i in [left..right + 1))
; [eval] [left..right + 1)
; [eval] right + 1
(assert (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@223@01))
; [eval] loc(a, i)
(pop) ; 11
(declare-fun inv@224@01 ($Ref) Int)
(declare-fun img@225@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((i1@223@01 Int) (i2@223@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i1@223@01)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i2@223@01)
      (= (loc<Ref> a@21@01 i1@223@01) (loc<Ref> a@21@01 i2@223@01)))
    (= i1@223@01 i2@223@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@223@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@223@01)
    (and
      (= (inv@224@01 (loc<Ref> a@21@01 i@223@01)) i@223@01)
      (img@225@01 (loc<Ref> a@21@01 i@223@01))))
  :pattern ((loc<Ref> a@21@01 i@223@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@225@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@224@01 r)))
    (= (loc<Ref> a@21@01 (inv@224@01 r)) r))
  :pattern ((inv@224@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@226@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@224@01 r))
      (img@225@01 r)
      (= r (loc<Ref> a@21@01 (inv@224@01 r))))
    ($Perm.min
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- $Perm.Write (pTaken@194@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@227@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@224@01 r))
      (img@225@01 r)
      (= r (loc<Ref> a@21@01 (inv@224@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 j@172@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@226@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- $Perm.Write (pTaken@194@01 r))
        $Perm.No)
      (pTaken@226@01 r))
    $Perm.No)
  
  :qid |quant-u-19070|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@224@01 r))
      (img@225@01 r)
      (= r (loc<Ref> a@21@01 (inv@224@01 r))))
    (= (- $Perm.Write (pTaken@226@01 r)) $Perm.No))
  
  :qid |quant-u-19071|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 j@172@01) (loc<Ref> a@21@01 j@172@01))
      $Perm.Write
      $Perm.No)
    (pTaken@227@01 (loc<Ref> a@21@01 j@172@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@224@01 r))
      (img@225@01 r)
      (= r (loc<Ref> a@21@01 (inv@224@01 r))))
    (= (- (- $Perm.Write (pTaken@226@01 r)) (pTaken@227@01 r)) $Perm.No))
  
  :qid |quant-u-19073|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, right).val == pivotValue
; [eval] loc(a, right)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@172@01))
      (=
        ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
    :qid |qp.fvfValDef26|))))
(set-option :timeout 0)
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@176@01 (loc<Ref> a@21@01 right@23@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@175@01 (loc<Ref> a@21@01 right@23@01))))
      (- $Perm.Write (pTaken@194@01 (loc<Ref> a@21@01 right@23@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 j@172@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (=
  ($FVF.lookup_val (as sm@218@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@218@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01))
; [eval] (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
(declare-const i@228@01 Int)
(push) ; 11
; [eval] (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue
; [eval] (i in [left..storeIndex))
; [eval] [left..storeIndex)
(push) ; 12
; [then-branch: 143 | i@228@01 in [left@22@01..storeIndex@221@01] | live]
; [else-branch: 143 | !(i@228@01 in [left@22@01..storeIndex@221@01]) | live]
(push) ; 13
; [then-branch: 143 | i@228@01 in [left@22@01..storeIndex@221@01]]
(assert (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
; [eval] loc(a, i).val < pivotValue
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@172@01))
      (=
        ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
    :qid |qp.fvfValDef26|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@176@01 (loc<Ref> a@21@01 i@228@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@175@01 (loc<Ref> a@21@01 i@228@01))))
      (- $Perm.Write (pTaken@194@01 (loc<Ref> a@21@01 i@228@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 i@228@01) (loc<Ref> a@21@01 j@172@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 143 | !(i@228@01 in [left@22@01..storeIndex@221@01])]
(assert (not (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
  (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@228@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@221@01)
    i@228@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@228@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@221@01)
    i@228@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@228@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
  :pattern ((loc<Ref> a@21@01 i@228@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(push) ; 11
(assert (not (forall ((i@228@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01)
    (<
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) (loc<Ref> a@21@01 i@228@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@221@01)
    i@228@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@221@01)
    i@228@01))
  :pattern ((loc<Ref> a@21@01 i@228@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@228@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01)
    (<
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) (loc<Ref> a@21@01 i@228@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@221@01) i@228@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@221@01)
    i@228@01))
  :pattern ((loc<Ref> a@21@01 i@228@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
; [eval] (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
(declare-const i@229@01 Int)
(push) ; 11
; [eval] (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val
; [eval] (i in [storeIndex..j))
; [eval] [storeIndex..j)
(push) ; 12
; [then-branch: 144 | i@229@01 in [storeIndex@221@01..j@222@01] | live]
; [else-branch: 144 | !(i@229@01 in [storeIndex@221@01..j@222@01]) | live]
(push) ; 13
; [then-branch: 144 | i@229@01 in [storeIndex@221@01..j@222@01]]
(assert (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
; [eval] pivotValue <= loc(a, i).val
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@172@01))
      (=
        ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
    :qid |qp.fvfValDef26|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@176@01 (loc<Ref> a@21@01 i@229@01))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@175@01 (loc<Ref> a@21@01 i@229@01))))
      (- $Perm.Write (pTaken@194@01 (loc<Ref> a@21@01 i@229@01)))
      $Perm.No)
    (ite
      (= (loc<Ref> a@21@01 i@229@01) (loc<Ref> a@21@01 j@172@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 144 | !(i@229@01 in [storeIndex@221@01..j@222@01])]
(assert (not (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
  (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@229@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
    (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
  :pattern ((Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@221@01 j@222@01)
    i@229@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@229@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
    (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@221@01 j@222@01)
    i@229@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@229@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
    (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
  :pattern ((loc<Ref> a@21@01 i@229@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(push) ; 11
(assert (not (forall ((i@229@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) (loc<Ref> a@21@01 i@229@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@221@01 j@222@01)
    i@229@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@221@01 j@222@01)
    i@229@01))
  :pattern ((loc<Ref> a@21@01 i@229@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@229@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) (loc<Ref> a@21@01 i@229@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@221@01 j@222@01) i@229@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@221@01 j@222@01)
    i@229@01))
  :pattern ((loc<Ref> a@21@01 i@229@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(push) ; 11
(assert (not (= (Seq_length pw@220@01) (- (+ right@23@01 1) left@22@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (= (Seq_length pw@220@01) (- (+ right@23@01 1) left@22@01)))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@230@01 Int)
(push) ; 11
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 12
; [then-branch: 145 | !(0 <= i@230@01) | live]
; [else-branch: 145 | 0 <= i@230@01 | live]
(push) ; 13
; [then-branch: 145 | !(0 <= i@230@01)]
(assert (not (<= 0 i@230@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 145 | 0 <= i@230@01]
(assert (<= 0 i@230@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@230@01) (not (<= 0 i@230@01))))
(push) ; 12
; [then-branch: 146 | 0 <= i@230@01 && i@230@01 < |pw@220@01| | live]
; [else-branch: 146 | !(0 <= i@230@01 && i@230@01 < |pw@220@01|) | live]
(push) ; 13
; [then-branch: 146 | 0 <= i@230@01 && i@230@01 < |pw@220@01|]
(assert (and (<= 0 i@230@01) (< i@230@01 (Seq_length pw@220@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 14
(assert (not (>= i@230@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
; [then-branch: 147 | !(left@22@01 <= pw@220@01[i@230@01]) | live]
; [else-branch: 147 | left@22@01 <= pw@220@01[i@230@01] | live]
(push) ; 15
; [then-branch: 147 | !(left@22@01 <= pw@220@01[i@230@01])]
(assert (not (<= left@22@01 (Seq_index pw@220@01 i@230@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 147 | left@22@01 <= pw@220@01[i@230@01]]
(assert (<= left@22@01 (Seq_index pw@220@01 i@230@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 16
(assert (not (>= i@230@01 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@220@01 i@230@01))
  (not (<= left@22@01 (Seq_index pw@220@01 i@230@01)))))
(pop) ; 13
(push) ; 13
; [else-branch: 146 | !(0 <= i@230@01 && i@230@01 < |pw@220@01|)]
(assert (not (and (<= 0 i@230@01) (< i@230@01 (Seq_length pw@220@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and (<= 0 i@230@01) (< i@230@01 (Seq_length pw@220@01)))
  (and
    (<= 0 i@230@01)
    (< i@230@01 (Seq_length pw@220@01))
    (or
      (<= left@22@01 (Seq_index pw@220@01 i@230@01))
      (not (<= left@22@01 (Seq_index pw@220@01 i@230@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@230@01) (< i@230@01 (Seq_length pw@220@01))))
  (and (<= 0 i@230@01) (< i@230@01 (Seq_length pw@220@01)))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@230@01 Int)) (!
  (and
    (or (<= 0 i@230@01) (not (<= 0 i@230@01)))
    (=>
      (and (<= 0 i@230@01) (< i@230@01 (Seq_length pw@220@01)))
      (and
        (<= 0 i@230@01)
        (< i@230@01 (Seq_length pw@220@01))
        (or
          (<= left@22@01 (Seq_index pw@220@01 i@230@01))
          (not (<= left@22@01 (Seq_index pw@220@01 i@230@01))))))
    (or
      (not (and (<= 0 i@230@01) (< i@230@01 (Seq_length pw@220@01))))
      (and (<= 0 i@230@01) (< i@230@01 (Seq_length pw@220@01)))))
  :pattern ((Seq_index pw@220@01 i@230@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(push) ; 11
(assert (not (forall ((i@230@01 Int)) (!
  (=>
    (and (<= 0 i@230@01) (< i@230@01 (Seq_length pw@220@01)))
    (and
      (<= left@22@01 (Seq_index pw@220@01 i@230@01))
      (<= (Seq_index pw@220@01 i@230@01) right@23@01)))
  :pattern ((Seq_index pw@220@01 i@230@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@230@01 Int)) (!
  (=>
    (and (<= 0 i@230@01) (< i@230@01 (Seq_length pw@220@01)))
    (and
      (<= left@22@01 (Seq_index pw@220@01 i@230@01))
      (<= (Seq_index pw@220@01 i@230@01) right@23@01)))
  :pattern ((Seq_index pw@220@01 i@230@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
; [eval] (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
(declare-const i@231@01 Int)
(declare-const k@232@01 Int)
(push) ; 11
; [eval] 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]
; [eval] 0 <= i && (i < k && k < |pw|)
; [eval] 0 <= i
(push) ; 12
; [then-branch: 148 | !(0 <= i@231@01) | live]
; [else-branch: 148 | 0 <= i@231@01 | live]
(push) ; 13
; [then-branch: 148 | !(0 <= i@231@01)]
(assert (not (<= 0 i@231@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 148 | 0 <= i@231@01]
(assert (<= 0 i@231@01))
; [eval] i < k
(push) ; 14
; [then-branch: 149 | !(i@231@01 < k@232@01) | live]
; [else-branch: 149 | i@231@01 < k@232@01 | live]
(push) ; 15
; [then-branch: 149 | !(i@231@01 < k@232@01)]
(assert (not (< i@231@01 k@232@01)))
(pop) ; 15
(push) ; 15
; [else-branch: 149 | i@231@01 < k@232@01]
(assert (< i@231@01 k@232@01))
; [eval] k < |pw|
; [eval] |pw|
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (< i@231@01 k@232@01) (not (< i@231@01 k@232@01))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@231@01)
  (and (<= 0 i@231@01) (or (< i@231@01 k@232@01) (not (< i@231@01 k@232@01))))))
(assert (or (<= 0 i@231@01) (not (<= 0 i@231@01))))
(push) ; 12
; [then-branch: 150 | 0 <= i@231@01 && i@231@01 < k@232@01 && k@232@01 < |pw@220@01| | live]
; [else-branch: 150 | !(0 <= i@231@01 && i@231@01 < k@232@01 && k@232@01 < |pw@220@01|) | live]
(push) ; 13
; [then-branch: 150 | 0 <= i@231@01 && i@231@01 < k@232@01 && k@232@01 < |pw@220@01|]
(assert (and
  (<= 0 i@231@01)
  (and (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01)))))
; [eval] pw[i] != pw[k]
; [eval] pw[i]
(push) ; 14
(assert (not (>= i@231@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (< i@231@01 (Seq_length pw@220@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] pw[k]
(push) ; 14
(assert (not (>= k@232@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 150 | !(0 <= i@231@01 && i@231@01 < k@232@01 && k@232@01 < |pw@220@01|)]
(assert (not
  (and
    (<= 0 i@231@01)
    (and (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01))))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@231@01)
    (and (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01))))
  (and (<= 0 i@231@01) (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@231@01)
      (and (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01)))))
  (and
    (<= 0 i@231@01)
    (and (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01))))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@231@01 Int) (k@232@01 Int)) (!
  (and
    (=>
      (<= 0 i@231@01)
      (and
        (<= 0 i@231@01)
        (or (< i@231@01 k@232@01) (not (< i@231@01 k@232@01)))))
    (or (<= 0 i@231@01) (not (<= 0 i@231@01)))
    (=>
      (and
        (<= 0 i@231@01)
        (and (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01))))
      (and
        (<= 0 i@231@01)
        (< i@231@01 k@232@01)
        (< k@232@01 (Seq_length pw@220@01))))
    (or
      (not
        (and
          (<= 0 i@231@01)
          (and (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01)))))
      (and
        (<= 0 i@231@01)
        (and (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01))))))
  :pattern ((Seq_index pw@220@01 i@231@01) (Seq_index pw@220@01 k@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(push) ; 11
(assert (not (forall ((i@231@01 Int) (k@232@01 Int)) (!
  (=>
    (and
      (<= 0 i@231@01)
      (and (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01))))
    (not (= (Seq_index pw@220@01 i@231@01) (Seq_index pw@220@01 k@232@01))))
  :pattern ((Seq_index pw@220@01 i@231@01) (Seq_index pw@220@01 k@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.11s
; (get-info :all-statistics)
(assert (forall ((i@231@01 Int) (k@232@01 Int)) (!
  (=>
    (and
      (<= 0 i@231@01)
      (and (< i@231@01 k@232@01) (< k@232@01 (Seq_length pw@220@01))))
    (not (= (Seq_index pw@220@01 i@231@01) (Seq_index pw@220@01 k@232@01))))
  :pattern ((Seq_index pw@220@01 i@231@01) (Seq_index pw@220@01 k@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
; [eval] (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
(declare-const i$0@233@01 Int)
(push) ; 11
; [eval] 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] 0 <= i$0 && i$0 < |pw|
; [eval] 0 <= i$0
(push) ; 12
; [then-branch: 151 | !(0 <= i$0@233@01) | live]
; [else-branch: 151 | 0 <= i$0@233@01 | live]
(push) ; 13
; [then-branch: 151 | !(0 <= i$0@233@01)]
(assert (not (<= 0 i$0@233@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 151 | 0 <= i$0@233@01]
(assert (<= 0 i$0@233@01))
; [eval] i$0 < |pw|
; [eval] |pw|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i$0@233@01) (not (<= 0 i$0@233@01))))
(push) ; 12
; [then-branch: 152 | 0 <= i$0@233@01 && i$0@233@01 < |pw@220@01| | live]
; [else-branch: 152 | !(0 <= i$0@233@01 && i$0@233@01 < |pw@220@01|) | live]
(push) ; 13
; [then-branch: 152 | 0 <= i$0@233@01 && i$0@233@01 < |pw@220@01|]
(assert (and (<= 0 i$0@233@01) (< i$0@233@01 (Seq_length pw@220@01))))
; [eval] loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] loc(a, left + i$0)
; [eval] left + i$0
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 j@172@01))
      (=
        ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
    :qid |qp.fvfValDef26|))))
(push) ; 14
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@176@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@233@01)))
        (Seq_contains
          (Seq_range left@22@01 (+ right@23@01 1))
          (inv@175@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@233@01)))))
      (-
        $Perm.Write
        (pTaken@194@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@233@01))))
      $Perm.No)
    (ite
      (=
        (loc<Ref> a@21@01 (+ left@22@01 i$0@233@01))
        (loc<Ref> a@21@01 j@172@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i$0]).val)
; [eval] loc(a, pw[i$0])
; [eval] pw[i$0]
(push) ; 14
(assert (not (>= i$0@233@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@220@01 i$0@233@01)))
  (and
    (<=
      left@22@01
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@220@01 i$0@233@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@220@01 i$0@233@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 152 | !(0 <= i$0@233@01 && i$0@233@01 < |pw@220@01|)]
(assert (not (and (<= 0 i$0@233@01) (< i$0@233@01 (Seq_length pw@220@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i$0@233@01) (< i$0@233@01 (Seq_length pw@220@01))))
  (and (<= 0 i$0@233@01) (< i$0@233@01 (Seq_length pw@220@01)))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@194@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 j@172@01))
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@217@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@218@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@217@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$0@233@01 Int)) (!
  (and
    (or (<= 0 i$0@233@01) (not (<= 0 i$0@233@01)))
    (or
      (not (and (<= 0 i$0@233@01) (< i$0@233@01 (Seq_length pw@220@01))))
      (and (<= 0 i$0@233@01) (< i$0@233@01 (Seq_length pw@220@01)))))
  :pattern ((Seq_index pw@220@01 i$0@233@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(push) ; 11
(assert (not (forall ((i$0@233@01 Int)) (!
  (=>
    (and (<= 0 i$0@233@01) (< i$0@233@01 (Seq_length pw@220@01)))
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@233@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@220@01
        i$0@233@01)))))
  :pattern ((Seq_index pw@220@01 i$0@233@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|))))
(check-sat)
; unsat
(pop) ; 11
; 0.18s
; (get-info :all-statistics)
(assert (forall ((i$0@233@01 Int)) (!
  (=>
    (and (<= 0 i$0@233@01) (< i$0@233@01 (Seq_length pw@220@01)))
    (=
      ($FVF.lookup_val (as sm@218@01  $FVF<val>) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@233@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@220@01
        i$0@233@01)))))
  :pattern ((Seq_index pw@220@01 i$0@233@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
(pop) ; 10
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 129 | !(Lookup(val, First:(Second:(Second:(Second:(Second:($t@173@01))))), loc[Ref](a@21@01, j@172@01)) < pivotValue@43@01)]
(assert (not
  (<
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 j@172@01))
    pivotValue@43@01)))
(pop) ; 8
; [eval] !(loc(a, j).val < pivotValue)
; [eval] loc(a, j).val < pivotValue
; [eval] loc(a, j)
(push) ; 8
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 j@172@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 j@172@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (<
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 j@172@01))
  pivotValue@43@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.02s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (<
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 j@172@01))
    pivotValue@43@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; [then-branch: 153 | !(Lookup(val, First:(Second:(Second:(Second:(Second:($t@173@01))))), loc[Ref](a@21@01, j@172@01)) < pivotValue@43@01) | live]
; [else-branch: 153 | Lookup(val, First:(Second:(Second:(Second:(Second:($t@173@01))))), loc[Ref](a@21@01, j@172@01)) < pivotValue@43@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 153 | !(Lookup(val, First:(Second:(Second:(Second:(Second:($t@173@01))))), loc[Ref](a@21@01, j@172@01)) < pivotValue@43@01)]
(assert (not
  (<
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 j@172@01))
    pivotValue@43@01)))
; [exec]
; j := j + 1
; [eval] j + 1
(declare-const j@234@01 Int)
(assert (= j@234@01 (+ j@172@01 1)))
; Loop head block: Re-establish invariant
; [eval] left <= j
(push) ; 9
(assert (not (<= left@22@01 j@234@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= left@22@01 j@234@01))
; [eval] j <= right
(push) ; 9
(assert (not (<= j@234@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= j@234@01 right@23@01))
; [eval] left <= storeIndex
; [eval] storeIndex <= j
(push) ; 9
(assert (not (<= storeIndex@171@01 j@234@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= storeIndex@171@01 j@234@01))
(declare-const i@235@01 Int)
(push) ; 9
; [eval] (i in [left..right + 1))
; [eval] [left..right + 1)
; [eval] right + 1
(assert (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@235@01))
; [eval] loc(a, i)
(pop) ; 9
(declare-fun inv@236@01 ($Ref) Int)
(declare-fun img@237@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((i1@235@01 Int) (i2@235@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i1@235@01)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i2@235@01)
      (= (loc<Ref> a@21@01 i1@235@01) (loc<Ref> a@21@01 i2@235@01)))
    (= i1@235@01 i2@235@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@235@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) i@235@01)
    (and
      (= (inv@236@01 (loc<Ref> a@21@01 i@235@01)) i@235@01)
      (img@237@01 (loc<Ref> a@21@01 i@235@01))))
  :pattern ((loc<Ref> a@21@01 i@235@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@237@01 r)
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@236@01 r)))
    (= (loc<Ref> a@21@01 (inv@236@01 r)) r))
  :pattern ((inv@236@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@238@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@236@01 r))
      (img@237@01 r)
      (= r (loc<Ref> a@21@01 (inv@236@01 r))))
    ($Perm.min
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
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
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@238@01 r))
    $Perm.No)
  
  :qid |quant-u-19076|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@236@01 r))
      (img@237@01 r)
      (= r (loc<Ref> a@21@01 (inv@236@01 r))))
    (= (- $Perm.Write (pTaken@238@01 r)) $Perm.No))
  
  :qid |quant-u-19077|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, right).val == pivotValue
; [eval] loc(a, right)
(set-option :timeout 0)
(push) ; 9
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 right@23@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 right@23@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
(declare-const i@239@01 Int)
(push) ; 9
; [eval] (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue
; [eval] (i in [left..storeIndex))
; [eval] [left..storeIndex)
(push) ; 10
; [then-branch: 154 | i@239@01 in [left@22@01..storeIndex@171@01] | live]
; [else-branch: 154 | !(i@239@01 in [left@22@01..storeIndex@171@01]) | live]
(push) ; 11
; [then-branch: 154 | i@239@01 in [left@22@01..storeIndex@171@01]]
(assert (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
; [eval] loc(a, i).val < pivotValue
; [eval] loc(a, i)
(push) ; 12
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 i@239@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 i@239@01))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 154 | !(i@239@01 in [left@22@01..storeIndex@171@01])]
(assert (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
  (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01)))
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@239@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@239@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@239@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@239@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(assert (forall ((i@239@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
  :pattern ((loc<Ref> a@21@01 i@239@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86-aux|)))
(push) ; 9
(assert (not (forall ((i@239@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01)
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 i@239@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@239@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@239@01))
  :pattern ((loc<Ref> a@21@01 i@239@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@239@01 Int)) (!
  (=>
    (Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01)
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 i@239@01))
      pivotValue@43@01))
  :pattern ((Seq_contains (Seq_range left@22@01 storeIndex@171@01) i@239@01))
  :pattern ((Seq_contains_trigger
    (Seq_range left@22@01 storeIndex@171@01)
    i@239@01))
  :pattern ((loc<Ref> a@21@01 i@239@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@99@15@99@86|)))
; [eval] (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
(declare-const i@240@01 Int)
(push) ; 9
; [eval] (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val
; [eval] (i in [storeIndex..j))
; [eval] [storeIndex..j)
(push) ; 10
; [then-branch: 155 | i@240@01 in [storeIndex@171@01..j@234@01] | live]
; [else-branch: 155 | !(i@240@01 in [storeIndex@171@01..j@234@01]) | live]
(push) ; 11
; [then-branch: 155 | i@240@01 in [storeIndex@171@01..j@234@01]]
(assert (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
; [eval] pivotValue <= loc(a, i).val
; [eval] loc(a, i)
(push) ; 12
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 i@240@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 i@240@01))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 155 | !(i@240@01 in [storeIndex@171@01..j@234@01])]
(assert (not (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
  (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01)))
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@240@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
    (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
  :pattern ((Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@234@01)
    i@240@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@240@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
    (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@234@01)
    i@240@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(assert (forall ((i@240@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
    (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
  :pattern ((loc<Ref> a@21@01 i@240@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84-aux|)))
(push) ; 9
(assert (not (forall ((i@240@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 i@240@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@234@01)
    i@240@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@234@01)
    i@240@01))
  :pattern ((loc<Ref> a@21@01 i@240@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|))))
(check-sat)
; unsat
(pop) ; 9
; 0.05s
; (get-info :all-statistics)
(assert (forall ((i@240@01 Int)) (!
  (=>
    (Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01)
    (<=
      pivotValue@43@01
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 i@240@01))))
  :pattern ((Seq_contains (Seq_range storeIndex@171@01 j@234@01) i@240@01))
  :pattern ((Seq_contains_trigger
    (Seq_range storeIndex@171@01 j@234@01)
    i@240@01))
  :pattern ((loc<Ref> a@21@01 i@240@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@100@15@100@84|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@241@01 Int)
(push) ; 9
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 10
; [then-branch: 156 | !(0 <= i@241@01) | live]
; [else-branch: 156 | 0 <= i@241@01 | live]
(push) ; 11
; [then-branch: 156 | !(0 <= i@241@01)]
(assert (not (<= 0 i@241@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 156 | 0 <= i@241@01]
(assert (<= 0 i@241@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@241@01) (not (<= 0 i@241@01))))
(push) ; 10
; [then-branch: 157 | 0 <= i@241@01 && i@241@01 < |pw@170@01| | live]
; [else-branch: 157 | !(0 <= i@241@01 && i@241@01 < |pw@170@01|) | live]
(push) ; 11
; [then-branch: 157 | 0 <= i@241@01 && i@241@01 < |pw@170@01|]
(assert (and (<= 0 i@241@01) (< i@241@01 (Seq_length pw@170@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 12
(assert (not (>= i@241@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
; [then-branch: 158 | !(left@22@01 <= pw@170@01[i@241@01]) | live]
; [else-branch: 158 | left@22@01 <= pw@170@01[i@241@01] | live]
(push) ; 13
; [then-branch: 158 | !(left@22@01 <= pw@170@01[i@241@01])]
(assert (not (<= left@22@01 (Seq_index pw@170@01 i@241@01))))
(pop) ; 13
(push) ; 13
; [else-branch: 158 | left@22@01 <= pw@170@01[i@241@01]]
(assert (<= left@22@01 (Seq_index pw@170@01 i@241@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 14
(assert (not (>= i@241@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@170@01 i@241@01))
  (not (<= left@22@01 (Seq_index pw@170@01 i@241@01)))))
(pop) ; 11
(push) ; 11
; [else-branch: 157 | !(0 <= i@241@01 && i@241@01 < |pw@170@01|)]
(assert (not (and (<= 0 i@241@01) (< i@241@01 (Seq_length pw@170@01)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (and (<= 0 i@241@01) (< i@241@01 (Seq_length pw@170@01)))
  (and
    (<= 0 i@241@01)
    (< i@241@01 (Seq_length pw@170@01))
    (or
      (<= left@22@01 (Seq_index pw@170@01 i@241@01))
      (not (<= left@22@01 (Seq_index pw@170@01 i@241@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@241@01) (< i@241@01 (Seq_length pw@170@01))))
  (and (<= 0 i@241@01) (< i@241@01 (Seq_length pw@170@01)))))
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@241@01 Int)) (!
  (and
    (or (<= 0 i@241@01) (not (<= 0 i@241@01)))
    (=>
      (and (<= 0 i@241@01) (< i@241@01 (Seq_length pw@170@01)))
      (and
        (<= 0 i@241@01)
        (< i@241@01 (Seq_length pw@170@01))
        (or
          (<= left@22@01 (Seq_index pw@170@01 i@241@01))
          (not (<= left@22@01 (Seq_index pw@170@01 i@241@01))))))
    (or
      (not (and (<= 0 i@241@01) (< i@241@01 (Seq_length pw@170@01))))
      (and (<= 0 i@241@01) (< i@241@01 (Seq_length pw@170@01)))))
  :pattern ((Seq_index pw@170@01 i@241@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86-aux|)))
(push) ; 9
(assert (not (forall ((i@241@01 Int)) (!
  (=>
    (and (<= 0 i@241@01) (< i@241@01 (Seq_length pw@170@01)))
    (and
      (<= left@22@01 (Seq_index pw@170@01 i@241@01))
      (<= (Seq_index pw@170@01 i@241@01) right@23@01)))
  :pattern ((Seq_index pw@170@01 i@241@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@241@01 Int)) (!
  (=>
    (and (<= 0 i@241@01) (< i@241@01 (Seq_length pw@170@01)))
    (and
      (<= left@22@01 (Seq_index pw@170@01 i@241@01))
      (<= (Seq_index pw@170@01 i@241@01) right@23@01)))
  :pattern ((Seq_index pw@170@01 i@241@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@103@15@103@86|)))
; [eval] (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
(declare-const i@242@01 Int)
(declare-const k@243@01 Int)
(push) ; 9
; [eval] 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]
; [eval] 0 <= i && (i < k && k < |pw|)
; [eval] 0 <= i
(push) ; 10
; [then-branch: 159 | !(0 <= i@242@01) | live]
; [else-branch: 159 | 0 <= i@242@01 | live]
(push) ; 11
; [then-branch: 159 | !(0 <= i@242@01)]
(assert (not (<= 0 i@242@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 159 | 0 <= i@242@01]
(assert (<= 0 i@242@01))
; [eval] i < k
(push) ; 12
; [then-branch: 160 | !(i@242@01 < k@243@01) | live]
; [else-branch: 160 | i@242@01 < k@243@01 | live]
(push) ; 13
; [then-branch: 160 | !(i@242@01 < k@243@01)]
(assert (not (< i@242@01 k@243@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 160 | i@242@01 < k@243@01]
(assert (< i@242@01 k@243@01))
; [eval] k < |pw|
; [eval] |pw|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (< i@242@01 k@243@01) (not (< i@242@01 k@243@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@242@01)
  (and (<= 0 i@242@01) (or (< i@242@01 k@243@01) (not (< i@242@01 k@243@01))))))
(assert (or (<= 0 i@242@01) (not (<= 0 i@242@01))))
(push) ; 10
; [then-branch: 161 | 0 <= i@242@01 && i@242@01 < k@243@01 && k@243@01 < |pw@170@01| | live]
; [else-branch: 161 | !(0 <= i@242@01 && i@242@01 < k@243@01 && k@243@01 < |pw@170@01|) | live]
(push) ; 11
; [then-branch: 161 | 0 <= i@242@01 && i@242@01 < k@243@01 && k@243@01 < |pw@170@01|]
(assert (and
  (<= 0 i@242@01)
  (and (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01)))))
; [eval] pw[i] != pw[k]
; [eval] pw[i]
(push) ; 12
(assert (not (>= i@242@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (< i@242@01 (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] pw[k]
(push) ; 12
(assert (not (>= k@243@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 161 | !(0 <= i@242@01 && i@242@01 < k@243@01 && k@243@01 < |pw@170@01|)]
(assert (not
  (and
    (<= 0 i@242@01)
    (and (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01))))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@242@01)
    (and (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01))))
  (and (<= 0 i@242@01) (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@242@01)
      (and (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01)))))
  (and
    (<= 0 i@242@01)
    (and (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01))))))
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@242@01 Int) (k@243@01 Int)) (!
  (and
    (=>
      (<= 0 i@242@01)
      (and
        (<= 0 i@242@01)
        (or (< i@242@01 k@243@01) (not (< i@242@01 k@243@01)))))
    (or (<= 0 i@242@01) (not (<= 0 i@242@01)))
    (=>
      (and
        (<= 0 i@242@01)
        (and (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01))))
      (and
        (<= 0 i@242@01)
        (< i@242@01 k@243@01)
        (< k@243@01 (Seq_length pw@170@01))))
    (or
      (not
        (and
          (<= 0 i@242@01)
          (and (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01)))))
      (and
        (<= 0 i@242@01)
        (and (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01))))))
  :pattern ((Seq_index pw@170@01 i@242@01) (Seq_index pw@170@01 k@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86-aux|)))
(push) ; 9
(assert (not (forall ((i@242@01 Int) (k@243@01 Int)) (!
  (=>
    (and
      (<= 0 i@242@01)
      (and (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01))))
    (not (= (Seq_index pw@170@01 i@242@01) (Seq_index pw@170@01 k@243@01))))
  :pattern ((Seq_index pw@170@01 i@242@01) (Seq_index pw@170@01 k@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@242@01 Int) (k@243@01 Int)) (!
  (=>
    (and
      (<= 0 i@242@01)
      (and (< i@242@01 k@243@01) (< k@243@01 (Seq_length pw@170@01))))
    (not (= (Seq_index pw@170@01 i@242@01) (Seq_index pw@170@01 k@243@01))))
  :pattern ((Seq_index pw@170@01 i@242@01) (Seq_index pw@170@01 k@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@104@15@104@86|)))
; [eval] (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
(declare-const i$0@244@01 Int)
(push) ; 9
; [eval] 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] 0 <= i$0 && i$0 < |pw|
; [eval] 0 <= i$0
(push) ; 10
; [then-branch: 162 | !(0 <= i$0@244@01) | live]
; [else-branch: 162 | 0 <= i$0@244@01 | live]
(push) ; 11
; [then-branch: 162 | !(0 <= i$0@244@01)]
(assert (not (<= 0 i$0@244@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 162 | 0 <= i$0@244@01]
(assert (<= 0 i$0@244@01))
; [eval] i$0 < |pw|
; [eval] |pw|
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i$0@244@01) (not (<= 0 i$0@244@01))))
(push) ; 10
; [then-branch: 163 | 0 <= i$0@244@01 && i$0@244@01 < |pw@170@01| | live]
; [else-branch: 163 | !(0 <= i$0@244@01 && i$0@244@01 < |pw@170@01|) | live]
(push) ; 11
; [then-branch: 163 | 0 <= i$0@244@01 && i$0@244@01 < |pw@170@01|]
(assert (and (<= 0 i$0@244@01) (< i$0@244@01 (Seq_length pw@170@01))))
; [eval] loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)
; [eval] loc(a, left + i$0)
; [eval] left + i$0
(push) ; 12
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@244@01)))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 (+ left@22@01 i$0@244@01)))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pw[i$0]).val)
; [eval] loc(a, pw[i$0])
; [eval] pw[i$0]
(push) ; 12
(assert (not (>= i$0@244@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 (Seq_index pw@170@01 i$0@244@01)))
  (and
    (<=
      left@22@01
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@170@01 i$0@244@01))))
    (<=
      (inv@29@01 (loc<Ref> a@21@01 (Seq_index pw@170@01 i$0@244@01)))
      right@23@01)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 163 | !(0 <= i$0@244@01 && i$0@244@01 < |pw@170@01|)]
(assert (not (and (<= 0 i$0@244@01) (< i$0@244@01 (Seq_length pw@170@01)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 i$0@244@01) (< i$0@244@01 (Seq_length pw@170@01))))
  (and (<= 0 i$0@244@01) (< i$0@244@01 (Seq_length pw@170@01)))))
(pop) ; 9
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$0@244@01 Int)) (!
  (and
    (or (<= 0 i$0@244@01) (not (<= 0 i$0@244@01)))
    (or
      (not (and (<= 0 i$0@244@01) (< i$0@244@01 (Seq_length pw@170@01))))
      (and (<= 0 i$0@244@01) (< i$0@244@01 (Seq_length pw@170@01)))))
  :pattern ((Seq_index pw@170@01 i$0@244@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36-aux|)))
(push) ; 9
(assert (not (forall ((i$0@244@01 Int)) (!
  (=>
    (and (<= 0 i$0@244@01) (< i$0@244@01 (Seq_length pw@170@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@244@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@170@01
        i$0@244@01)))))
  :pattern ((Seq_index pw@170@01 i$0@244@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i$0@244@01 Int)) (!
  (=>
    (and (<= 0 i$0@244@01) (< i$0@244@01 (Seq_length pw@170@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 (+
        left@22@01
        i$0@244@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 (Seq_index
        pw@170@01
        i$0@244@01)))))
  :pattern ((Seq_index pw@170@01 i$0@244@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@106@15@106@36|)))
(pop) ; 8
(push) ; 8
; [else-branch: 153 | Lookup(val, First:(Second:(Second:(Second:(Second:($t@173@01))))), loc[Ref](a@21@01, j@172@01)) < pivotValue@43@01]
(assert (<
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 j@172@01))
  pivotValue@43@01))
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 128 | !(j@172@01 < right@23@01)]
(assert (not (< j@172@01 right@23@01)))
(pop) ; 7
; [eval] !(j < right)
; [eval] j < right
(push) ; 7
(set-option :timeout 10)
(assert (not (< j@172@01 right@23@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (< j@172@01 right@23@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 164 | !(j@172@01 < right@23@01) | live]
; [else-branch: 164 | j@172@01 < right@23@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 164 | !(j@172@01 < right@23@01)]
(assert (not (< j@172@01 right@23@01)))
; [exec]
; swap(a, right, storeIndex)
; [eval] 0 <= i
; [eval] i < len(a)
; [eval] len(a)
; [eval] 0 <= j
(push) ; 8
(assert (not (<= 0 storeIndex@171@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 storeIndex@171@01))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 8
(assert (not (< storeIndex@171@01 (len<Int> a@21@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (< storeIndex@171@01 (len<Int> a@21@01)))
; [eval] loc(a, i)
; Precomputing data for removing quantified permissions
(define-fun pTaken@245@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@21@01 right@23@01))
    ($Perm.min
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
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
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@245@01 r))
    $Perm.No)
  
  :qid |quant-u-19079|))))
(check-sat)
; unknown
(pop) ; 8
; 0.05s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@245@01 r) $Perm.No)
  
  :qid |quant-u-19080|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (= (- $Perm.Write (pTaken@245@01 r)) $Perm.No))
  
  :qid |quant-u-19081|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] i != j
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= right@23@01 storeIndex@171@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= right@23@01 storeIndex@171@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 165 | right@23@01 != storeIndex@171@01 | live]
; [else-branch: 165 | right@23@01 == storeIndex@171@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 165 | right@23@01 != storeIndex@171@01]
(assert (not (= right@23@01 storeIndex@171@01)))
; [eval] loc(a, j)
; Precomputing data for removing quantified permissions
(define-fun pTaken@246@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    ($Perm.min
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- $Perm.Write (pTaken@245@01 r))
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
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- $Perm.Write (pTaken@245@01 r))
        $Perm.No)
      (pTaken@246@01 r))
    $Perm.No)
  
  :qid |quant-u-19083|))))
(check-sat)
; unknown
(pop) ; 9
; 0.05s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@246@01 r) $Perm.No)
  
  :qid |quant-u-19084|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (= (- $Perm.Write (pTaken@246@01 r)) $Perm.No))
  
  :qid |quant-u-19085|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@247@01 $Snap)
(assert (= $t@247@01 ($Snap.combine ($Snap.first $t@247@01) ($Snap.second $t@247@01))))
; [eval] loc(a, i)
(declare-const sm@248@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@248@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@247@01))))
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
  (not (= (loc<Ref> a@21@01 right@23@01) $Ref.null))))
(assert (=
  ($Snap.second $t@247@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@247@01))
    ($Snap.second ($Snap.second $t@247@01)))))
; [eval] i != j
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= right@23@01 storeIndex@171@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 166 | right@23@01 != storeIndex@171@01 | live]
; [else-branch: 166 | right@23@01 == storeIndex@171@01 | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 166 | right@23@01 != storeIndex@171@01]
; [eval] loc(a, j)
(declare-const sm@249@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@249@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@247@01)))))
(push) ; 10
(set-option :timeout 10)
(assert (not (and
  (and
    (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 storeIndex@171@01))
    (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01)))
  (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 right@23@01)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 storeIndex@171@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 storeIndex@171@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 storeIndex@171@01))
  (not (= (loc<Ref> a@21@01 storeIndex@171@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@247@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@247@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@247@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@247@01))) $Snap.unit))
; [eval] loc(a, i).val == old(loc(a, j).val)
; [eval] loc(a, i)
(declare-const sm@250@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
(declare-const pm@251@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@251@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@176@01 r)
            (Seq_contains
              (Seq_range left@22@01 (+ right@23@01 1))
              (inv@175@01 r)))
          (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r))
          $Perm.No)
        (ite (= r (loc<Ref> a@21@01 right@23@01)) $Perm.Write $Perm.No))
      (ite (= r (loc<Ref> a@21@01 storeIndex@171@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_val (as pm@251@01  $FPM) r))
  :qid |qp.resPrmSumDef31|)))
(set-option :timeout 0)
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_val (as pm@251@01  $FPM) (loc<Ref> a@21@01 right@23@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 10
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 storeIndex@171@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 storeIndex@171@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 storeIndex@171@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@247@01))) $Snap.unit))
; [eval] loc(a, j).val == old(loc(a, i).val)
; [eval] loc(a, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
    :qid |qp.fvfValDef30|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 storeIndex@171@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 storeIndex@171@01))))
        (-
          (- $Perm.Write (pTaken@245@01 (loc<Ref> a@21@01 storeIndex@171@01)))
          (pTaken@246@01 (loc<Ref> a@21@01 storeIndex@171@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (loc<Ref> a@21@01 storeIndex@171@01)
        (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i).val)
; [eval] loc(a, i)
(push) ; 10
(assert (not (and
  (img@176@01 (loc<Ref> a@21@01 right@23@01))
  (Seq_contains
    (Seq_range left@22@01 (+ right@23@01 1))
    (inv@175@01 (loc<Ref> a@21@01 right@23@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) (loc<Ref> a@21@01 right@23@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; pw := pw[storeIndex - left := pw[right - left]][right - left :=
;   pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[right - left]][right - left := pw[storeIndex - left]]
; [eval] pw[storeIndex - left := pw[right - left]]
; [eval] storeIndex - left
; [eval] pw[right - left]
; [eval] right - left
(set-option :timeout 0)
(push) ; 10
(assert (not (>= (- right@23@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< (- right@23@01 left@22@01) (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (>= (- storeIndex@171@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< (- storeIndex@171@01 left@22@01) (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] right - left
; [eval] pw[storeIndex - left]
; [eval] storeIndex - left
(push) ; 10
(assert (not (>= (- storeIndex@171@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< (- storeIndex@171@01 left@22@01) (Seq_length pw@170@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (>= (- right@23@01 left@22@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  (- right@23@01 left@22@01)
  (Seq_length
    (Seq_append
      (Seq_take pw@170@01 (- storeIndex@171@01 left@22@01))
      (Seq_append
        (Seq_singleton (Seq_index pw@170@01 (- right@23@01 left@22@01)))
        (Seq_drop pw@170@01 (+ (- storeIndex@171@01 left@22@01) 1))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const pw@252@01 Seq<Int>)
(assert (=
  pw@252@01
  (Seq_append
    (Seq_take
      (Seq_append
        (Seq_take pw@170@01 (- storeIndex@171@01 left@22@01))
        (Seq_append
          (Seq_singleton (Seq_index pw@170@01 (- right@23@01 left@22@01)))
          (Seq_drop pw@170@01 (+ (- storeIndex@171@01 left@22@01) 1))))
      (- right@23@01 left@22@01))
    (Seq_append
      (Seq_singleton (Seq_index pw@170@01 (- storeIndex@171@01 left@22@01)))
      (Seq_drop
        (Seq_append
          (Seq_take pw@170@01 (- storeIndex@171@01 left@22@01))
          (Seq_append
            (Seq_singleton (Seq_index pw@170@01 (- right@23@01 left@22@01)))
            (Seq_drop pw@170@01 (+ (- storeIndex@171@01 left@22@01) 1))))
        (+ (- right@23@01 left@22@01) 1))))))
; [eval] left <= storeIndex
; [eval] storeIndex <= right
(push) ; 10
(assert (not (<= storeIndex@171@01 right@23@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= storeIndex@171@01 right@23@01))
(declare-const i@253@01 Int)
(push) ; 10
; [eval] left <= i && i <= right
; [eval] left <= i
(push) ; 11
; [then-branch: 167 | !(left@22@01 <= i@253@01) | live]
; [else-branch: 167 | left@22@01 <= i@253@01 | live]
(push) ; 12
; [then-branch: 167 | !(left@22@01 <= i@253@01)]
(assert (not (<= left@22@01 i@253@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 167 | left@22@01 <= i@253@01]
(assert (<= left@22@01 i@253@01))
; [eval] i <= right
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= left@22@01 i@253@01) (not (<= left@22@01 i@253@01))))
(assert (and (<= left@22@01 i@253@01) (<= i@253@01 right@23@01)))
; [eval] loc(a, i)
(pop) ; 10
(declare-fun inv@254@01 ($Ref) Int)
(declare-fun img@255@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@253@01 Int)) (!
  (=>
    (and (<= left@22@01 i@253@01) (<= i@253@01 right@23@01))
    (or (<= left@22@01 i@253@01) (not (<= left@22@01 i@253@01))))
  :pattern ((loc<Ref> a@21@01 i@253@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((i1@253@01 Int) (i2@253@01 Int)) (!
  (=>
    (and
      (and (<= left@22@01 i1@253@01) (<= i1@253@01 right@23@01))
      (and (<= left@22@01 i2@253@01) (<= i2@253@01 right@23@01))
      (= (loc<Ref> a@21@01 i1@253@01) (loc<Ref> a@21@01 i2@253@01)))
    (= i1@253@01 i2@253@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@253@01 Int)) (!
  (=>
    (and (<= left@22@01 i@253@01) (<= i@253@01 right@23@01))
    (and
      (= (inv@254@01 (loc<Ref> a@21@01 i@253@01)) i@253@01)
      (img@255@01 (loc<Ref> a@21@01 i@253@01))))
  :pattern ((loc<Ref> a@21@01 i@253@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@255@01 r)
      (and (<= left@22@01 (inv@254@01 r)) (<= (inv@254@01 r) right@23@01)))
    (= (loc<Ref> a@21@01 (inv@254@01 r)) r))
  :pattern ((inv@254@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@256@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@22@01 (inv@254@01 r)) (<= (inv@254@01 r) right@23@01))
      (img@255@01 r)
      (= r (loc<Ref> a@21@01 (inv@254@01 r))))
    ($Perm.min
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@257@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@22@01 (inv@254@01 r)) (<= (inv@254@01 r) right@23@01))
      (img@255@01 r)
      (= r (loc<Ref> a@21@01 (inv@254@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 right@23@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@256@01 r)))
    $Perm.No))
(define-fun pTaken@258@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@22@01 (inv@254@01 r)) (<= (inv@254@01 r) right@23@01))
      (img@255@01 r)
      (= r (loc<Ref> a@21@01 (inv@254@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@21@01 storeIndex@171@01)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@256@01 r)) (pTaken@257@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r))
        $Perm.No)
      (pTaken@256@01 r))
    $Perm.No)
  
  :qid |quant-u-19088|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@22@01 (inv@254@01 r)) (<= (inv@254@01 r) right@23@01))
      (img@255@01 r)
      (= r (loc<Ref> a@21@01 (inv@254@01 r))))
    (= (- $Perm.Write (pTaken@256@01 r)) $Perm.No))
  
  :qid |quant-u-19089|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@21@01 right@23@01) (loc<Ref> a@21@01 right@23@01))
      $Perm.Write
      $Perm.No)
    (pTaken@257@01 (loc<Ref> a@21@01 right@23@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@22@01 (inv@254@01 r)) (<= (inv@254@01 r) right@23@01))
      (img@255@01 r)
      (= r (loc<Ref> a@21@01 (inv@254@01 r))))
    (= (- (- $Perm.Write (pTaken@256@01 r)) (pTaken@257@01 r)) $Perm.No))
  
  :qid |quant-u-19091|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> a@21@01 storeIndex@171@01)
        (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)
    (pTaken@258@01 (loc<Ref> a@21@01 storeIndex@171@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@22@01 (inv@254@01 r)) (<= (inv@254@01 r) right@23@01))
      (img@255@01 r)
      (= r (loc<Ref> a@21@01 (inv@254@01 r))))
    (=
      (-
        (- (- $Perm.Write (pTaken@256@01 r)) (pTaken@257@01 r))
        (pTaken@258@01 r))
      $Perm.No))
  
  :qid |quant-u-19093|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] loc(a, storeIndex).val == old(loc(a, pivotIndex).val)
; [eval] loc(a, storeIndex)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
    :qid |qp.fvfValDef30|))))
(set-option :timeout 0)
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 storeIndex@171@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 storeIndex@171@01))))
        (-
          (- $Perm.Write (pTaken@245@01 (loc<Ref> a@21@01 storeIndex@171@01)))
          (pTaken@246@01 (loc<Ref> a@21@01 storeIndex@171@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (loc<Ref> a@21@01 storeIndex@171@01)
        (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, pivotIndex).val)
; [eval] loc(a, pivotIndex)
(push) ; 10
(assert (not (and
  (img@30@01 (loc<Ref> a@21@01 pivotIndex@24@01))
  (and
    (<= left@22@01 (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)))
    (<= (inv@29@01 (loc<Ref> a@21@01 pivotIndex@24@01)) right@23@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (=
  ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 pivotIndex@24@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))) (loc<Ref> a@21@01 pivotIndex@24@01))))
; [eval] (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val < loc(a, storeIndex).val)
(declare-const i@259@01 Int)
(push) ; 10
; [eval] left <= i && i < storeIndex ==> loc(a, i).val < loc(a, storeIndex).val
; [eval] left <= i && i < storeIndex
; [eval] left <= i
(push) ; 11
; [then-branch: 168 | !(left@22@01 <= i@259@01) | live]
; [else-branch: 168 | left@22@01 <= i@259@01 | live]
(push) ; 12
; [then-branch: 168 | !(left@22@01 <= i@259@01)]
(assert (not (<= left@22@01 i@259@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 168 | left@22@01 <= i@259@01]
(assert (<= left@22@01 i@259@01))
; [eval] i < storeIndex
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= left@22@01 i@259@01) (not (<= left@22@01 i@259@01))))
(push) ; 11
; [then-branch: 169 | left@22@01 <= i@259@01 && i@259@01 < storeIndex@171@01 | live]
; [else-branch: 169 | !(left@22@01 <= i@259@01 && i@259@01 < storeIndex@171@01) | live]
(push) ; 12
; [then-branch: 169 | left@22@01 <= i@259@01 && i@259@01 < storeIndex@171@01]
(assert (and (<= left@22@01 i@259@01) (< i@259@01 storeIndex@171@01)))
; [eval] loc(a, i).val < loc(a, storeIndex).val
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
    :qid |qp.fvfValDef30|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 i@259@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 i@259@01))))
        (-
          (- $Perm.Write (pTaken@245@01 (loc<Ref> a@21@01 i@259@01)))
          (pTaken@246@01 (loc<Ref> a@21@01 i@259@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 i@259@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 i@259@01) (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, storeIndex)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
    :qid |qp.fvfValDef30|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 storeIndex@171@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 storeIndex@171@01))))
        (-
          (- $Perm.Write (pTaken@245@01 (loc<Ref> a@21@01 storeIndex@171@01)))
          (pTaken@246@01 (loc<Ref> a@21@01 storeIndex@171@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (loc<Ref> a@21@01 storeIndex@171@01)
        (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 169 | !(left@22@01 <= i@259@01 && i@259@01 < storeIndex@171@01)]
(assert (not (and (<= left@22@01 i@259@01) (< i@259@01 storeIndex@171@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
; Joined path conditions
(assert (or
  (not (and (<= left@22@01 i@259@01) (< i@259@01 storeIndex@171@01)))
  (and (<= left@22@01 i@259@01) (< i@259@01 storeIndex@171@01))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@259@01 Int)) (!
  (and
    (or (<= left@22@01 i@259@01) (not (<= left@22@01 i@259@01)))
    (or
      (not (and (<= left@22@01 i@259@01) (< i@259@01 storeIndex@171@01)))
      (and (<= left@22@01 i@259@01) (< i@259@01 storeIndex@171@01))))
  :pattern ((loc<Ref> a@21@01 i@259@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99-aux|)))
(push) ; 10
(assert (not (forall ((i@259@01 Int)) (!
  (=>
    (and (<= left@22@01 i@259@01) (< i@259@01 storeIndex@171@01))
    (<
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 i@259@01))
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))))
  :pattern ((loc<Ref> a@21@01 i@259@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@259@01 Int)) (!
  (=>
    (and (<= left@22@01 i@259@01) (< i@259@01 storeIndex@171@01))
    (<
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 i@259@01))
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))))
  :pattern ((loc<Ref> a@21@01 i@259@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@62@11@62@99|)))
; [eval] (forall i: Int :: { loc(a, i) } storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val)
(declare-const i@260@01 Int)
(push) ; 10
; [eval] storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val
; [eval] storeIndex < i && i <= right
; [eval] storeIndex < i
(push) ; 11
; [then-branch: 170 | !(storeIndex@171@01 < i@260@01) | live]
; [else-branch: 170 | storeIndex@171@01 < i@260@01 | live]
(push) ; 12
; [then-branch: 170 | !(storeIndex@171@01 < i@260@01)]
(assert (not (< storeIndex@171@01 i@260@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 170 | storeIndex@171@01 < i@260@01]
(assert (< storeIndex@171@01 i@260@01))
; [eval] i <= right
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< storeIndex@171@01 i@260@01) (not (< storeIndex@171@01 i@260@01))))
(push) ; 11
; [then-branch: 171 | storeIndex@171@01 < i@260@01 && i@260@01 <= right@23@01 | live]
; [else-branch: 171 | !(storeIndex@171@01 < i@260@01 && i@260@01 <= right@23@01) | live]
(push) ; 12
; [then-branch: 171 | storeIndex@171@01 < i@260@01 && i@260@01 <= right@23@01]
(assert (and (< storeIndex@171@01 i@260@01) (<= i@260@01 right@23@01)))
; [eval] loc(a, storeIndex).val <= loc(a, i).val
; [eval] loc(a, storeIndex)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
    :qid |qp.fvfValDef30|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 storeIndex@171@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 storeIndex@171@01))))
        (-
          (- $Perm.Write (pTaken@245@01 (loc<Ref> a@21@01 storeIndex@171@01)))
          (pTaken@246@01 (loc<Ref> a@21@01 storeIndex@171@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 storeIndex@171@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (loc<Ref> a@21@01 storeIndex@171@01)
        (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@176@01 r)
          (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
        (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 right@23@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (= r (loc<Ref> a@21@01 storeIndex@171@01))
      (=
        ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
    :qid |qp.fvfValDef30|))))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@176@01 (loc<Ref> a@21@01 i@260@01))
          (Seq_contains
            (Seq_range left@22@01 (+ right@23@01 1))
            (inv@175@01 (loc<Ref> a@21@01 i@260@01))))
        (-
          (- $Perm.Write (pTaken@245@01 (loc<Ref> a@21@01 i@260@01)))
          (pTaken@246@01 (loc<Ref> a@21@01 i@260@01)))
        $Perm.No)
      (ite
        (= (loc<Ref> a@21@01 i@260@01) (loc<Ref> a@21@01 right@23@01))
        $Perm.Write
        $Perm.No))
    (ite
      (= (loc<Ref> a@21@01 i@260@01) (loc<Ref> a@21@01 storeIndex@171@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 171 | !(storeIndex@171@01 < i@260@01 && i@260@01 <= right@23@01)]
(assert (not (and (< storeIndex@171@01 i@260@01) (<= i@260@01 right@23@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
; Joined path conditions
(assert (or
  (not (and (< storeIndex@171@01 i@260@01) (<= i@260@01 right@23@01)))
  (and (< storeIndex@171@01 i@260@01) (<= i@260@01 right@23@01))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@176@01 r)
        (Seq_contains (Seq_range left@22@01 (+ right@23@01 1)) (inv@175@01 r)))
      (< $Perm.No (- (- $Perm.Write (pTaken@245@01 r)) (pTaken@246@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@173@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 right@23@01))
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@248@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@248@01  $FVF<val>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@21@01 storeIndex@171@01))
    (=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@249@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@250@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@249@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@260@01 Int)) (!
  (and
    (or (< storeIndex@171@01 i@260@01) (not (< storeIndex@171@01 i@260@01)))
    (or
      (not (and (< storeIndex@171@01 i@260@01) (<= i@260@01 right@23@01)))
      (and (< storeIndex@171@01 i@260@01) (<= i@260@01 right@23@01))))
  :pattern ((loc<Ref> a@21@01 i@260@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100-aux|)))
(push) ; 10
(assert (not (forall ((i@260@01 Int)) (!
  (=>
    (and (< storeIndex@171@01 i@260@01) (<= i@260@01 right@23@01))
    (<=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 i@260@01))))
  :pattern ((loc<Ref> a@21@01 i@260@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@260@01 Int)) (!
  (=>
    (and (< storeIndex@171@01 i@260@01) (<= i@260@01 right@23@01))
    (<=
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 storeIndex@171@01))
      ($FVF.lookup_val (as sm@250@01  $FVF<val>) (loc<Ref> a@21@01 i@260@01))))
  :pattern ((loc<Ref> a@21@01 i@260@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@63@11@63@100|)))
; [eval] |pw| == right + 1 - left
; [eval] |pw|
; [eval] right + 1 - left
; [eval] right + 1
(push) ; 10
(assert (not (= (Seq_length pw@252@01) (- (+ right@23@01 1) left@22@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length pw@252@01) (- (+ right@23@01 1) left@22@01)))
; [eval] (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
(declare-const i@261@01 Int)
(push) ; 10
; [eval] 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right
; [eval] 0 <= i && i < |pw|
; [eval] 0 <= i
(push) ; 11
; [then-branch: 172 | !(0 <= i@261@01) | live]
; [else-branch: 172 | 0 <= i@261@01 | live]
(push) ; 12
; [then-branch: 172 | !(0 <= i@261@01)]
(assert (not (<= 0 i@261@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 172 | 0 <= i@261@01]
(assert (<= 0 i@261@01))
; [eval] i < |pw|
; [eval] |pw|
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@261@01) (not (<= 0 i@261@01))))
(push) ; 11
; [then-branch: 173 | 0 <= i@261@01 && i@261@01 < |pw@252@01| | live]
; [else-branch: 173 | !(0 <= i@261@01 && i@261@01 < |pw@252@01|) | live]
(push) ; 12
; [then-branch: 173 | 0 <= i@261@01 && i@261@01 < |pw@252@01|]
(assert (and (<= 0 i@261@01) (< i@261@01 (Seq_length pw@252@01))))
; [eval] left <= pw[i] && pw[i] <= right
; [eval] left <= pw[i]
; [eval] pw[i]
(push) ; 13
(assert (not (>= i@261@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
; [then-branch: 174 | !(left@22@01 <= pw@252@01[i@261@01]) | live]
; [else-branch: 174 | left@22@01 <= pw@252@01[i@261@01] | live]
(push) ; 14
; [then-branch: 174 | !(left@22@01 <= pw@252@01[i@261@01])]
(assert (not (<= left@22@01 (Seq_index pw@252@01 i@261@01))))
(pop) ; 14
(push) ; 14
; [else-branch: 174 | left@22@01 <= pw@252@01[i@261@01]]
(assert (<= left@22@01 (Seq_index pw@252@01 i@261@01)))
; [eval] pw[i] <= right
; [eval] pw[i]
(push) ; 15
(assert (not (>= i@261@01 0)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  (<= left@22@01 (Seq_index pw@252@01 i@261@01))
  (not (<= left@22@01 (Seq_index pw@252@01 i@261@01)))))
(pop) ; 12
(push) ; 12
; [else-branch: 173 | !(0 <= i@261@01 && i@261@01 < |pw@252@01|)]
(assert (not (and (<= 0 i@261@01) (< i@261@01 (Seq_length pw@252@01)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (and (<= 0 i@261@01) (< i@261@01 (Seq_length pw@252@01)))
  (and
    (<= 0 i@261@01)
    (< i@261@01 (Seq_length pw@252@01))
    (or
      (<= left@22@01 (Seq_index pw@252@01 i@261@01))
      (not (<= left@22@01 (Seq_index pw@252@01 i@261@01)))))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@261@01) (< i@261@01 (Seq_length pw@252@01))))
  (and (<= 0 i@261@01) (< i@261@01 (Seq_length pw@252@01)))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@261@01 Int)) (!
  (and
    (or (<= 0 i@261@01) (not (<= 0 i@261@01)))
    (=>
      (and (<= 0 i@261@01) (< i@261@01 (Seq_length pw@252@01)))
      (and
        (<= 0 i@261@01)
        (< i@261@01 (Seq_length pw@252@01))
        (or
          (<= left@22@01 (Seq_index pw@252@01 i@261@01))
          (not (<= left@22@01 (Seq_index pw@252@01 i@261@01))))))
    (or
      (not (and (<= 0 i@261@01) (< i@261@01 (Seq_length pw@252@01))))
      (and (<= 0 i@261@01) (< i@261@01 (Seq_length pw@252@01)))))
  :pattern ((Seq_index pw@252@01 i@261@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82-aux|)))
(push) ; 10
(assert (not (forall ((i@261@01 Int)) (!
  (=>
    (and (<= 0 i@261@01) (< i@261@01 (Seq_length pw@252@01)))
    (and
      (<= left@22@01 (Seq_index pw@252@01 i@261@01))
      (<= (Seq_index pw@252@01 i@261@01) right@23@01)))
  :pattern ((Seq_index pw@252@01 i@261@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82|))))
(check-sat)
; unsat
(pop) ; 10
; 0.04s
; (get-info :all-statistics)
(assert (forall ((i@261@01 Int)) (!
  (=>
    (and (<= 0 i@261@01) (< i@261@01 (Seq_length pw@252@01)))
    (and
      (<= left@22@01 (Seq_index pw@252@01 i@261@01))
      (<= (Seq_index pw@252@01 i@261@01) right@23@01)))
  :pattern ((Seq_index pw@252@01 i@261@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@66@11@66@82|)))
; [eval] (forall i: Int, j: Int :: { pw[i], pw[j] } 0 <= i && (i < j && j < |pw|) ==> pw[i] != pw[j])
(declare-const i@262@01 Int)
(declare-const j@263@01 Int)
(push) ; 10
; [eval] 0 <= i && (i < j && j < |pw|) ==> pw[i] != pw[j]
; [eval] 0 <= i && (i < j && j < |pw|)
; [eval] 0 <= i
(push) ; 11
; [then-branch: 175 | !(0 <= i@262@01) | live]
; [else-branch: 175 | 0 <= i@262@01 | live]
(push) ; 12
; [then-branch: 175 | !(0 <= i@262@01)]
(assert (not (<= 0 i@262@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 175 | 0 <= i@262@01]
(assert (<= 0 i@262@01))
; [eval] i < j
(push) ; 13
; [then-branch: 176 | !(i@262@01 < j@263@01) | live]
; [else-branch: 176 | i@262@01 < j@263@01 | live]
(push) ; 14
; [then-branch: 176 | !(i@262@01 < j@263@01)]
(assert (not (< i@262@01 j@263@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 176 | i@262@01 < j@263@01]
(assert (< i@262@01 j@263@01))
; [eval] j < |pw|
; [eval] |pw|
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or (< i@262@01 j@263@01) (not (< i@262@01 j@263@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@262@01)
  (and (<= 0 i@262@01) (or (< i@262@01 j@263@01) (not (< i@262@01 j@263@01))))))
(assert (or (<= 0 i@262@01) (not (<= 0 i@262@01))))
(push) ; 11
; [then-branch: 177 | 0 <= i@262@01 && i@262@01 < j@263@01 && j@263@01 < |pw@252@01| | live]
; [else-branch: 177 | !(0 <= i@262@01 && i@262@01 < j@263@01 && j@263@01 < |pw@252@01|) | live]
(push) ; 12
; [then-branch: 177 | 0 <= i@262@01 && i@262@01 < j@263@01 && j@263@01 < |pw@252@01|]
(assert (and
  (<= 0 i@262@01)
  (and (< i@262@01 j@263@01) (< j@263@01 (Seq_length pw@252@01)))))
; [eval] pw[i] != pw[j]
; [eval] pw[i]
(push) ; 13
(assert (not (>= i@262@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< i@262@01 (Seq_length pw@252@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] pw[j]
(push) ; 13
(assert (not (>= j@263@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 177 | !(0 <= i@262@01 && i@262@01 < j@263@01 && j@263@01 < |pw@252@01|)]
(assert (not
  (and
    (<= 0 i@262@01)
    (and (< i@262@01 j@263@01) (< j@263@01 (Seq_length pw@252@01))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@262@01)
    (and (< i@262@01 j@263@01) (< j@263@01 (Seq_length pw@252@01))))
  (and (<= 0 i@262@01) (< i@262@01 j@263@01) (< j@263@01 (Seq_length pw@252@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@262@01)
      (and (< i@262@01 j@263@01) (< j@263@01 (Seq_length pw@252@01)))))
  (and
    (<= 0 i@262@01)
    (and (< i@262@01 j@263@01) (< j@263@01 (Seq_length pw@252@01))))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@262@01 Int) (j@263@01 Int)) (!
  (and
    (=>
      (<= 0 i@262@01)
      (and
        (<= 0 i@262@01)
        (or (< i@262@01 j@263@01) (not (< i@262@01 j@263@01)))))
    (or (<= 0 i@262@01) (not (<= 0 i@262@01)))
    (=>
      (and
        (<= 0 i@262@01)
        (and (< i@262@01 j@263@01) (< j@263@01 (Seq_length pw@252@01))))
      (and
        (<= 0 i@262@01)
        (< i@262@01 j@263@01)
        (< j@263@01 (Seq_length pw@252@01))))
    (or
      (not
        (and
          (<= 0 i@262@01)
          (and (< i@262@01 j@263@01) (< j@263@01 (Seq_length pw@252@01)))))
      (and
        (<= 0 i@262@01)
        (and (< i@262@01 j@263@01) (< j@263@01 (Seq_length pw@252@01))))))
  :pattern ((Seq_index pw@252@01 i@262@01) (Seq_index pw@252@01 j@263@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@67@11@67@82-aux|)))
(push) ; 10
(assert (not (forall ((i@262@01 Int) (j@263@01 Int)) (!
  (=>
    (and
      (<= 0 i@262@01)
      (and (< i@262@01 j@263@01) (< j@263@01 (Seq_length pw@252@01))))
    (not (= (Seq_index pw@252@01 i@262@01) (Seq_index pw@252@01 j@263@01))))
  :pattern ((Seq_index pw@252@01 i@262@01) (Seq_index pw@252@01 j@263@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.vpr@67@11@67@82|))))
(check-sat)
