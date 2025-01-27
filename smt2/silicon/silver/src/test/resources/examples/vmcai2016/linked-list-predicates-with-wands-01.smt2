(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 23:09:26
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
(declare-sort $MWSF 0)
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
(declare-fun $SortWrappers.$MWSFTo$Snap ($MWSF) $Snap)
(declare-fun $SortWrappers.$SnapTo$MWSF ($Snap) $MWSF)
(assert (forall ((x $MWSF)) (!
    (= x ($SortWrappers.$SnapTo$MWSF($SortWrappers.$MWSFTo$Snap x)))
    :pattern (($SortWrappers.$MWSFTo$Snap x))
    :qid |$Snap.$SnapTo$MWSFTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$MWSFTo$Snap($SortWrappers.$SnapTo$MWSF x)))
    :pattern (($SortWrappers.$SnapTo$MWSF x))
    :qid |$Snap.$MWSFTo$SnapTo$MWSF|
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
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
(declare-fun contentNodes ($Snap $Ref $Ref) Seq<Int>)
(declare-fun contentNodes%limited ($Snap $Ref $Ref) Seq<Int>)
(declare-fun contentNodes%stateless ($Ref $Ref) Bool)
(declare-fun contentNodes%precondition ($Snap $Ref $Ref) Bool)
(declare-fun lengthNodes ($Snap $Ref $Ref) Int)
(declare-fun lengthNodes%limited ($Snap $Ref $Ref) Int)
(declare-fun lengthNodes%stateless ($Ref $Ref) Bool)
(declare-fun lengthNodes%precondition ($Snap $Ref $Ref) Bool)
(declare-fun content ($Snap $Ref) Seq<Int>)
(declare-fun content%limited ($Snap $Ref) Seq<Int>)
(declare-fun content%stateless ($Ref) Bool)
(declare-fun content%precondition ($Snap $Ref) Bool)
(declare-fun length ($Snap $Ref) Int)
(declare-fun length%limited ($Snap $Ref) Int)
(declare-fun length%stateless ($Ref) Bool)
(declare-fun length%precondition ($Snap $Ref) Bool)
(declare-fun peek ($Snap $Ref) Int)
(declare-fun peek%limited ($Snap $Ref) Int)
(declare-fun peek%stateless ($Ref) Bool)
(declare-fun peek%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun lseg%trigger ($Snap $Ref $Ref) Bool)
(declare-fun List%trigger ($Snap $Ref) Bool)
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
(declare-fun joined_unfolding@14@00 ($Snap $Ref $Ref) Bool)
(declare-fun joined_unfolding@18@00 ($Snap $Ref $Ref) Bool)
(declare-fun joined_unfolding@20@00 ($Snap $Ref $Ref) Bool)
(declare-fun joined_unfolding@25@00 ($Snap $Ref $Ref) Bool)
(declare-fun joined_unfolding@26@00 ($Snap $Ref $Ref) Int)
(declare-fun joined_unfolding@35@00 ($Snap $Ref) Bool)
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (=
    (contentNodes%limited s@$ this@0@00 end@1@00)
    (contentNodes s@$ this@0@00 end@1@00))
  :pattern ((contentNodes s@$ this@0@00 end@1@00))
  :qid |quant-u-14451|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (contentNodes%stateless this@0@00 end@1@00)
  :pattern ((contentNodes%limited s@$ this@0@00 end@1@00))
  :qid |quant-u-14452|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (let ((result@2@00 (contentNodes%limited s@$ this@0@00 end@1@00))) (=>
    (contentNodes%precondition s@$ this@0@00 end@1@00)
    (and
      (=>
        (= this@0@00 end@1@00)
        (Seq_equal result@2@00 (as Seq_empty  Seq<Int>)))
      (=>
        (not (= this@0@00 end@1@00))
        (and
          (> (Seq_length result@2@00) 0)
          (=
            (Seq_index result@2@00 0)
            ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
      (forall ((i Int) (j Int)) (!
        (=>
          (and (<= 0 i) (and (< i j) (< j (Seq_length result@2@00))))
          (<= (Seq_index result@2@00 i) (Seq_index result@2@00 j)))
        :pattern ((Seq_index result@2@00 i) (Seq_index result@2@00 j))
        )))))
  :pattern ((contentNodes%limited s@$ this@0@00 end@1@00))
  :qid |quant-u-14461|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (let ((result@2@00 (contentNodes%limited s@$ this@0@00 end@1@00))) true)
  :pattern ((contentNodes%limited s@$ this@0@00 end@1@00))
  :qid |quant-u-14462|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (let ((result@2@00 (contentNodes%limited s@$ this@0@00 end@1@00))) true)
  :pattern ((contentNodes%limited s@$ this@0@00 end@1@00))
  :qid |quant-u-14463|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (let ((result@2@00 (contentNodes%limited s@$ this@0@00 end@1@00))) true)
  :pattern ((contentNodes%limited s@$ this@0@00 end@1@00))
  :qid |quant-u-14464|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (=>
    (contentNodes%precondition s@$ this@0@00 end@1@00)
    (=
      (contentNodes s@$ this@0@00 end@1@00)
      (ite
        (= this@0@00 end@1@00)
        (as Seq_empty  Seq<Int>)
        (Seq_append
          (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first s@$)))
          (contentNodes%limited ($Snap.first ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)))))
  :pattern ((contentNodes s@$ this@0@00 end@1@00))
  :pattern ((contentNodes%stateless this@0@00 end@1@00) (lseg%trigger s@$ this@0@00 end@1@00))
  :qid |quant-u-14465|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (=>
    (contentNodes%precondition s@$ this@0@00 end@1@00)
    (ite
      (= this@0@00 end@1@00)
      true
      (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)))
  :pattern ((contentNodes s@$ this@0@00 end@1@00))
  :qid |quant-u-14466|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (end@4@00 $Ref)) (!
  (=
    (lengthNodes%limited s@$ this@3@00 end@4@00)
    (lengthNodes s@$ this@3@00 end@4@00))
  :pattern ((lengthNodes s@$ this@3@00 end@4@00))
  :qid |quant-u-14453|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (end@4@00 $Ref)) (!
  (lengthNodes%stateless this@3@00 end@4@00)
  :pattern ((lengthNodes%limited s@$ this@3@00 end@4@00))
  :qid |quant-u-14454|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (end@4@00 $Ref)) (!
  (let ((result@5@00 (lengthNodes%limited s@$ this@3@00 end@4@00))) (=>
    (lengthNodes%precondition s@$ this@3@00 end@4@00)
    (= result@5@00 (Seq_length (contentNodes s@$ this@3@00 end@4@00)))))
  :pattern ((lengthNodes%limited s@$ this@3@00 end@4@00))
  :qid |quant-u-14467|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (end@4@00 $Ref)) (!
  (let ((result@5@00 (lengthNodes%limited s@$ this@3@00 end@4@00))) (=>
    (lengthNodes%precondition s@$ this@3@00 end@4@00)
    (contentNodes%precondition s@$ this@3@00 end@4@00)))
  :pattern ((lengthNodes%limited s@$ this@3@00 end@4@00))
  :qid |quant-u-14468|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (end@4@00 $Ref)) (!
  (=>
    (lengthNodes%precondition s@$ this@3@00 end@4@00)
    (=
      (lengthNodes s@$ this@3@00 end@4@00)
      (ite
        (= this@3@00 end@4@00)
        0
        (+
          1
          (lengthNodes%limited ($Snap.first ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@4@00)))))
  :pattern ((lengthNodes s@$ this@3@00 end@4@00))
  :pattern ((lengthNodes%stateless this@3@00 end@4@00) (lseg%trigger s@$ this@3@00 end@4@00))
  :qid |quant-u-14469|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (end@4@00 $Ref)) (!
  (=>
    (lengthNodes%precondition s@$ this@3@00 end@4@00)
    (ite
      (= this@3@00 end@4@00)
      true
      (lengthNodes%precondition ($Snap.first ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@4@00)))
  :pattern ((lengthNodes s@$ this@3@00 end@4@00))
  :qid |quant-u-14470|)))
(assert (forall ((s@$ $Snap) (this@6@00 $Ref)) (!
  (= (content%limited s@$ this@6@00) (content s@$ this@6@00))
  :pattern ((content s@$ this@6@00))
  :qid |quant-u-14455|)))
(assert (forall ((s@$ $Snap) (this@6@00 $Ref)) (!
  (content%stateless this@6@00)
  :pattern ((content%limited s@$ this@6@00))
  :qid |quant-u-14456|)))
(assert (forall ((s@$ $Snap) (this@6@00 $Ref)) (!
  (let ((result@7@00 (content%limited s@$ this@6@00))) (=>
    (content%precondition s@$ this@6@00)
    (forall ((i Int) (j Int)) (!
      (=>
        (and (<= 0 i) (and (< i j) (< j (Seq_length result@7@00))))
        (<= (Seq_index result@7@00 i) (Seq_index result@7@00 j)))
      :pattern ((Seq_index result@7@00 i) (Seq_index result@7@00 j))
      ))))
  :pattern ((content%limited s@$ this@6@00))
  :qid |quant-u-14471|)))
(assert (forall ((s@$ $Snap) (this@6@00 $Ref)) (!
  (let ((result@7@00 (content%limited s@$ this@6@00))) true)
  :pattern ((content%limited s@$ this@6@00))
  :qid |quant-u-14472|)))
(assert (forall ((s@$ $Snap) (this@6@00 $Ref)) (!
  (=>
    (content%precondition s@$ this@6@00)
    (=
      (content s@$ this@6@00)
      (contentNodes ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)))
  :pattern ((content s@$ this@6@00))
  :pattern ((content%stateless this@6@00) (List%trigger s@$ this@6@00))
  :qid |quant-u-14473|)))
(assert (forall ((s@$ $Snap) (this@6@00 $Ref)) (!
  (=>
    (content%precondition s@$ this@6@00)
    (contentNodes%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
  :pattern ((content s@$ this@6@00))
  :qid |quant-u-14474|)))
(assert (forall ((s@$ $Snap) (this@8@00 $Ref)) (!
  (= (length%limited s@$ this@8@00) (length s@$ this@8@00))
  :pattern ((length s@$ this@8@00))
  :qid |quant-u-14457|)))
(assert (forall ((s@$ $Snap) (this@8@00 $Ref)) (!
  (length%stateless this@8@00)
  :pattern ((length%limited s@$ this@8@00))
  :qid |quant-u-14458|)))
(assert (forall ((s@$ $Snap) (this@8@00 $Ref)) (!
  (let ((result@9@00 (length%limited s@$ this@8@00))) (=>
    (length%precondition s@$ this@8@00)
    (= result@9@00 (Seq_length (content s@$ this@8@00)))))
  :pattern ((length%limited s@$ this@8@00))
  :qid |quant-u-14475|)))
(assert (forall ((s@$ $Snap) (this@8@00 $Ref)) (!
  (let ((result@9@00 (length%limited s@$ this@8@00))) (=>
    (length%precondition s@$ this@8@00)
    (content%precondition s@$ this@8@00)))
  :pattern ((length%limited s@$ this@8@00))
  :qid |quant-u-14476|)))
(assert (forall ((s@$ $Snap) (this@8@00 $Ref)) (!
  (=>
    (length%precondition s@$ this@8@00)
    (=
      (length s@$ this@8@00)
      (lengthNodes ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)))
  :pattern ((length s@$ this@8@00))
  :pattern ((length%stateless this@8@00) (List%trigger s@$ this@8@00))
  :qid |quant-u-14477|)))
(assert (forall ((s@$ $Snap) (this@8@00 $Ref)) (!
  (=>
    (length%precondition s@$ this@8@00)
    (lengthNodes%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
  :pattern ((length s@$ this@8@00))
  :qid |quant-u-14478|)))
(assert (forall ((s@$ $Snap) (this@10@00 $Ref)) (!
  (= (peek%limited s@$ this@10@00) (peek s@$ this@10@00))
  :pattern ((peek s@$ this@10@00))
  :qid |quant-u-14459|)))
(assert (forall ((s@$ $Snap) (this@10@00 $Ref)) (!
  (peek%stateless this@10@00)
  :pattern ((peek%limited s@$ this@10@00))
  :qid |quant-u-14460|)))
(assert (forall ((s@$ $Snap) (this@10@00 $Ref)) (!
  (let ((result@11@00 (peek%limited s@$ this@10@00))) (=>
    (peek%precondition s@$ this@10@00)
    (= result@11@00 (Seq_index (content ($Snap.first s@$) this@10@00) 0))))
  :pattern ((peek%limited s@$ this@10@00))
  :qid |quant-u-14479|)))
(assert (forall ((s@$ $Snap) (this@10@00 $Ref)) (!
  (let ((result@11@00 (peek%limited s@$ this@10@00))) (=>
    (peek%precondition s@$ this@10@00)
    (content%precondition ($Snap.first s@$) this@10@00)))
  :pattern ((peek%limited s@$ this@10@00))
  :qid |quant-u-14480|)))
(assert (forall ((s@$ $Snap) (this@10@00 $Ref)) (!
  (=>
    (peek%precondition s@$ this@10@00)
    (=
      (peek s@$ this@10@00)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first s@$))))))
  :pattern ((peek s@$ this@10@00))
  :qid |quant-u-14481|)))
(assert (forall ((s@$ $Snap) (this@10@00 $Ref)) (!
  true
  :pattern ((peek s@$ this@10@00))
  :qid |quant-u-14482|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- create ----------
(declare-const this@0@01 $Ref)
(declare-const this@1@01 $Ref)
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
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] content(this) == Seq[Int]()
; [eval] content(this)
(push) ; 3
(assert (content%precondition ($Snap.first $t@2@01) this@1@01))
(pop) ; 3
; Joined path conditions
(assert (content%precondition ($Snap.first $t@2@01) this@1@01))
; [eval] Seq[Int]()
(assert (Seq_equal (content ($Snap.first $t@2@01) this@1@01) (as Seq_empty  Seq<Int>)))
(pop) ; 2
(push) ; 2
; [exec]
; this := new(data, next, head, held, changed)
(declare-const this@3@01 $Ref)
(assert (not (= this@3@01 $Ref.null)))
(declare-const data@4@01 Int)
(declare-const next@5@01 $Ref)
(declare-const head@6@01 $Ref)
(declare-const held@7@01 Int)
(declare-const changed@8@01 Bool)
(assert (not (= this@3@01 this@1@01)))
; [exec]
; this.head := null
; [exec]
; fold acc(lseg(this.head, null), write)
; [eval] this != end
; [then-branch: 0 | False | dead]
; [else-branch: 0 | True | live]
(push) ; 3
; [else-branch: 0 | True]
(assert (lseg%trigger $Snap.unit $Ref.null $Ref.null))
; [exec]
; fold acc(List(this), write)
(assert (List%trigger ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) this@3@01))
; [eval] content(this) == Seq[Int]()
; [eval] content(this)
(push) ; 4
(assert (content%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap $Ref.null)
  $Snap.unit) this@3@01))
(pop) ; 4
; Joined path conditions
(assert (content%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap $Ref.null)
  $Snap.unit) this@3@01))
