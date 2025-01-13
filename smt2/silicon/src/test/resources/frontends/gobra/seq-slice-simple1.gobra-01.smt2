(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:35:41
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
; ////////// Symbols
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
; Declaring symbols related to program functions (from program analysis)
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
; ---------- example1_pkg_F ----------
(declare-const xs_pkg_V0@0@01 Seq<Int>)
(declare-const xs_pkg_V0@1@01 Seq<Int>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var xs_pkg_V0_CN0: Seq[Int]
(declare-const xs_pkg_V0_CN0@3@01 Seq<Int>)
; [exec]
; var ys_pkg_V1: Seq[Int]
(declare-const ys_pkg_V1@4@01 Seq<Int>)
; [exec]
; xs_pkg_V0_CN0 := Seq[Int]()
; [eval] Seq[Int]()
; [exec]
; xs_pkg_V0_CN0 := xs_pkg_V0
; [exec]
; ys_pkg_V1 := Seq[Int]()
; [eval] Seq[Int]()
; [exec]
; ys_pkg_V1 := xs_pkg_V0_CN0[1..][..14 - 1]
; [eval] xs_pkg_V0_CN0[1..][..14 - 1]
; [eval] xs_pkg_V0_CN0[1..]
; [eval] 14 - 1
(declare-const ys_pkg_V1@5@01 Seq<Int>)
(assert (= ys_pkg_V1@5@01 (Seq_take (Seq_drop xs_pkg_V0@1@01 1) 13)))
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- example2_pkg_F ----------
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
; assert true && [0..10)[5..] == [5..10)
; [eval] [0..10)[5..] == [5..10)
; [eval] [0..10)[5..]
; [eval] [0..10)
; [eval] [5..10)
(push) ; 3
(assert (not (Seq_equal (Seq_drop (Seq_range 0 10) 5) (Seq_range 5 10))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal (Seq_drop (Seq_range 0 10) 5) (Seq_range 5 10)))
; [exec]
; assert true && [0..10)[..5] == [0..5)
; [eval] [0..10)[..5] == [0..5)
; [eval] [0..10)[..5]
; [eval] [0..10)
; [eval] [0..5)
(push) ; 3
(assert (not (Seq_equal (Seq_take (Seq_range 0 10) 5) (Seq_range 0 5))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal (Seq_take (Seq_range 0 10) 5) (Seq_range 0 5)))
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- example3_pkg_F ----------
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
; assert true && [0..10)[1..][2..][3..] == [6..10)
; [eval] [0..10)[1..][2..][3..] == [6..10)
; [eval] [0..10)[1..][2..][3..]
; [eval] [0..10)[1..][2..]
; [eval] [0..10)[1..]
; [eval] [0..10)
; [eval] [6..10)
(push) ; 3
(assert (not (Seq_equal
  (Seq_drop (Seq_drop (Seq_drop (Seq_range 0 10) 1) 2) 3)
  (Seq_range 6 10))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (Seq_drop (Seq_drop (Seq_drop (Seq_range 0 10) 1) 2) 3)
  (Seq_range 6 10)))
; [exec]
; assert true && [0..10)[..5][..3] == [0..3)
; [eval] [0..10)[..5][..3] == [0..3)
; [eval] [0..10)[..5][..3]
; [eval] [0..10)[..5]
; [eval] [0..10)
; [eval] [0..3)
(push) ; 3
(assert (not (Seq_equal (Seq_take (Seq_take (Seq_range 0 10) 5) 3) (Seq_range 0 3))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal (Seq_take (Seq_take (Seq_range 0 10) 5) 3) (Seq_range 0 3)))
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- example4_pkg_F ----------
(declare-const xs_pkg_V2@6@01 Seq<Int>)
(declare-const xs_pkg_V2@7@01 Seq<Int>)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var xs_pkg_V2_CN1: Seq[Int]
(declare-const xs_pkg_V2_CN1@9@01 Seq<Int>)
; [exec]
; xs_pkg_V2_CN1 := Seq[Int]()
; [eval] Seq[Int]()
; [exec]
; xs_pkg_V2_CN1 := xs_pkg_V2
; [exec]
; assert true && xs_pkg_V2_CN1[0..] == xs_pkg_V2_CN1
; [eval] xs_pkg_V2_CN1[0..] == xs_pkg_V2_CN1
; [eval] xs_pkg_V2_CN1[0..]
(push) ; 3
(assert (not (Seq_equal (Seq_drop xs_pkg_V2@7@01 0) xs_pkg_V2@7@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal (Seq_drop xs_pkg_V2@7@01 0) xs_pkg_V2@7@01))
; [exec]
; assert true && xs_pkg_V2_CN1[..|xs_pkg_V2_CN1|] == xs_pkg_V2_CN1
; [eval] xs_pkg_V2_CN1[..|xs_pkg_V2_CN1|] == xs_pkg_V2_CN1
; [eval] xs_pkg_V2_CN1[..|xs_pkg_V2_CN1|]
; [eval] |xs_pkg_V2_CN1|
(push) ; 3
(assert (not (Seq_equal (Seq_take xs_pkg_V2@7@01 (Seq_length xs_pkg_V2@7@01)) xs_pkg_V2@7@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal (Seq_take xs_pkg_V2@7@01 (Seq_length xs_pkg_V2@7@01)) xs_pkg_V2@7@01))
; [exec]
; assert true && xs_pkg_V2_CN1 == xs_pkg_V2_CN1
; [eval] xs_pkg_V2_CN1 == xs_pkg_V2_CN1
; [exec]
; assert true && xs_pkg_V2_CN1[0..][..|xs_pkg_V2_CN1| - 0] == xs_pkg_V2_CN1
; [eval] xs_pkg_V2_CN1[0..][..|xs_pkg_V2_CN1| - 0] == xs_pkg_V2_CN1
; [eval] xs_pkg_V2_CN1[0..][..|xs_pkg_V2_CN1| - 0]
; [eval] xs_pkg_V2_CN1[0..]
; [eval] |xs_pkg_V2_CN1| - 0
; [eval] |xs_pkg_V2_CN1|
(push) ; 3
(assert (not (Seq_equal
  (Seq_take (Seq_drop xs_pkg_V2@7@01 0) (Seq_length xs_pkg_V2@7@01))
  xs_pkg_V2@7@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (Seq_take (Seq_drop xs_pkg_V2@7@01 0) (Seq_length xs_pkg_V2@7@01))
  xs_pkg_V2@7@01))
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- example5_pkg_F ----------
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
; assert true && Seq(1, 2, 4, 8)[2..] == Seq(4, 8)
; [eval] Seq(1, 2, 4, 8)[2..] == Seq(4, 8)
; [eval] Seq(1, 2, 4, 8)[2..]
; [eval] Seq(1, 2, 4, 8)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_append (Seq_singleton 1) (Seq_singleton 2))
        (Seq_singleton 4))
      (Seq_singleton 8)))
  4))
