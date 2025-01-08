(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:27:14
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
(declare-sort Seq<DAG<Int>> 0)
(declare-sort Seq<Int> 0)
(declare-sort AddDomain<Int> 0)
(declare-sort DAG<Int> 0)
(declare-sort DAGUtility<Int> 0)
(declare-sort ToSeqDomain<DAG<Int>~_Int> 0)
(declare-sort IntUtility 0)
(declare-sort ToSeqDomain<Seq<DAG<Int>>~_Int> 0)
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
(declare-fun $SortWrappers.Seq<DAG<Int>>To$Snap (Seq<DAG<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<DAG<Int>> ($Snap) Seq<DAG<Int>>)
(assert (forall ((x Seq<DAG<Int>>)) (!
    (= x ($SortWrappers.$SnapToSeq<DAG<Int>>($SortWrappers.Seq<DAG<Int>>To$Snap x)))
    :pattern (($SortWrappers.Seq<DAG<Int>>To$Snap x))
    :qid |$Snap.$SnapToSeq<DAG<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<DAG<Int>>To$Snap($SortWrappers.$SnapToSeq<DAG<Int>> x)))
    :pattern (($SortWrappers.$SnapToSeq<DAG<Int>> x))
    :qid |$Snap.Seq<DAG<Int>>To$SnapToSeq<DAG<Int>>|
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
(declare-fun $SortWrappers.AddDomain<Int>To$Snap (AddDomain<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToAddDomain<Int> ($Snap) AddDomain<Int>)
(assert (forall ((x AddDomain<Int>)) (!
    (= x ($SortWrappers.$SnapToAddDomain<Int>($SortWrappers.AddDomain<Int>To$Snap x)))
    :pattern (($SortWrappers.AddDomain<Int>To$Snap x))
    :qid |$Snap.$SnapToAddDomain<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.AddDomain<Int>To$Snap($SortWrappers.$SnapToAddDomain<Int> x)))
    :pattern (($SortWrappers.$SnapToAddDomain<Int> x))
    :qid |$Snap.AddDomain<Int>To$SnapToAddDomain<Int>|
    )))
(declare-fun $SortWrappers.DAG<Int>To$Snap (DAG<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToDAG<Int> ($Snap) DAG<Int>)
(assert (forall ((x DAG<Int>)) (!
    (= x ($SortWrappers.$SnapToDAG<Int>($SortWrappers.DAG<Int>To$Snap x)))
    :pattern (($SortWrappers.DAG<Int>To$Snap x))
    :qid |$Snap.$SnapToDAG<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.DAG<Int>To$Snap($SortWrappers.$SnapToDAG<Int> x)))
    :pattern (($SortWrappers.$SnapToDAG<Int> x))
    :qid |$Snap.DAG<Int>To$SnapToDAG<Int>|
    )))
(declare-fun $SortWrappers.DAGUtility<Int>To$Snap (DAGUtility<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToDAGUtility<Int> ($Snap) DAGUtility<Int>)
(assert (forall ((x DAGUtility<Int>)) (!
    (= x ($SortWrappers.$SnapToDAGUtility<Int>($SortWrappers.DAGUtility<Int>To$Snap x)))
    :pattern (($SortWrappers.DAGUtility<Int>To$Snap x))
    :qid |$Snap.$SnapToDAGUtility<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.DAGUtility<Int>To$Snap($SortWrappers.$SnapToDAGUtility<Int> x)))
    :pattern (($SortWrappers.$SnapToDAGUtility<Int> x))
    :qid |$Snap.DAGUtility<Int>To$SnapToDAGUtility<Int>|
    )))
(declare-fun $SortWrappers.ToSeqDomain<DAG<Int>~_Int>To$Snap (ToSeqDomain<DAG<Int>~_Int>) $Snap)
(declare-fun $SortWrappers.$SnapToToSeqDomain<DAG<Int>~_Int> ($Snap) ToSeqDomain<DAG<Int>~_Int>)
(assert (forall ((x ToSeqDomain<DAG<Int>~_Int>)) (!
    (= x ($SortWrappers.$SnapToToSeqDomain<DAG<Int>~_Int>($SortWrappers.ToSeqDomain<DAG<Int>~_Int>To$Snap x)))
    :pattern (($SortWrappers.ToSeqDomain<DAG<Int>~_Int>To$Snap x))
    :qid |$Snap.$SnapToToSeqDomain<DAG<Int>~_Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ToSeqDomain<DAG<Int>~_Int>To$Snap($SortWrappers.$SnapToToSeqDomain<DAG<Int>~_Int> x)))
    :pattern (($SortWrappers.$SnapToToSeqDomain<DAG<Int>~_Int> x))
    :qid |$Snap.ToSeqDomain<DAG<Int>~_Int>To$SnapToToSeqDomain<DAG<Int>~_Int>|
    )))