; [eval] Seq[Int]()
(push) ; 4
(assert (not (Seq_equal
  (content ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) this@3@01)
  (as Seq_empty  Seq<Int>))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (content ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) this@3@01)
  (as Seq_empty  Seq<Int>)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- insert ----------
(declare-const this@9@01 $Ref)
(declare-const elem@10@01 Int)
(declare-const index@11@01 Int)
(declare-const this@12@01 $Ref)
(declare-const elem@13@01 Int)
(declare-const index@14@01 Int)
(push) ; 1
(declare-const $t@15@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
(assert (=
  ($Snap.second $t@16@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second $t@16@01)))))
(assert (= ($Snap.first ($Snap.second $t@16@01)) $Snap.unit))
; [eval] 0 <= index
(assert (<= 0 index@14@01))
(assert (=
  ($Snap.second ($Snap.second $t@16@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@16@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@16@01))) $Snap.unit))
; [eval] index <= |old(content(this))|
; [eval] |old(content(this))|
; [eval] old(content(this))
; [eval] content(this)
(push) ; 3
(assert (content%precondition $t@15@01 this@12@01))
(pop) ; 3
; Joined path conditions
(assert (content%precondition $t@15@01 this@12@01))
(assert (<= index@14@01 (Seq_length (content $t@15@01 this@12@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@16@01))) $Snap.unit))
; [eval] content(this) == old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..]
; [eval] content(this)
(push) ; 3
(assert (content%precondition ($Snap.first $t@16@01) this@12@01))
(pop) ; 3
; Joined path conditions
(assert (content%precondition ($Snap.first $t@16@01) this@12@01))
; [eval] old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..]
; [eval] old(content(this))[0..index] ++ Seq(elem)
; [eval] old(content(this))[0..index]
; [eval] old(content(this))[..index]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] Seq(elem)
(assert (= (Seq_length (Seq_singleton elem@13@01)) 1))
; [eval] old(content(this))[index..]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 3
(pop) ; 3
; Joined path conditions
(assert (Seq_equal
  (content ($Snap.first $t@16@01) this@12@01)
  (Seq_append
    (Seq_append
      (Seq_drop (Seq_take (content $t@15@01 this@12@01) index@14@01) 0)
      (Seq_singleton elem@13@01))
    (Seq_drop (content $t@15@01 this@12@01) index@14@01))))
(pop) ; 2
(push) ; 2
; [exec]
; var tmp: Ref
(declare-const tmp@17@01 $Ref)
; [exec]
; index := 0
; [exec]
; unfold acc(List(this), write)
(assert (= $t@15@01 ($Snap.combine ($Snap.first $t@15@01) ($Snap.second $t@15@01))))
(assert (not (= this@12@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (List%trigger $t@15@01 this@12@01))
; [eval] this.head != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | First:($t@15@01) != Null | live]
; [else-branch: 1 | First:($t@15@01) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | First:($t@15@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)))
; [exec]
; unfold acc(lseg(this.head, null), write)
; [eval] this != end
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:($t@15@01) != Null | live]
; [else-branch: 2 | First:($t@15@01) == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 2 | First:($t@15@01) != Null]
(assert (=
  ($Snap.second $t@15@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@15@01))
    ($Snap.second ($Snap.second $t@15@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@15@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@15@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@15@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(push) ; 5
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))) $Ref.null))
; [eval] this != end
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | First:(Second:(Second:($t@15@01))) != Null | live]
; [else-branch: 3 | First:(Second:(Second:($t@15@01))) == Null | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 3 | First:(Second:(Second:($t@15@01))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 7
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) $Ref.null))
; [eval] this != end
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null | live]
; [else-branch: 4 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 4 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@18@01 Bool)
(assert (as recunf@18@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null | live]
; [else-branch: 5 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 5 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(push) ; 8
; [else-branch: 4 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 9
; [then-branch: 6 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null | dead]
; [else-branch: 6 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null | live]
(push) ; 10
; [else-branch: 6 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
(declare-const joined_unfolding@19@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null))
  (=
    (as joined_unfolding@19@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)
  (= (as joined_unfolding@19@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
      $Snap.unit)
    (as recunf@18@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null))))
(assert (as joined_unfolding@19@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | First:(Second:(Second:($t@15@01))) != Null | live]
; [else-branch: 7 | First:(Second:(Second:($t@15@01))) == Null | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 7 | First:(Second:(Second:($t@15@01))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(push) ; 6
; [else-branch: 3 | First:(Second:(Second:($t@15@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 7
; [then-branch: 8 | First:(Second:(Second:($t@15@01))) != Null | dead]
; [else-branch: 8 | First:(Second:(Second:($t@15@01))) == Null | live]
(push) ; 8
; [else-branch: 8 | First:(Second:(Second:($t@15@01))) == Null]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
(declare-const joined_unfolding@20@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (=
    (as joined_unfolding@20@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)
  (= (as joined_unfolding@20@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null))
      (=
        (as joined_unfolding@19@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null)
      (= (as joined_unfolding@19@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
          $Snap.unit)
        (as recunf@18@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null)))
    (as joined_unfolding@19@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))))
(assert (as joined_unfolding@20@01  Bool))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (lseg%trigger ($Snap.second $t@15@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))
; [eval] this.head == null || elem <= this.head.data
; [eval] this.head == null
(set-option :timeout 0)
(push) ; 5
; [then-branch: 9 | First:($t@15@01) == Null | live]
; [else-branch: 9 | First:($t@15@01) != Null | live]
(push) ; 6
; [then-branch: 9 | First:($t@15@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))
(pop) ; 6
(push) ; 6
; [else-branch: 9 | First:($t@15@01) != Null]
; [eval] elem <= this.head.data
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)))
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (or
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
    (<=
      elem@13@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
  (<=
    elem@13@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | First:($t@15@01) == Null || elem@13@01 <= First:(Second:($t@15@01)) | live]
; [else-branch: 10 | !(First:($t@15@01) == Null || elem@13@01 <= First:(Second:($t@15@01))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 10 | First:($t@15@01) == Null || elem@13@01 <= First:(Second:($t@15@01))]
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
  (<=
    elem@13@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01))))))
; [exec]
; tmp := new(data, next, head, held, changed)
(declare-const tmp@21@01 $Ref)
(assert (not (= tmp@21@01 $Ref.null)))
(declare-const data@22@01 Int)
(declare-const next@23@01 $Ref)
(declare-const head@24@01 $Ref)
(declare-const held@25@01 Int)
(declare-const changed@26@01 Bool)
(assert (not (= tmp@21@01 this@12@01)))
(assert (not
  (=
    tmp@21@01
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(assert (not (= tmp@21@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)))))
(assert (not (= tmp@21@01 tmp@17@01)))
; [exec]
; tmp.data := elem
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) tmp@21@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; tmp.next := this.head
(declare-const next@27@01 $Ref)
(assert (= next@27@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) tmp@21@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(lseg(this.head, null), write)
; [eval] this != end
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | First:($t@15@01) != Null | live]
; [else-branch: 11 | First:($t@15@01) == Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 11 | First:($t@15@01) != Null]
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(push) ; 7
; [eval] this != end
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | First:(Second:(Second:($t@15@01))) != Null | live]
; [else-branch: 12 | First:(Second:(Second:($t@15@01))) == Null | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 12 | First:(Second:(Second:($t@15@01))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  tmp@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  tmp@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 9
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) $Ref.null))
; [eval] this != end
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null | live]
; [else-branch: 13 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 13 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  tmp@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  tmp@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@28@01 Bool)
(assert (as recunf@28@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null | live]
; [else-branch: 14 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 14 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(push) ; 10
; [else-branch: 13 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 11
; [then-branch: 15 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null | dead]
; [else-branch: 15 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null | live]
(push) ; 12
; [else-branch: 15 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
(declare-const joined_unfolding@29@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null))
  (=
    (as joined_unfolding@29@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)
  (= (as joined_unfolding@29@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
      $Snap.unit)
    (as recunf@28@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null))))
(assert (as joined_unfolding@29@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | First:(Second:(Second:($t@15@01))) != Null | live]
; [else-branch: 16 | First:(Second:(Second:($t@15@01))) == Null | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 16 | First:(Second:(Second:($t@15@01))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(push) ; 8
; [else-branch: 12 | First:(Second:(Second:($t@15@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 9
; [then-branch: 17 | First:(Second:(Second:($t@15@01))) != Null | dead]
; [else-branch: 17 | First:(Second:(Second:($t@15@01))) == Null | live]
(push) ; 10
; [else-branch: 17 | First:(Second:(Second:($t@15@01))) == Null]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
(declare-const joined_unfolding@30@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (=
    (as joined_unfolding@30@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)
  (= (as joined_unfolding@30@01  Bool) true)))
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null))
      (=
        (as joined_unfolding@29@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null)
      (= (as joined_unfolding@29@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
          $Snap.unit)
        (as recunf@28@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null)))
    (as joined_unfolding@29@01  Bool))))
; Joined path conditions
(push) ; 7
(assert (not (as joined_unfolding@30@01  Bool)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (as joined_unfolding@30@01  Bool))
(assert (lseg%trigger ($Snap.combine
  ($Snap.first ($Snap.second $t@15@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@15@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
      $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))
; [exec]
; fold acc(lseg(tmp, null), write)
; [eval] this != end
(push) ; 7
(set-option :timeout 10)
(assert (not (= tmp@21@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | tmp@21@01 != Null | live]
; [else-branch: 18 | tmp@21@01 == Null | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 18 | tmp@21@01 != Null]
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) next@27@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) next@27@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (lseg%trigger ($Snap.combine
  ($Snap.first ($Snap.second $t@15@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@15@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
      $Snap.unit))) next@27@01 $Ref.null))
; [eval] this != end
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= next@27@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= next@27@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | next@27@01 != Null | live]
; [else-branch: 19 | next@27@01 == Null | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 19 | next@27@01 != Null]
(assert (not (= next@27@01 $Ref.null)))
(push) ; 10
(set-option :timeout 10)
(assert (not (= tmp@21@01 next@27@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= tmp@21@01 next@27@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 10
; [eval] this != end
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | First:(Second:(Second:($t@15@01))) != Null | live]
; [else-branch: 20 | First:(Second:(Second:($t@15@01))) == Null | live]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 20 | First:(Second:(Second:($t@15@01))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  next@27@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  tmp@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  next@27@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  tmp@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@31@01 Bool)
(assert (as recunf@31@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | First:(Second:(Second:($t@15@01))) != Null | live]
; [else-branch: 21 | First:(Second:(Second:($t@15@01))) == Null | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 21 | First:(Second:(Second:($t@15@01))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 13
(pop) ; 12
; Joined path conditions
(pop) ; 11
(push) ; 11
; [else-branch: 20 | First:(Second:(Second:($t@15@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 12
; [then-branch: 22 | First:(Second:(Second:($t@15@01))) != Null | dead]
; [else-branch: 22 | First:(Second:(Second:($t@15@01))) == Null | live]
(push) ; 13
; [else-branch: 22 | First:(Second:(Second:($t@15@01))) == Null]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(pop) ; 11
(pop) ; 10
(declare-const joined_unfolding@32@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (=
    (as joined_unfolding@32@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)
  (= (as joined_unfolding@32@01  Bool) true)))
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Snap.unit)
    (as recunf@31@01  Bool))))
; Joined path conditions
(assert (as joined_unfolding@32@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (= next@27@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | next@27@01 != Null | live]
; [else-branch: 23 | next@27@01 == Null | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 23 | next@27@01 != Null]
; [eval] this.data <= this.next.data
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (lseg%trigger ($Snap.combine
  ($Snap.first ($Snap.second $t@15@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@15@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
      $Snap.unit))) next@27@01 $Ref.null))
(assert (=>
  (not (= next@27@01 $Ref.null))
  (and
    (not (= next@27@01 $Ref.null))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
          $Ref.null))
      (=
        (as joined_unfolding@32@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
        $Ref.null)
      (= (as joined_unfolding@32@01  Bool) true))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Snap.unit)
        (as recunf@31@01  Bool)))
    (as joined_unfolding@32@01  Bool))))
(assert (not (= next@27@01 $Ref.null)))
(push) ; 8
(assert (not (=>
  (not (= next@27@01 $Ref.null))
  (<=
    elem@13@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not (= next@27@01 $Ref.null))
  (<=
    elem@13@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01))))))
(assert (lseg%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@13@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap next@27@01)
    ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.second $t@15@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second $t@15@01)))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
            $Snap.unit)))
      $Snap.unit))) tmp@21@01 $Ref.null))
; [exec]
; this.head := tmp
(push) ; 8
(set-option :timeout 10)
(assert (not (= tmp@21@01 this@12@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(List(this), write)
(assert (List%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap tmp@21@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap elem@13@01)
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap next@27@01)
      ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.second $t@15@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second $t@15@01)))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
              $Snap.unit)))
        $Snap.unit)))) this@12@01))
; [eval] 0 <= index
; [eval] index <= |old(content(this))|
; [eval] |old(content(this))|
; [eval] old(content(this))
; [eval] content(this)
(set-option :timeout 0)
(push) ; 8
(assert (content%precondition $t@15@01 this@12@01))
(pop) ; 8
; Joined path conditions
(assert (content%precondition $t@15@01 this@12@01))
(push) ; 8
(assert (not (<= 0 (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (Seq_length (content $t@15@01 this@12@01))))
; [eval] content(this) == old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..]
; [eval] content(this)
(push) ; 8
(assert (content%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap tmp@21@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap elem@13@01)
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap next@27@01)
      ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.second $t@15@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second $t@15@01)))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
              $Snap.unit)))
        $Snap.unit)))) this@12@01))
(pop) ; 8
; Joined path conditions
(assert (content%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap tmp@21@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap elem@13@01)
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap next@27@01)
      ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.second $t@15@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second $t@15@01)))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
              $Snap.unit)))
        $Snap.unit)))) this@12@01))