; [eval] Seq(4, 8)
(assert (= (Seq_length (Seq_append (Seq_singleton 4) (Seq_singleton 8))) 2))
(push) ; 3
(assert (not (Seq_equal
  (Seq_drop
    (Seq_append
      (Seq_append
        (Seq_append (Seq_singleton 1) (Seq_singleton 2))
        (Seq_singleton 4))
      (Seq_singleton 8))
    2)
  (Seq_append (Seq_singleton 4) (Seq_singleton 8)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (Seq_drop
    (Seq_append
      (Seq_append
        (Seq_append (Seq_singleton 1) (Seq_singleton 2))
        (Seq_singleton 4))
      (Seq_singleton 8))
    2)
  (Seq_append (Seq_singleton 4) (Seq_singleton 8))))
; [exec]
; assert true && Seq(1, 2, 4, 8)[..2] == Seq(1, 2)
; [eval] Seq(1, 2, 4, 8)[..2] == Seq(1, 2)
; [eval] Seq(1, 2, 4, 8)[..2]
; [eval] Seq(1, 2, 4, 8)
; [eval] Seq(1, 2)
(assert (= (Seq_length (Seq_append (Seq_singleton 1) (Seq_singleton 2))) 2))
(push) ; 3
(assert (not (Seq_equal
  (Seq_take
    (Seq_append
      (Seq_append
        (Seq_append (Seq_singleton 1) (Seq_singleton 2))
        (Seq_singleton 4))
      (Seq_singleton 8))
    2)
  (Seq_append (Seq_singleton 1) (Seq_singleton 2)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (Seq_take
    (Seq_append
      (Seq_append
        (Seq_append (Seq_singleton 1) (Seq_singleton 2))
        (Seq_singleton 4))
      (Seq_singleton 8))
    2)
  (Seq_append (Seq_singleton 1) (Seq_singleton 2))))
; [exec]
; assert true && Seq(1, 2, 4, 8)[1..][..3 - 1] == Seq(2, 4)
; [eval] Seq(1, 2, 4, 8)[1..][..3 - 1] == Seq(2, 4)
; [eval] Seq(1, 2, 4, 8)[1..][..3 - 1]
; [eval] Seq(1, 2, 4, 8)[1..]
; [eval] Seq(1, 2, 4, 8)
; [eval] 3 - 1
; [eval] Seq(2, 4)
(assert (= (Seq_length (Seq_append (Seq_singleton 2) (Seq_singleton 4))) 2))
(push) ; 3
(assert (not (Seq_equal
  (Seq_take
    (Seq_drop
      (Seq_append
        (Seq_append
          (Seq_append (Seq_singleton 1) (Seq_singleton 2))
          (Seq_singleton 4))
        (Seq_singleton 8))
      1)
    2)
  (Seq_append (Seq_singleton 2) (Seq_singleton 4)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (Seq_take
    (Seq_drop
      (Seq_append
        (Seq_append
          (Seq_append (Seq_singleton 1) (Seq_singleton 2))
          (Seq_singleton 4))
        (Seq_singleton 8))
      1)
    2)
  (Seq_append (Seq_singleton 2) (Seq_singleton 4))))
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- example6_pkg_F ----------
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
; assert true && [0..9)[0 - 10..] == [0..9)
; [eval] [0..9)[0 - 10..] == [0..9)
; [eval] [0..9)[0 - 10..]
; [eval] [0..9)
; [eval] 0 - 10
; [eval] [0..9)
(push) ; 3
(assert (not (Seq_equal (Seq_drop (Seq_range 0 9) (- 0 10)) (Seq_range 0 9))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal (Seq_drop (Seq_range 0 9) (- 0 10)) (Seq_range 0 9)))
; [exec]
; assert true && [0..9)[..1000] == [0..9)
; [eval] [0..9)[..1000] == [0..9)
; [eval] [0..9)[..1000]
; [eval] [0..9)
; [eval] [0..9)
(push) ; 3
(assert (not (Seq_equal (Seq_take (Seq_range 0 9) 1000) (Seq_range 0 9))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal (Seq_take (Seq_range 0 9) 1000) (Seq_range 0 9)))
; [exec]
; assert true && [0..9)[0 - 100..][..100 - (0 - 100)] == [0..9)
; [eval] [0..9)[0 - 100..][..100 - (0 - 100)] == [0..9)
; [eval] [0..9)[0 - 100..][..100 - (0 - 100)]
; [eval] [0..9)[0 - 100..]
; [eval] [0..9)
; [eval] 0 - 100
; [eval] 100 - (0 - 100)
; [eval] 0 - 100
; [eval] [0..9)
(push) ; 3
(assert (not (Seq_equal (Seq_take (Seq_drop (Seq_range 0 9) (- 0 100)) 200) (Seq_range 0 9))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal (Seq_take (Seq_drop (Seq_range 0 9) (- 0 100)) 200) (Seq_range 0 9)))
; [exec]
; assert true && [0..9)[100..][..0 - 100 - 100] == Seq[Int]()
; [eval] [0..9)[100..][..0 - 100 - 100] == Seq[Int]()
; [eval] [0..9)[100..][..0 - 100 - 100]
; [eval] [0..9)[100..]
; [eval] [0..9)
; [eval] 0 - 100 - 100
; [eval] 0 - 100
; [eval] Seq[Int]()
(push) ; 3
(assert (not (Seq_equal
  (Seq_take (Seq_drop (Seq_range 0 9) 100) (- 0 200))
  (as Seq_empty  Seq<Int>))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (Seq_take (Seq_drop (Seq_range 0 9) 100) (- 0 200))
  (as Seq_empty  Seq<Int>)))
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- example7_pkg_F ----------
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
; assert true && |[0..9)[5..]| == 4
; [eval] |[0..9)[5..]| == 4
; [eval] |[0..9)[5..]|
; [eval] [0..9)[5..]
; [eval] [0..9)
(push) ; 3
(assert (not (= (Seq_length (Seq_drop (Seq_range 0 9) 5)) 4)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length (Seq_drop (Seq_range 0 9) 5)) 4))
; [exec]
; assert true && |[0..9)[..5]| == 5
; [eval] |[0..9)[..5]| == 5
; [eval] |[0..9)[..5]|
; [eval] [0..9)[..5]
; [eval] [0..9)
(push) ; 3
(assert (not (= (Seq_length (Seq_take (Seq_range 0 9) 5)) 5)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length (Seq_take (Seq_range 0 9) 5)) 5))
; [exec]
; assert true && |[0..9)[2..][..8 - 2]| == 6
; [eval] |[0..9)[2..][..8 - 2]| == 6
; [eval] |[0..9)[2..][..8 - 2]|
; [eval] [0..9)[2..][..8 - 2]
; [eval] [0..9)[2..]
; [eval] [0..9)
; [eval] 8 - 2
(push) ; 3
(assert (not (= (Seq_length (Seq_take (Seq_drop (Seq_range 0 9) 2) 6)) 6)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length (Seq_take (Seq_drop (Seq_range 0 9) 2) 6)) 6))
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- example8_pkg_F ----------
(declare-const xs_pkg_V3@10@01 Seq<Int>)
(declare-const x_pkg_V3@11@01 Int)
(declare-const xs_pkg_V3@12@01 Seq<Int>)
(declare-const x_pkg_V3@13@01 Int)
(push) ; 1
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(assert (= ($Snap.first $t@14@01) $Snap.unit))
(assert (=
  ($Snap.second $t@14@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01)))))
(assert (= ($Snap.first ($Snap.second $t@14@01)) $Snap.unit))
(assert (= ($Snap.second ($Snap.second $t@14@01)) $Snap.unit))
; [eval] (x_pkg_V3 in xs_pkg_V3[4..])
; [eval] xs_pkg_V3[4..]
(assert (Seq_contains (Seq_drop xs_pkg_V3@12@01 4) x_pkg_V3@13@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var x_pkg_V3_CN3: Int
(declare-const x_pkg_V3_CN3@15@01 Int)
; [exec]
; var xs_pkg_V3_CN2: Seq[Int]
(declare-const xs_pkg_V3_CN2@16@01 Seq<Int>)
; [exec]
; xs_pkg_V3_CN2 := Seq[Int]()
; [eval] Seq[Int]()
; [exec]
; x_pkg_V3_CN3 := 0
; [exec]
; xs_pkg_V3_CN2 := xs_pkg_V3
; [exec]
; x_pkg_V3_CN3 := x_pkg_V3
; [exec]
; assert (x_pkg_V3_CN3 in xs_pkg_V3_CN2)
; [eval] (x_pkg_V3_CN3 in xs_pkg_V3_CN2)
(push) ; 3
(assert (not (Seq_contains xs_pkg_V3@12@01 x_pkg_V3@13@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_contains xs_pkg_V3@12@01 x_pkg_V3@13@01))
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- example9_pkg_F ----------
(declare-const xs_pkg_V4@17@01 Seq<Int>)
(declare-const x_pkg_V4@18@01 Int)
(declare-const xs_pkg_V4@19@01 Seq<Int>)
(declare-const x_pkg_V4@20@01 Int)
(push) ; 1
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(assert (= ($Snap.first $t@21@01) $Snap.unit))
(assert (=
  ($Snap.second $t@21@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@21@01))
    ($Snap.second ($Snap.second $t@21@01)))))
(assert (= ($Snap.first ($Snap.second $t@21@01)) $Snap.unit))
(assert (= ($Snap.second ($Snap.second $t@21@01)) $Snap.unit))
; [eval] (x_pkg_V4 in xs_pkg_V4[..7])
; [eval] xs_pkg_V4[..7]
(assert (Seq_contains (Seq_take xs_pkg_V4@19@01 7) x_pkg_V4@20@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var x_pkg_V4_CN5: Int
(declare-const x_pkg_V4_CN5@22@01 Int)
; [exec]
; var xs_pkg_V4_CN4: Seq[Int]
(declare-const xs_pkg_V4_CN4@23@01 Seq<Int>)
; [exec]
; xs_pkg_V4_CN4 := Seq[Int]()
; [eval] Seq[Int]()
; [exec]
; x_pkg_V4_CN5 := 0
; [exec]
; xs_pkg_V4_CN4 := xs_pkg_V4
; [exec]
; x_pkg_V4_CN5 := x_pkg_V4
; [exec]
; assert (x_pkg_V4_CN5 in xs_pkg_V4_CN4)
; [eval] (x_pkg_V4_CN5 in xs_pkg_V4_CN4)
(push) ; 3
(assert (not (Seq_contains xs_pkg_V4@19@01 x_pkg_V4@20@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_contains xs_pkg_V4@19@01 x_pkg_V4@20@01))
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- example10_pkg_F ----------
(declare-const xs_pkg_V5@24@01 Seq<Int>)
(declare-const x_pkg_V5@25@01 Int)
(declare-const xs_pkg_V5@26@01 Seq<Int>)
(declare-const x_pkg_V5@27@01 Int)
(push) ; 1
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (= ($Snap.first $t@28@01) $Snap.unit))
(assert (=
  ($Snap.second $t@28@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@28@01))
    ($Snap.second ($Snap.second $t@28@01)))))
(assert (= ($Snap.first ($Snap.second $t@28@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@28@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@28@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@28@01))) $Snap.unit))
; [eval] !((x_pkg_V5 in xs_pkg_V5[5..]))
; [eval] (x_pkg_V5 in xs_pkg_V5[5..])
; [eval] xs_pkg_V5[5..]
(assert (not (Seq_contains (Seq_drop xs_pkg_V5@26@01 5) x_pkg_V5@27@01)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@28@01))) $Snap.unit))
; [eval] !((x_pkg_V5 in xs_pkg_V5[..5]))
; [eval] (x_pkg_V5 in xs_pkg_V5[..5])
; [eval] xs_pkg_V5[..5]
(assert (not (Seq_contains (Seq_take xs_pkg_V5@26@01 5) x_pkg_V5@27@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var x_pkg_V5_CN7: Int
(declare-const x_pkg_V5_CN7@29@01 Int)
; [exec]
; var xs_pkg_V5_CN6: Seq[Int]
(declare-const xs_pkg_V5_CN6@30@01 Seq<Int>)
; [exec]
; xs_pkg_V5_CN6 := Seq[Int]()
; [eval] Seq[Int]()
; [exec]
; x_pkg_V5_CN7 := 0
; [exec]
; xs_pkg_V5_CN6 := xs_pkg_V5
; [exec]
; x_pkg_V5_CN7 := x_pkg_V5
; [exec]
; assert !((x_pkg_V5_CN7 in xs_pkg_V5_CN6))
; [eval] !((x_pkg_V5_CN7 in xs_pkg_V5_CN6))
; [eval] (x_pkg_V5_CN7 in xs_pkg_V5_CN6)
(push) ; 3
(assert (not (not (Seq_contains xs_pkg_V5@26@01 x_pkg_V5@27@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (Seq_contains xs_pkg_V5@26@01 x_pkg_V5@27@01)))
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- example11_pkg_F ----------
(declare-const xs_pkg_V6@31@01 Seq<Int>)
(declare-const n_pkg_V6@32@01 Int)
(declare-const xs_pkg_V6@33@01 Seq<Int>)
(declare-const n_pkg_V6@34@01 Int)
(push) ; 1
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
(assert (= ($Snap.first $t@35@01) $Snap.unit))
(assert (= ($Snap.second $t@35@01) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@36@01 $Snap)
(assert (= $t@36@01 ($Snap.combine ($Snap.first $t@36@01) ($Snap.second $t@36@01))))
(assert (= ($Snap.first $t@36@01) $Snap.unit))
(assert (= ($Snap.second $t@36@01) $Snap.unit))
; [eval] xs_pkg_V6 == xs_pkg_V6[..n_pkg_V6] ++ xs_pkg_V6[n_pkg_V6..]
; [eval] xs_pkg_V6[..n_pkg_V6] ++ xs_pkg_V6[n_pkg_V6..]
; [eval] xs_pkg_V6[..n_pkg_V6]
; [eval] xs_pkg_V6[n_pkg_V6..]
(assert (Seq_equal
  xs_pkg_V6@33@01
  (Seq_append
    (Seq_take xs_pkg_V6@33@01 n_pkg_V6@34@01)
    (Seq_drop xs_pkg_V6@33@01 n_pkg_V6@34@01))))
(pop) ; 2
(push) ; 2
; [exec]
; var n_pkg_V6_CN9: Int
(declare-const n_pkg_V6_CN9@37@01 Int)
; [exec]
; var xs_pkg_V6_CN8: Seq[Int]
(declare-const xs_pkg_V6_CN8@38@01 Seq<Int>)
; [exec]
; xs_pkg_V6_CN8 := Seq[Int]()
; [eval] Seq[Int]()
; [exec]
; n_pkg_V6_CN9 := 0
; [exec]
; xs_pkg_V6_CN8 := xs_pkg_V6
; [exec]
; n_pkg_V6_CN9 := n_pkg_V6
; [exec]
; label returnLabel
; [eval] xs_pkg_V6 == xs_pkg_V6[..n_pkg_V6] ++ xs_pkg_V6[n_pkg_V6..]
; [eval] xs_pkg_V6[..n_pkg_V6] ++ xs_pkg_V6[n_pkg_V6..]
; [eval] xs_pkg_V6[..n_pkg_V6]
; [eval] xs_pkg_V6[n_pkg_V6..]
(push) ; 3
(assert (not (Seq_equal
  xs_pkg_V6@33@01
  (Seq_append
    (Seq_take xs_pkg_V6@33@01 n_pkg_V6@34@01)
    (Seq_drop xs_pkg_V6@33@01 n_pkg_V6@34@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  xs_pkg_V6@33@01
  (Seq_append
    (Seq_take xs_pkg_V6@33@01 n_pkg_V6@34@01)
    (Seq_drop xs_pkg_V6@33@01 n_pkg_V6@34@01))))
(pop) ; 2
(pop) ; 1