(declare-fun $SortWrappers.IntUtilityTo$Snap (IntUtility) $Snap)
(declare-fun $SortWrappers.$SnapToIntUtility ($Snap) IntUtility)
(assert (forall ((x IntUtility)) (!
    (= x ($SortWrappers.$SnapToIntUtility($SortWrappers.IntUtilityTo$Snap x)))
    :pattern (($SortWrappers.IntUtilityTo$Snap x))
    :qid |$Snap.$SnapToIntUtilityTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IntUtilityTo$Snap($SortWrappers.$SnapToIntUtility x)))
    :pattern (($SortWrappers.$SnapToIntUtility x))
    :qid |$Snap.IntUtilityTo$SnapToIntUtility|
    )))
(declare-fun $SortWrappers.ToSeqDomain<Seq<DAG<Int>>~_Int>To$Snap (ToSeqDomain<Seq<DAG<Int>>~_Int>) $Snap)
(declare-fun $SortWrappers.$SnapToToSeqDomain<Seq<DAG<Int>>~_Int> ($Snap) ToSeqDomain<Seq<DAG<Int>>~_Int>)
(assert (forall ((x ToSeqDomain<Seq<DAG<Int>>~_Int>)) (!
    (= x ($SortWrappers.$SnapToToSeqDomain<Seq<DAG<Int>>~_Int>($SortWrappers.ToSeqDomain<Seq<DAG<Int>>~_Int>To$Snap x)))
    :pattern (($SortWrappers.ToSeqDomain<Seq<DAG<Int>>~_Int>To$Snap x))
    :qid |$Snap.$SnapToToSeqDomain<Seq<DAG<Int>>~_Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ToSeqDomain<Seq<DAG<Int>>~_Int>To$Snap($SortWrappers.$SnapToToSeqDomain<Seq<DAG<Int>>~_Int> x)))
    :pattern (($SortWrappers.$SnapToToSeqDomain<Seq<DAG<Int>>~_Int> x))
    :qid |$Snap.ToSeqDomain<Seq<DAG<Int>>~_Int>To$SnapToToSeqDomain<Seq<DAG<Int>>~_Int>|
    )))