; [eval] old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..]
; [eval] old(content(this))[0..index] ++ Seq(elem)
; [eval] old(content(this))[0..index]
; [eval] old(content(this))[..index]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
; [eval] Seq(elem)
(assert (= (Seq_length (Seq_singleton elem@13@01)) 1))
; [eval] old(content(this))[index..]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (Seq_equal
  (content ($Snap.combine
    ($SortWrappers.$RefTo$Snap tmp@21@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@13@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap next@27@01)
        ($Snap.combine
          ($Snap.combine
            ($Snap.first ($Snap.second $t@15@01))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second $t@15@01)))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
                $Snap.unit)))
          $Snap.unit)))) this@12@01)
  (Seq_append
    (Seq_append
      (Seq_drop (Seq_take (content $t@15@01 this@12@01) 0) 0)
      (Seq_singleton elem@13@01))
    (Seq_drop (content $t@15@01 this@12@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (content ($Snap.combine
    ($SortWrappers.$RefTo$Snap tmp@21@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@13@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap next@27@01)
        ($Snap.combine
          ($Snap.combine
            ($Snap.first ($Snap.second $t@15@01))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second $t@15@01)))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
                $Snap.unit)))
          $Snap.unit)))) this@12@01)
  (Seq_append
    (Seq_append
      (Seq_drop (Seq_take (content $t@15@01 this@12@01) 0) 0)
      (Seq_singleton elem@13@01))
    (Seq_drop (content $t@15@01 this@12@01) 0))))
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 10 | !(First:($t@15@01) == Null || elem@13@01 <= First:(Second:($t@15@01)))]
(assert (not
  (or
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
    (<=
      elem@13@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))))))
(pop) ; 5
; [eval] !(this.head == null || elem <= this.head.data)
; [eval] this.head == null || elem <= this.head.data
; [eval] this.head == null
(push) ; 5
; [then-branch: 24 | First:($t@15@01) == Null | live]
; [else-branch: 24 | First:($t@15@01) != Null | live]
(push) ; 6
; [then-branch: 24 | First:($t@15@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))
(pop) ; 6
(push) ; 6
; [else-branch: 24 | First:($t@15@01) != Null]
; [eval] elem <= this.head.data
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
  (<=
    elem@13@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (or
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
    (<=
      elem@13@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | !(First:($t@15@01) == Null || elem@13@01 <= First:(Second:($t@15@01))) | live]
; [else-branch: 25 | First:($t@15@01) == Null || elem@13@01 <= First:(Second:($t@15@01)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 25 | !(First:($t@15@01) == Null || elem@13@01 <= First:(Second:($t@15@01)))]
(assert (not
  (or
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
    (<=
      elem@13@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))))))
; [exec]
; var hd: Ref
(declare-const hd@33@01 $Ref)
; [exec]
; var ptr: Ref
(declare-const ptr@34@01 $Ref)
; [exec]
; hd := this.head
(declare-const hd@35@01 $Ref)
(assert (= hd@35@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))))
; [exec]
; ptr := hd
; [exec]
; fold acc(lseg(this.head, ptr), write)
; [eval] this != end
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) hd@35@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | First:($t@15@01) != hd@35@01 | dead]
; [else-branch: 26 | First:($t@15@01) == hd@35@01 | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 26 | First:($t@15@01) == hd@35@01]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) hd@35@01))
(assert (lseg%trigger $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) hd@35@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)))
  (= $Ref.null hd@35@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; index := index + 1
; [eval] index + 1
; [exec]
; package acc(lseg(ptr, null), write) &&
; contentNodes(ptr, null)[0] == old(content(this))[index - 1] --*
; acc(lseg(hd, null), write) &&
; contentNodes(hd, null) ==
; old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null)) {
; }
(set-option :timeout 0)
(push) ; 7
(declare-const $t@36@01 $Snap)
(assert (= $t@36@01 ($Snap.combine ($Snap.first $t@36@01) ($Snap.second $t@36@01))))
(assert (= ($Snap.second $t@36@01) $Snap.unit))
; [eval] contentNodes(ptr, null)[0] == old(content(this))[index - 1]
; [eval] contentNodes(ptr, null)[0]
; [eval] contentNodes(ptr, null)
(push) ; 8
(assert (contentNodes%precondition ($Snap.first $t@36@01) hd@35@01 $Ref.null))
(pop) ; 8
; Joined path conditions
(assert (contentNodes%precondition ($Snap.first $t@36@01) hd@35@01 $Ref.null))
(push) ; 8
(assert (not (< 0 (Seq_length (contentNodes ($Snap.first $t@36@01) hd@35@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 8
(assert (content%precondition $t@15@01 this@12@01))
(pop) ; 8
; Joined path conditions
(assert (content%precondition $t@15@01 this@12@01))
; [eval] index - 1
(push) ; 8
(assert (not (< 0 (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_index (contentNodes ($Snap.first $t@36@01) hd@35@01 $Ref.null) 0)
  (Seq_index (content $t@15@01 this@12@01) 0)))
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
; [eval] contentNodes(hd, null)
(set-option :timeout 0)
(push) ; 8
(pop) ; 8
; Joined path conditions
; [eval] old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
; [eval] old(content(this))[0..index - 1]
; [eval] old(content(this))[..index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
; [eval] index - 1
; [eval] old[lhs](contentNodes(ptr, null))
; [eval] contentNodes(ptr, null)
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (Seq_equal
  (contentNodes ($Snap.first $t@36@01) hd@35@01 $Ref.null)
  (Seq_append
    (Seq_drop (Seq_take (content $t@15@01 this@12@01) 0) 0)
    (contentNodes ($Snap.first $t@36@01) hd@35@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (contentNodes ($Snap.first $t@36@01) hd@35@01 $Ref.null)
  (Seq_append
    (Seq_drop (Seq_take (content $t@15@01 this@12@01) 0) 0)
    (contentNodes ($Snap.first $t@36@01) hd@35@01 $Ref.null))))
; Create MagicWandSnapFunction for wand acc(lseg(ptr, null), write) && contentNodes(ptr, null)[0] == old(content(this))[index - 1] --* acc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
(declare-const mwsf@37@01 $MWSF)
(assert (forall (($t@36@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@37@01 $t@36@01)
    ($Snap.combine ($Snap.first $t@36@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@37@01 $t@36@01))
  :qid |quant-u-14483|)))
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
; [eval] index - 1
(push) ; 8
(assert (not (< 0 (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[0..index - 1]
; [eval] old(content(this))[..index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
; [eval] index - 1
(pop) ; 7
(push) ; 7
(assert (and
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) hd@35@01)
  (not
    (or
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
      (<=
        elem@13@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01))))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))))
(assert (forall (($t@36@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@37@01 $t@36@01)
    ($Snap.combine ($Snap.first $t@36@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@37@01 $t@36@01))
  :qid |quant-u-14484|)))
(assert true)
(declare-const prev@38@01 $Ref)
(declare-const index@39@01 Int)
(declare-const ptr@40@01 $Ref)
(push) ; 8
; Loop head block: Check well-definedness of invariant
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 ($Snap.combine ($Snap.first $t@41@01) ($Snap.second $t@41@01))))
(assert (not (= ptr@40@01 $Ref.null)))
(assert (=
  ($Snap.second $t@41@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    ($Snap.second ($Snap.second $t@41@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@41@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
  $Snap.unit))
; [eval] 1 <= index
(assert (<= 1 index@39@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
  $Snap.unit))
; [eval] index <= |old(content(this))|
; [eval] |old(content(this))|
; [eval] old(content(this))
; [eval] content(this)
(push) ; 9
(assert (content%precondition $t@15@01 this@12@01))
(pop) ; 9
; Joined path conditions
(assert (content%precondition $t@15@01 this@12@01))
(assert (<= index@39@01 (Seq_length (content $t@15@01 this@12@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] ptr.next == null ==> index == |old(content(this))|
; [eval] ptr.next == null
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | First:($t@41@01) == Null | live]
; [else-branch: 27 | First:($t@41@01) != Null | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 27 | First:($t@41@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
; [eval] index == |old(content(this))|
; [eval] |old(content(this))|
; [eval] old(content(this))
; [eval] content(this)
(push) ; 11
(pop) ; 11
; Joined path conditions
(pop) ; 10
(push) ; 10
; [else-branch: 27 | First:($t@41@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
  (= index@39@01 (Seq_length (content $t@15@01 this@12@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
  $Snap.unit))
; [eval] ptr.data == old(content(this))[index - 1]
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 9
(pop) ; 9
; Joined path conditions
; [eval] index - 1
(push) ; 9
(assert (not (>= (- index@39@01 1) 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< (- index@39@01 1) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01)))
  (Seq_index (content $t@15@01 this@12@01) (- index@39@01 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
  $Snap.unit))
; [eval] ptr.next != null ==> contentNodes(ptr.next, null) == old(content(this))[index..]
; [eval] ptr.next != null
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | First:($t@41@01) != Null | live]
; [else-branch: 28 | First:($t@41@01) == Null | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 28 | First:($t@41@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
; [eval] contentNodes(ptr.next, null) == old(content(this))[index..]
; [eval] contentNodes(ptr.next, null)
(push) ; 11
(assert (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(pop) ; 11
; Joined path conditions
(assert (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
; [eval] old(content(this))[index..]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 11
(pop) ; 11
; Joined path conditions
(pop) ; 10
(push) ; 10
; [else-branch: 28 | First:($t@41@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))))
; Joined path conditions
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (Seq_equal
    (contentNodes ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
    (Seq_drop (content $t@15@01 this@12@01) index@39@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] ptr.data < elem
(assert (< ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01))) elem@13@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))
  $Snap.unit))
; [eval] ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data)
; [eval] ptr.next != null
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | First:($t@41@01) != Null | live]
; [else-branch: 29 | First:($t@41@01) == Null | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 29 | First:($t@41@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
; [eval] ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data)
; [eval] (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data)
(push) ; 11
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
; [eval] this != end
(push) ; 12
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | First:($t@41@01) != Null | live]
; [else-branch: 30 | First:($t@41@01) == Null | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 30 | First:($t@41@01) != Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
(push) ; 13
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 13
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
; [eval] this != end
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 31 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 31 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@42@01 Bool)
(assert (as recunf@42@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 32 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 32 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 16
(pop) ; 15
; Joined path conditions
(pop) ; 14
(push) ; 14
; [else-branch: 31 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 15
; [then-branch: 33 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | dead]
; [else-branch: 33 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(push) ; 16
; [else-branch: 33 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(pop) ; 16
(pop) ; 15
; Joined path conditions
(pop) ; 14
(pop) ; 13
(declare-const joined_unfolding@43@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (=
    (as joined_unfolding@43@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (= (as joined_unfolding@43@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Snap.unit)
    (as recunf@42@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))))
(assert (as joined_unfolding@43@01  Bool))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (=
        (as joined_unfolding@43@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (= (as joined_unfolding@43@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Snap.unit)
        (as recunf@42@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)))
    (as joined_unfolding@43@01  Bool))))
(pop) ; 10
(push) ; 10
; [else-branch: 29 | First:($t@41@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
    (=>
      (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (=
            (as joined_unfolding@43@01  Bool)
            (=>
              (not
                (=
                  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                  $Ref.null))
              (<=
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (= (as joined_unfolding@43@01  Bool) true))
        (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (and
            (not
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                $Ref.null))
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              ($Snap.combine
                ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
                ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            (=
              ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
                ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
                ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Snap.unit)
            (as recunf@42@01  Bool)))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (and
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Snap.unit)))
        (or
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)))
        (as joined_unfolding@43@01  Bool))))))
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 9
(pop) ; 9
; Joined path conditions
; [eval] index - 1
(push) ; 9
(assert (not (>= (- index@39@01 1) 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< (- index@39@01 1) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[0..index - 1]
; [eval] old(content(this))[..index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 9
(pop) ; 9
; Joined path conditions
; [eval] index - 1
(pop) ; 8
(push) ; 8
; Loop head block: Establish invariant
; [eval] 1 <= index
; [eval] index <= |old(content(this))|
; [eval] |old(content(this))|
; [eval] old(content(this))
; [eval] content(this)
(push) ; 9
(assert (content%precondition $t@15@01 this@12@01))
(pop) ; 9
; Joined path conditions
(assert (content%precondition $t@15@01 this@12@01))
(push) ; 9
(assert (not (<= 1 (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= 1 (Seq_length (content $t@15@01 this@12@01))))
; [eval] ptr.next == null ==> index == |old(content(this))|
; [eval] ptr.next == null
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | First:(Second:(Second:($t@15@01))) == Null | live]
; [else-branch: 34 | First:(Second:(Second:($t@15@01))) != Null | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 34 | First:(Second:(Second:($t@15@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null))
; [eval] index == |old(content(this))|
; [eval] |old(content(this))|
; [eval] old(content(this))
; [eval] content(this)
(push) ; 11
(pop) ; 11
; Joined path conditions
(pop) ; 10
(push) ; 10
; [else-branch: 34 | First:(Second:(Second:($t@15@01))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)))
(push) ; 9
(assert (not (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)
  (= 1 (Seq_length (content $t@15@01 this@12@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)
  (= 1 (Seq_length (content $t@15@01 this@12@01)))))
; [eval] ptr.data == old(content(this))[index - 1]
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 9
(pop) ; 9
; Joined path conditions
; [eval] index - 1
(push) ; 9
(assert (not (< 0 (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))
  (Seq_index (content $t@15@01 this@12@01) 0))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))
  (Seq_index (content $t@15@01 this@12@01) 0)))
; [eval] ptr.next != null ==> contentNodes(ptr.next, null) == old(content(this))[index..]
; [eval] ptr.next != null
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | First:(Second:(Second:($t@15@01))) != Null | live]
; [else-branch: 35 | First:(Second:(Second:($t@15@01))) == Null | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 35 | First:(Second:(Second:($t@15@01))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)))
; [eval] contentNodes(ptr.next, null) == old(content(this))[index..]
; [eval] contentNodes(ptr.next, null)
(push) ; 11
(assert (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))) $Ref.null))
(pop) ; 11
; Joined path conditions
(assert (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))) $Ref.null))
; [eval] old(content(this))[index..]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 11
(pop) ; 11
; Joined path conditions
(pop) ; 10
(push) ; 10
; [else-branch: 35 | First:(Second:(Second:($t@15@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
        $Ref.null))
    (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))) $Ref.null))))
; Joined path conditions
(push) ; 9
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (Seq_equal
    (contentNodes ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))) $Ref.null)
    (Seq_drop (content $t@15@01 this@12@01) 1)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (Seq_equal
    (contentNodes ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))) $Ref.null)
    (Seq_drop (content $t@15@01 this@12@01) 1))))
; [eval] ptr.data < elem
(push) ; 9
(assert (not (< ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01))) elem@13@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01))) elem@13@01))
; [eval] ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data)
; [eval] ptr.next != null
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | First:(Second:(Second:($t@15@01))) != Null | live]
; [else-branch: 36 | First:(Second:(Second:($t@15@01))) == Null | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 36 | First:(Second:(Second:($t@15@01))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
    $Ref.null)))
