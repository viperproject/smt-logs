(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:56:03
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
  :qid |quant-u-19183|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int)) (!
  (dummy%stateless i@0@00)
  :pattern ((dummy%limited s@$ i@0@00))
  :qid |quant-u-19184|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int)) (!
  (=> (dummy%precondition s@$ i@0@00) (= (dummy s@$ i@0@00) true))
  :pattern ((dummy s@$ i@0@00))
  :qid |quant-u-19185|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int)) (!
  true
  :pattern ((dummy s@$ i@0@00))
  :qid |quant-u-19186|)))
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
  :qid |quant-u-19188|)))
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
  :qid |quant-u-19190|)))
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
  
  :qid |quant-u-19192|))))
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
  
  :qid |quant-u-19193|))))
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
  
  :qid |quant-u-19194|))))
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
  
  :qid |quant-u-19196|))))
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
  
  :qid |quant-u-19197|))))
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
  
  :qid |quant-u-19198|))))
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
  :qid |quant-u-19200|)))
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
  
  :qid |quant-u-19203|))))
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
  
  :qid |quant-u-19204|))))
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
  
  :qid |quant-u-19206|))))
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
  
  :qid |quant-u-19208|))))
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
; 0.02s
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
; 0.03s
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
  :qid |quant-u-19200|)))
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
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< j@55@01 right@23@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
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
; 0.00s
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
  
  :qid |quant-u-19210|))))
(check-sat)
; unknown
(pop) ; 9
; 0.17s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@78@01 r) $Perm.No)
  
  :qid |quant-u-19211|))))
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
  
  :qid |quant-u-19212|))))
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
  
  :qid |quant-u-19214|))))
(check-sat)
; unknown
(pop) ; 10
; 0.35s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@79@01 r) $Perm.No)
  
  :qid |quant-u-19215|))))
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
  
  :qid |quant-u-19216|))))
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
  
  :qid |quant-u-19219|))))
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
    (= (- $Perm.Write (pTaken@91@01 r)) $Perm.No))
  
  :qid |quant-u-19220|))))
(check-sat)
; unknown
(pop) ; 11
; 0.06s
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
  
  :qid |quant-u-19222|))))
(check-sat)
; unknown
(pop) ; 11
; 0.35s
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
  
  :qid |quant-u-19224|))))
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
; 0.01s
; (get-info :all-statistics)
(push) ; 11
(assert (not (=
  ($FVF.lookup_val (as sm@83@01  $FVF<val>) (loc<Ref> a@21@01 right@23@01))
  pivotValue@43@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.01s
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
; 0.00s
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
; 0.13s
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
; 0.19s
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
; 0.44s
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
; 2.02s
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
; 0.02s
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