; ////////// Symbols
(declare-fun Seq_length (Seq<DAG<Int>>) Int)
(declare-const Seq_empty Seq<DAG<Int>>)
(declare-fun Seq_singleton (DAG<Int>) Seq<DAG<Int>>)
(declare-fun Seq_append (Seq<DAG<Int>> Seq<DAG<Int>>) Seq<DAG<Int>>)
(declare-fun Seq_index (Seq<DAG<Int>> Int) DAG<Int>)
(declare-fun Seq_add (Int Int) Int)
(declare-fun Seq_sub (Int Int) Int)
(declare-fun Seq_update (Seq<DAG<Int>> Int DAG<Int>) Seq<DAG<Int>>)
(declare-fun Seq_take (Seq<DAG<Int>> Int) Seq<DAG<Int>>)
(declare-fun Seq_drop (Seq<DAG<Int>> Int) Seq<DAG<Int>>)
(declare-fun Seq_contains (Seq<DAG<Int>> DAG<Int>) Bool)
(declare-fun Seq_contains_trigger (Seq<DAG<Int>> DAG<Int>) Bool)
(declare-fun Seq_skolem (Seq<DAG<Int>> DAG<Int>) Int)
(declare-fun Seq_equal (Seq<DAG<Int>> Seq<DAG<Int>>) Bool)
(declare-fun Seq_skolem_diff (Seq<DAG<Int>> Seq<DAG<Int>>) Int)
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
(declare-fun toSeq<Seq<Int>> (DAG<Int>) Seq<Int>)
(declare-fun add<Int> (Int Int) Int)
(declare-fun toSeq<Seq<Int>> (Seq<DAG<Int>>) Seq<Int>)
(declare-fun Node<DAG<Int>> (Int Seq<DAG<Int>>) DAG<Int>)
(declare-fun get_DAG_value<Int> (DAG<Int>) Int)
(declare-fun get_DAG_successor<Seq<DAG<Int>>> (DAG<Int>) Seq<DAG<Int>>)
(declare-fun DAG_tag<Int> (DAG<Int>) Int)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Seq<DAG<Int>>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<DAG<Int>>)) 0))
(assert (forall ((s Seq<DAG<Int>>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<DAG<Int>>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e DAG<Int>)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<DAG<Int>>) (s1 Seq<DAG<Int>>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<DAG<Int>>)))
      (not (= s1 (as Seq_empty  Seq<DAG<Int>>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<DAG<Int>>) (s1 Seq<DAG<Int>>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<DAG<Int>>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<DAG<Int>>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e DAG<Int>)) (!
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
(assert (forall ((s0 Seq<DAG<Int>>) (s1 Seq<DAG<Int>>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<DAG<Int>>)))
      (and
        (not (= s1 (as Seq_empty  Seq<DAG<Int>>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<DAG<Int>>) (s1 Seq<DAG<Int>>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<DAG<Int>>)))
      (and
        (not (= s1 (as Seq_empty  Seq<DAG<Int>>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<DAG<Int>>) (s1 Seq<DAG<Int>>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<DAG<Int>>)))
      (and
        (not (= s1 (as Seq_empty  Seq<DAG<Int>>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<DAG<Int>>) (i Int) (v DAG<Int>)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<DAG<Int>>) (i Int) (v DAG<Int>) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<DAG<Int>>) (n Int)) (!
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
(assert (forall ((s Seq<DAG<Int>>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<DAG<Int>>) (n Int)) (!
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
(assert (forall ((s Seq<DAG<Int>>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<DAG<Int>>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<DAG<Int>>) (t Seq<DAG<Int>>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<DAG<Int>>) (t Seq<DAG<Int>>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<DAG<Int>>) (t Seq<DAG<Int>>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<DAG<Int>>) (t Seq<DAG<Int>>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<DAG<Int>>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<DAG<Int>>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<DAG<Int>>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<DAG<Int>>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<DAG<Int>>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<DAG<Int>>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<DAG<Int>>) (x DAG<Int>)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<DAG<Int>>) (x DAG<Int>) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<DAG<Int>>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<DAG<Int>>) (s1 Seq<DAG<Int>>)) (!
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
(assert (forall ((a Seq<DAG<Int>>) (b Seq<DAG<Int>>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x DAG<Int>) (y DAG<Int>)) (!
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
(assert (forall ((o1 Int) (o2 Int)) (!
  (= (add<Int> o1 o2) (+ o1 o2))
  :pattern ((add<Int> o1 o2))
  )))
(assert (forall ((value Int) (successor Seq<DAG<Int>>)) (!
  (= value (get_DAG_value<Int> (Node<DAG<Int>> value successor)))
  :pattern ((Node<DAG<Int>> value successor))
  )))
(assert (forall ((value Int) (successor Seq<DAG<Int>>)) (!
  (Seq_equal
    successor
    (get_DAG_successor<Seq<DAG<Int>>> (Node<DAG<Int>> value successor)))
  :pattern ((Node<DAG<Int>> value successor))
  )))
(assert (forall ((value Int) (successor Seq<DAG<Int>>)) (!
  (= (DAG_tag<Int> (Node<DAG<Int>> value successor)) 0)
  :pattern ((Node<DAG<Int>> value successor))
  )))
(assert (forall ((t DAG<Int>)) (!
  (=
    t
    (Node<DAG<Int>> (get_DAG_value<Int> t) (get_DAG_successor<Seq<DAG<Int>>> t)))
  :pattern ((DAG_tag<Int> t))
  :pattern ((get_DAG_value<Int> t))
  :pattern ((get_DAG_successor<Seq<DAG<Int>>> t))
  )))
(assert (forall ((dags Seq<DAG<Int>>)) (!
  (Seq_equal
    (toSeq<Seq<Int>> dags)
    (ite
      (> (Seq_length dags) 0)
      (Seq_append
        (toSeq<Seq<Int>> (Seq_index dags 0))
        (toSeq<Seq<Int>> (Seq_drop dags 1)))
      (as Seq_empty  Seq<Int>)))
  :pattern ((toSeq<Seq<Int>> dags))
  )))
(assert (forall ((dag DAG<Int>)) (!
  (Seq_equal
    (toSeq<Seq<Int>> dag)
    (ite
      (> (Seq_length (get_DAG_successor<Seq<DAG<Int>>> dag)) 0)
      (Seq_append
        (Seq_singleton (get_DAG_value<Int> dag))
        (toSeq<Seq<Int>> (get_DAG_successor<Seq<DAG<Int>>> dag)))
      (Seq_singleton (get_DAG_value<Int> dag))))
  :pattern ((toSeq<Seq<Int>> dag))
  )))
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
; ---------- client ----------
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
; var dag: DAG[Int]
(declare-const dag@0@01 DAG<Int>)
; [exec]
; dag := (Node(1, Seq((Node(2, Seq((Node(3, Seq[DAG[Int]]()): DAG[Int]))): DAG[Int]),
;   (Node(2, Seq((Node(3, Seq[DAG[Int]]()): DAG[Int]))): DAG[Int]), (Node(2, Seq[DAG[Int]]()): DAG[Int]),
;   (Node(2, Seq[DAG[Int]]()): DAG[Int]), (Node(2, Seq[DAG[Int]]()): DAG[Int]))): DAG[Int])
; [eval] (Node(1, Seq((Node(2, Seq((Node(3, Seq[DAG[Int]]()): DAG[Int]))): DAG[Int]), (Node(2, Seq((Node(3, Seq[DAG[Int]]()): DAG[Int]))): DAG[Int]), (Node(2, Seq[DAG[Int]]()): DAG[Int]), (Node(2, Seq[DAG[Int]]()): DAG[Int]), (Node(2, Seq[DAG[Int]]()): DAG[Int]))): DAG[Int])
; [eval] Seq((Node(2, Seq((Node(3, Seq[DAG[Int]]()): DAG[Int]))): DAG[Int]), (Node(2, Seq((Node(3, Seq[DAG[Int]]()): DAG[Int]))): DAG[Int]), (Node(2, Seq[DAG[Int]]()): DAG[Int]), (Node(2, Seq[DAG[Int]]()): DAG[Int]), (Node(2, Seq[DAG[Int]]()): DAG[Int]))
; [eval] (Node(2, Seq((Node(3, Seq[DAG[Int]]()): DAG[Int]))): DAG[Int])
; [eval] Seq((Node(3, Seq[DAG[Int]]()): DAG[Int]))
; [eval] (Node(3, Seq[DAG[Int]]()): DAG[Int])
; [eval] Seq[DAG[Int]]()
(assert (=
  (Seq_length (Seq_singleton (Node<DAG<Int>> 3 (as Seq_empty  Seq<DAG<Int>>))))
  1))
; [eval] (Node(2, Seq((Node(3, Seq[DAG[Int]]()): DAG[Int]))): DAG[Int])
; [eval] Seq((Node(3, Seq[DAG[Int]]()): DAG[Int]))
; [eval] (Node(3, Seq[DAG[Int]]()): DAG[Int])
; [eval] Seq[DAG[Int]]()
; [eval] (Node(2, Seq[DAG[Int]]()): DAG[Int])
; [eval] Seq[DAG[Int]]()
; [eval] (Node(2, Seq[DAG[Int]]()): DAG[Int])
; [eval] Seq[DAG[Int]]()
; [eval] (Node(2, Seq[DAG[Int]]()): DAG[Int])
; [eval] Seq[DAG[Int]]()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_singleton (Node<DAG<Int>> 2 (Seq_singleton (Node<DAG<Int>> 3 (as Seq_empty  Seq<DAG<Int>>)))))
            (Seq_singleton (Node<DAG<Int>> 2 (Seq_singleton (Node<DAG<Int>> 3 (as Seq_empty  Seq<DAG<Int>>))))))
          (Seq_singleton (Node<DAG<Int>> 2 (as Seq_empty  Seq<DAG<Int>>))))
        (Seq_singleton (Node<DAG<Int>> 2 (as Seq_empty  Seq<DAG<Int>>))))
      (Seq_singleton (Node<DAG<Int>> 2 (as Seq_empty  Seq<DAG<Int>>)))))
  5))
(declare-const dag@1@01 DAG<Int>)
(assert (=
  dag@1@01
  (Node<DAG<Int>> 1 (Seq_append
    (Seq_append
      (Seq_append
        (Seq_append
          (Seq_singleton (Node<DAG<Int>> 2 (Seq_singleton (Node<DAG<Int>> 3 (as Seq_empty  Seq<DAG<Int>>)))))
          (Seq_singleton (Node<DAG<Int>> 2 (Seq_singleton (Node<DAG<Int>> 3 (as Seq_empty  Seq<DAG<Int>>))))))
        (Seq_singleton (Node<DAG<Int>> 2 (as Seq_empty  Seq<DAG<Int>>))))
      (Seq_singleton (Node<DAG<Int>> 2 (as Seq_empty  Seq<DAG<Int>>))))
    (Seq_singleton (Node<DAG<Int>> 2 (as Seq_empty  Seq<DAG<Int>>)))))))
; [exec]
; assert (toSeq(dag): Seq[Int]) ==
;   Seq(1) ++ (toSeq((get_DAG_successor(dag): Seq[DAG[Int]])): Seq[Int])
; [eval] (toSeq(dag): Seq[Int]) == Seq(1) ++ (toSeq((get_DAG_successor(dag): Seq[DAG[Int]])): Seq[Int])
; [eval] (toSeq(dag): Seq[Int])
; [eval] Seq(1) ++ (toSeq((get_DAG_successor(dag): Seq[DAG[Int]])): Seq[Int])
; [eval] Seq(1)
(assert (= (Seq_length (Seq_singleton 1)) 1))
; [eval] (toSeq((get_DAG_successor(dag): Seq[DAG[Int]])): Seq[Int])
; [eval] (get_DAG_successor(dag): Seq[DAG[Int]])
(push) ; 3
(assert (not (Seq_equal
  (toSeq<Seq<Int>> dag@1@01)
  (Seq_append
    (Seq_singleton 1)
    (toSeq<Seq<Int>> (get_DAG_successor<Seq<DAG<Int>>> dag@1@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (toSeq<Seq<Int>> dag@1@01)
  (Seq_append
    (Seq_singleton 1)
    (toSeq<Seq<Int>> (get_DAG_successor<Seq<DAG<Int>>> dag@1@01)))))
; [exec]
; assert (toSeq(dag): Seq[Int]) == Seq(1, 2, 3, 2, 3, 2, 2, 2)
; [eval] (toSeq(dag): Seq[Int]) == Seq(1, 2, 3, 2, 3, 2, 2, 2)
; [eval] (toSeq(dag): Seq[Int])
; [eval] Seq(1, 2, 3, 2, 3, 2, 2, 2)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append (Seq_singleton 1) (Seq_singleton 2))
                (Seq_singleton 3))
              (Seq_singleton 2))
            (Seq_singleton 3))
          (Seq_singleton 2))
        (Seq_singleton 2))
      (Seq_singleton 2)))
  8))
(push) ; 3
(assert (not (Seq_equal
  (toSeq<Seq<Int>> dag@1@01)
  (Seq_append
    (Seq_append
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append (Seq_singleton 1) (Seq_singleton 2))
              (Seq_singleton 3))
            (Seq_singleton 2))
          (Seq_singleton 3))
        (Seq_singleton 2))
      (Seq_singleton 2))
    (Seq_singleton 2)))))
(check-sat)
; unsat
(pop) ; 3
; 0.08s
; (get-info :all-statistics)
(assert (Seq_equal
  (toSeq<Seq<Int>> dag@1@01)
  (Seq_append
    (Seq_append
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append (Seq_singleton 1) (Seq_singleton 2))
              (Seq_singleton 3))
            (Seq_singleton 2))
          (Seq_singleton 3))
        (Seq_singleton 2))
      (Seq_singleton 2))
    (Seq_singleton 2))))
(pop) ; 2
(pop) ; 1