; [eval] ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data)
; [eval] (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data)
(push) ; 11
; [eval] this != end
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | First:(Second:(Second:($t@15@01))) != Null | live]
; [else-branch: 37 | First:(Second:(Second:($t@15@01))) == Null | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 37 | First:(Second:(Second:($t@15@01))) != Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 13
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) $Ref.null))
; [eval] this != end
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null | live]
; [else-branch: 38 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 38 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))))
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (and
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@44@01 Bool)
(assert (as recunf@44@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null | live]
; [else-branch: 39 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 39 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 16
(pop) ; 15
; Joined path conditions
(pop) ; 14
(push) ; 14
; [else-branch: 38 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 15
; [then-branch: 40 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) != Null | dead]
; [else-branch: 40 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null | live]
(push) ; 16
; [else-branch: 40 | First:(Second:(First:(Second:(Second:(Second:($t@15@01)))))) == Null]
(pop) ; 16
(pop) ; 15
; Joined path conditions
(pop) ; 14
(pop) ; 13
(declare-const joined_unfolding@45@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null))
  (=
    (as joined_unfolding@45@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)
  (= (as joined_unfolding@45@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
      $Snap.unit)
    (as recunf@44@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Ref.null))))
(assert (as joined_unfolding@45@01  Bool))
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  hd@35@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null))
      (=
        (as joined_unfolding@45@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null)
      (= (as joined_unfolding@45@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
          $Snap.unit)
        (as recunf@44@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Ref.null)))
    (as joined_unfolding@45@01  Bool))))
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 36 | First:(Second:(Second:($t@15@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
  $Ref.null))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
        $Ref.null))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
          $Ref.null))
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
              $Ref.null))
          (=
            (as joined_unfolding@45@01  Bool)
            (=>
              (not
                (=
                  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
                  $Ref.null))
              (<=
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
            $Ref.null)
          (= (as joined_unfolding@45@01  Bool) true))
        (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))) $Ref.null)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
              $Ref.null))
          (and
            (not
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
                $Ref.null))
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
              ($Snap.combine
                ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
                ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
            (=
              ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
                ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
                ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
              $Snap.unit)
            (as recunf@44@01  Bool)))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
            $Ref.null)
          (and
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
              $Ref.null)
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
              $Snap.unit)))
        (or
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
            $Ref.null)
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))
              $Ref.null)))
        (as joined_unfolding@45@01  Bool))))))
; Joined path conditions
(push) ; 9
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@15@01))))
      $Ref.null))
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@15@01)))))))))
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 9
(pop) ; 9
; Joined path conditions
; [eval] index - 1
(push) ; 9
(assert (not (< 0 (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[0..index - 1]
; [eval] old(content(this))[..index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 9
(pop) ; 9
; Joined path conditions
; [eval] index - 1
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 9
(assert (= $t@41@01 ($Snap.combine ($Snap.first $t@41@01) ($Snap.second $t@41@01))))
(assert (not (= ptr@40@01 $Ref.null)))
(assert (=
  ($Snap.second $t@41@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    ($Snap.second ($Snap.second $t@41@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@41@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
  $Snap.unit))
(assert (<= 1 index@39@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
  $Snap.unit))
(assert (<= index@39@01 (Seq_length (content $t@15@01 this@12@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
(assert (or
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
  (= index@39@01 (Seq_length (content $t@15@01 this@12@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
  $Snap.unit))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01)))
  (Seq_index (content $t@15@01 this@12@01) (- index@39@01 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
  $Snap.unit))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))))
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (Seq_equal
    (contentNodes ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
    (Seq_drop (content $t@15@01 this@12@01) index@39@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
(assert (< ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01))) elem@13@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))
  $Snap.unit))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
    (=>
      (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (=
            (as joined_unfolding@43@01  Bool)
            (=>
              (not
                (=
                  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                  $Ref.null))
              (<=
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (= (as joined_unfolding@43@01  Bool) true))
        (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (and
            (not
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                $Ref.null))
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              ($Snap.combine
                ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
                ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            (=
              ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
                ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
                ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Snap.unit)
            (as recunf@42@01  Bool)))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (and
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Snap.unit)))
        (or
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)))
        (as joined_unfolding@43@01  Bool))))))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 10
; [eval] ptr.next != null && (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)
; [eval] ptr.next != null
(push) ; 11
; [then-branch: 41 | First:($t@41@01) == Null | live]
; [else-branch: 41 | First:($t@41@01) != Null | live]
(push) ; 12
; [then-branch: 41 | First:($t@41@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(pop) ; 12
(push) ; 12
; [else-branch: 41 | First:($t@41@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
; [eval] (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)
(push) ; 13
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
; [eval] this != end
(push) ; 14
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [then-branch: 42 | First:($t@41@01) != Null | live]
; [else-branch: 42 | First:($t@41@01) == Null | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 42 | First:($t@41@01) != Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
(push) ; 15
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 15
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
; [eval] this != end
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 43 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 43 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@46@01 Bool)
(assert (as recunf@46@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 18
; 0.01s
; (get-info :all-statistics)
; [then-branch: 44 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 44 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 44 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 18
(pop) ; 17
; Joined path conditions
(pop) ; 16
(push) ; 16
; [else-branch: 43 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 17
; [then-branch: 45 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | dead]
; [else-branch: 45 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(push) ; 18
; [else-branch: 45 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(pop) ; 18
(pop) ; 17
; Joined path conditions
(pop) ; 16
(pop) ; 15
(declare-const joined_unfolding@47@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (=
    (as joined_unfolding@47@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (= (as joined_unfolding@47@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Snap.unit)
    (as recunf@46@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))))
(assert (as joined_unfolding@47@01  Bool))
; [eval] ptr.next.data < elem
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (=
        (as joined_unfolding@47@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (= (as joined_unfolding@47@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Snap.unit)
        (as recunf@46@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)))
    (as joined_unfolding@47@01  Bool))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
    (=>
      (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (=
            (as joined_unfolding@47@01  Bool)
            (=>
              (not
                (=
                  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                  $Ref.null))
              (<=
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (= (as joined_unfolding@47@01  Bool) true))
        (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (and
            (not
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                $Ref.null))
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              ($Snap.combine
                ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
                ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            (=
              ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
                ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
                ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Snap.unit)
            (as recunf@46@01  Bool)))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (and
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Snap.unit)))
        (or
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)))
        (as joined_unfolding@47@01  Bool))))))
(pop) ; 10
(push) ; 10
; [eval] !(ptr.next != null && (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem))
; [eval] ptr.next != null && (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)
; [eval] ptr.next != null
(push) ; 11
; [then-branch: 46 | First:($t@41@01) == Null | live]
; [else-branch: 46 | First:($t@41@01) != Null | live]
(push) ; 12
; [then-branch: 46 | First:($t@41@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(pop) ; 12
(push) ; 12
; [else-branch: 46 | First:($t@41@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
; [eval] (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)
(push) ; 13
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
; [eval] this != end
(push) ; 14
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [then-branch: 47 | First:($t@41@01) != Null | live]
; [else-branch: 47 | First:($t@41@01) == Null | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 47 | First:($t@41@01) != Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
(push) ; 15
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 15
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
; [eval] this != end
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 48 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 48 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@48@01 Bool)
(assert (as recunf@48@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 18
; 0.01s
; (get-info :all-statistics)
; [then-branch: 49 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 49 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 49 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 18
(pop) ; 17
; Joined path conditions
(pop) ; 16
(push) ; 16
; [else-branch: 48 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 17
; [then-branch: 50 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | dead]
; [else-branch: 50 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(push) ; 18
; [else-branch: 50 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(pop) ; 18
(pop) ; 17
; Joined path conditions
(pop) ; 16
(pop) ; 15
(declare-const joined_unfolding@49@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (=
    (as joined_unfolding@49@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (= (as joined_unfolding@49@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Snap.unit)
    (as recunf@48@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))))
(assert (as joined_unfolding@49@01  Bool))
; [eval] ptr.next.data < elem
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (=
        (as joined_unfolding@49@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (= (as joined_unfolding@49@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Snap.unit)
        (as recunf@48@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)))
    (as joined_unfolding@49@01  Bool))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
    (=>
      (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (=
            (as joined_unfolding@49@01  Bool)
            (=>
              (not
                (=
                  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                  $Ref.null))
              (<=
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (= (as joined_unfolding@49@01  Bool) true))
        (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (and
            (not
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                $Ref.null))
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              ($Snap.combine
                ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
                ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            (=
              ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
                ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
                ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Snap.unit)
            (as recunf@48@01  Bool)))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (and
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Snap.unit)))
        (or
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)))
        (as joined_unfolding@49@01  Bool))))))
(pop) ; 10
; Loop head block: Follow loop-internal edges
; [eval] ptr.next != null && (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)
; [eval] ptr.next != null
(push) ; 10
; [then-branch: 51 | First:($t@41@01) == Null | live]
; [else-branch: 51 | First:($t@41@01) != Null | live]
(push) ; 11
; [then-branch: 51 | First:($t@41@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(pop) ; 11
(push) ; 11
; [else-branch: 51 | First:($t@41@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
; [eval] (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)
(push) ; 12
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
; [eval] this != end
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
; [then-branch: 52 | First:($t@41@01) != Null | live]
; [else-branch: 52 | First:($t@41@01) == Null | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 52 | First:($t@41@01) != Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
(push) ; 14
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 14
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
; [eval] this != end
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 53 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 53 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@50@01 Bool)
(assert (as recunf@50@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
; [then-branch: 54 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 54 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 54 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(push) ; 15
; [else-branch: 53 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 16
; [then-branch: 55 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | dead]
; [else-branch: 55 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(push) ; 17
; [else-branch: 55 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
(declare-const joined_unfolding@51@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (=
    (as joined_unfolding@51@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (= (as joined_unfolding@51@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Snap.unit)
    (as recunf@50@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))))
(assert (as joined_unfolding@51@01  Bool))
; [eval] ptr.next.data < elem
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (=
        (as joined_unfolding@51@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (= (as joined_unfolding@51@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Snap.unit)
        (as recunf@50@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)))
    (as joined_unfolding@51@01  Bool))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
    (=>
      (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (=
            (as joined_unfolding@51@01  Bool)
            (=>
              (not
                (=
                  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                  $Ref.null))
              (<=
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (= (as joined_unfolding@51@01  Bool) true))
        (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (and
            (not
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                $Ref.null))
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              ($Snap.combine
                ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
                ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            (=
              ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
                ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
                ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Snap.unit)
            (as recunf@50@01  Bool)))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (and
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Snap.unit)))
        (or
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)))
        (as joined_unfolding@51@01  Bool))))))
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (<
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      elem@13@01)))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (and
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    elem@13@01))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | First:($t@41@01) != Null && First:(First:(Second:(Second:($t@41@01)))) < elem@13@01 | live]
; [else-branch: 56 | !(First:($t@41@01) != Null && First:(First:(Second:(Second:($t@41@01)))) < elem@13@01) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 56 | First:($t@41@01) != Null && First:(First:(Second:(Second:($t@41@01)))) < elem@13@01]
(assert (and
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    elem@13@01)))
; [exec]
; var prev: Ref
(declare-const prev@52@01 $Ref)
; [exec]
; assert acc(lseg(ptr, null), write) &&
;   contentNodes(ptr, null)[0] == old(content(this))[index - 1] --*
;   acc(lseg(hd, null), write) &&
;   contentNodes(hd, null) ==
;   old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 11
(pop) ; 11
; Joined path conditions
; [eval] index - 1
(push) ; 11
(assert (not (>= (- index@39@01 1) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (< (- index@39@01 1) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[0..index - 1]
; [eval] old(content(this))[..index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 11
(pop) ; 11
; Joined path conditions
; [eval] index - 1
; [exec]
; prev := ptr
; [exec]
; unfold acc(lseg(ptr.next, null), write)
; [eval] this != end
(push) ; 11
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; [then-branch: 57 | First:($t@41@01) != Null | live]
; [else-branch: 57 | First:($t@41@01) == Null | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 57 | First:($t@41@01) != Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
(push) ; 12
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 12
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 12
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
; [eval] this != end
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 58 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 58 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 14
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) $Ref.null))
; [eval] this != end
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) != Null | live]
; [else-branch: 59 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) == Null | live]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 59 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))))
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@53@01 Bool)
(assert (as recunf@53@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
; [then-branch: 60 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) != Null | live]
; [else-branch: 60 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 60 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(push) ; 15
; [else-branch: 59 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 16
; [then-branch: 61 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) != Null | dead]
; [else-branch: 61 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) == Null | live]
(push) ; 17
; [else-branch: 61 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) == Null]
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
(declare-const joined_unfolding@54@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Ref.null))
  (=
    (as joined_unfolding@54@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    $Ref.null)
  (= (as joined_unfolding@54@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
      $Snap.unit)
    (as recunf@53@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Ref.null))))
(assert (as joined_unfolding@54@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
; [then-branch: 62 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 62 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 62 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(push) ; 13
; [else-branch: 58 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 14
; [then-branch: 63 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | dead]
; [else-branch: 63 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(push) ; 15
; [else-branch: 63 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
(declare-const joined_unfolding@55@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (=
    (as joined_unfolding@55@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (= (as joined_unfolding@55@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Ref.null))
      (=
        (as joined_unfolding@54@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        $Ref.null)
      (= (as joined_unfolding@54@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
          $Snap.unit)
        (as recunf@53@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Ref.null)))
    (as joined_unfolding@54@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))))
(assert (as joined_unfolding@55@01  Bool))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
; [exec]
; index := index + 1
; [eval] index + 1
(declare-const index@56@01 Int)
(assert (= index@56@01 (+ index@39@01 1)))
; [exec]
; ptr := ptr.next
(declare-const ptr@57@01 $Ref)
(assert (= ptr@57@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))))
; [exec]
; package acc(lseg(ptr, null), write) &&
; contentNodes(ptr, null)[0] == old(content(this))[index - 1] --*
; acc(lseg(hd, null), write) &&
; contentNodes(hd, null) ==
; old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null)) {
;   fold acc(lseg(prev, null), write)
;   apply acc(lseg(prev, null), write) &&
;     contentNodes(prev, null)[0] == old(content(this))[index - 2] --*
;     acc(lseg(hd, null), write) &&
;     contentNodes(hd, null) ==
;     old(content(this))[0..index - 2] ++ old[lhs](contentNodes(prev, null))
; }
(set-option :timeout 0)
(push) ; 12
(declare-const $t@58@01 $Snap)
(assert (= $t@58@01 ($Snap.combine ($Snap.first $t@58@01) ($Snap.second $t@58@01))))
(assert (= ($Snap.second $t@58@01) $Snap.unit))
; [eval] contentNodes(ptr, null)[0] == old(content(this))[index - 1]
; [eval] contentNodes(ptr, null)[0]
; [eval] contentNodes(ptr, null)
(push) ; 13
(assert (contentNodes%precondition ($Snap.first $t@58@01) ptr@57@01 $Ref.null))
(pop) ; 13
; Joined path conditions
(assert (contentNodes%precondition ($Snap.first $t@58@01) ptr@57@01 $Ref.null))
(push) ; 13
(assert (not (< 0 (Seq_length (contentNodes ($Snap.first $t@58@01) ptr@57@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
; [eval] index - 1
(push) ; 13
(assert (not (>= (- index@56@01 1) 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< (- index@56@01 1) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_index (contentNodes ($Snap.first $t@58@01) ptr@57@01 $Ref.null) 0)
  (Seq_index (content $t@15@01 this@12@01) (- index@56@01 1))))
; [exec]
; fold acc(lseg(prev, null), write)
; [eval] this != end
(push) ; 13
(set-option :timeout 10)
(assert (not (= ptr@40@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
; [then-branch: 64 | ptr@40@01 != Null | live]
; [else-branch: 64 | ptr@40@01 == Null | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 64 | ptr@40@01 != Null]
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 14
(assert (lseg%trigger ($Snap.first $t@58@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
; [eval] this != end
(push) ; 15
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | First:($t@41@01) != Null | live]
; [else-branch: 65 | First:($t@41@01) == Null | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 65 | First:($t@41@01) != Null]
(assert (=
  ($Snap.first $t@58@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@58@01))
    ($Snap.second ($Snap.first $t@58@01)))))
(push) ; 16
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first $t@58@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@58@01)))
    ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first $t@58@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@58@01))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 16
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01)))) $Ref.null))
; [eval] this != end
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 66 | First:(Second:(First:($t@58@01))) != Null | live]
; [else-branch: 66 | First:(Second:(First:($t@58@01))) == Null | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 66 | First:(Second:(First:($t@58@01))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))))
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01)))))))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01)))))))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))))
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01)))))))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01)))))))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@59@01 Bool)
(assert (as recunf@59@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 67 | First:(Second:(First:($t@58@01))) != Null | live]
; [else-branch: 67 | First:(Second:(First:($t@58@01))) == Null | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 67 | First:(Second:(First:($t@58@01))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 19
(pop) ; 18
; Joined path conditions
(pop) ; 17
(push) ; 17
; [else-branch: 66 | First:(Second:(First:($t@58@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
  $Ref.null))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))) $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 18
; [then-branch: 68 | First:(Second:(First:($t@58@01))) != Null | dead]
; [else-branch: 68 | First:(Second:(First:($t@58@01))) == Null | live]
(push) ; 19
; [else-branch: 68 | First:(Second:(First:($t@58@01))) == Null]
(pop) ; 19
(pop) ; 18
; Joined path conditions
(pop) ; 17
(pop) ; 16
(declare-const joined_unfolding@60@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
      $Ref.null))
  (=
    (as joined_unfolding@60@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@58@01)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
    $Ref.null)
  (= (as joined_unfolding@60@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01)))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))
      $Snap.unit)
    (as recunf@59@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
      $Ref.null))))
