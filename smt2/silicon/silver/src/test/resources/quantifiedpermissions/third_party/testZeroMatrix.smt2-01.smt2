(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:51:35
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
(declare-sort $FVF<Ref__Integer_value> 0)
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
(declare-fun $SortWrappers.$FVF<Ref__Integer_value>To$Snap ($FVF<Ref__Integer_value>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap) $FVF<Ref__Integer_value>)
(assert (forall ((x $FVF<Ref__Integer_value>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<Ref__Integer_value>($SortWrappers.$FVF<Ref__Integer_value>To$Snap x)))
    :pattern (($SortWrappers.$FVF<Ref__Integer_value>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<Ref__Integer_value>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<Ref__Integer_value>To$Snap($SortWrappers.$SnapTo$FVF<Ref__Integer_value> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<Ref__Integer_value> x))
    :qid |$Snap.$FVF<Ref__Integer_value>To$SnapTo$FVF<Ref__Integer_value>|
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
; /field_value_functions_declarations.smt2 [Ref__Integer_value: Int]
(declare-fun $FVF.domain_Ref__Integer_value ($FVF<Ref__Integer_value>) Set<$Ref>)
(declare-fun $FVF.lookup_Ref__Integer_value ($FVF<Ref__Integer_value> $Ref) Int)
(declare-fun $FVF.after_Ref__Integer_value ($FVF<Ref__Integer_value> $FVF<Ref__Integer_value>) Bool)
(declare-fun $FVF.loc_Ref__Integer_value (Int $Ref) Bool)
(declare-fun $FVF.perm_Ref__Integer_value ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Ref__Integer_value $FVF<Ref__Integer_value>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun count_list ($Snap Int Int Seq<Int> Int) Int)
(declare-fun count_list%limited ($Snap Int Int Seq<Int> Int) Int)
(declare-fun count_list%stateless (Int Int Seq<Int> Int) Bool)
(declare-fun count_list%precondition ($Snap Int Int Seq<Int> Int) Bool)
(declare-fun sum_list ($Snap Int Int Seq<Int>) Int)
(declare-fun sum_list%limited ($Snap Int Int Seq<Int>) Int)
(declare-fun sum_list%stateless (Int Int Seq<Int>) Bool)
(declare-fun sum_list%precondition ($Snap Int Int Seq<Int>) Bool)
(declare-fun sum_square ($Snap Int Int Int Int Int Int Seq<$Ref>) Int)
(declare-fun sum_square%limited ($Snap Int Int Int Int Int Int Seq<$Ref>) Int)
(declare-fun sum_square%stateless (Int Int Int Int Int Int Seq<$Ref>) Bool)
(declare-fun sum_square%precondition ($Snap Int Int Int Int Int Int Seq<$Ref>) Bool)
(declare-fun count_square ($Snap Int Int Int Int Int Int Seq<$Ref> Int) Int)
(declare-fun count_square%limited ($Snap Int Int Int Int Int Int Seq<$Ref> Int) Int)
(declare-fun count_square%stateless (Int Int Int Int Int Int Seq<$Ref> Int) Bool)
(declare-fun count_square%precondition ($Snap Int Int Int Int Int Int Seq<$Ref> Int) Bool)
(declare-fun count_array ($Snap Int Int Seq<$Ref> Int) Int)
(declare-fun count_array%limited ($Snap Int Int Seq<$Ref> Int) Int)
(declare-fun count_array%stateless (Int Int Seq<$Ref> Int) Bool)
(declare-fun count_array%precondition ($Snap Int Int Seq<$Ref> Int) Bool)
(declare-fun Ref__multidim_index_2 ($Snap Int Int Int Int) Int)
(declare-fun Ref__multidim_index_2%limited ($Snap Int Int Int Int) Int)
(declare-fun Ref__multidim_index_2%stateless (Int Int Int Int) Bool)
(declare-fun Ref__multidim_index_2%precondition ($Snap Int Int Int Int) Bool)
(declare-fun sum_array ($Snap Int Int Int Seq<$Ref>) Int)
(declare-fun sum_array%limited ($Snap Int Int Int Seq<$Ref>) Int)
(declare-fun sum_array%stateless (Int Int Int Seq<$Ref>) Bool)
(declare-fun sum_array%precondition ($Snap Int Int Int Seq<$Ref>) Bool)
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
; /field_value_functions_axioms.smt2 [Ref__Integer_value: Int]
(assert (forall ((vs $FVF<Ref__Integer_value>) (ws $FVF<Ref__Integer_value>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_Ref__Integer_value vs) ($FVF.domain_Ref__Integer_value ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_Ref__Integer_value vs))
            (= ($FVF.lookup_Ref__Integer_value vs x) ($FVF.lookup_Ref__Integer_value ws x)))
          :pattern (($FVF.lookup_Ref__Integer_value vs x) ($FVF.lookup_Ref__Integer_value ws x))
          :qid |qp.$FVF<Ref__Integer_value>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<Ref__Integer_value>To$Snap vs)
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap ws)
              )
    :qid |qp.$FVF<Ref__Integer_value>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_Ref__Integer_value pm r))
    :pattern (($FVF.perm_Ref__Integer_value pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_Ref__Integer_value f r) true)
    :pattern (($FVF.loc_Ref__Integer_value f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun $k@44@00 () $Perm)
(declare-fun inv@45@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@46@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun $k@50@00 () $Perm)
(declare-fun inv@51@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@52@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@53@00 ($Snap Int Int Int Int Int Int Seq<$Ref>) $FVF<Ref__Integer_value>)
(declare-fun $k@57@00 () $Perm)
(declare-fun inv@58@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@59@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@63@00 () $Perm)
(declare-fun inv@64@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@65@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@66@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int) $FVF<Ref__Integer_value>)
(declare-fun $k@70@00 () $Perm)
(declare-fun inv@71@00 ($Snap Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@72@00 ($Snap Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@76@00 () $Perm)
(declare-fun inv@77@00 ($Snap Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@78@00 ($Snap Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@79@00 ($Snap Int Int Seq<$Ref> Int) $FVF<Ref__Integer_value>)
(declare-fun $k@84@00 () $Perm)
(declare-fun inv@85@00 ($Snap Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@86@00 ($Snap Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun $k@90@00 () $Perm)
(declare-fun inv@91@00 ($Snap Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@92@00 ($Snap Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@93@00 ($Snap Int Int Int Seq<$Ref>) $FVF<Ref__Integer_value>)
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=
    (count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-10109|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (count_list%stateless i@0@00 hi@1@00 ar@2@00 v@3@00)
  :pattern ((count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-10110|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=>
    (count_list%precondition s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (=
      (count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
      (ite
        (< i@0@00 hi@1@00)
        (+
          (ite (= (Seq_index ar@2@00 i@0@00) v@3@00) 1 0)
          (count_list%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (+ i@0@00 1) hi@1@00 ar@2@00 v@3@00))
        0)))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-10123|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=>
    (count_list%precondition s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (ite
      (< i@0@00 hi@1@00)
      (count_list%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) (+ i@0@00 1) hi@1@00 ar@2@00 v@3@00)
      true))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-10124|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=
    (sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00)
    (sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-10111|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (sum_list%stateless i@5@00 hi@6@00 ar@7@00)
  :pattern ((sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-10112|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=>
    (sum_list%precondition s@$ i@5@00 hi@6@00 ar@7@00)
    (=
      (sum_list s@$ i@5@00 hi@6@00 ar@7@00)
      (ite
        (< i@5@00 hi@6@00)
        (+
          (Seq_index ar@7@00 i@5@00)
          (sum_list%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (+ i@5@00 1) hi@6@00 ar@7@00))
        0)))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-10125|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=>
    (sum_list%precondition s@$ i@5@00 hi@6@00 ar@7@00)
    (ite
      (< i@5@00 hi@6@00)
      (sum_list%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) (+ i@5@00 1) hi@6@00 ar@7@00)
      true))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-10126|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (=
    (sum_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
    (sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-10113|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (sum_square%stateless i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
  :pattern ((sum_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-10114|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (and
    (forall ((k@43@00 Int)) (!
      (=>
        (and
          (and
            (<= min@13@00 k@43@00)
            (and
              (< k@43@00 max@14@00)
              (and
                (<= lo@10@00 (mod k@43@00 step@12@00))
                (< (mod k@43@00 step@12@00) hi@11@00))))
          (< $Perm.No $k@44@00))
        (and
          (=
            (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
              ar@15@00
              k@43@00))
            k@43@00)
          (img@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
            ar@15@00
            k@43@00))))
      :pattern ((Seq_index ar@15@00 k@43@00))
      :qid |quant-u-10128|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
          (and
            (and
              (<=
                min@13@00
                (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@44@00)))
        (=
          (Seq_index
            ar@15@00
            (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          r))
      :pattern ((inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@49@00 Int)) (!
      (=>
        (and
          (and
            (<= min@13@00 k@49@00)
            (and
              (< k@49@00 max@14@00)
              (and
                (<= lo@10@00 (mod k@49@00 step@12@00))
                (< (mod k@49@00 step@12@00) hi@11@00))))
          (< $Perm.No $k@50@00))
        (and
          (=
            (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
              ar@15@00
              k@49@00))
            k@49@00)
          (img@52@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
            ar@15@00
            k@49@00))))
      :pattern ((Seq_index ar@15@00 k@49@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@52@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
          (and
            (and
              (<=
                min@13@00
                (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@50@00)))
        (=
          (Seq_index
            ar@15@00
            (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          r))
      :pattern ((inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)))
          (and
            (and
              (<=
                min@13@00
                (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@50@00)
            (img@52@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)))
        (=>
          (and
            (and
              (<=
                min@13@00
                (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@50@00)
            (img@52@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))))
      :qid |qp.fvfDomDef1|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<=
                min@13@00
                (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@50@00)
            (img@52@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          (ite
            (and
              (img@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
              (and
                (<=
                  min@13@00
                  (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
                (and
                  (<
                    (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                    max@14@00)
                  (and
                    (<=
                      lo@10@00
                      (mod
                        (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                        step@12@00))
                    (<
                      (mod
                        (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                        step@12@00)
                      hi@11@00)))))
            (< $Perm.No $k@44@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r))
      :qid |qp.fvfValDef0|))
    ($Perm.isReadVar $k@44@00)
    ($Perm.isReadVar $k@50@00)
    (=>
      (sum_square%precondition s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
      (=
        (sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
        (ite
          (< i@9@00 max@14@00)
          (+
            (ite
              (and
                (<= lo@10@00 (mod i@9@00 step@12@00))
                (< (mod i@9@00 step@12@00) hi@11@00))
              ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) (Seq_index
                ar@15@00
                i@9@00))
              0)
            (sum_square%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine
                          $Snap.unit
                          ($Snap.combine
                            $Snap.unit
                            ($Snap.combine
                              $Snap.unit
                              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))))))))))) (+
              i@9@00
              1) lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
          0))))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-10131|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (=>
    (sum_square%precondition s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
    (ite
      (< i@9@00 max@14@00)
      (sum_square%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))))))))))) (+
        i@9@00
        1) lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
      true))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-10132|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (=
    (count_square%limited s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
    (count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-10115|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (count_square%stateless i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
  :pattern ((count_square%limited s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-10116|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (and
    (forall ((k@56@00 Int)) (!
      (=>
        (and
          (and
            (<= min@21@00 k@56@00)
            (and
              (< k@56@00 max@22@00)
              (and
                (<= lo@18@00 (mod k@56@00 step@20@00))
                (< (mod k@56@00 step@20@00) hi@19@00))))
          (< $Perm.No $k@57@00))
        (and
          (=
            (inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
              ar@23@00
              k@56@00))
            k@56@00)
          (img@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
            ar@23@00
            k@56@00))))
      :pattern ((Seq_index ar@23@00 k@56@00))
      :qid |quant-u-10134|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
          (and
            (and
              (<=
                min@21@00
                (inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@57@00)))
        (=
          (Seq_index
            ar@23@00
            (inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          r))
      :pattern ((inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@62@00 Int)) (!
      (=>
        (and
          (and
            (<= min@21@00 k@62@00)
            (and
              (< k@62@00 max@22@00)
              (and
                (<= lo@18@00 (mod k@62@00 step@20@00))
                (< (mod k@62@00 step@20@00) hi@19@00))))
          (< $Perm.No $k@63@00))
        (and
          (=
            (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
              ar@23@00
              k@62@00))
            k@62@00)
          (img@65@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
            ar@23@00
            k@62@00))))
      :pattern ((Seq_index ar@23@00 k@62@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@65@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
          (and
            (and
              (<=
                min@21@00
                (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@63@00)))
        (=
          (Seq_index
            ar@23@00
            (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          r))
      :pattern ((inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@66@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)))
          (and
            (and
              (<=
                min@21@00
                (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@63@00)
            (img@65@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)))
        (=>
          (and
            (and
              (<=
                min@21@00
                (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@63@00)
            (img@65@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@66@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@66@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))))
      :qid |qp.fvfDomDef3|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<=
                min@21@00
                (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@64@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@63@00)
            (img@65@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          (ite
            (and
              (img@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
              (and
                (<=
                  min@21@00
                  (inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
                (and
                  (<
                    (inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                    max@22@00)
                  (and
                    (<=
                      lo@18@00
                      (mod
                        (inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                        step@20@00))
                    (<
                      (mod
                        (inv@58@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                        step@20@00)
                      hi@19@00)))))
            (< $Perm.No $k@57@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@66@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@66@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r))
      :qid |qp.fvfValDef2|))
    ($Perm.isReadVar $k@57@00)
    ($Perm.isReadVar $k@63@00)
    (=>
      (count_square%precondition s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
      (=
        (count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
        (ite
          (< i@17@00 max@22@00)
          (+
            (ite
              (and
                (<= lo@18@00 (mod i@17@00 step@20@00))
                (and
                  (< (mod i@17@00 step@20@00) hi@19@00)
                  (=
                    ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) (Seq_index
                      ar@23@00
                      i@17@00))
                    v@24@00)))
              1
              0)
            (count_square%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine
                          $Snap.unit
                          ($Snap.combine
                            $Snap.unit
                            ($Snap.combine
                              $Snap.unit
                              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@66@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))))))))))) (+
              i@17@00
              1) lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
          0))))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-10137|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (=>
    (count_square%precondition s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
    (ite
      (< i@17@00 max@22@00)
      (count_square%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@66@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))))))))))) (+
        i@17@00
        1) lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
      true))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-10138|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (=
    (count_array%limited s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)
    (count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :pattern ((count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-10117|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (count_array%stateless i@26@00 hi@27@00 ar@28@00 v@29@00)
  :pattern ((count_array%limited s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-10118|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (and
    (forall ((k@69@00 Int)) (!
      (=>
        (and (and (<= 0 k@69@00) (< k@69@00 hi@27@00)) (< $Perm.No $k@70@00))
        (and
          (=
            (inv@71@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 (Seq_index
              ar@28@00
              k@69@00))
            k@69@00)
          (img@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 (Seq_index
            ar@28@00
            k@69@00))))
      :pattern ((Seq_index ar@28@00 k@69@00))
      :qid |quant-u-10140|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)
          (and
            (and
              (<= 0 (inv@71@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
              (< (inv@71@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00))
            (< $Perm.No $k@70@00)))
        (=
          (Seq_index
            ar@28@00
            (inv@71@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
          r))
      :pattern ((inv@71@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@75@00 Int)) (!
      (=>
        (and (and (<= 0 k@75@00) (< k@75@00 hi@27@00)) (< $Perm.No $k@76@00))
        (and
          (=
            (inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 (Seq_index
              ar@28@00
              k@75@00))
            k@75@00)
          (img@78@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 (Seq_index
            ar@28@00
            k@75@00))))
      :pattern ((Seq_index ar@28@00 k@75@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@78@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)
          (and
            (and
              (<= 0 (inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
              (< (inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00))
            (< $Perm.No $k@76@00)))
        (=
          (Seq_index
            ar@28@00
            (inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
          r))
      :pattern ((inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@79@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)))
          (and
            (and
              (<= 0 (inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
              (< (inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00))
            (< $Perm.No $k@76@00)
            (img@78@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)))
        (=>
          (and
            (and
              (<= 0 (inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
              (< (inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00))
            (< $Perm.No $k@76@00)
            (img@78@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@79@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@79@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))))
      :qid |qp.fvfDomDef5|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= 0 (inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
              (< (inv@77@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00))
            (< $Perm.No $k@76@00)
            (img@78@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
          (ite
            (and
              (img@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)
              (and
                (<= 0 (inv@71@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
                (< (inv@71@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00)))
            (< $Perm.No $k@70@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@79@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@79@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef4|))
    ($Perm.isReadVar $k@70@00)
    ($Perm.isReadVar $k@76@00)
    (=>
      (count_array%precondition s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)
      (=
        (count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)
        (ite
          (< i@26@00 hi@27@00)
          (+
            (ite
              (=
                ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) (Seq_index
                  ar@28@00
                  i@26@00))
                v@29@00)
              1
              0)
            (count_array%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@79@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)))))) (+
              i@26@00
              1) hi@27@00 ar@28@00 v@29@00))
          0))))
  :pattern ((count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-10143|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (=>
    (count_array%precondition s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)
    (ite
      (< i@26@00 hi@27@00)
      (count_array%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@79@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)))))) (+
        i@26@00
        1) hi@27@00 ar@28@00 v@29@00)
      true))
  :pattern ((count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-10144|)))
(assert (forall ((s@$ $Snap) (N0@31@00 Int) (N1@32@00 Int) (i0@33@00 Int) (i1@34@00 Int)) (!
  (=
    (Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00)
    (Ref__multidim_index_2 s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))
  :pattern ((Ref__multidim_index_2 s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))
  :qid |quant-u-10119|)))
(assert (forall ((s@$ $Snap) (N0@31@00 Int) (N1@32@00 Int) (i0@33@00 Int) (i1@34@00 Int)) (!
  (Ref__multidim_index_2%stateless N0@31@00 N1@32@00 i0@33@00 i1@34@00)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))
  :qid |quant-u-10120|)))
(assert (forall ((s@$ $Snap) (N0@31@00 Int) (N1@32@00 Int) (i0@33@00 Int) (i1@34@00 Int)) (!
  (let ((result@35@00 (Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))) (=>
    (Ref__multidim_index_2%precondition s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00)
    (and
      (<= 0 result@35@00)
      (< result@35@00 (* N0@31@00 N1@32@00))
      (= result@35@00 (+ (* i0@33@00 N1@32@00) i1@34@00))
      (= (mod result@35@00 N1@32@00) i1@34@00)
      (< (mod result@35@00 N1@32@00) N0@31@00))))
  :pattern ((Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))
  :qid |quant-u-10145|)))
(assert (forall ((s@$ $Snap) (N0@31@00 Int) (N1@32@00 Int) (i0@33@00 Int) (i1@34@00 Int)) (!
  (let ((result@35@00 (Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))) true)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))
  :qid |quant-u-10146|)))
(assert (forall ((s@$ $Snap) (N0@31@00 Int) (N1@32@00 Int) (i0@33@00 Int) (i1@34@00 Int)) (!
  (let ((result@35@00 (Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))) true)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))
  :qid |quant-u-10147|)))
(assert (forall ((s@$ $Snap) (N0@31@00 Int) (N1@32@00 Int) (i0@33@00 Int) (i1@34@00 Int)) (!
  (let ((result@35@00 (Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))) true)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))
  :qid |quant-u-10148|)))
(assert (forall ((s@$ $Snap) (N0@31@00 Int) (N1@32@00 Int) (i0@33@00 Int) (i1@34@00 Int)) (!
  (let ((result@35@00 (Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))) true)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))
  :qid |quant-u-10149|)))
(assert (forall ((s@$ $Snap) (N0@31@00 Int) (N1@32@00 Int) (i0@33@00 Int) (i1@34@00 Int)) (!
  (let ((result@35@00 (Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))) true)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@31@00 N1@32@00 i0@33@00 i1@34@00))
  :qid |quant-u-10150|)))
(assert (forall ((s@$ $Snap) (i@36@00 Int) (lo@37@00 Int) (hi@38@00 Int) (ar@39@00 Seq<$Ref>)) (!
  (=
    (sum_array%limited s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)
    (sum_array s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))
  :pattern ((sum_array s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))
  :qid |quant-u-10121|)))
(assert (forall ((s@$ $Snap) (i@36@00 Int) (lo@37@00 Int) (hi@38@00 Int) (ar@39@00 Seq<$Ref>)) (!
  (sum_array%stateless i@36@00 lo@37@00 hi@38@00 ar@39@00)
  :pattern ((sum_array%limited s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))
  :qid |quant-u-10122|)))
(assert (forall ((s@$ $Snap) (i@36@00 Int) (lo@37@00 Int) (hi@38@00 Int) (ar@39@00 Seq<$Ref>)) (!
  (and
    (forall ((k@83@00 Int)) (!
      (=>
        (and
          (and (<= lo@37@00 k@83@00) (< k@83@00 hi@38@00))
          (< $Perm.No $k@84@00))
        (and
          (=
            (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 (Seq_index
              ar@39@00
              k@83@00))
            k@83@00)
          (img@86@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 (Seq_index
            ar@39@00
            k@83@00))))
      :pattern ((Seq_index ar@39@00 k@83@00))
      :qid |quant-u-10152|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@86@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r)
          (and
            (and
              (<= lo@37@00 (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
              (< (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00))
            (< $Perm.No $k@84@00)))
        (=
          (Seq_index
            ar@39@00
            (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
          r))
      :pattern ((inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@89@00 Int)) (!
      (=>
        (and
          (and (<= lo@37@00 k@89@00) (< k@89@00 hi@38@00))
          (< $Perm.No $k@90@00))
        (and
          (=
            (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 (Seq_index
              ar@39@00
              k@89@00))
            k@89@00)
          (img@92@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 (Seq_index
            ar@39@00
            k@89@00))))
      :pattern ((Seq_index ar@39@00 k@89@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@92@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r)
          (and
            (and
              (<= lo@37@00 (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
              (< (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00))
            (< $Perm.No $k@90@00)))
        (=
          (Seq_index
            ar@39@00
            (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
          r))
      :pattern ((inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)))
          (and
            (and
              (<= lo@37@00 (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
              (< (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00))
            (< $Perm.No $k@90@00)
            (img@92@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r)))
        (=>
          (and
            (and
              (<= lo@37@00 (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
              (< (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00))
            (< $Perm.No $k@90@00)
            (img@92@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))))
      :qid |qp.fvfDomDef7|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= lo@37@00 (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
              (< (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00))
            (< $Perm.No $k@90@00)
            (img@92@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
          (ite
            (and
              (img@86@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r)
              (and
                (<=
                  lo@37@00
                  (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
                (< (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00)))
            (< $Perm.No $k@84@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r))
      :qid |qp.fvfValDef6|))
    ($Perm.isReadVar $k@84@00)
    ($Perm.isReadVar $k@90@00)
    (=>
      (sum_array%precondition s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)
      (=
        (sum_array s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)
        (ite
          (< i@36@00 hi@38@00)
          (+
            ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) (Seq_index
              ar@39@00
              i@36@00))
            (sum_array%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))))))) (+
              i@36@00
              1) lo@37@00 hi@38@00 ar@39@00))
          0))))
  :pattern ((sum_array s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))
  :qid |quant-u-10155|)))
(assert (forall ((s@$ $Snap) (i@36@00 Int) (lo@37@00 Int) (hi@38@00 Int) (ar@39@00 Seq<$Ref>)) (!
  (=>
    (sum_array%precondition s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)
    (ite
      (< i@36@00 hi@38@00)
      (sum_array%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))))))) (+
        i@36@00
        1) lo@37@00 hi@38@00 ar@39@00)
      true))
  :pattern ((sum_array s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))
  :qid |quant-u-10156|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Ref__loop_main_31 ----------
(declare-const diz@0@01 $Ref)
(declare-const current_thread_id@1@01 Int)
(declare-const matrix@2@01 Seq<$Ref>)
(declare-const N@3@01 Int)
(declare-const M@4@01 Int)
(declare-const diz@5@01 $Ref)
(declare-const current_thread_id@6@01 Int)
(declare-const matrix@7@01 Seq<$Ref>)
(declare-const N@8@01 Int)
(declare-const M@9@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@5@01 $Ref.null)))
(assert (=
  ($Snap.second $t@10@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@10@01))
    ($Snap.second ($Snap.second $t@10@01)))))
(assert (= ($Snap.first ($Snap.second $t@10@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@6@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@10@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@10@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@10@01))) $Snap.unit))
; [eval] M * N <= |matrix|
; [eval] M * N
; [eval] |matrix|
(assert (<= (* M@9@01 N@8@01) (Seq_length matrix@7@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@10@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { matrix[j], matrix[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k])
(declare-const j@11@01 Int)
(declare-const k@12@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k]
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 0 | !(0 <= j@11@01) | live]
; [else-branch: 0 | 0 <= j@11@01 | live]
(push) ; 4
; [then-branch: 0 | !(0 <= j@11@01)]
(assert (not (<= 0 j@11@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | 0 <= j@11@01]
(assert (<= 0 j@11@01))
; [eval] j < M * N
; [eval] M * N
(push) ; 5
; [then-branch: 1 | !(j@11@01 < M@9@01 * N@8@01) | live]
; [else-branch: 1 | j@11@01 < M@9@01 * N@8@01 | live]
(push) ; 6
; [then-branch: 1 | !(j@11@01 < M@9@01 * N@8@01)]
(assert (not (< j@11@01 (* M@9@01 N@8@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | j@11@01 < M@9@01 * N@8@01]
(assert (< j@11@01 (* M@9@01 N@8@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 2 | !(0 <= k@12@01) | live]
; [else-branch: 2 | 0 <= k@12@01 | live]
(push) ; 8
; [then-branch: 2 | !(0 <= k@12@01)]
(assert (not (<= 0 k@12@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 2 | 0 <= k@12@01]
(assert (<= 0 k@12@01))
; [eval] k < M * N
; [eval] M * N
(push) ; 9
; [then-branch: 3 | !(k@12@01 < M@9@01 * N@8@01) | live]
; [else-branch: 3 | k@12@01 < M@9@01 * N@8@01 | live]
(push) ; 10
; [then-branch: 3 | !(k@12@01 < M@9@01 * N@8@01)]
(assert (not (< k@12@01 (* M@9@01 N@8@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 3 | k@12@01 < M@9@01 * N@8@01]
(assert (< k@12@01 (* M@9@01 N@8@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@12@01 (* M@9@01 N@8@01)) (not (< k@12@01 (* M@9@01 N@8@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@12@01)
  (and
    (<= 0 k@12@01)
    (or (< k@12@01 (* M@9@01 N@8@01)) (not (< k@12@01 (* M@9@01 N@8@01)))))))
(assert (or (<= 0 k@12@01) (not (<= 0 k@12@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@11@01 (* M@9@01 N@8@01))
  (and
    (< j@11@01 (* M@9@01 N@8@01))
    (=>
      (<= 0 k@12@01)
      (and
        (<= 0 k@12@01)
        (or (< k@12@01 (* M@9@01 N@8@01)) (not (< k@12@01 (* M@9@01 N@8@01))))))
    (or (<= 0 k@12@01) (not (<= 0 k@12@01))))))
(assert (or (< j@11@01 (* M@9@01 N@8@01)) (not (< j@11@01 (* M@9@01 N@8@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@11@01)
  (and
    (<= 0 j@11@01)
    (=>
      (< j@11@01 (* M@9@01 N@8@01))
      (and
        (< j@11@01 (* M@9@01 N@8@01))
        (=>
          (<= 0 k@12@01)
          (and
            (<= 0 k@12@01)
            (or
              (< k@12@01 (* M@9@01 N@8@01))
              (not (< k@12@01 (* M@9@01 N@8@01))))))
        (or (<= 0 k@12@01) (not (<= 0 k@12@01)))))
    (or (< j@11@01 (* M@9@01 N@8@01)) (not (< j@11@01 (* M@9@01 N@8@01)))))))
(assert (or (<= 0 j@11@01) (not (<= 0 j@11@01))))
(push) ; 3
; [then-branch: 4 | 0 <= j@11@01 && j@11@01 < M@9@01 * N@8@01 && 0 <= k@12@01 && k@12@01 < M@9@01 * N@8@01 && j@11@01 != k@12@01 | live]
; [else-branch: 4 | !(0 <= j@11@01 && j@11@01 < M@9@01 * N@8@01 && 0 <= k@12@01 && k@12@01 < M@9@01 * N@8@01 && j@11@01 != k@12@01) | live]
(push) ; 4
; [then-branch: 4 | 0 <= j@11@01 && j@11@01 < M@9@01 * N@8@01 && 0 <= k@12@01 && k@12@01 < M@9@01 * N@8@01 && j@11@01 != k@12@01]
(assert (and
  (<= 0 j@11@01)
  (and
    (< j@11@01 (* M@9@01 N@8@01))
    (and
      (<= 0 k@12@01)
      (and (< k@12@01 (* M@9@01 N@8@01)) (not (= j@11@01 k@12@01)))))))
; [eval] matrix[j] != matrix[k]
; [eval] matrix[j]
(push) ; 5
(assert (not (>= j@11@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@11@01 (Seq_length matrix@7@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] matrix[k]
(push) ; 5
(assert (not (>= k@12@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@12@01 (Seq_length matrix@7@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 4 | !(0 <= j@11@01 && j@11@01 < M@9@01 * N@8@01 && 0 <= k@12@01 && k@12@01 < M@9@01 * N@8@01 && j@11@01 != k@12@01)]
(assert (not
  (and
    (<= 0 j@11@01)
    (and
      (< j@11@01 (* M@9@01 N@8@01))
      (and
        (<= 0 k@12@01)
        (and (< k@12@01 (* M@9@01 N@8@01)) (not (= j@11@01 k@12@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@11@01)
    (and
      (< j@11@01 (* M@9@01 N@8@01))
      (and
        (<= 0 k@12@01)
        (and (< k@12@01 (* M@9@01 N@8@01)) (not (= j@11@01 k@12@01))))))
  (and
    (<= 0 j@11@01)
    (< j@11@01 (* M@9@01 N@8@01))
    (<= 0 k@12@01)
    (< k@12@01 (* M@9@01 N@8@01))
    (not (= j@11@01 k@12@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@11@01)
      (and
        (< j@11@01 (* M@9@01 N@8@01))
        (and
          (<= 0 k@12@01)
          (and (< k@12@01 (* M@9@01 N@8@01)) (not (= j@11@01 k@12@01)))))))
  (and
    (<= 0 j@11@01)
    (and
      (< j@11@01 (* M@9@01 N@8@01))
      (and
        (<= 0 k@12@01)
        (and (< k@12@01 (* M@9@01 N@8@01)) (not (= j@11@01 k@12@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@11@01 Int) (k@12@01 Int)) (!
  (and
    (=>
      (<= 0 j@11@01)
      (and
        (<= 0 j@11@01)
        (=>
          (< j@11@01 (* M@9@01 N@8@01))
          (and
            (< j@11@01 (* M@9@01 N@8@01))
            (=>
              (<= 0 k@12@01)
              (and
                (<= 0 k@12@01)
                (or
                  (< k@12@01 (* M@9@01 N@8@01))
                  (not (< k@12@01 (* M@9@01 N@8@01))))))
            (or (<= 0 k@12@01) (not (<= 0 k@12@01)))))
        (or (< j@11@01 (* M@9@01 N@8@01)) (not (< j@11@01 (* M@9@01 N@8@01))))))
    (or (<= 0 j@11@01) (not (<= 0 j@11@01)))
    (=>
      (and
        (<= 0 j@11@01)
        (and
          (< j@11@01 (* M@9@01 N@8@01))
          (and
            (<= 0 k@12@01)
            (and (< k@12@01 (* M@9@01 N@8@01)) (not (= j@11@01 k@12@01))))))
      (and
        (<= 0 j@11@01)
        (< j@11@01 (* M@9@01 N@8@01))
        (<= 0 k@12@01)
        (< k@12@01 (* M@9@01 N@8@01))
        (not (= j@11@01 k@12@01))))
    (or
      (not
        (and
          (<= 0 j@11@01)
          (and
            (< j@11@01 (* M@9@01 N@8@01))
            (and
              (<= 0 k@12@01)
              (and (< k@12@01 (* M@9@01 N@8@01)) (not (= j@11@01 k@12@01)))))))
      (and
        (<= 0 j@11@01)
        (and
          (< j@11@01 (* M@9@01 N@8@01))
          (and
            (<= 0 k@12@01)
            (and (< k@12@01 (* M@9@01 N@8@01)) (not (= j@11@01 k@12@01))))))))
  :pattern ((Seq_index matrix@7@01 j@11@01) (Seq_index matrix@7@01 k@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@76@12@76@112-aux|)))
(assert (forall ((j@11@01 Int) (k@12@01 Int)) (!
  (=>
    (and
      (<= 0 j@11@01)
      (and
        (< j@11@01 (* M@9@01 N@8@01))
        (and
          (<= 0 k@12@01)
          (and (< k@12@01 (* M@9@01 N@8@01)) (not (= j@11@01 k@12@01))))))
    (not (= (Seq_index matrix@7@01 j@11@01) (Seq_index matrix@7@01 k@12@01))))
  :pattern ((Seq_index matrix@7@01 j@11@01) (Seq_index matrix@7@01 k@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@76@12@76@112|)))
(declare-const j@13@01 Int)
(push) ; 2
; [eval] 0 <= j && j < M * N
; [eval] 0 <= j
(push) ; 3
; [then-branch: 5 | !(0 <= j@13@01) | live]
; [else-branch: 5 | 0 <= j@13@01 | live]
(push) ; 4
; [then-branch: 5 | !(0 <= j@13@01)]
(assert (not (<= 0 j@13@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 5 | 0 <= j@13@01]
(assert (<= 0 j@13@01))
; [eval] j < M * N
; [eval] M * N
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@13@01) (not (<= 0 j@13@01))))
(assert (and (<= 0 j@13@01) (< j@13@01 (* M@9@01 N@8@01))))
; [eval] matrix[j]
(push) ; 3
(assert (not (>= j@13@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< j@13@01 (Seq_length matrix@7@01))))
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
(assert (forall ((j@13@01 Int)) (!
  (=>
    (and (<= 0 j@13@01) (< j@13@01 (* M@9@01 N@8@01)))
    (or (<= 0 j@13@01) (not (<= 0 j@13@01))))
  :pattern ((Seq_index matrix@7@01 j@13@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@13@01 Int) (j2@13@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@13@01) (< j1@13@01 (* M@9@01 N@8@01)))
      (and (<= 0 j2@13@01) (< j2@13@01 (* M@9@01 N@8@01)))
      (= (Seq_index matrix@7@01 j1@13@01) (Seq_index matrix@7@01 j2@13@01)))
    (= j1@13@01 j2@13@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@13@01 Int)) (!
  (=>
    (and (<= 0 j@13@01) (< j@13@01 (* M@9@01 N@8@01)))
    (and
      (= (inv@14@01 (Seq_index matrix@7@01 j@13@01)) j@13@01)
      (img@15@01 (Seq_index matrix@7@01 j@13@01))))
  :pattern ((Seq_index matrix@7@01 j@13@01))
  :qid |quant-u-10158|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@15@01 r)
      (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) (* M@9@01 N@8@01))))
    (= (Seq_index matrix@7@01 (inv@14@01 r)) r))
  :pattern ((inv@14@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@13@01 Int)) (!
  (=>
    (and (<= 0 j@13@01) (< j@13@01 (* M@9@01 N@8@01)))
    (not (= (Seq_index matrix@7@01 j@13@01) $Ref.null)))
  :pattern ((Seq_index matrix@7@01 j@13@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
(declare-const j@17@01 Int)
(push) ; 3
; [eval] 0 <= j && j < M * N
; [eval] 0 <= j
(push) ; 4
; [then-branch: 6 | !(0 <= j@17@01) | live]
; [else-branch: 6 | 0 <= j@17@01 | live]
(push) ; 5
; [then-branch: 6 | !(0 <= j@17@01)]
(assert (not (<= 0 j@17@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= j@17@01]
(assert (<= 0 j@17@01))
; [eval] j < M * N
; [eval] M * N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@17@01) (not (<= 0 j@17@01))))
(assert (and (<= 0 j@17@01) (< j@17@01 (* M@9@01 N@8@01))))
; [eval] matrix[j]
(push) ; 4
(assert (not (>= j@17@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@17@01 (Seq_length matrix@7@01))))
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
(assert (forall ((j@17@01 Int)) (!
  (=>
    (and (<= 0 j@17@01) (< j@17@01 (* M@9@01 N@8@01)))
    (or (<= 0 j@17@01) (not (<= 0 j@17@01))))
  :pattern ((Seq_index matrix@7@01 j@17@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@17@01 Int) (j2@17@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@17@01) (< j1@17@01 (* M@9@01 N@8@01)))
      (and (<= 0 j2@17@01) (< j2@17@01 (* M@9@01 N@8@01)))
      (= (Seq_index matrix@7@01 j1@17@01) (Seq_index matrix@7@01 j2@17@01)))
    (= j1@17@01 j2@17@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@17@01 Int)) (!
  (=>
    (and (<= 0 j@17@01) (< j@17@01 (* M@9@01 N@8@01)))
    (and
      (= (inv@18@01 (Seq_index matrix@7@01 j@17@01)) j@17@01)
      (img@19@01 (Seq_index matrix@7@01 j@17@01))))
  :pattern ((Seq_index matrix@7@01 j@17@01))
  :qid |quant-u-10160|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@01 r)
      (and (<= 0 (inv@18@01 r)) (< (inv@18@01 r) (* M@9@01 N@8@01))))
    (= (Seq_index matrix@7@01 (inv@18@01 r)) r))
  :pattern ((inv@18@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@17@01 Int)) (!
  (=>
    (and (<= 0 j@17@01) (< j@17@01 (* M@9@01 N@8@01)))
    (not (= (Seq_index matrix@7@01 j@17@01) $Ref.null)))
  :pattern ((Seq_index matrix@7@01 j@17@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (= ($Snap.second $t@16@01) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { matrix[Ref__multidim_index_2(M, N, i, j)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0)
(declare-const i@20@01 Int)
(declare-const j@21@01 Int)
(push) ; 3
; [eval] 0 <= i && (i < M && (0 <= j && j < N)) ==> matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0
; [eval] 0 <= i && (i < M && (0 <= j && j < N))
; [eval] 0 <= i
(push) ; 4
; [then-branch: 7 | !(0 <= i@20@01) | live]
; [else-branch: 7 | 0 <= i@20@01 | live]
(push) ; 5
; [then-branch: 7 | !(0 <= i@20@01)]
(assert (not (<= 0 i@20@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | 0 <= i@20@01]
(assert (<= 0 i@20@01))
; [eval] i < M
(push) ; 6
; [then-branch: 8 | !(i@20@01 < M@9@01) | live]
; [else-branch: 8 | i@20@01 < M@9@01 | live]
(push) ; 7
; [then-branch: 8 | !(i@20@01 < M@9@01)]
(assert (not (< i@20@01 M@9@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 8 | i@20@01 < M@9@01]
(assert (< i@20@01 M@9@01))
; [eval] 0 <= j
(push) ; 8
; [then-branch: 9 | !(0 <= j@21@01) | live]
; [else-branch: 9 | 0 <= j@21@01 | live]
(push) ; 9
; [then-branch: 9 | !(0 <= j@21@01)]
(assert (not (<= 0 j@21@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 9 | 0 <= j@21@01]
(assert (<= 0 j@21@01))
; [eval] j < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@21@01) (not (<= 0 j@21@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@20@01 M@9@01)
  (and (< i@20@01 M@9@01) (or (<= 0 j@21@01) (not (<= 0 j@21@01))))))
(assert (or (< i@20@01 M@9@01) (not (< i@20@01 M@9@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@20@01)
  (and
    (<= 0 i@20@01)
    (=>
      (< i@20@01 M@9@01)
      (and (< i@20@01 M@9@01) (or (<= 0 j@21@01) (not (<= 0 j@21@01)))))
    (or (< i@20@01 M@9@01) (not (< i@20@01 M@9@01))))))
(assert (or (<= 0 i@20@01) (not (<= 0 i@20@01))))
(push) ; 4
; [then-branch: 10 | 0 <= i@20@01 && i@20@01 < M@9@01 && 0 <= j@21@01 && j@21@01 < N@8@01 | live]
; [else-branch: 10 | !(0 <= i@20@01 && i@20@01 < M@9@01 && 0 <= j@21@01 && j@21@01 < N@8@01) | live]
(push) ; 5
; [then-branch: 10 | 0 <= i@20@01 && i@20@01 < M@9@01 && 0 <= j@21@01 && j@21@01 < N@8@01]
(assert (and
  (<= 0 i@20@01)
  (and (< i@20@01 M@9@01) (and (<= 0 j@21@01) (< j@21@01 N@8@01)))))
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 7
(assert (not (<= 0 M@9@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@9@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 7
(assert (not (<= 0 N@8@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@8@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 M@9@01)
  (<= 0 N@8@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01)))
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01)
  (Seq_length matrix@7@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@19@01 (Seq_index
    matrix@7@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01)))
  (and
    (<=
      0
      (inv@18@01 (Seq_index
        matrix@7@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01))))
    (<
      (inv@18@01 (Seq_index
        matrix@7@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01)))
      (* M@9@01 N@8@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 10 | !(0 <= i@20@01 && i@20@01 < M@9@01 && 0 <= j@21@01 && j@21@01 < N@8@01)]
(assert (not
  (and
    (<= 0 i@20@01)
    (and (< i@20@01 M@9@01) (and (<= 0 j@21@01) (< j@21@01 N@8@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@20@01)
    (and (< i@20@01 M@9@01) (and (<= 0 j@21@01) (< j@21@01 N@8@01))))
  (and
    (<= 0 i@20@01)
    (< i@20@01 M@9@01)
    (<= 0 j@21@01)
    (< j@21@01 N@8@01)
    (<= 0 M@9@01)
    (<= 0 N@8@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@20@01)
      (and (< i@20@01 M@9@01) (and (<= 0 j@21@01) (< j@21@01 N@8@01)))))
  (and
    (<= 0 i@20@01)
    (and (< i@20@01 M@9@01) (and (<= 0 j@21@01) (< j@21@01 N@8@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@20@01 Int) (j@21@01 Int)) (!
  (and
    (=>
      (<= 0 i@20@01)
      (and
        (<= 0 i@20@01)
        (=>
          (< i@20@01 M@9@01)
          (and (< i@20@01 M@9@01) (or (<= 0 j@21@01) (not (<= 0 j@21@01)))))
        (or (< i@20@01 M@9@01) (not (< i@20@01 M@9@01)))))
    (or (<= 0 i@20@01) (not (<= 0 i@20@01)))
    (=>
      (and
        (<= 0 i@20@01)
        (and (< i@20@01 M@9@01) (and (<= 0 j@21@01) (< j@21@01 N@8@01))))
      (and
        (<= 0 i@20@01)
        (< i@20@01 M@9@01)
        (<= 0 j@21@01)
        (< j@21@01 N@8@01)
        (<= 0 M@9@01)
        (<= 0 N@8@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01)))
    (or
      (not
        (and
          (<= 0 i@20@01)
          (and (< i@20@01 M@9@01) (and (<= 0 j@21@01) (< j@21@01 N@8@01)))))
      (and
        (<= 0 i@20@01)
        (and (< i@20@01 M@9@01) (and (<= 0 j@21@01) (< j@21@01 N@8@01))))))
  :pattern ((Seq_index
    matrix@7@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@79@12@79@151-aux|)))
(assert (forall ((i@20@01 Int) (j@21@01 Int)) (!
  (=>
    (and
      (<= 0 i@20@01)
      (and (< i@20@01 M@9@01) (and (<= 0 j@21@01) (< j@21@01 N@8@01))))
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@16@01)) (Seq_index
        matrix@7@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01)))
      0))
  :pattern ((Seq_index
    matrix@7@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@9@01 N@8@01 i@20@01 j@21@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@79@12@79@151|)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__loop_body_31 ----------
(declare-const diz@22@01 $Ref)
(declare-const current_thread_id@23@01 Int)
(declare-const matrix@24@01 Seq<$Ref>)
(declare-const j@25@01 Int)
(declare-const i@26@01 Int)
(declare-const N@27@01 Int)
(declare-const M@28@01 Int)
(declare-const diz@29@01 $Ref)
(declare-const current_thread_id@30@01 Int)
(declare-const matrix@31@01 Seq<$Ref>)
(declare-const j@32@01 Int)
(declare-const i@33@01 Int)
(declare-const N@34@01 Int)
(declare-const M@35@01 Int)
(push) ; 1
(declare-const $t@36@01 $Snap)
(assert (= $t@36@01 ($Snap.combine ($Snap.first $t@36@01) ($Snap.second $t@36@01))))
(assert (= ($Snap.first $t@36@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@29@01 $Ref.null)))
(assert (=
  ($Snap.second $t@36@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@36@01))
    ($Snap.second ($Snap.second $t@36@01)))))
(assert (= ($Snap.first ($Snap.second $t@36@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@30@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@36@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@36@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@36@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@33@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@36@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))
  $Snap.unit))
; [eval] i < M
(assert (< i@33@01 M@35@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))
  $Snap.unit))
; [eval] 0 <= j
(assert (<= 0 j@32@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))
  $Snap.unit))
; [eval] j < N
(assert (< j@32@01 N@34@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))))
  $Snap.unit))
; [eval] Ref__multidim_index_2(M, N, i, j) < |matrix|
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 2
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 3
(assert (not (<= 0 M@35@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@35@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 3
(assert (not (<= 0 N@34@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@34@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (<= 0 M@35@01)
  (<= 0 N@34@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01)))
; [eval] |matrix|
(assert (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01)
  (Seq_length matrix@31@01)))
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 2
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01)
  0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      matrix@31@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01))
    $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01))))
(assert (= ($Snap.first $t@37@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@37@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@37@01))
    ($Snap.second ($Snap.second $t@37@01)))))
(assert (= ($Snap.first ($Snap.second $t@37@01)) $Snap.unit))
; [eval] i < M
(assert (=
  ($Snap.second ($Snap.second $t@37@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@37@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@37@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@37@01))) $Snap.unit))
; [eval] 0 <= j
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@37@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
  $Snap.unit))
; [eval] j < N
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01))))))))
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 3
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01)))))
  $Snap.unit))
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 3
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01))))))
  0))
(pop) ; 2
(push) ; 2
; [exec]
; var __flatten_1: Int
(declare-const __flatten_1@38@01 Int)
; [exec]
; var __flatten_3: Int
(declare-const __flatten_3@39@01 Int)
; [exec]
; var __flatten_4: Ref
(declare-const __flatten_4@40@01 $Ref)
; [exec]
; var __flatten_5: Int
(declare-const __flatten_5@41@01 Int)
; [exec]
; __flatten_3 := Ref__multidim_index_2(M, N, i, j)
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 3
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 3
; Joined path conditions
(declare-const __flatten_3@42@01 Int)
(assert (=
  __flatten_3@42@01
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01)))
; [exec]
; __flatten_1 := __flatten_3
; [exec]
; __flatten_4 := matrix[__flatten_1]
; [eval] matrix[__flatten_1]
(push) ; 3
(assert (not (>= __flatten_3@42@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< __flatten_3@42@01 (Seq_length matrix@31@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_4@43@01 $Ref)
(assert (= __flatten_4@43@01 (Seq_index matrix@31@01 __flatten_3@42@01)))
; [exec]
; __flatten_5 := 0
; [exec]
; __flatten_4.Ref__Integer_value := __flatten_5
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    matrix@31@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01))
  __flatten_4@43@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_4@43@01 $Ref.null)))
; [exec]
; assert M * N > 0
; [eval] M * N > 0
; [eval] M * N
(set-option :timeout 0)
(push) ; 3
(assert (not (> (* M@35@01 N@34@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (> (* M@35@01 N@34@01) 0))
; [eval] 0 <= i
; [eval] i < M
; [eval] 0 <= j
; [eval] j < N
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 3
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  __flatten_4@43@01
  (Seq_index
    matrix@31@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  __flatten_4@43@01
  (Seq_index
    matrix@31@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@35@01 N@34@01 i@33@01 j@32@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- Ref__zero ----------
(declare-const diz@44@01 $Ref)
(declare-const current_thread_id@45@01 Int)
(declare-const M@46@01 Int)
(declare-const N@47@01 Int)
(declare-const matrix@48@01 Seq<$Ref>)
(declare-const diz@49@01 $Ref)
(declare-const current_thread_id@50@01 Int)
(declare-const M@51@01 Int)
(declare-const N@52@01 Int)
(declare-const matrix@53@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@54@01 $Snap)
(assert (= $t@54@01 ($Snap.combine ($Snap.first $t@54@01) ($Snap.second $t@54@01))))
(assert (= ($Snap.first $t@54@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@49@01 $Ref.null)))
(assert (=
  ($Snap.second $t@54@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@54@01))
    ($Snap.second ($Snap.second $t@54@01)))))
(assert (= ($Snap.first ($Snap.second $t@54@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@50@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@54@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@54@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@54@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@54@01))) $Snap.unit))
; [eval] M > 0
(assert (> M@51@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@54@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01))))
  $Snap.unit))
; [eval] N > 0
(assert (> N@52@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))
  $Snap.unit))
; [eval] M * N <= |matrix|
; [eval] M * N
; [eval] |matrix|
(assert (<= (* M@51@01 N@52@01) (Seq_length matrix@53@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { matrix[j], matrix[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k])
(declare-const j@55@01 Int)
(declare-const k@56@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k]
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 11 | !(0 <= j@55@01) | live]
; [else-branch: 11 | 0 <= j@55@01 | live]
(push) ; 4
; [then-branch: 11 | !(0 <= j@55@01)]
(assert (not (<= 0 j@55@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 11 | 0 <= j@55@01]
(assert (<= 0 j@55@01))
; [eval] j < M * N
; [eval] M * N
(push) ; 5
; [then-branch: 12 | !(j@55@01 < M@51@01 * N@52@01) | live]
; [else-branch: 12 | j@55@01 < M@51@01 * N@52@01 | live]
(push) ; 6
; [then-branch: 12 | !(j@55@01 < M@51@01 * N@52@01)]
(assert (not (< j@55@01 (* M@51@01 N@52@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | j@55@01 < M@51@01 * N@52@01]
(assert (< j@55@01 (* M@51@01 N@52@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 13 | !(0 <= k@56@01) | live]
; [else-branch: 13 | 0 <= k@56@01 | live]
(push) ; 8
; [then-branch: 13 | !(0 <= k@56@01)]
(assert (not (<= 0 k@56@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 13 | 0 <= k@56@01]
(assert (<= 0 k@56@01))
; [eval] k < M * N
; [eval] M * N
(push) ; 9
; [then-branch: 14 | !(k@56@01 < M@51@01 * N@52@01) | live]
; [else-branch: 14 | k@56@01 < M@51@01 * N@52@01 | live]
(push) ; 10
; [then-branch: 14 | !(k@56@01 < M@51@01 * N@52@01)]
(assert (not (< k@56@01 (* M@51@01 N@52@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 14 | k@56@01 < M@51@01 * N@52@01]
(assert (< k@56@01 (* M@51@01 N@52@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@56@01 (* M@51@01 N@52@01)) (not (< k@56@01 (* M@51@01 N@52@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@56@01)
  (and
    (<= 0 k@56@01)
    (or (< k@56@01 (* M@51@01 N@52@01)) (not (< k@56@01 (* M@51@01 N@52@01)))))))
(assert (or (<= 0 k@56@01) (not (<= 0 k@56@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@55@01 (* M@51@01 N@52@01))
  (and
    (< j@55@01 (* M@51@01 N@52@01))
    (=>
      (<= 0 k@56@01)
      (and
        (<= 0 k@56@01)
        (or
          (< k@56@01 (* M@51@01 N@52@01))
          (not (< k@56@01 (* M@51@01 N@52@01))))))
    (or (<= 0 k@56@01) (not (<= 0 k@56@01))))))
(assert (or (< j@55@01 (* M@51@01 N@52@01)) (not (< j@55@01 (* M@51@01 N@52@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@55@01)
  (and
    (<= 0 j@55@01)
    (=>
      (< j@55@01 (* M@51@01 N@52@01))
      (and
        (< j@55@01 (* M@51@01 N@52@01))
        (=>
          (<= 0 k@56@01)
          (and
            (<= 0 k@56@01)
            (or
              (< k@56@01 (* M@51@01 N@52@01))
              (not (< k@56@01 (* M@51@01 N@52@01))))))
        (or (<= 0 k@56@01) (not (<= 0 k@56@01)))))
    (or (< j@55@01 (* M@51@01 N@52@01)) (not (< j@55@01 (* M@51@01 N@52@01)))))))
(assert (or (<= 0 j@55@01) (not (<= 0 j@55@01))))
(push) ; 3
; [then-branch: 15 | 0 <= j@55@01 && j@55@01 < M@51@01 * N@52@01 && 0 <= k@56@01 && k@56@01 < M@51@01 * N@52@01 && j@55@01 != k@56@01 | live]
; [else-branch: 15 | !(0 <= j@55@01 && j@55@01 < M@51@01 * N@52@01 && 0 <= k@56@01 && k@56@01 < M@51@01 * N@52@01 && j@55@01 != k@56@01) | live]
(push) ; 4
; [then-branch: 15 | 0 <= j@55@01 && j@55@01 < M@51@01 * N@52@01 && 0 <= k@56@01 && k@56@01 < M@51@01 * N@52@01 && j@55@01 != k@56@01]
(assert (and
  (<= 0 j@55@01)
  (and
    (< j@55@01 (* M@51@01 N@52@01))
    (and
      (<= 0 k@56@01)
      (and (< k@56@01 (* M@51@01 N@52@01)) (not (= j@55@01 k@56@01)))))))
; [eval] matrix[j] != matrix[k]
; [eval] matrix[j]
(push) ; 5
(assert (not (>= j@55@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@55@01 (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] matrix[k]
(push) ; 5
(assert (not (>= k@56@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@56@01 (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 15 | !(0 <= j@55@01 && j@55@01 < M@51@01 * N@52@01 && 0 <= k@56@01 && k@56@01 < M@51@01 * N@52@01 && j@55@01 != k@56@01)]
(assert (not
  (and
    (<= 0 j@55@01)
    (and
      (< j@55@01 (* M@51@01 N@52@01))
      (and
        (<= 0 k@56@01)
        (and (< k@56@01 (* M@51@01 N@52@01)) (not (= j@55@01 k@56@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@55@01)
    (and
      (< j@55@01 (* M@51@01 N@52@01))
      (and
        (<= 0 k@56@01)
        (and (< k@56@01 (* M@51@01 N@52@01)) (not (= j@55@01 k@56@01))))))
  (and
    (<= 0 j@55@01)
    (< j@55@01 (* M@51@01 N@52@01))
    (<= 0 k@56@01)
    (< k@56@01 (* M@51@01 N@52@01))
    (not (= j@55@01 k@56@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@55@01)
      (and
        (< j@55@01 (* M@51@01 N@52@01))
        (and
          (<= 0 k@56@01)
          (and (< k@56@01 (* M@51@01 N@52@01)) (not (= j@55@01 k@56@01)))))))
  (and
    (<= 0 j@55@01)
    (and
      (< j@55@01 (* M@51@01 N@52@01))
      (and
        (<= 0 k@56@01)
        (and (< k@56@01 (* M@51@01 N@52@01)) (not (= j@55@01 k@56@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@55@01 Int) (k@56@01 Int)) (!
  (and
    (=>
      (<= 0 j@55@01)
      (and
        (<= 0 j@55@01)
        (=>
          (< j@55@01 (* M@51@01 N@52@01))
          (and
            (< j@55@01 (* M@51@01 N@52@01))
            (=>
              (<= 0 k@56@01)
              (and
                (<= 0 k@56@01)
                (or
                  (< k@56@01 (* M@51@01 N@52@01))
                  (not (< k@56@01 (* M@51@01 N@52@01))))))
            (or (<= 0 k@56@01) (not (<= 0 k@56@01)))))
        (or
          (< j@55@01 (* M@51@01 N@52@01))
          (not (< j@55@01 (* M@51@01 N@52@01))))))
    (or (<= 0 j@55@01) (not (<= 0 j@55@01)))
    (=>
      (and
        (<= 0 j@55@01)
        (and
          (< j@55@01 (* M@51@01 N@52@01))
          (and
            (<= 0 k@56@01)
            (and (< k@56@01 (* M@51@01 N@52@01)) (not (= j@55@01 k@56@01))))))
      (and
        (<= 0 j@55@01)
        (< j@55@01 (* M@51@01 N@52@01))
        (<= 0 k@56@01)
        (< k@56@01 (* M@51@01 N@52@01))
        (not (= j@55@01 k@56@01))))
    (or
      (not
        (and
          (<= 0 j@55@01)
          (and
            (< j@55@01 (* M@51@01 N@52@01))
            (and
              (<= 0 k@56@01)
              (and (< k@56@01 (* M@51@01 N@52@01)) (not (= j@55@01 k@56@01)))))))
      (and
        (<= 0 j@55@01)
        (and
          (< j@55@01 (* M@51@01 N@52@01))
          (and
            (<= 0 k@56@01)
            (and (< k@56@01 (* M@51@01 N@52@01)) (not (= j@55@01 k@56@01))))))))
  :pattern ((Seq_index matrix@53@01 j@55@01) (Seq_index matrix@53@01 k@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@111@12@111@112-aux|)))
(assert (forall ((j@55@01 Int) (k@56@01 Int)) (!
  (=>
    (and
      (<= 0 j@55@01)
      (and
        (< j@55@01 (* M@51@01 N@52@01))
        (and
          (<= 0 k@56@01)
          (and (< k@56@01 (* M@51@01 N@52@01)) (not (= j@55@01 k@56@01))))))
    (not (= (Seq_index matrix@53@01 j@55@01) (Seq_index matrix@53@01 k@56@01))))
  :pattern ((Seq_index matrix@53@01 j@55@01) (Seq_index matrix@53@01 k@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@111@12@111@112|)))
(declare-const j1@57@01 Int)
(push) ; 2
; [eval] 0 <= j1 && j1 < M * N
; [eval] 0 <= j1
(push) ; 3
; [then-branch: 16 | !(0 <= j1@57@01) | live]
; [else-branch: 16 | 0 <= j1@57@01 | live]
(push) ; 4
; [then-branch: 16 | !(0 <= j1@57@01)]
(assert (not (<= 0 j1@57@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 16 | 0 <= j1@57@01]
(assert (<= 0 j1@57@01))
; [eval] j1 < M * N
; [eval] M * N
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j1@57@01) (not (<= 0 j1@57@01))))
(assert (and (<= 0 j1@57@01) (< j1@57@01 (* M@51@01 N@52@01))))
; [eval] matrix[j1]
(push) ; 3
(assert (not (>= j1@57@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< j1@57@01 (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@58@01 ($Ref) Int)
(declare-fun img@59@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j1@57@01 Int)) (!
  (=>
    (and (<= 0 j1@57@01) (< j1@57@01 (* M@51@01 N@52@01)))
    (or (<= 0 j1@57@01) (not (<= 0 j1@57@01))))
  :pattern ((Seq_index matrix@53@01 j1@57@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j11@57@01 Int) (j12@57@01 Int)) (!
  (=>
    (and
      (and (<= 0 j11@57@01) (< j11@57@01 (* M@51@01 N@52@01)))
      (and (<= 0 j12@57@01) (< j12@57@01 (* M@51@01 N@52@01)))
      (= (Seq_index matrix@53@01 j11@57@01) (Seq_index matrix@53@01 j12@57@01)))
    (= j11@57@01 j12@57@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j1@57@01 Int)) (!
  (=>
    (and (<= 0 j1@57@01) (< j1@57@01 (* M@51@01 N@52@01)))
    (and
      (= (inv@58@01 (Seq_index matrix@53@01 j1@57@01)) j1@57@01)
      (img@59@01 (Seq_index matrix@53@01 j1@57@01))))
  :pattern ((Seq_index matrix@53@01 j1@57@01))
  :qid |quant-u-10162|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@59@01 r)
      (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) (* M@51@01 N@52@01))))
    (= (Seq_index matrix@53@01 (inv@58@01 r)) r))
  :pattern ((inv@58@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j1@57@01 Int)) (!
  (=>
    (and (<= 0 j1@57@01) (< j1@57@01 (* M@51@01 N@52@01)))
    (not (= (Seq_index matrix@53@01 j1@57@01) $Ref.null)))
  :pattern ((Seq_index matrix@53@01 j1@57@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 ($Snap.combine ($Snap.first $t@60@01) ($Snap.second $t@60@01))))
(declare-const j2@61@01 Int)
(push) ; 3
; [eval] 0 <= j2 && j2 < M * N
; [eval] 0 <= j2
(push) ; 4
; [then-branch: 17 | !(0 <= j2@61@01) | live]
; [else-branch: 17 | 0 <= j2@61@01 | live]
(push) ; 5
; [then-branch: 17 | !(0 <= j2@61@01)]
(assert (not (<= 0 j2@61@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 17 | 0 <= j2@61@01]
(assert (<= 0 j2@61@01))
; [eval] j2 < M * N
; [eval] M * N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j2@61@01) (not (<= 0 j2@61@01))))
(assert (and (<= 0 j2@61@01) (< j2@61@01 (* M@51@01 N@52@01))))
; [eval] matrix[j2]
(push) ; 4
(assert (not (>= j2@61@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j2@61@01 (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@62@01 ($Ref) Int)
(declare-fun img@63@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j2@61@01 Int)) (!
  (=>
    (and (<= 0 j2@61@01) (< j2@61@01 (* M@51@01 N@52@01)))
    (or (<= 0 j2@61@01) (not (<= 0 j2@61@01))))
  :pattern ((Seq_index matrix@53@01 j2@61@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j21@61@01 Int) (j22@61@01 Int)) (!
  (=>
    (and
      (and (<= 0 j21@61@01) (< j21@61@01 (* M@51@01 N@52@01)))
      (and (<= 0 j22@61@01) (< j22@61@01 (* M@51@01 N@52@01)))
      (= (Seq_index matrix@53@01 j21@61@01) (Seq_index matrix@53@01 j22@61@01)))
    (= j21@61@01 j22@61@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j2@61@01 Int)) (!
  (=>
    (and (<= 0 j2@61@01) (< j2@61@01 (* M@51@01 N@52@01)))
    (and
      (= (inv@62@01 (Seq_index matrix@53@01 j2@61@01)) j2@61@01)
      (img@63@01 (Seq_index matrix@53@01 j2@61@01))))
  :pattern ((Seq_index matrix@53@01 j2@61@01))
  :qid |quant-u-10164|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@63@01 r)
      (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) (* M@51@01 N@52@01))))
    (= (Seq_index matrix@53@01 (inv@62@01 r)) r))
  :pattern ((inv@62@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j2@61@01 Int)) (!
  (=>
    (and (<= 0 j2@61@01) (< j2@61@01 (* M@51@01 N@52@01)))
    (not (= (Seq_index matrix@53@01 j2@61@01) $Ref.null)))
  :pattern ((Seq_index matrix@53@01 j2@61@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (= ($Snap.second $t@60@01) $Snap.unit))
; [eval] (forall i3: Int, j3: Int :: { matrix[Ref__multidim_index_2(M, N, i3, j3)] } 0 <= i3 && (i3 < M && (0 <= j3 && j3 < N)) ==> matrix[Ref__multidim_index_2(M, N, i3, j3)].Ref__Integer_value == 0)
(declare-const i3@64@01 Int)
(declare-const j3@65@01 Int)
(push) ; 3
; [eval] 0 <= i3 && (i3 < M && (0 <= j3 && j3 < N)) ==> matrix[Ref__multidim_index_2(M, N, i3, j3)].Ref__Integer_value == 0
; [eval] 0 <= i3 && (i3 < M && (0 <= j3 && j3 < N))
; [eval] 0 <= i3
(push) ; 4
; [then-branch: 18 | !(0 <= i3@64@01) | live]
; [else-branch: 18 | 0 <= i3@64@01 | live]
(push) ; 5
; [then-branch: 18 | !(0 <= i3@64@01)]
(assert (not (<= 0 i3@64@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | 0 <= i3@64@01]
(assert (<= 0 i3@64@01))
; [eval] i3 < M
(push) ; 6
; [then-branch: 19 | !(i3@64@01 < M@51@01) | live]
; [else-branch: 19 | i3@64@01 < M@51@01 | live]
(push) ; 7
; [then-branch: 19 | !(i3@64@01 < M@51@01)]
(assert (not (< i3@64@01 M@51@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 19 | i3@64@01 < M@51@01]
(assert (< i3@64@01 M@51@01))
; [eval] 0 <= j3
(push) ; 8
; [then-branch: 20 | !(0 <= j3@65@01) | live]
; [else-branch: 20 | 0 <= j3@65@01 | live]
(push) ; 9
; [then-branch: 20 | !(0 <= j3@65@01)]
(assert (not (<= 0 j3@65@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 20 | 0 <= j3@65@01]
(assert (<= 0 j3@65@01))
; [eval] j3 < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j3@65@01) (not (<= 0 j3@65@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i3@64@01 M@51@01)
  (and (< i3@64@01 M@51@01) (or (<= 0 j3@65@01) (not (<= 0 j3@65@01))))))
(assert (or (< i3@64@01 M@51@01) (not (< i3@64@01 M@51@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i3@64@01)
  (and
    (<= 0 i3@64@01)
    (=>
      (< i3@64@01 M@51@01)
      (and (< i3@64@01 M@51@01) (or (<= 0 j3@65@01) (not (<= 0 j3@65@01)))))
    (or (< i3@64@01 M@51@01) (not (< i3@64@01 M@51@01))))))
(assert (or (<= 0 i3@64@01) (not (<= 0 i3@64@01))))
(push) ; 4
; [then-branch: 21 | 0 <= i3@64@01 && i3@64@01 < M@51@01 && 0 <= j3@65@01 && j3@65@01 < N@52@01 | live]
; [else-branch: 21 | !(0 <= i3@64@01 && i3@64@01 < M@51@01 && 0 <= j3@65@01 && j3@65@01 < N@52@01) | live]
(push) ; 5
; [then-branch: 21 | 0 <= i3@64@01 && i3@64@01 < M@51@01 && 0 <= j3@65@01 && j3@65@01 < N@52@01]
(assert (and
  (<= 0 i3@64@01)
  (and (< i3@64@01 M@51@01) (and (<= 0 j3@65@01) (< j3@65@01 N@52@01)))))
; [eval] matrix[Ref__multidim_index_2(M, N, i3, j3)].Ref__Integer_value == 0
; [eval] matrix[Ref__multidim_index_2(M, N, i3, j3)]
; [eval] Ref__multidim_index_2(M, N, i3, j3)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 7
(assert (not (<= 0 M@51@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@51@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 7
(assert (not (<= 0 N@52@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@52@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 M@51@01)
  (<= 0 N@52@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01)))
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01)
  (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@63@01 (Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01)))
  (and
    (<=
      0
      (inv@62@01 (Seq_index
        matrix@53@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01))))
    (<
      (inv@62@01 (Seq_index
        matrix@53@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01)))
      (* M@51@01 N@52@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 21 | !(0 <= i3@64@01 && i3@64@01 < M@51@01 && 0 <= j3@65@01 && j3@65@01 < N@52@01)]
(assert (not
  (and
    (<= 0 i3@64@01)
    (and (< i3@64@01 M@51@01) (and (<= 0 j3@65@01) (< j3@65@01 N@52@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 i3@64@01)
    (and (< i3@64@01 M@51@01) (and (<= 0 j3@65@01) (< j3@65@01 N@52@01))))
  (and
    (<= 0 i3@64@01)
    (< i3@64@01 M@51@01)
    (<= 0 j3@65@01)
    (< j3@65@01 N@52@01)
    (<= 0 M@51@01)
    (<= 0 N@52@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i3@64@01)
      (and (< i3@64@01 M@51@01) (and (<= 0 j3@65@01) (< j3@65@01 N@52@01)))))
  (and
    (<= 0 i3@64@01)
    (and (< i3@64@01 M@51@01) (and (<= 0 j3@65@01) (< j3@65@01 N@52@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i3@64@01 Int) (j3@65@01 Int)) (!
  (and
    (=>
      (<= 0 i3@64@01)
      (and
        (<= 0 i3@64@01)
        (=>
          (< i3@64@01 M@51@01)
          (and (< i3@64@01 M@51@01) (or (<= 0 j3@65@01) (not (<= 0 j3@65@01)))))
        (or (< i3@64@01 M@51@01) (not (< i3@64@01 M@51@01)))))
    (or (<= 0 i3@64@01) (not (<= 0 i3@64@01)))
    (=>
      (and
        (<= 0 i3@64@01)
        (and (< i3@64@01 M@51@01) (and (<= 0 j3@65@01) (< j3@65@01 N@52@01))))
      (and
        (<= 0 i3@64@01)
        (< i3@64@01 M@51@01)
        (<= 0 j3@65@01)
        (< j3@65@01 N@52@01)
        (<= 0 M@51@01)
        (<= 0 N@52@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01)))
    (or
      (not
        (and
          (<= 0 i3@64@01)
          (and (< i3@64@01 M@51@01) (and (<= 0 j3@65@01) (< j3@65@01 N@52@01)))))
      (and
        (<= 0 i3@64@01)
        (and (< i3@64@01 M@51@01) (and (<= 0 j3@65@01) (< j3@65@01 N@52@01))))))
  :pattern ((Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@114@12@114@159-aux|)))
(assert (forall ((i3@64@01 Int) (j3@65@01 Int)) (!
  (=>
    (and
      (<= 0 i3@64@01)
      (and (< i3@64@01 M@51@01) (and (<= 0 j3@65@01) (< j3@65@01 N@52@01))))
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@60@01)) (Seq_index
        matrix@53@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01)))
      0))
  :pattern ((Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@64@01 j3@65@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@114@12@114@159|)))
(pop) ; 2
(push) ; 2
; [exec]
; Ref__loop_main_31(diz, current_thread_id, matrix, N, M)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] M * N <= |matrix|
; [eval] M * N
; [eval] |matrix|
; [eval] (forall j: Int, k: Int :: { matrix[j], matrix[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k])
(declare-const j@66@01 Int)
(declare-const k@67@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k]
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 22 | !(0 <= j@66@01) | live]
; [else-branch: 22 | 0 <= j@66@01 | live]
(push) ; 5
; [then-branch: 22 | !(0 <= j@66@01)]
(assert (not (<= 0 j@66@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | 0 <= j@66@01]
(assert (<= 0 j@66@01))
; [eval] j < M * N
; [eval] M * N
(push) ; 6
; [then-branch: 23 | !(j@66@01 < M@51@01 * N@52@01) | live]
; [else-branch: 23 | j@66@01 < M@51@01 * N@52@01 | live]
(push) ; 7
; [then-branch: 23 | !(j@66@01 < M@51@01 * N@52@01)]
(assert (not (< j@66@01 (* M@51@01 N@52@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 23 | j@66@01 < M@51@01 * N@52@01]
(assert (< j@66@01 (* M@51@01 N@52@01)))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 24 | !(0 <= k@67@01) | live]
; [else-branch: 24 | 0 <= k@67@01 | live]
(push) ; 9
; [then-branch: 24 | !(0 <= k@67@01)]
(assert (not (<= 0 k@67@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 24 | 0 <= k@67@01]
(assert (<= 0 k@67@01))
; [eval] k < M * N
; [eval] M * N
(push) ; 10
; [then-branch: 25 | !(k@67@01 < M@51@01 * N@52@01) | live]
; [else-branch: 25 | k@67@01 < M@51@01 * N@52@01 | live]
(push) ; 11
; [then-branch: 25 | !(k@67@01 < M@51@01 * N@52@01)]
(assert (not (< k@67@01 (* M@51@01 N@52@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 25 | k@67@01 < M@51@01 * N@52@01]
(assert (< k@67@01 (* M@51@01 N@52@01)))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@67@01 (* M@51@01 N@52@01)) (not (< k@67@01 (* M@51@01 N@52@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@67@01)
  (and
    (<= 0 k@67@01)
    (or (< k@67@01 (* M@51@01 N@52@01)) (not (< k@67@01 (* M@51@01 N@52@01)))))))
(assert (or (<= 0 k@67@01) (not (<= 0 k@67@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@66@01 (* M@51@01 N@52@01))
  (and
    (< j@66@01 (* M@51@01 N@52@01))
    (=>
      (<= 0 k@67@01)
      (and
        (<= 0 k@67@01)
        (or
          (< k@67@01 (* M@51@01 N@52@01))
          (not (< k@67@01 (* M@51@01 N@52@01))))))
    (or (<= 0 k@67@01) (not (<= 0 k@67@01))))))
(assert (or (< j@66@01 (* M@51@01 N@52@01)) (not (< j@66@01 (* M@51@01 N@52@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@66@01)
  (and
    (<= 0 j@66@01)
    (=>
      (< j@66@01 (* M@51@01 N@52@01))
      (and
        (< j@66@01 (* M@51@01 N@52@01))
        (=>
          (<= 0 k@67@01)
          (and
            (<= 0 k@67@01)
            (or
              (< k@67@01 (* M@51@01 N@52@01))
              (not (< k@67@01 (* M@51@01 N@52@01))))))
        (or (<= 0 k@67@01) (not (<= 0 k@67@01)))))
    (or (< j@66@01 (* M@51@01 N@52@01)) (not (< j@66@01 (* M@51@01 N@52@01)))))))
(assert (or (<= 0 j@66@01) (not (<= 0 j@66@01))))
(push) ; 4
; [then-branch: 26 | 0 <= j@66@01 && j@66@01 < M@51@01 * N@52@01 && 0 <= k@67@01 && k@67@01 < M@51@01 * N@52@01 && j@66@01 != k@67@01 | live]
; [else-branch: 26 | !(0 <= j@66@01 && j@66@01 < M@51@01 * N@52@01 && 0 <= k@67@01 && k@67@01 < M@51@01 * N@52@01 && j@66@01 != k@67@01) | live]
(push) ; 5
; [then-branch: 26 | 0 <= j@66@01 && j@66@01 < M@51@01 * N@52@01 && 0 <= k@67@01 && k@67@01 < M@51@01 * N@52@01 && j@66@01 != k@67@01]
(assert (and
  (<= 0 j@66@01)
  (and
    (< j@66@01 (* M@51@01 N@52@01))
    (and
      (<= 0 k@67@01)
      (and (< k@67@01 (* M@51@01 N@52@01)) (not (= j@66@01 k@67@01)))))))
; [eval] matrix[j] != matrix[k]
; [eval] matrix[j]
(push) ; 6
(assert (not (>= j@66@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@66@01 (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] matrix[k]
(push) ; 6
(assert (not (>= k@67@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@67@01 (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 26 | !(0 <= j@66@01 && j@66@01 < M@51@01 * N@52@01 && 0 <= k@67@01 && k@67@01 < M@51@01 * N@52@01 && j@66@01 != k@67@01)]
(assert (not
  (and
    (<= 0 j@66@01)
    (and
      (< j@66@01 (* M@51@01 N@52@01))
      (and
        (<= 0 k@67@01)
        (and (< k@67@01 (* M@51@01 N@52@01)) (not (= j@66@01 k@67@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@66@01)
    (and
      (< j@66@01 (* M@51@01 N@52@01))
      (and
        (<= 0 k@67@01)
        (and (< k@67@01 (* M@51@01 N@52@01)) (not (= j@66@01 k@67@01))))))
  (and
    (<= 0 j@66@01)
    (< j@66@01 (* M@51@01 N@52@01))
    (<= 0 k@67@01)
    (< k@67@01 (* M@51@01 N@52@01))
    (not (= j@66@01 k@67@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@66@01)
      (and
        (< j@66@01 (* M@51@01 N@52@01))
        (and
          (<= 0 k@67@01)
          (and (< k@67@01 (* M@51@01 N@52@01)) (not (= j@66@01 k@67@01)))))))
  (and
    (<= 0 j@66@01)
    (and
      (< j@66@01 (* M@51@01 N@52@01))
      (and
        (<= 0 k@67@01)
        (and (< k@67@01 (* M@51@01 N@52@01)) (not (= j@66@01 k@67@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@66@01 Int) (k@67@01 Int)) (!
  (and
    (=>
      (<= 0 j@66@01)
      (and
        (<= 0 j@66@01)
        (=>
          (< j@66@01 (* M@51@01 N@52@01))
          (and
            (< j@66@01 (* M@51@01 N@52@01))
            (=>
              (<= 0 k@67@01)
              (and
                (<= 0 k@67@01)
                (or
                  (< k@67@01 (* M@51@01 N@52@01))
                  (not (< k@67@01 (* M@51@01 N@52@01))))))
            (or (<= 0 k@67@01) (not (<= 0 k@67@01)))))
        (or
          (< j@66@01 (* M@51@01 N@52@01))
          (not (< j@66@01 (* M@51@01 N@52@01))))))
    (or (<= 0 j@66@01) (not (<= 0 j@66@01)))
    (=>
      (and
        (<= 0 j@66@01)
        (and
          (< j@66@01 (* M@51@01 N@52@01))
          (and
            (<= 0 k@67@01)
            (and (< k@67@01 (* M@51@01 N@52@01)) (not (= j@66@01 k@67@01))))))
      (and
        (<= 0 j@66@01)
        (< j@66@01 (* M@51@01 N@52@01))
        (<= 0 k@67@01)
        (< k@67@01 (* M@51@01 N@52@01))
        (not (= j@66@01 k@67@01))))
    (or
      (not
        (and
          (<= 0 j@66@01)
          (and
            (< j@66@01 (* M@51@01 N@52@01))
            (and
              (<= 0 k@67@01)
              (and (< k@67@01 (* M@51@01 N@52@01)) (not (= j@66@01 k@67@01)))))))
      (and
        (<= 0 j@66@01)
        (and
          (< j@66@01 (* M@51@01 N@52@01))
          (and
            (<= 0 k@67@01)
            (and (< k@67@01 (* M@51@01 N@52@01)) (not (= j@66@01 k@67@01))))))))
  :pattern ((Seq_index matrix@53@01 j@66@01) (Seq_index matrix@53@01 k@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@76@12@76@112-aux|)))
(push) ; 3
(assert (not (forall ((j@66@01 Int) (k@67@01 Int)) (!
  (=>
    (and
      (<= 0 j@66@01)
      (and
        (< j@66@01 (* M@51@01 N@52@01))
        (and
          (<= 0 k@67@01)
          (and (< k@67@01 (* M@51@01 N@52@01)) (not (= j@66@01 k@67@01))))))
    (not (= (Seq_index matrix@53@01 j@66@01) (Seq_index matrix@53@01 k@67@01))))
  :pattern ((Seq_index matrix@53@01 j@66@01) (Seq_index matrix@53@01 k@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@76@12@76@112|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@66@01 Int) (k@67@01 Int)) (!
  (=>
    (and
      (<= 0 j@66@01)
      (and
        (< j@66@01 (* M@51@01 N@52@01))
        (and
          (<= 0 k@67@01)
          (and (< k@67@01 (* M@51@01 N@52@01)) (not (= j@66@01 k@67@01))))))
    (not (= (Seq_index matrix@53@01 j@66@01) (Seq_index matrix@53@01 k@67@01))))
  :pattern ((Seq_index matrix@53@01 j@66@01) (Seq_index matrix@53@01 k@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@76@12@76@112|)))
(declare-const j@68@01 Int)
(push) ; 3
; [eval] 0 <= j && j < M * N
; [eval] 0 <= j
(push) ; 4
; [then-branch: 27 | !(0 <= j@68@01) | live]
; [else-branch: 27 | 0 <= j@68@01 | live]
(push) ; 5
; [then-branch: 27 | !(0 <= j@68@01)]
(assert (not (<= 0 j@68@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 27 | 0 <= j@68@01]
(assert (<= 0 j@68@01))
; [eval] j < M * N
; [eval] M * N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@68@01) (not (<= 0 j@68@01))))
(assert (and (<= 0 j@68@01) (< j@68@01 (* M@51@01 N@52@01))))
; [eval] matrix[j]
(push) ; 4
(assert (not (>= j@68@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@68@01 (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@69@01 ($Ref) Int)
(declare-fun img@70@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@68@01 Int)) (!
  (=>
    (and (<= 0 j@68@01) (< j@68@01 (* M@51@01 N@52@01)))
    (or (<= 0 j@68@01) (not (<= 0 j@68@01))))
  :pattern ((Seq_index matrix@53@01 j@68@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@68@01 Int) (j2@68@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@68@01) (< j1@68@01 (* M@51@01 N@52@01)))
      (and (<= 0 j2@68@01) (< j2@68@01 (* M@51@01 N@52@01)))
      (= (Seq_index matrix@53@01 j1@68@01) (Seq_index matrix@53@01 j2@68@01)))
    (= j1@68@01 j2@68@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@68@01 Int)) (!
  (=>
    (and (<= 0 j@68@01) (< j@68@01 (* M@51@01 N@52@01)))
    (and
      (= (inv@69@01 (Seq_index matrix@53@01 j@68@01)) j@68@01)
      (img@70@01 (Seq_index matrix@53@01 j@68@01))))
  :pattern ((Seq_index matrix@53@01 j@68@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@01 r)
      (and (<= 0 (inv@69@01 r)) (< (inv@69@01 r) (* M@51@01 N@52@01))))
    (= (Seq_index matrix@53@01 (inv@69@01 r)) r))
  :pattern ((inv@69@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@71@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@69@01 r)) (< (inv@69@01 r) (* M@51@01 N@52@01)))
      (img@70@01 r)
      (= r (Seq_index matrix@53@01 (inv@69@01 r))))
    ($Perm.min
      (ite
        (and
          (img@59@01 r)
          (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) (* M@51@01 N@52@01))))
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
          (img@59@01 r)
          (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) (* M@51@01 N@52@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@71@01 r))
    $Perm.No)
  
  :qid |quant-u-10167|))))
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
      (and (<= 0 (inv@69@01 r)) (< (inv@69@01 r) (* M@51@01 N@52@01)))
      (img@70@01 r)
      (= r (Seq_index matrix@53@01 (inv@69@01 r))))
    (= (- $Perm.Write (pTaken@71@01 r)) $Perm.No))
  
  :qid |quant-u-10168|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 ($Snap.combine ($Snap.first $t@72@01) ($Snap.second $t@72@01))))
(declare-const j@73@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && j < M * N
; [eval] 0 <= j
(push) ; 4
; [then-branch: 28 | !(0 <= j@73@01) | live]
; [else-branch: 28 | 0 <= j@73@01 | live]
(push) ; 5
; [then-branch: 28 | !(0 <= j@73@01)]
(assert (not (<= 0 j@73@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 28 | 0 <= j@73@01]
(assert (<= 0 j@73@01))
; [eval] j < M * N
; [eval] M * N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@73@01) (not (<= 0 j@73@01))))
(assert (and (<= 0 j@73@01) (< j@73@01 (* M@51@01 N@52@01))))
; [eval] matrix[j]
(push) ; 4
(assert (not (>= j@73@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@73@01 (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@74@01 ($Ref) Int)
(declare-fun img@75@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@73@01 Int)) (!
  (=>
    (and (<= 0 j@73@01) (< j@73@01 (* M@51@01 N@52@01)))
    (or (<= 0 j@73@01) (not (<= 0 j@73@01))))
  :pattern ((Seq_index matrix@53@01 j@73@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@73@01 Int) (j2@73@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@73@01) (< j1@73@01 (* M@51@01 N@52@01)))
      (and (<= 0 j2@73@01) (< j2@73@01 (* M@51@01 N@52@01)))
      (= (Seq_index matrix@53@01 j1@73@01) (Seq_index matrix@53@01 j2@73@01)))
    (= j1@73@01 j2@73@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@73@01 Int)) (!
  (=>
    (and (<= 0 j@73@01) (< j@73@01 (* M@51@01 N@52@01)))
    (and
      (= (inv@74@01 (Seq_index matrix@53@01 j@73@01)) j@73@01)
      (img@75@01 (Seq_index matrix@53@01 j@73@01))))
  :pattern ((Seq_index matrix@53@01 j@73@01))
  :qid |quant-u-10170|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@75@01 r)
      (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (* M@51@01 N@52@01))))
    (= (Seq_index matrix@53@01 (inv@74@01 r)) r))
  :pattern ((inv@74@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@73@01 Int)) (!
  (=>
    (and (<= 0 j@73@01) (< j@73@01 (* M@51@01 N@52@01)))
    (not (= (Seq_index matrix@53@01 j@73@01) $Ref.null)))
  :pattern ((Seq_index matrix@53@01 j@73@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (= ($Snap.second $t@72@01) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { matrix[Ref__multidim_index_2(M, N, i, j)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0)
(declare-const i@76@01 Int)
(declare-const j@77@01 Int)
(push) ; 3
; [eval] 0 <= i && (i < M && (0 <= j && j < N)) ==> matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0
; [eval] 0 <= i && (i < M && (0 <= j && j < N))
; [eval] 0 <= i
(push) ; 4
; [then-branch: 29 | !(0 <= i@76@01) | live]
; [else-branch: 29 | 0 <= i@76@01 | live]
(push) ; 5
; [then-branch: 29 | !(0 <= i@76@01)]
(assert (not (<= 0 i@76@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 29 | 0 <= i@76@01]
(assert (<= 0 i@76@01))
; [eval] i < M
(push) ; 6
; [then-branch: 30 | !(i@76@01 < M@51@01) | live]
; [else-branch: 30 | i@76@01 < M@51@01 | live]
(push) ; 7
; [then-branch: 30 | !(i@76@01 < M@51@01)]
(assert (not (< i@76@01 M@51@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 30 | i@76@01 < M@51@01]
(assert (< i@76@01 M@51@01))
; [eval] 0 <= j
(push) ; 8
; [then-branch: 31 | !(0 <= j@77@01) | live]
; [else-branch: 31 | 0 <= j@77@01 | live]
(push) ; 9
; [then-branch: 31 | !(0 <= j@77@01)]
(assert (not (<= 0 j@77@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 31 | 0 <= j@77@01]
(assert (<= 0 j@77@01))
; [eval] j < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@77@01) (not (<= 0 j@77@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@76@01 M@51@01)
  (and (< i@76@01 M@51@01) (or (<= 0 j@77@01) (not (<= 0 j@77@01))))))
(assert (or (< i@76@01 M@51@01) (not (< i@76@01 M@51@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@76@01)
  (and
    (<= 0 i@76@01)
    (=>
      (< i@76@01 M@51@01)
      (and (< i@76@01 M@51@01) (or (<= 0 j@77@01) (not (<= 0 j@77@01)))))
    (or (< i@76@01 M@51@01) (not (< i@76@01 M@51@01))))))
(assert (or (<= 0 i@76@01) (not (<= 0 i@76@01))))
(push) ; 4
; [then-branch: 32 | 0 <= i@76@01 && i@76@01 < M@51@01 && 0 <= j@77@01 && j@77@01 < N@52@01 | live]
; [else-branch: 32 | !(0 <= i@76@01 && i@76@01 < M@51@01 && 0 <= j@77@01 && j@77@01 < N@52@01) | live]
(push) ; 5
; [then-branch: 32 | 0 <= i@76@01 && i@76@01 < M@51@01 && 0 <= j@77@01 && j@77@01 < N@52@01]
(assert (and
  (<= 0 i@76@01)
  (and (< i@76@01 M@51@01) (and (<= 0 j@77@01) (< j@77@01 N@52@01)))))
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == 0
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 7
(assert (not (<= 0 M@51@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@51@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 7
(assert (not (<= 0 N@52@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@52@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 M@51@01)
  (<= 0 N@52@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01)))
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01)
  (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@75@01 (Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01)))
  (and
    (<=
      0
      (inv@74@01 (Seq_index
        matrix@53@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01))))
    (<
      (inv@74@01 (Seq_index
        matrix@53@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01)))
      (* M@51@01 N@52@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 32 | !(0 <= i@76@01 && i@76@01 < M@51@01 && 0 <= j@77@01 && j@77@01 < N@52@01)]
(assert (not
  (and
    (<= 0 i@76@01)
    (and (< i@76@01 M@51@01) (and (<= 0 j@77@01) (< j@77@01 N@52@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@76@01)
    (and (< i@76@01 M@51@01) (and (<= 0 j@77@01) (< j@77@01 N@52@01))))
  (and
    (<= 0 i@76@01)
    (< i@76@01 M@51@01)
    (<= 0 j@77@01)
    (< j@77@01 N@52@01)
    (<= 0 M@51@01)
    (<= 0 N@52@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@76@01)
      (and (< i@76@01 M@51@01) (and (<= 0 j@77@01) (< j@77@01 N@52@01)))))
  (and
    (<= 0 i@76@01)
    (and (< i@76@01 M@51@01) (and (<= 0 j@77@01) (< j@77@01 N@52@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@76@01 Int) (j@77@01 Int)) (!
  (and
    (=>
      (<= 0 i@76@01)
      (and
        (<= 0 i@76@01)
        (=>
          (< i@76@01 M@51@01)
          (and (< i@76@01 M@51@01) (or (<= 0 j@77@01) (not (<= 0 j@77@01)))))
        (or (< i@76@01 M@51@01) (not (< i@76@01 M@51@01)))))
    (or (<= 0 i@76@01) (not (<= 0 i@76@01)))
    (=>
      (and
        (<= 0 i@76@01)
        (and (< i@76@01 M@51@01) (and (<= 0 j@77@01) (< j@77@01 N@52@01))))
      (and
        (<= 0 i@76@01)
        (< i@76@01 M@51@01)
        (<= 0 j@77@01)
        (< j@77@01 N@52@01)
        (<= 0 M@51@01)
        (<= 0 N@52@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01)))
    (or
      (not
        (and
          (<= 0 i@76@01)
          (and (< i@76@01 M@51@01) (and (<= 0 j@77@01) (< j@77@01 N@52@01)))))
      (and
        (<= 0 i@76@01)
        (and (< i@76@01 M@51@01) (and (<= 0 j@77@01) (< j@77@01 N@52@01))))))
  :pattern ((Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@79@12@79@151-aux|)))
(assert (forall ((i@76@01 Int) (j@77@01 Int)) (!
  (=>
    (and
      (<= 0 i@76@01)
      (and (< i@76@01 M@51@01) (and (<= 0 j@77@01) (< j@77@01 N@52@01))))
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@72@01)) (Seq_index
        matrix@53@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01)))
      0))
  :pattern ((Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i@76@01 j@77@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@79@12@79@151|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(declare-const j2@78@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j2 && j2 < M * N
; [eval] 0 <= j2
(push) ; 4
; [then-branch: 33 | !(0 <= j2@78@01) | live]
; [else-branch: 33 | 0 <= j2@78@01 | live]
(push) ; 5
; [then-branch: 33 | !(0 <= j2@78@01)]
(assert (not (<= 0 j2@78@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 33 | 0 <= j2@78@01]
(assert (<= 0 j2@78@01))
; [eval] j2 < M * N
; [eval] M * N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j2@78@01) (not (<= 0 j2@78@01))))
(assert (and (<= 0 j2@78@01) (< j2@78@01 (* M@51@01 N@52@01))))
; [eval] matrix[j2]
(push) ; 4
(assert (not (>= j2@78@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j2@78@01 (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@79@01 ($Ref) Int)
(declare-fun img@80@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j2@78@01 Int)) (!
  (=>
    (and (<= 0 j2@78@01) (< j2@78@01 (* M@51@01 N@52@01)))
    (or (<= 0 j2@78@01) (not (<= 0 j2@78@01))))
  :pattern ((Seq_index matrix@53@01 j2@78@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j21@78@01 Int) (j22@78@01 Int)) (!
  (=>
    (and
      (and (<= 0 j21@78@01) (< j21@78@01 (* M@51@01 N@52@01)))
      (and (<= 0 j22@78@01) (< j22@78@01 (* M@51@01 N@52@01)))
      (= (Seq_index matrix@53@01 j21@78@01) (Seq_index matrix@53@01 j22@78@01)))
    (= j21@78@01 j22@78@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j2@78@01 Int)) (!
  (=>
    (and (<= 0 j2@78@01) (< j2@78@01 (* M@51@01 N@52@01)))
    (and
      (= (inv@79@01 (Seq_index matrix@53@01 j2@78@01)) j2@78@01)
      (img@80@01 (Seq_index matrix@53@01 j2@78@01))))
  :pattern ((Seq_index matrix@53@01 j2@78@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@51@01 N@52@01))))
    (= (Seq_index matrix@53@01 (inv@79@01 r)) r))
  :pattern ((inv@79@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@81@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@51@01 N@52@01)))
      (img@80@01 r)
      (= r (Seq_index matrix@53@01 (inv@79@01 r))))
    ($Perm.min
      (ite
        (and
          (img@75@01 r)
          (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (* M@51@01 N@52@01))))
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
          (img@75@01 r)
          (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (* M@51@01 N@52@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@81@01 r))
    $Perm.No)
  
  :qid |quant-u-10173|))))
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
      (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@51@01 N@52@01)))
      (img@80@01 r)
      (= r (Seq_index matrix@53@01 (inv@79@01 r))))
    (= (- $Perm.Write (pTaken@81@01 r)) $Perm.No))
  
  :qid |quant-u-10174|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i3: Int, j3: Int :: { matrix[Ref__multidim_index_2(M, N, i3, j3)] } 0 <= i3 && (i3 < M && (0 <= j3 && j3 < N)) ==> matrix[Ref__multidim_index_2(M, N, i3, j3)].Ref__Integer_value == 0)
(declare-const i3@82@01 Int)
(declare-const j3@83@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i3 && (i3 < M && (0 <= j3 && j3 < N)) ==> matrix[Ref__multidim_index_2(M, N, i3, j3)].Ref__Integer_value == 0
; [eval] 0 <= i3 && (i3 < M && (0 <= j3 && j3 < N))
; [eval] 0 <= i3
(push) ; 4
; [then-branch: 34 | !(0 <= i3@82@01) | live]
; [else-branch: 34 | 0 <= i3@82@01 | live]
(push) ; 5
; [then-branch: 34 | !(0 <= i3@82@01)]
(assert (not (<= 0 i3@82@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 34 | 0 <= i3@82@01]
(assert (<= 0 i3@82@01))
; [eval] i3 < M
(push) ; 6
; [then-branch: 35 | !(i3@82@01 < M@51@01) | live]
; [else-branch: 35 | i3@82@01 < M@51@01 | live]
(push) ; 7
; [then-branch: 35 | !(i3@82@01 < M@51@01)]
(assert (not (< i3@82@01 M@51@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 35 | i3@82@01 < M@51@01]
(assert (< i3@82@01 M@51@01))
; [eval] 0 <= j3
(push) ; 8
; [then-branch: 36 | !(0 <= j3@83@01) | live]
; [else-branch: 36 | 0 <= j3@83@01 | live]
(push) ; 9
; [then-branch: 36 | !(0 <= j3@83@01)]
(assert (not (<= 0 j3@83@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 36 | 0 <= j3@83@01]
(assert (<= 0 j3@83@01))
; [eval] j3 < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j3@83@01) (not (<= 0 j3@83@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i3@82@01 M@51@01)
  (and (< i3@82@01 M@51@01) (or (<= 0 j3@83@01) (not (<= 0 j3@83@01))))))
(assert (or (< i3@82@01 M@51@01) (not (< i3@82@01 M@51@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i3@82@01)
  (and
    (<= 0 i3@82@01)
    (=>
      (< i3@82@01 M@51@01)
      (and (< i3@82@01 M@51@01) (or (<= 0 j3@83@01) (not (<= 0 j3@83@01)))))
    (or (< i3@82@01 M@51@01) (not (< i3@82@01 M@51@01))))))
(assert (or (<= 0 i3@82@01) (not (<= 0 i3@82@01))))
(push) ; 4
; [then-branch: 37 | 0 <= i3@82@01 && i3@82@01 < M@51@01 && 0 <= j3@83@01 && j3@83@01 < N@52@01 | live]
; [else-branch: 37 | !(0 <= i3@82@01 && i3@82@01 < M@51@01 && 0 <= j3@83@01 && j3@83@01 < N@52@01) | live]
(push) ; 5
; [then-branch: 37 | 0 <= i3@82@01 && i3@82@01 < M@51@01 && 0 <= j3@83@01 && j3@83@01 < N@52@01]
(assert (and
  (<= 0 i3@82@01)
  (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01)))))
; [eval] matrix[Ref__multidim_index_2(M, N, i3, j3)].Ref__Integer_value == 0
; [eval] matrix[Ref__multidim_index_2(M, N, i3, j3)]
; [eval] Ref__multidim_index_2(M, N, i3, j3)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 7
(assert (not (<= 0 M@51@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@51@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 7
(assert (not (<= 0 N@52@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@52@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 M@51@01)
  (<= 0 N@52@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)))
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)
  (Seq_length matrix@53@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@75@01 (Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)))
  (and
    (<=
      0
      (inv@74@01 (Seq_index
        matrix@53@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01))))
    (<
      (inv@74@01 (Seq_index
        matrix@53@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)))
      (* M@51@01 N@52@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 37 | !(0 <= i3@82@01 && i3@82@01 < M@51@01 && 0 <= j3@83@01 && j3@83@01 < N@52@01)]
(assert (not
  (and
    (<= 0 i3@82@01)
    (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 i3@82@01)
    (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01))))
  (and
    (<= 0 i3@82@01)
    (< i3@82@01 M@51@01)
    (<= 0 j3@83@01)
    (< j3@83@01 N@52@01)
    (<= 0 M@51@01)
    (<= 0 N@52@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i3@82@01)
      (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01)))))
  (and
    (<= 0 i3@82@01)
    (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i3@82@01 Int) (j3@83@01 Int)) (!
  (and
    (=>
      (<= 0 i3@82@01)
      (and
        (<= 0 i3@82@01)
        (=>
          (< i3@82@01 M@51@01)
          (and (< i3@82@01 M@51@01) (or (<= 0 j3@83@01) (not (<= 0 j3@83@01)))))
        (or (< i3@82@01 M@51@01) (not (< i3@82@01 M@51@01)))))
    (or (<= 0 i3@82@01) (not (<= 0 i3@82@01)))
    (=>
      (and
        (<= 0 i3@82@01)
        (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01))))
      (and
        (<= 0 i3@82@01)
        (< i3@82@01 M@51@01)
        (<= 0 j3@83@01)
        (< j3@83@01 N@52@01)
        (<= 0 M@51@01)
        (<= 0 N@52@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)))
    (or
      (not
        (and
          (<= 0 i3@82@01)
          (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01)))))
      (and
        (<= 0 i3@82@01)
        (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01))))))
  :pattern ((Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@114@12@114@159-aux|)))
(assert (forall ((i3@82@01 Int) (j3@83@01 Int)) (!
  (=>
    (and
      (<= 0 i3@82@01)
      (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01))))
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01))
  :pattern ((Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@114@12@114@159_precondition|)))
(push) ; 3
(assert (not (forall ((i3@82@01 Int) (j3@83@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (<= 0 i3@82@01)
          (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01))))
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01))
      (and
        (<= 0 i3@82@01)
        (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@72@01)) (Seq_index
        matrix@53@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)))
      0))
  :pattern ((Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@114@12@114@159|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i3@82@01 Int) (j3@83@01 Int)) (!
  (=>
    (and
      (<= 0 i3@82@01)
      (and (< i3@82@01 M@51@01) (and (<= 0 j3@83@01) (< j3@83@01 N@52@01))))
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@72@01)) (Seq_index
        matrix@53@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)))
      0))
  :pattern ((Seq_index
    matrix@53@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@51@01 N@52@01 i3@82@01 j3@83@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testZeroMatrix.vpr@114@12@114@159|)))
(pop) ; 2
(pop) ; 1