(assert (as joined_unfolding@60@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | First:($t@41@01) != Null | live]
; [else-branch: 69 | First:($t@41@01) == Null | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 69 | First:($t@41@01) != Null]
; [eval] this.data <= this.next.data
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (lseg%trigger ($Snap.first $t@58@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (=
      ($Snap.first $t@58@01)
      ($Snap.combine
        ($Snap.first ($Snap.first $t@58@01))
        ($Snap.second ($Snap.first $t@58@01))))
    (=
      ($Snap.second ($Snap.first $t@58@01))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first $t@58@01)))
        ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))
    (=
      ($Snap.second ($Snap.second ($Snap.first $t@58@01)))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@58@01))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
          $Ref.null))
      (=
        (as joined_unfolding@60@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@58@01)))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
        $Ref.null)
      (= (as joined_unfolding@60@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01)))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01)))))))
          $Snap.unit)
        (as recunf@59@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@58@01))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@58@01))))
          $Ref.null)))
    (as joined_unfolding@60@01  Bool))))
(push) ; 14
(assert (not (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@58@01)))))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@58@01))))))
(assert (lseg%trigger ($Snap.combine
  ($Snap.first ($Snap.second $t@41@01))
  ($Snap.combine
    ($Snap.first $t@41@01)
    ($Snap.combine ($Snap.first $t@58@01) $Snap.unit))) ptr@40@01 $Ref.null))
; [exec]
; apply acc(lseg(prev, null), write) &&
;   contentNodes(prev, null)[0] == old(content(this))[index - 2] --*
;   acc(lseg(hd, null), write) &&
;   contentNodes(hd, null) ==
;   old(content(this))[0..index - 2] ++ old[lhs](contentNodes(prev, null))
; [eval] old(content(this))[index - 2]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
; [eval] index - 2
(push) ; 14
(assert (not (>= (- index@56@01 2) 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (< (- index@56@01 2) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[0..index - 2]
; [eval] old(content(this))[..index - 2]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
; [eval] index - 2
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (and
  (=
    (Seq_index (content $t@15@01 this@12@01) (- index@39@01 1))
    (Seq_index (content $t@15@01 this@12@01) (- index@56@01 2)))
  (Seq_equal
    (Seq_drop (Seq_take (content $t@15@01 this@12@01) (- index@39@01 1)) 0)
    (Seq_drop (Seq_take (content $t@15@01 this@12@01) (- index@56@01 2)) 0)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
; [eval] contentNodes(prev, null)[0] == old(content(this))[index - 2]
; [eval] contentNodes(prev, null)[0]
; [eval] contentNodes(prev, null)
(set-option :timeout 0)
(push) ; 14
(assert (contentNodes%precondition ($Snap.combine
  ($Snap.first ($Snap.second $t@41@01))
  ($Snap.combine
    ($Snap.first $t@41@01)
    ($Snap.combine ($Snap.first $t@58@01) $Snap.unit))) ptr@40@01 $Ref.null))
(pop) ; 14
; Joined path conditions
(assert (contentNodes%precondition ($Snap.combine
  ($Snap.first ($Snap.second $t@41@01))
  ($Snap.combine
    ($Snap.first $t@41@01)
    ($Snap.combine ($Snap.first $t@58@01) $Snap.unit))) ptr@40@01 $Ref.null))
(push) ; 14
(assert (not (<
  0
  (Seq_length
    (contentNodes ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($Snap.first $t@41@01)
        ($Snap.combine ($Snap.first $t@58@01) $Snap.unit))) ptr@40@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[index - 2]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
; [eval] index - 2
(push) ; 14
(assert (not (>= (- index@56@01 2) 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (< (- index@56@01 2) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (=
  (Seq_index
    (contentNodes ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($Snap.first $t@41@01)
        ($Snap.combine ($Snap.first $t@58@01) $Snap.unit))) ptr@40@01 $Ref.null)
    0)
  (Seq_index (content $t@15@01 this@12@01) (- index@56@01 2)))))
(check-sat)
; unsat
(pop) ; 14
; 0.03s
; (get-info :all-statistics)
(assert (=
  (Seq_index
    (contentNodes ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($Snap.first $t@41@01)
        ($Snap.combine ($Snap.first $t@58@01) $Snap.unit))) ptr@40@01 $Ref.null)
    0)
  (Seq_index (content $t@15@01 this@12@01) (- index@56@01 2))))
(assert (=
  (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($Snap.first $t@41@01)
        ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
    $Snap.unit))
  ($Snap.combine
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.second $t@41@01))
        ($Snap.combine
          ($Snap.first $t@41@01)
          ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
      $Snap.unit)))
    ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.second $t@41@01))
        ($Snap.combine
          ($Snap.first $t@41@01)
          ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
      $Snap.unit))))))
(assert (=
  ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($Snap.first $t@41@01)
        ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
    $Snap.unit)))
  $Snap.unit))
; [eval] contentNodes(hd, null) == old(content(this))[0..index - 2] ++ old[lhs](contentNodes(prev, null))
; [eval] contentNodes(hd, null)
(push) ; 14
(assert (contentNodes%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    ($Snap.combine
      ($Snap.first $t@41@01)
      ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
  $Snap.unit))) hd@35@01 $Ref.null))
(pop) ; 14
; Joined path conditions
(assert (contentNodes%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    ($Snap.combine
      ($Snap.first $t@41@01)
      ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
  $Snap.unit))) hd@35@01 $Ref.null))
; [eval] old(content(this))[0..index - 2] ++ old[lhs](contentNodes(prev, null))
; [eval] old(content(this))[0..index - 2]
; [eval] old(content(this))[..index - 2]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
; [eval] index - 2
; [eval] old[lhs](contentNodes(prev, null))
; [eval] contentNodes(prev, null)
(push) ; 14
(pop) ; 14
; Joined path conditions
(assert (Seq_equal
  (contentNodes ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($Snap.first $t@41@01)
        ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
    $Snap.unit))) hd@35@01 $Ref.null)
  (Seq_append
    (Seq_drop (Seq_take (content $t@15@01 this@12@01) (- index@56@01 2)) 0)
    (contentNodes ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($Snap.first $t@41@01)
        ($Snap.combine ($Snap.first $t@58@01) $Snap.unit))) ptr@40@01 $Ref.null))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(check-sat)
; unknown
; [eval] contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
; [eval] contentNodes(hd, null)
(set-option :timeout 0)
(push) ; 14
(pop) ; 14
; Joined path conditions
; [eval] old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
; [eval] old(content(this))[0..index - 1]
; [eval] old(content(this))[..index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
; [eval] index - 1
; [eval] old[lhs](contentNodes(ptr, null))
; [eval] contentNodes(ptr, null)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (Seq_equal
  (contentNodes ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($Snap.first $t@41@01)
        ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
    $Snap.unit))) hd@35@01 $Ref.null)
  (Seq_append
    (Seq_drop (Seq_take (content $t@15@01 this@12@01) (- index@56@01 1)) 0)
    (contentNodes ($Snap.first $t@58@01) ptr@57@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 14
; 0.27s
; (get-info :all-statistics)
(assert (Seq_equal
  (contentNodes ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($Snap.first $t@41@01)
        ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
    $Snap.unit))) hd@35@01 $Ref.null)
  (Seq_append
    (Seq_drop (Seq_take (content $t@15@01 this@12@01) (- index@56@01 1)) 0)
    (contentNodes ($Snap.first $t@58@01) ptr@57@01 $Ref.null))))
; Create MagicWandSnapFunction for wand acc(lseg(ptr, null), write) && contentNodes(ptr, null)[0] == old(content(this))[index - 1] --* acc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
(declare-const mwsf@61@01 $MWSF)
(assert (forall (($t@58@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@61@01 $t@58@01)
    ($Snap.combine
      ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.second $t@41@01))
          ($Snap.combine
            ($Snap.first $t@41@01)
            ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
        $Snap.unit)))
      $Snap.unit))
  :pattern ((MWSF_apply mwsf@61@01 $t@58@01))
  :qid |quant-u-14485|)))
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
; [eval] index - 1
(push) ; 14
(assert (not (>= (- index@56@01 1) 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (< (- index@56@01 1) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[0..index - 1]
; [eval] old(content(this))[..index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
; [eval] index - 1
(pop) ; 13
(pop) ; 12
(push) ; 12
(assert (and
  (not (= ptr@40@01 $Ref.null))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (<
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      elem@13@01))
  (and
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) hd@35@01)
    (not
      (or
        (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
        (<=
          elem@13@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01))))))
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)))
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) hd@35@01)
  (not
    (or
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
      (<=
        elem@13@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01))))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))))
(assert (forall (($t@58@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@61@01 $t@58@01)
    ($Snap.combine
      ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.second $t@41@01))
          ($Snap.combine
            ($Snap.first $t@41@01)
            ($Snap.combine ($Snap.first $t@58@01) $Snap.unit)))
        $Snap.unit)))
      $Snap.unit))
  :pattern ((MWSF_apply mwsf@61@01 $t@58@01))
  :qid |quant-u-14486|)))
(assert true)
; Loop head block: Re-establish invariant
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] 1 <= index
(set-option :timeout 0)
(push) ; 13
(assert (not (<= 1 index@56@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (<= 1 index@56@01))
; [eval] index <= |old(content(this))|
; [eval] |old(content(this))|
; [eval] old(content(this))
; [eval] content(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (<= index@56@01 (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (<= index@56@01 (Seq_length (content $t@15@01 this@12@01))))
; [eval] ptr.next == null ==> index == |old(content(this))|
; [eval] ptr.next == null
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [then-branch: 70 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
; [else-branch: 70 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 70 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null))
; [eval] index == |old(content(this))|
; [eval] |old(content(this))|
; [eval] old(content(this))
; [eval] content(this)
(push) ; 15
(pop) ; 15
; Joined path conditions
(pop) ; 14
(push) ; 14
; [else-branch: 70 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
(push) ; 13
(assert (not (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (= index@56@01 (Seq_length (content $t@15@01 this@12@01))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (= index@56@01 (Seq_length (content $t@15@01 this@12@01)))))
; [eval] ptr.data == old(content(this))[index - 1]
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(set-option :timeout 0)
(push) ; 13
(pop) ; 13
; Joined path conditions
; [eval] index - 1
(push) ; 13
(assert (not (>= (- index@56@01 1) 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< (- index@56@01 1) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  (Seq_index (content $t@15@01 this@12@01) (- index@56@01 1)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  (Seq_index (content $t@15@01 this@12@01) (- index@56@01 1))))
; [eval] ptr.next != null ==> contentNodes(ptr.next, null) == old(content(this))[index..]
; [eval] ptr.next != null
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 71 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 71 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
; [eval] contentNodes(ptr.next, null) == old(content(this))[index..]
; [eval] contentNodes(ptr.next, null)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
(pop) ; 15
; Joined path conditions
(assert (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
; [eval] old(content(this))[index..]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 15
(pop) ; 15
; Joined path conditions
(pop) ; 14
(push) ; 14
; [else-branch: 71 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null))
    (contentNodes%precondition ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))))
; Joined path conditions
(push) ; 13
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (Seq_equal
    (contentNodes ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
    (Seq_drop (content $t@15@01 this@12@01) index@56@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.05s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (Seq_equal
    (contentNodes ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
    (Seq_drop (content $t@15@01 this@12@01) index@56@01))))
; [eval] ptr.data < elem
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data)
; [eval] ptr.next != null
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 72 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 72 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 72 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
; [eval] ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [eval] this != end
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
; [then-branch: 73 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 73 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 73 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 17
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) $Ref.null))
; [eval] this != end
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 18
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 74 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) != Null | live]
; [else-branch: 74 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) == Null | live]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 74 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unknown
(pop) ; 19
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unknown
(pop) ; 19
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))))
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unknown
(pop) ; 19
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unknown
(pop) ; 19
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@62@01 Bool)
(assert (as recunf@62@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 20
; 0.01s
; (get-info :all-statistics)
; [then-branch: 75 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) != Null | live]
; [else-branch: 75 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 75 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 20
(pop) ; 19
; Joined path conditions
(pop) ; 18
(push) ; 18
; [else-branch: 74 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 19
; [then-branch: 76 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) != Null | dead]
; [else-branch: 76 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) == Null | live]
(push) ; 20
; [else-branch: 76 | First:(Second:(First:(Second:(Second:(First:(Second:(Second:($t@41@01)))))))) == Null]
(pop) ; 20
(pop) ; 19
; Joined path conditions
(pop) ; 18
(pop) ; 17
(declare-const joined_unfolding@63@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Ref.null))
  (=
    (as joined_unfolding@63@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    $Ref.null)
  (= (as joined_unfolding@63@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
      $Snap.unit)
    (as recunf@62@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Ref.null))))
(assert (as joined_unfolding@63@01  Bool))
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ptr@57@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) ptr@57@01)))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(pop) ; 16
(pop) ; 15
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Ref.null))
      (=
        (as joined_unfolding@63@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        $Ref.null)
      (= (as joined_unfolding@63@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
          $Snap.unit)
        (as recunf@62@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Ref.null)))
    (as joined_unfolding@63@01  Bool))))
(pop) ; 14
(set-option :timeout 0)
(push) ; 14
; [else-branch: 72 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Ref.null))
          (=
            (as joined_unfolding@63@01  Bool)
            (=>
              (not
                (=
                  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
                  $Ref.null))
              (<=
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            $Ref.null)
          (= (as joined_unfolding@63@01  Bool) true))
        (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))) $Ref.null)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Ref.null))
          (and
            (not
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
                $Ref.null))
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              ($Snap.combine
                ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
                ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
            (=
              ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
                ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
                ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
              $Snap.unit)
            (as recunf@62@01  Bool)))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            $Ref.null)
          (and
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Ref.null)
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Snap.unit)))
        (or
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            $Ref.null)
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Ref.null)))
        (as joined_unfolding@63@01  Bool))))))
; Joined path conditions
(push) ; 13
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
; [eval] index - 1
(push) ; 13
(assert (not (>= (- index@56@01 1) 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< (- index@56@01 1) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[0..index - 1]
; [eval] old(content(this))[..index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
; [eval] index - 1
(pop) ; 12
(pop) ; 11
(pop) ; 10
(push) ; 10
; [else-branch: 56 | !(First:($t@41@01) != Null && First:(First:(Second:(Second:($t@41@01)))) < elem@13@01)]
(assert (not
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (<
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      elem@13@01))))
(pop) ; 10
(push) ; 10
(set-option :timeout 10)
(assert (not (and
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)))
  (= $Ref.null hd@35@01))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] !(ptr.next != null && (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem))
; [eval] ptr.next != null && (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)
; [eval] ptr.next != null
(set-option :timeout 0)
(push) ; 10
; [then-branch: 77 | First:($t@41@01) == Null | live]
; [else-branch: 77 | First:($t@41@01) != Null | live]
(push) ; 11
; [then-branch: 77 | First:($t@41@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(pop) ; 11
(push) ; 11
; [else-branch: 77 | First:($t@41@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
; [eval] (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)
(push) ; 12
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
; [eval] this != end
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | First:($t@41@01) != Null | live]
; [else-branch: 78 | First:($t@41@01) == Null | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 78 | First:($t@41@01) != Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
(push) ; 14
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (= ptr@40@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (and
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 14
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
; [eval] this != end
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 79 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 79 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (and
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@64@01 Bool)
(assert (as recunf@64@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 80 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 80 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 80 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(push) ; 15
; [else-branch: 79 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 16
; [then-branch: 81 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | dead]
; [else-branch: 81 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(push) ; 17
; [else-branch: 81 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
(declare-const joined_unfolding@65@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (=
    (as joined_unfolding@65@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (= (as joined_unfolding@65@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Snap.unit)
    (as recunf@64@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))))
(assert (as joined_unfolding@65@01  Bool))
; [eval] ptr.next.data < elem
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (=
        (as joined_unfolding@65@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (= (as joined_unfolding@65@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Snap.unit)
        (as recunf@64@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)))
    (as joined_unfolding@65@01  Bool))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null)
    (=>
      (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (=
            (as joined_unfolding@65@01  Bool)
            (=>
              (not
                (=
                  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                  $Ref.null))
              (<=
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (= (as joined_unfolding@65@01  Bool) true))
        (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (and
            (not
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
                $Ref.null))
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              ($Snap.combine
                ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
                ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            (=
              ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
                ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
                ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
            (=
              ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
              $Snap.unit)
            (as recunf@64@01  Bool)))
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (and
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)
            (=
              ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Snap.unit)))
        (or
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null)
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null)))
        (as joined_unfolding@65@01  Bool))))))
(push) ; 10
(set-option :timeout 10)
(assert (not (and
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    elem@13@01))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (<
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      elem@13@01)))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; [then-branch: 82 | !(First:($t@41@01) != Null && First:(First:(Second:(Second:($t@41@01)))) < elem@13@01) | live]
; [else-branch: 82 | First:($t@41@01) != Null && First:(First:(Second:(Second:($t@41@01)))) < elem@13@01 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 82 | !(First:($t@41@01) != Null && First:(First:(Second:(Second:($t@41@01)))) < elem@13@01)]
(assert (not
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
    (<
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      elem@13@01))))
; [exec]
; tmp := new(data, next, head, held, changed)
(declare-const tmp@66@01 $Ref)
(assert (not (= tmp@66@01 $Ref.null)))
(declare-const data@67@01 Int)
(declare-const next@68@01 $Ref)
(declare-const head@69@01 $Ref)
(declare-const held@70@01 Int)
(declare-const changed@71@01 Bool)
(assert (not (= tmp@66@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)))))
(assert (not (= tmp@66@01 this@12@01)))
(assert (not (= tmp@66@01 prev@38@01)))
(assert (not (= tmp@66@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)))))
(assert (not (= tmp@66@01 hd@35@01)))
(assert (not (= tmp@66@01 ptr@40@01)))
(assert (not (= tmp@66@01 tmp@17@01)))
; [exec]
; tmp.data := elem
(push) ; 11
(set-option :timeout 10)
(assert (not (= ptr@40@01 tmp@66@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [exec]
; tmp.next := ptr.next
(declare-const next@72@01 $Ref)
(assert (= next@72@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01))))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= ptr@40@01 tmp@66@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [exec]
; ptr.next := tmp
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= tmp@66@01 ptr@40@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= ptr@40@01 $Ref.null)))
; [exec]
; fold acc(lseg(ptr.next, null), write)
; [eval] this != end
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= tmp@66@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 83 | tmp@66@01 != Null | live]
; [else-branch: 83 | tmp@66@01 == Null | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 83 | tmp@66@01 != Null]
(push) ; 12
(set-option :timeout 10)
(assert (not (and
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) next@72@01)
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) next@72@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) next@72@01)
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) next@72@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) next@72@01 $Ref.null))
; [eval] this != end
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= next@72@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not (= next@72@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 84 | next@72@01 != Null | live]
; [else-branch: 84 | next@72@01 == Null | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 84 | next@72@01 != Null]
(assert (not (= next@72@01 $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
(push) ; 14
(set-option :timeout 10)
(assert (not (= tmp@66@01 next@72@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (= ptr@40@01 next@72@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (= ptr@40@01 next@72@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (= tmp@66@01 next@72@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (and
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 14
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
; [eval] this != end
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 85 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 85 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 85 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  next@72@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  tmp@66@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  next@72@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ptr@40@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  tmp@66@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (and
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@73@01 Bool)
(assert (as recunf@73@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
; [then-branch: 86 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | live]
; [else-branch: 86 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 86 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(push) ; 15
; [else-branch: 85 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 16
; [then-branch: 87 | First:(Second:(First:(Second:(Second:($t@41@01))))) != Null | dead]
; [else-branch: 87 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null | live]
(push) ; 17
; [else-branch: 87 | First:(Second:(First:(Second:(Second:($t@41@01))))) == Null]
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
(declare-const joined_unfolding@74@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (=
    (as joined_unfolding@74@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (= (as joined_unfolding@74@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
      $Snap.unit)
    (as recunf@73@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Ref.null))))
(assert (as joined_unfolding@74@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (= next@72@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
; [then-branch: 88 | next@72@01 != Null | live]
; [else-branch: 88 | next@72@01 == Null | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 88 | next@72@01 != Null]
; [eval] this.data <= this.next.data
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(push) ; 13
; [else-branch: 84 | next@72@01 == Null]
(assert (= next@72@01 $Ref.null))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@41@01))) $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 14
; [then-branch: 89 | next@72@01 != Null | dead]
; [else-branch: 89 | next@72@01 == Null | live]
(push) ; 15
; [else-branch: 89 | next@72@01 == Null]
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
(declare-const joined_unfolding@75@01 Bool)
(assert (=>
  (not (= next@72@01 $Ref.null))
  (=
    (as joined_unfolding@75@01  Bool)
    (=>
      (not (= next@72@01 $Ref.null))
      (<=
        elem@13@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
(assert (=> (= next@72@01 $Ref.null) (= (as joined_unfolding@75@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@41@01))) next@72@01 $Ref.null))
(assert (=>
  (not (= next@72@01 $Ref.null))
  (and
    (not (= next@72@01 $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (=
        (as joined_unfolding@74@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (= (as joined_unfolding@74@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
          $Snap.unit)
        (as recunf@73@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Ref.null)))
    (as joined_unfolding@74@01  Bool))))
; Joined path conditions
(assert (=>
  (= next@72@01 $Ref.null)
  (and
    (= next@72@01 $Ref.null)
    (= ($Snap.first ($Snap.second ($Snap.second $t@41@01))) $Snap.unit))))
(assert (or (= next@72@01 $Ref.null) (not (= next@72@01 $Ref.null))))
(push) ; 12
(assert (not (as joined_unfolding@75@01  Bool)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (as joined_unfolding@75@01  Bool))
(assert (lseg%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@13@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap next@72@01)
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
      $Snap.unit))) tmp@66@01 $Ref.null))
(push) ; 12
(set-option :timeout 10)
(assert (not (and
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) tmp@66@01)
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(lseg(ptr, null), write)
; [eval] this != end
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ptr@40@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 90 | ptr@40@01 != Null | live]
; [else-branch: 90 | ptr@40@01 == Null | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 90 | ptr@40@01 != Null]
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(push) ; 13
; [eval] this != end
(push) ; 14
(set-option :timeout 10)
(assert (not (= tmp@66@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 91 | tmp@66@01 != Null | live]
; [else-branch: 91 | tmp@66@01 == Null | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 91 | tmp@66@01 != Null]
(push) ; 15
(set-option :timeout 10)
(assert (not (= ptr@40@01 tmp@66@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ptr@40@01 tmp@66@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (and
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) next@72@01)
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 15
; [eval] this != end
(push) ; 16
(set-option :timeout 10)
(assert (not (= next@72@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (not (= next@72@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 92 | next@72@01 != Null | live]
; [else-branch: 92 | next@72@01 == Null | live]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 92 | next@72@01 != Null]
(assert (not (= next@72@01 $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
(push) ; 17
(set-option :timeout 10)
(assert (not (= tmp@66@01 next@72@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (= ptr@40@01 next@72@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (= tmp@66@01 next@72@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (= ptr@40@01 next@72@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (and
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@76@01 Bool)
(assert (as recunf@76@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (= next@72@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 18
; 0.01s
; (get-info :all-statistics)
; [then-branch: 93 | next@72@01 != Null | live]
; [else-branch: 93 | next@72@01 == Null | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 93 | next@72@01 != Null]
; [eval] this.data <= this.next.data
(pop) ; 18
(pop) ; 17
; Joined path conditions
(pop) ; 16
(push) ; 16
; [else-branch: 92 | next@72@01 == Null]
(assert (= next@72@01 $Ref.null))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@41@01))) $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 17
; [then-branch: 94 | next@72@01 != Null | dead]
; [else-branch: 94 | next@72@01 == Null | live]
(push) ; 18
; [else-branch: 94 | next@72@01 == Null]
(pop) ; 18
(pop) ; 17
; Joined path conditions
(pop) ; 16
(pop) ; 15
(declare-const joined_unfolding@77@01 Bool)
(assert (=>
  (not (= next@72@01 $Ref.null))
  (=
    (as joined_unfolding@77@01  Bool)
    (=>
      (not (= next@72@01 $Ref.null))
      (<=
        elem@13@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))))
(assert (=> (= next@72@01 $Ref.null) (= (as joined_unfolding@77@01  Bool) true)))
; Joined path conditions
(assert (=>
  (not (= next@72@01 $Ref.null))
  (and
    (not (= next@72@01 $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
      $Snap.unit)
    (as recunf@76@01  Bool))))
; Joined path conditions
(assert (as joined_unfolding@77@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (= tmp@66@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 95 | tmp@66@01 != Null | live]
; [else-branch: 95 | tmp@66@01 == Null | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 95 | tmp@66@01 != Null]
; [eval] this.data <= this.next.data
(pop) ; 16
(pop) ; 15
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (not (= tmp@66@01 $Ref.null))
  (and
    (=>
      (not (= next@72@01 $Ref.null))
      (=
        (as joined_unfolding@77@01  Bool)
        (=>
          (not (= next@72@01 $Ref.null))
          (<=
            elem@13@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))))
    (=> (= next@72@01 $Ref.null) (= (as joined_unfolding@77@01  Bool) true))
    (=>
      (not (= next@72@01 $Ref.null))
      (and
        (not (= next@72@01 $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@41@01))))))
          $Snap.unit)
        (as recunf@76@01  Bool)))
    (as joined_unfolding@77@01  Bool))))
(push) ; 13
(assert (not (=>
  (not (= tmp@66@01 $Ref.null))
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01)))
    elem@13@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not (= tmp@66@01 $Ref.null))
  (<=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01)))
    elem@13@01)))
(assert (lseg%trigger ($Snap.combine
  ($Snap.first ($Snap.second $t@41@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap tmp@66@01)
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap elem@13@01)
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap next@72@01)
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
            $Snap.unit)))
      $Snap.unit))) ptr@40@01 $Ref.null))
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) ptr@40@01)
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [exec]
; apply acc(lseg(ptr, null), write) &&
;   contentNodes(ptr, null)[0] == old(content(this))[index - 1] --*
;   acc(lseg(hd, null), write) &&
;   contentNodes(hd, null) ==
;   old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(set-option :timeout 0)
(push) ; 13
(pop) ; 13
; Joined path conditions
; [eval] index - 1
(push) ; 13
(assert (not (>= (- index@39@01 1) 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< (- index@39@01 1) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[0..index - 1]
; [eval] old(content(this))[..index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
; [eval] index - 1
; [eval] contentNodes(ptr, null)[0] == old(content(this))[index - 1]
; [eval] contentNodes(ptr, null)[0]
; [eval] contentNodes(ptr, null)
(push) ; 13
(assert (contentNodes%precondition ($Snap.combine
  ($Snap.first ($Snap.second $t@41@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap tmp@66@01)
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap elem@13@01)
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap next@72@01)
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
            $Snap.unit)))
      $Snap.unit))) ptr@40@01 $Ref.null))
(pop) ; 13
; Joined path conditions
(assert (contentNodes%precondition ($Snap.combine
  ($Snap.first ($Snap.second $t@41@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap tmp@66@01)
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.IntTo$Snap elem@13@01)
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap next@72@01)
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
            $Snap.unit)))
      $Snap.unit))) ptr@40@01 $Ref.null))
(push) ; 13
(assert (not (<
  0
  (Seq_length
    (contentNodes ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap tmp@66@01)
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap elem@13@01)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap next@72@01)
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                $Snap.unit)))
          $Snap.unit))) ptr@40@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(content(this))[index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
; [eval] index - 1
(push) ; 13
(assert (not (>= (- index@39@01 1) 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< (- index@39@01 1) (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (=
  (Seq_index
    (contentNodes ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap tmp@66@01)
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap elem@13@01)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap next@72@01)
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                $Snap.unit)))
          $Snap.unit))) ptr@40@01 $Ref.null)
    0)
  (Seq_index (content $t@15@01 this@12@01) (- index@39@01 1)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_index
    (contentNodes ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap tmp@66@01)
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap elem@13@01)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap next@72@01)
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                $Snap.unit)))
          $Snap.unit))) ptr@40@01 $Ref.null)
    0)
  (Seq_index (content $t@15@01 this@12@01) (- index@39@01 1))))
(assert (=
  (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap tmp@66@01)
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap elem@13@01)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap next@72@01)
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                $Snap.unit)))
          $Snap.unit)))
    $Snap.unit))
  ($Snap.combine
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.second $t@41@01))
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap tmp@66@01)
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@13@01)
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap next@72@01)
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                  $Snap.unit)))
            $Snap.unit)))
      $Snap.unit)))
    ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.second $t@41@01))
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap tmp@66@01)
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@13@01)
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap next@72@01)
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                  $Snap.unit)))
            $Snap.unit)))
      $Snap.unit))))))
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) hd@35@01)
  (= hd@35@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap tmp@66@01)
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap elem@13@01)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap next@72@01)
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                $Snap.unit)))
          $Snap.unit)))
    $Snap.unit)))
  $Snap.unit))
; [eval] contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
; [eval] contentNodes(hd, null)
(set-option :timeout 0)
(push) ; 13
(assert (contentNodes%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap tmp@66@01)
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap elem@13@01)
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap next@72@01)
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
              $Snap.unit)))
        $Snap.unit)))
  $Snap.unit))) hd@35@01 $Ref.null))
(pop) ; 13
; Joined path conditions
(assert (contentNodes%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap tmp@66@01)
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.IntTo$Snap elem@13@01)
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap next@72@01)
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
              $Snap.unit)))
        $Snap.unit)))
  $Snap.unit))) hd@35@01 $Ref.null))
; [eval] old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
; [eval] old(content(this))[0..index - 1]
; [eval] old(content(this))[..index - 1]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
; [eval] index - 1
; [eval] old[lhs](contentNodes(ptr, null))
; [eval] contentNodes(ptr, null)
(push) ; 13
(pop) ; 13
; Joined path conditions
(assert (Seq_equal
  (contentNodes ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap tmp@66@01)
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap elem@13@01)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap next@72@01)
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                $Snap.unit)))
          $Snap.unit)))
    $Snap.unit))) hd@35@01 $Ref.null)
  (Seq_append
    (Seq_drop (Seq_take (content $t@15@01 this@12@01) (- index@39@01 1)) 0)
    (contentNodes ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap tmp@66@01)
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap elem@13@01)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap next@72@01)
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                $Snap.unit)))
          $Snap.unit))) ptr@40@01 $Ref.null))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (= hd@35@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)))
  (= $Ref.null hd@35@01))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= this@12@01 tmp@66@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not
  (=
    $Snap.unit
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.second $t@41@01))
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap tmp@66@01)
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@13@01)
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap next@72@01)
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                  $Snap.unit)))
            $Snap.unit)))
      $Snap.unit)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.second $t@41@01))
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap tmp@66@01)
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@13@01)
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap next@72@01)
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                  $Snap.unit)))
            $Snap.unit)))
      $Snap.unit)))
    $Snap.unit))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not (= head@69@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) head@69@01))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= tmp@66@01 this@12@01)) (not (= this@12@01 tmp@66@01))))
; [exec]
; fold acc(List(this), write)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= hd@35@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (List%trigger ($Snap.combine
  ($Snap.first $t@15@01)
  ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap tmp@66@01)
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap elem@13@01)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap next@72@01)
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                $Snap.unit)))
          $Snap.unit)))
    $Snap.unit)))) this@12@01))
; [eval] 0 <= index
(set-option :timeout 0)
(push) ; 13
(assert (not (<= 0 index@39@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 index@39@01))
; [eval] index <= |old(content(this))|
; [eval] |old(content(this))|
; [eval] old(content(this))
; [eval] content(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
; [eval] content(this) == old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..]
; [eval] content(this)
(push) ; 13
(assert (content%precondition ($Snap.combine
  ($Snap.first $t@15@01)
  ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap tmp@66@01)
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap elem@13@01)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap next@72@01)
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                $Snap.unit)))
          $Snap.unit)))
    $Snap.unit)))) this@12@01))
(pop) ; 13
; Joined path conditions
(assert (content%precondition ($Snap.combine
  ($Snap.first $t@15@01)
  ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second $t@41@01))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap tmp@66@01)
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.IntTo$Snap elem@13@01)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap next@72@01)
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                $Snap.unit)))
          $Snap.unit)))
    $Snap.unit)))) this@12@01))
; [eval] old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..]
; [eval] old(content(this))[0..index] ++ Seq(elem)
; [eval] old(content(this))[0..index]
; [eval] old(content(this))[..index]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
; [eval] Seq(elem)
(assert (= (Seq_length (Seq_singleton elem@13@01)) 1))
; [eval] old(content(this))[index..]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (Seq_equal
  (content ($Snap.combine
    ($Snap.first $t@15@01)
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.second $t@41@01))
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap tmp@66@01)
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@13@01)
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap next@72@01)
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                  $Snap.unit)))
            $Snap.unit)))
      $Snap.unit)))) this@12@01)
  (Seq_append
    (Seq_append
      (Seq_drop (Seq_take (content $t@15@01 this@12@01) index@39@01) 0)
      (Seq_singleton elem@13@01))
    (Seq_drop (content $t@15@01 this@12@01) index@39@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.13s
; (get-info :all-statistics)
(assert (Seq_equal
  (content ($Snap.combine
    ($Snap.first $t@15@01)
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.second $t@41@01))
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap tmp@66@01)
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@13@01)
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap next@72@01)
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
                  $Snap.unit)))
            $Snap.unit)))
      $Snap.unit)))) this@12@01)
  (Seq_append
    (Seq_append
      (Seq_drop (Seq_take (content $t@15@01 this@12@01) index@39@01) 0)
      (Seq_singleton elem@13@01))
    (Seq_drop (content $t@15@01 this@12@01) index@39@01))))
(pop) ; 12
(pop) ; 11
(pop) ; 10
(push) ; 10
; [else-branch: 82 | First:($t@41@01) != Null && First:(First:(Second:(Second:($t@41@01)))) < elem@13@01]
(assert (and
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@41@01)) $Ref.null))
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@41@01)))))
    elem@13@01)))
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 25 | First:($t@15@01) == Null || elem@13@01 <= First:(Second:($t@15@01))]
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)
  (<=
    elem@13@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@15@01))))))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 1 | First:($t@15@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))
(pop) ; 3
; [eval] !(this.head != null)
; [eval] this.head != null
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | First:($t@15@01) == Null | live]
; [else-branch: 96 | First:($t@15@01) != Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 96 | First:($t@15@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))
; [eval] this.head == null || elem <= this.head.data
; [eval] this.head == null
(push) ; 4
; [then-branch: 97 | First:($t@15@01) == Null | live]
; [else-branch: 97 | First:($t@15@01) != Null | live]
(push) ; 5
; [then-branch: 97 | First:($t@15@01) == Null]
(pop) ; 5
(push) ; 5
; [else-branch: 97 | First:($t@15@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)))
; [eval] elem <= this.head.data
(check-sat)
; unsat
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | First:($t@15@01) == Null | live]
; [else-branch: 98 | First:($t@15@01) != Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 98 | First:($t@15@01) == Null]
; [exec]
; tmp := new(data, next, head, held, changed)
(declare-const tmp@78@01 $Ref)
(assert (not (= tmp@78@01 $Ref.null)))
(declare-const data@79@01 Int)
(declare-const next@80@01 $Ref)
(declare-const head@81@01 $Ref)
(declare-const held@82@01 Int)
(declare-const changed@83@01 Bool)
(assert (not (= tmp@78@01 this@12@01)))
(assert (not (= tmp@78@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)))))
(assert (not (= tmp@78@01 tmp@17@01)))
; [exec]
; tmp.data := elem
; [exec]
; tmp.next := this.head
(declare-const next@84@01 $Ref)
(assert (= next@84@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01))))
; [exec]
; fold acc(lseg(this.head, null), write)
; [eval] this != end
; [then-branch: 99 | First:($t@15@01) != Null | dead]
; [else-branch: 99 | First:($t@15@01) == Null | live]
(push) ; 5
; [else-branch: 99 | First:($t@15@01) == Null]
(assert (lseg%trigger $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null))
(assert (= ($Snap.second $t@15@01) $Snap.unit))
; [exec]
; fold acc(lseg(tmp, null), write)
; [eval] this != end
(push) ; 6
(set-option :timeout 10)
(assert (not (= tmp@78@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 100 | tmp@78@01 != Null | live]
; [else-branch: 100 | tmp@78@01 == Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 100 | tmp@78@01 != Null]
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) next@84@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) next@84@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (lseg%trigger ($Snap.second $t@15@01) next@84@01 $Ref.null))
; [eval] this != end
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= next@84@01 $Ref.null)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | next@84@01 != Null | dead]
; [else-branch: 101 | next@84@01 == Null | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 101 | next@84@01 == Null]
(assert (= next@84@01 $Ref.null))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 9
; [then-branch: 102 | next@84@01 != Null | dead]
; [else-branch: 102 | next@84@01 == Null | live]
(push) ; 10
; [else-branch: 102 | next@84@01 == Null]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (lseg%trigger ($Snap.second $t@15@01) next@84@01 $Ref.null))
(assert (= next@84@01 $Ref.null))
(assert (lseg%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@13@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap next@84@01)
    ($Snap.combine ($Snap.second $t@15@01) $Snap.unit))) tmp@78@01 $Ref.null))
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) tmp@78@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; this.head := tmp
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= tmp@78@01 this@12@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(List(this), write)
(assert (List%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap tmp@78@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap elem@13@01)
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap next@84@01)
      ($Snap.combine ($Snap.second $t@15@01) $Snap.unit)))) this@12@01))
; [eval] 0 <= index
; [eval] index <= |old(content(this))|
; [eval] |old(content(this))|
; [eval] old(content(this))
; [eval] content(this)
(set-option :timeout 0)
(push) ; 7
(assert (content%precondition $t@15@01 this@12@01))
(pop) ; 7
; Joined path conditions
(assert (content%precondition $t@15@01 this@12@01))
(push) ; 7
(assert (not (<= 0 (Seq_length (content $t@15@01 this@12@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (Seq_length (content $t@15@01 this@12@01))))
; [eval] content(this) == old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..]
; [eval] content(this)
(push) ; 7
(assert (content%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap tmp@78@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap elem@13@01)
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap next@84@01)
      ($Snap.combine ($Snap.second $t@15@01) $Snap.unit)))) this@12@01))
(pop) ; 7
; Joined path conditions
(assert (content%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap tmp@78@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap elem@13@01)
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap next@84@01)
      ($Snap.combine ($Snap.second $t@15@01) $Snap.unit)))) this@12@01))
; [eval] old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..]
; [eval] old(content(this))[0..index] ++ Seq(elem)
; [eval] old(content(this))[0..index]
; [eval] old(content(this))[..index]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
; [eval] Seq(elem)
(assert (= (Seq_length (Seq_singleton elem@13@01)) 1))
; [eval] old(content(this))[index..]
; [eval] old(content(this))
; [eval] content(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (Seq_equal
  (content ($Snap.combine
    ($SortWrappers.$RefTo$Snap tmp@78@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@13@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap next@84@01)
        ($Snap.combine ($Snap.second $t@15@01) $Snap.unit)))) this@12@01)
  (Seq_append
    (Seq_append
      (Seq_drop (Seq_take (content $t@15@01 this@12@01) 0) 0)
      (Seq_singleton elem@13@01))
    (Seq_drop (content $t@15@01 this@12@01) 0)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (content ($Snap.combine
    ($SortWrappers.$RefTo$Snap tmp@78@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@13@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap next@84@01)
        ($Snap.combine ($Snap.second $t@15@01) $Snap.unit)))) this@12@01)
  (Seq_append
    (Seq_append
      (Seq_drop (Seq_take (content $t@15@01 this@12@01) 0) 0)
      (Seq_singleton elem@13@01))
    (Seq_drop (content $t@15@01 this@12@01) 0))))
(pop) ; 6
(pop) ; 5
(pop) ; 4
; [eval] !(this.head == null || elem <= this.head.data)
; [eval] this.head == null || elem <= this.head.data
; [eval] this.head == null
(push) ; 4
; [then-branch: 103 | First:($t@15@01) == Null | live]
; [else-branch: 103 | First:($t@15@01) != Null | live]
(push) ; 5
; [then-branch: 103 | First:($t@15@01) == Null]
(pop) ; 5
(push) ; 5
; [else-branch: 103 | First:($t@15@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)))
; [eval] elem <= this.head.data
(check-sat)
; unsat
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [then-branch: 104 | First:($t@15@01) != Null | dead]
; [else-branch: 104 | First:($t@15@01) == Null | live]
(push) ; 4
; [else-branch: 104 | First:($t@15@01) == Null]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 96 | First:($t@15@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@15@01)) $Ref.null)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- dequeue ----------
(declare-const this@85@01 $Ref)
(declare-const res@86@01 Int)
(declare-const this@87@01 $Ref)
(declare-const res@88@01 Int)
(push) ; 1
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 ($Snap.combine ($Snap.first $t@89@01) ($Snap.second $t@89@01))))
(assert (= ($Snap.second $t@89@01) $Snap.unit))
; [eval] 0 < length(this)
; [eval] length(this)
(push) ; 2
(assert (length%precondition ($Snap.first $t@89@01) this@87@01))
(pop) ; 2
; Joined path conditions
(assert (length%precondition ($Snap.first $t@89@01) this@87@01))
(assert (< 0 (length ($Snap.first $t@89@01) this@87@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 ($Snap.combine ($Snap.first $t@90@01) ($Snap.second $t@90@01))))
(assert (=
  ($Snap.second $t@90@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@90@01))
    ($Snap.second ($Snap.second $t@90@01)))))
(assert (= ($Snap.first ($Snap.second $t@90@01)) $Snap.unit))
; [eval] res == old(content(this)[0])
; [eval] old(content(this)[0])
; [eval] content(this)[0]
; [eval] content(this)
(push) ; 3
(assert (content%precondition ($Snap.first $t@89@01) this@87@01))
(pop) ; 3
; Joined path conditions
(assert (content%precondition ($Snap.first $t@89@01) this@87@01))
(push) ; 3
(assert (not (< 0 (Seq_length (content ($Snap.first $t@89@01) this@87@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= res@88@01 (Seq_index (content ($Snap.first $t@89@01) this@87@01) 0)))
(assert (= ($Snap.second ($Snap.second $t@90@01)) $Snap.unit))
; [eval] content(this) == old(content(this)[1..])
; [eval] content(this)
(push) ; 3
(assert (content%precondition ($Snap.first $t@90@01) this@87@01))
(pop) ; 3
; Joined path conditions
(assert (content%precondition ($Snap.first $t@90@01) this@87@01))
; [eval] old(content(this)[1..])
; [eval] content(this)[1..]
; [eval] content(this)
(push) ; 3
(pop) ; 3
; Joined path conditions
(assert (Seq_equal
  (content ($Snap.first $t@90@01) this@87@01)
  (Seq_drop (content ($Snap.first $t@89@01) this@87@01) 1)))
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(List(this), write)
(assert (=
  ($Snap.first $t@89@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@89@01))
    ($Snap.second ($Snap.first $t@89@01)))))
(assert (not (= this@87@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (List%trigger ($Snap.first $t@89@01) this@87@01))
; [exec]
; unfold acc(lseg(this.head, null), write)
; [eval] this != end
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@89@01))) $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@89@01))) $Ref.null))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 105 | First:(First:($t@89@01)) != Null | live]
; [else-branch: 105 | First:(First:($t@89@01)) == Null | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 105 | First:(First:($t@89@01)) != Null]
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@89@01))) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first $t@89@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@89@01)))
    ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first $t@89@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(push) ; 4
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01))))) $Ref.null))
; [eval] this != end
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | First:(Second:(Second:(First:($t@89@01)))) != Null | live]
; [else-branch: 106 | First:(Second:(Second:(First:($t@89@01)))) == Null | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 106 | First:(Second:(Second:(First:($t@89@01)))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@89@01)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@89@01)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 6
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))) $Ref.null))
; [eval] this != end
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 107 | First:(Second:(First:(Second:(Second:(Second:(First:($t@89@01))))))) != Null | live]
; [else-branch: 107 | First:(Second:(First:(Second:(Second:(Second:(First:($t@89@01))))))) == Null | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 107 | First:(Second:(First:(Second:(Second:(Second:(First:($t@89@01))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
    $Ref.null)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))))
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@89@01)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@89@01)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@91@01 Bool)
(assert (as recunf@91@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 108 | First:(Second:(First:(Second:(Second:(Second:(First:($t@89@01))))))) != Null | live]
; [else-branch: 108 | First:(Second:(First:(Second:(Second:(Second:(First:($t@89@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 108 | First:(Second:(First:(Second:(Second:(Second:(First:($t@89@01))))))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 9
(pop) ; 8
; Joined path conditions
(pop) ; 7
(push) ; 7
; [else-branch: 107 | First:(Second:(First:(Second:(Second:(Second:(First:($t@89@01))))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 8
; [then-branch: 109 | First:(Second:(First:(Second:(Second:(Second:(First:($t@89@01))))))) != Null | dead]
; [else-branch: 109 | First:(Second:(First:(Second:(Second:(Second:(First:($t@89@01))))))) == Null | live]
(push) ; 9
; [else-branch: 109 | First:(Second:(First:(Second:(Second:(Second:(First:($t@89@01))))))) == Null]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
(declare-const joined_unfolding@92@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
      $Ref.null))
  (=
    (as joined_unfolding@92@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
    $Ref.null)
  (= (as joined_unfolding@92@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
      $Snap.unit)
    (as recunf@91@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
      $Ref.null))))
(assert (as joined_unfolding@92@01  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 110 | First:(Second:(Second:(First:($t@89@01)))) != Null | live]
; [else-branch: 110 | First:(Second:(Second:(First:($t@89@01)))) == Null | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 110 | First:(Second:(Second:(First:($t@89@01)))) != Null]
; [eval] this.data <= this.next.data
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(push) ; 5
; [else-branch: 106 | First:(Second:(Second:(First:($t@89@01)))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 6
; [then-branch: 111 | First:(Second:(Second:(First:($t@89@01)))) != Null | dead]
; [else-branch: 111 | First:(Second:(Second:(First:($t@89@01)))) == Null | live]
(push) ; 7
; [else-branch: 111 | First:(Second:(Second:(First:($t@89@01)))) == Null]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
(declare-const joined_unfolding@93@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
      $Ref.null))
  (=
    (as joined_unfolding@93@01  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
          $Ref.null))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@89@01))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
    $Ref.null)
  (= (as joined_unfolding@93@01  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01))))) $Ref.null))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
        $Ref.null))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
          $Ref.null))
      (=
        (as joined_unfolding@92@01  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
              $Ref.null))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
        $Ref.null)
      (= (as joined_unfolding@92@01  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))) $Ref.null)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
            $Ref.null))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))))))
          $Snap.unit)
        (as recunf@91@01  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01))))))))
          $Ref.null)))
    (as joined_unfolding@92@01  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
      $Ref.null))))
(assert (as joined_unfolding@93@01  Bool))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (lseg%trigger ($Snap.second ($Snap.first $t@89@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@89@01))) $Ref.null))
; [exec]
; res := this.head.data
(declare-const res@94@01 Int)
(assert (=
  res@94@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@89@01))))))
; [exec]
; this.head := this.head.next
(declare-const head@95@01 $Ref)
(assert (=
  head@95@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))))
; [exec]
; fold acc(List(this), write)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))
  head@95@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (List%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap head@95@01)
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))) this@87@01))
; [eval] res == old(content(this)[0])
; [eval] old(content(this)[0])
; [eval] content(this)[0]
; [eval] content(this)
(set-option :timeout 0)
(push) ; 4
(assert (content%precondition ($Snap.first $t@89@01) this@87@01))
(pop) ; 4
; Joined path conditions
(assert (content%precondition ($Snap.first $t@89@01) this@87@01))
(push) ; 4
(assert (not (< 0 (Seq_length (content ($Snap.first $t@89@01) this@87@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= res@94@01 (Seq_index (content ($Snap.first $t@89@01) this@87@01) 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= res@94@01 (Seq_index (content ($Snap.first $t@89@01) this@87@01) 0)))
; [eval] content(this) == old(content(this)[1..])
; [eval] content(this)
(push) ; 4
(assert (content%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap head@95@01)
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))) this@87@01))
(pop) ; 4
; Joined path conditions
(assert (content%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap head@95@01)
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))) this@87@01))
; [eval] old(content(this)[1..])
; [eval] content(this)[1..]
; [eval] content(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (Seq_equal
  (content ($Snap.combine
    ($SortWrappers.$RefTo$Snap head@95@01)
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))) this@87@01)
  (Seq_drop (content ($Snap.first $t@89@01) this@87@01) 1))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  (content ($Snap.combine
    ($SortWrappers.$RefTo$Snap head@95@01)
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@89@01)))))) this@87@01)
  (Seq_drop (content ($Snap.first $t@89@01) this@87@01) 1)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test ----------
(declare-const lock@96@01 $Ref)
(declare-const lock@97@01 $Ref)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; inhale acc(List(lock), write) &&
;   (acc(lock.held, write) && acc(lock.changed, write))
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 ($Snap.combine ($Snap.first $t@99@01) ($Snap.second $t@99@01))))
(assert (=
  ($Snap.second $t@99@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@99@01))
    ($Snap.second ($Snap.second $t@99@01)))))
(assert (not (= lock@97@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label acq
; [eval] 2 <= length(lock)
; [eval] length(lock)
(set-option :timeout 0)
(push) ; 3
(assert (length%precondition ($Snap.first $t@99@01) lock@97@01))
(pop) ; 3
; Joined path conditions
(assert (length%precondition ($Snap.first $t@99@01) lock@97@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (<= 2 (length ($Snap.first $t@99@01) lock@97@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<= 2 (length ($Snap.first $t@99@01) lock@97@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 112 | 2 <= length(First:($t@99@01), lock@97@01) | live]
; [else-branch: 112 | !(2 <= length(First:($t@99@01), lock@97@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 112 | 2 <= length(First:($t@99@01), lock@97@01)]
(assert (<= 2 (length ($Snap.first $t@99@01) lock@97@01)))
; [exec]
; var r1: Int
(declare-const r1@100@01 Int)
; [exec]
; r1 := dequeue(lock)
; [eval] 0 < length(this)
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (< 0 (length ($Snap.first $t@99@01) lock@97@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (length ($Snap.first $t@99@01) lock@97@01)))
(declare-const res@101@01 Int)
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 ($Snap.combine ($Snap.first $t@102@01) ($Snap.second $t@102@01))))
(assert (=
  ($Snap.second $t@102@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@102@01))
    ($Snap.second ($Snap.second $t@102@01)))))
(assert (= ($Snap.first ($Snap.second $t@102@01)) $Snap.unit))
; [eval] res == old(content(this)[0])
; [eval] old(content(this)[0])
; [eval] content(this)[0]
; [eval] content(this)
(push) ; 4
(assert (content%precondition ($Snap.first $t@99@01) lock@97@01))
(pop) ; 4
; Joined path conditions
(assert (content%precondition ($Snap.first $t@99@01) lock@97@01))
(push) ; 4
(assert (not (< 0 (Seq_length (content ($Snap.first $t@99@01) lock@97@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= res@101@01 (Seq_index (content ($Snap.first $t@99@01) lock@97@01) 0)))
(assert (= ($Snap.second ($Snap.second $t@102@01)) $Snap.unit))
; [eval] content(this) == old(content(this)[1..])
; [eval] content(this)
(push) ; 4
(assert (content%precondition ($Snap.first $t@102@01) lock@97@01))
(pop) ; 4
; Joined path conditions
(assert (content%precondition ($Snap.first $t@102@01) lock@97@01))
; [eval] old(content(this)[1..])
; [eval] content(this)[1..]
; [eval] content(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (Seq_equal
  (content ($Snap.first $t@102@01) lock@97@01)
  (Seq_drop (content ($Snap.first $t@99@01) lock@97@01) 1)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; assert r1 <= peek(lock)
; [eval] r1 <= peek(lock)
; [eval] peek(lock)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 < length(this)
; [eval] length(this)
(push) ; 5
(assert (length%precondition ($Snap.first $t@102@01) lock@97@01))
(pop) ; 5
; Joined path conditions
(assert (length%precondition ($Snap.first $t@102@01) lock@97@01))
(push) ; 5
(assert (not (< 0 (length ($Snap.first $t@102@01) lock@97@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (length ($Snap.first $t@102@01) lock@97@01)))
(assert (peek%precondition ($Snap.combine ($Snap.first $t@102@01) $Snap.unit) lock@97@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (length%precondition ($Snap.first $t@102@01) lock@97@01)
  (< 0 (length ($Snap.first $t@102@01) lock@97@01))
  (peek%precondition ($Snap.combine ($Snap.first $t@102@01) $Snap.unit) lock@97@01)))
(push) ; 4
(assert (not (<=
  res@101@01
  (peek ($Snap.combine ($Snap.first $t@102@01) $Snap.unit) lock@97@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  res@101@01
  (peek ($Snap.combine ($Snap.first $t@102@01) $Snap.unit) lock@97@01)))
; [exec]
; lock.changed := true
; [exec]
; exhale acc(List(lock), write) &&
;   (acc(lock.held, write) &&
;   (acc(lock.changed, write) &&
;   (old[acq](content(lock)) == content(lock) || lock.changed)))
; [eval] old[acq](content(lock)) == content(lock) || lock.changed
; [eval] old[acq](content(lock)) == content(lock)
; [eval] old[acq](content(lock))
; [eval] content(lock)
(push) ; 4
(pop) ; 4
; Joined path conditions
; [eval] content(lock)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 113 | content(First:($t@99@01), lock@97@01) === content(First:($t@102@01), lock@97@01) | live]
; [else-branch: 113 | !(content(First:($t@99@01), lock@97@01) === content(First:($t@102@01), lock@97@01)) | live]
(push) ; 5
; [then-branch: 113 | content(First:($t@99@01), lock@97@01) === content(First:($t@102@01), lock@97@01)]
(assert (Seq_equal
  (content ($Snap.first $t@99@01) lock@97@01)
  (content ($Snap.first $t@102@01) lock@97@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 113 | !(content(First:($t@99@01), lock@97@01) === content(First:($t@102@01), lock@97@01))]
(assert (not
  (Seq_equal
    (content ($Snap.first $t@99@01) lock@97@01)
    (content ($Snap.first $t@102@01) lock@97@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Seq_equal
      (content ($Snap.first $t@99@01) lock@97@01)
      (content ($Snap.first $t@102@01) lock@97@01)))
  (Seq_equal
    (content ($Snap.first $t@99@01) lock@97@01)
    (content ($Snap.first $t@102@01) lock@97@01))))
; [eval] (forperm r: Ref [r.held] :: false)
(pop) ; 3
(push) ; 3
; [else-branch: 112 | !(2 <= length(First:($t@99@01), lock@97@01))]
(assert (not (<= 2 (length ($Snap.first $t@99@01) lock@97@01))))
(pop) ; 3
; [eval] !(2 <= length(lock))
; [eval] 2 <= length(lock)
; [eval] length(lock)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (<= 2 (length ($Snap.first $t@99@01) lock@97@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (<= 2 (length ($Snap.first $t@99@01) lock@97@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | !(2 <= length(First:($t@99@01), lock@97@01)) | live]
; [else-branch: 114 | 2 <= length(First:($t@99@01), lock@97@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 114 | !(2 <= length(First:($t@99@01), lock@97@01))]
(assert (not (<= 2 (length ($Snap.first $t@99@01) lock@97@01))))
; [exec]
; exhale acc(List(lock), write) &&
;   (acc(lock.held, write) &&
;   (acc(lock.changed, write) &&
;   (old[acq](content(lock)) == content(lock) || lock.changed)))
; [eval] old[acq](content(lock)) == content(lock) || lock.changed
; [eval] old[acq](content(lock)) == content(lock)
; [eval] old[acq](content(lock))
; [eval] content(lock)
(push) ; 4
(assert (content%precondition ($Snap.first $t@99@01) lock@97@01))
(pop) ; 4
; Joined path conditions
(assert (content%precondition ($Snap.first $t@99@01) lock@97@01))
; [eval] content(lock)
(push) ; 4
(pop) ; 4
; Joined path conditions
; [eval] (forperm r: Ref [r.held] :: false)
(pop) ; 3
(push) ; 3
; [else-branch: 114 | 2 <= length(First:($t@99@01), lock@97@01)]
(assert (<= 2 (length ($Snap.first $t@99@01) lock@97@01)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
