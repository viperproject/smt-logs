(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:40:22
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
(declare-sort GlobalKPermission 0)
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
(declare-fun $SortWrappers.GlobalKPermissionTo$Snap (GlobalKPermission) $Snap)
(declare-fun $SortWrappers.$SnapToGlobalKPermission ($Snap) GlobalKPermission)
(assert (forall ((x GlobalKPermission)) (!
    (= x ($SortWrappers.$SnapToGlobalKPermission($SortWrappers.GlobalKPermissionTo$Snap x)))
    :pattern (($SortWrappers.GlobalKPermissionTo$Snap x))
    :qid |$Snap.$SnapToGlobalKPermissionTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.GlobalKPermissionTo$Snap($SortWrappers.$SnapToGlobalKPermission x)))
    :pattern (($SortWrappers.$SnapToGlobalKPermission x))
    :qid |$Snap.GlobalKPermissionTo$SnapToGlobalKPermission|
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
(declare-const globalK$<Perm> $Perm)
; Declaring symbols related to program functions (from program analysis)
(declare-fun Nodevals$ ($Snap $Ref) Seq<Int>)
(declare-fun Nodevals$%limited ($Snap $Ref) Seq<Int>)
(declare-fun Nodevals$%stateless ($Ref) Bool)
(declare-fun Nodevals$%precondition ($Snap $Ref) Bool)
(declare-fun Nodereverse_vals$ ($Snap $Ref) Seq<Int>)
(declare-fun Nodereverse_vals$%limited ($Snap $Ref) Seq<Int>)
(declare-fun Nodereverse_vals$%stateless ($Ref) Bool)
(declare-fun Nodereverse_vals$%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Node$MonitorInvariant%trigger ($Snap $Ref) Bool)
(declare-fun Nodelist$%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
(assert true)
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
(assert (and
  (> (as globalK$<Perm>  $Perm) $Perm.No)
  (> $Perm.Write (as globalK$<Perm>  $Perm))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION Nodevals$----------
(declare-fun this$_2@0@00 () $Ref)
(declare-fun result@1@00 () Seq<Int>)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this$_2 != null
(assert (not (= this$_2@0@00 $Ref.null)))
(declare-const $k@4@00 $Perm)
(assert ($Perm.isReadVar $k@4@00))
(assert (<= $Perm.No $k@4@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_2@0@00 $Ref)) (!
  (= (Nodevals$%limited s@$ this$_2@0@00) (Nodevals$ s@$ this$_2@0@00))
  :pattern ((Nodevals$ s@$ this$_2@0@00))
  :qid |quant-u-24426|)))
(assert (forall ((s@$ $Snap) (this$_2@0@00 $Ref)) (!
  (Nodevals$%stateless this$_2@0@00)
  :pattern ((Nodevals$%limited s@$ this$_2@0@00))
  :qid |quant-u-24427|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@4@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= this$_2@0@00 $Ref.null)))
(assert (<= $Perm.No $k@4@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(Nodelist$(this$_2), wildcard) in (this$_2.Nodenext$ == null ? Seq(this$_2.Nodeval$) : Seq(this$_2.Nodeval$) ++ Nodevals$(this$_2.Nodenext$)))
(declare-const $k@5@00 $Perm)
(assert ($Perm.isReadVar $k@5@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@5@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@6@00 $Perm)
(assert ($Perm.isReadVar $k@6@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@6@00) (< $Perm.No $k@4@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Nodelist$%trigger ($Snap.second s@$) this$_2@0@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (<= $Perm.No $k@5@00))
(assert (=> (< $Perm.No $k@5@00) (not (= this$_2@0@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
; [eval] this$_1.Nodenext$ != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@5@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:(Second:(s@$)) != Null | live]
; [else-branch: 0 | First:(Second:(s@$)) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | First:(Second:(s@$)) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@5@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= this$_2@0@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (this$_2.Nodenext$ == null ? Seq(this$_2.Nodeval$) : Seq(this$_2.Nodeval$) ++ Nodevals$(this$_2.Nodenext$))
; [eval] this$_2.Nodenext$ == null
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@5@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | First:(Second:(s@$)) == Null | dead]
; [else-branch: 1 | First:(Second:(s@$)) != Null | live]
(push) ; 5
; [else-branch: 1 | First:(Second:(s@$)) != Null]
; [eval] Seq(this$_2.Nodeval$) ++ Nodevals$(this$_2.Nodenext$)
; [eval] Seq(this$_2.Nodeval$)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@5@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
  1))
; [eval] Nodevals$(this$_2.Nodenext$)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@5@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [eval] this$_2 != null
(declare-const $k@7@00 $Perm)
(assert ($Perm.isReadVar $k@7@00))
(push) ; 7
(assert (not (=> (< $Perm.No $k@7@00) (< $Perm.No $k@5@00))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@7@00)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Nodevals$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@7@00))
(assert (Nodevals$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@7@00))
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (and
    (=
      (Seq_length
        (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
      1)
    (Nodevals$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 0 | First:(Second:(s@$)) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] (this$_2.Nodenext$ == null ? Seq(this$_2.Nodeval$) : Seq(this$_2.Nodeval$) ++ Nodevals$(this$_2.Nodenext$))
; [eval] this$_2.Nodenext$ == null
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@5@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:(Second:(s@$)) == Null | live]
; [else-branch: 2 | First:(Second:(s@$)) != Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | First:(Second:(s@$)) == Null]
; [eval] Seq(this$_2.Nodeval$)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@5@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
  1))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (=
    (Seq_length
      (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
    1)))
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@8@00 ($Snap $Ref) Seq<Int>)
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (=
    (joined_unfolding@8@00 s@$ this$_2@0@00)
    (Seq_append
      (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$)))))
      (Nodevals$ ($Snap.combine
        $Snap.unit
        ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (=
    (joined_unfolding@8@00 s@$ this$_2@0@00)
    (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))))
; Joined path conditions
(assert ($Perm.isReadVar $k@6@00))
(assert ($Perm.isReadVar $k@7@00))
(assert (and
  (Nodelist$%trigger ($Snap.second s@$) this$_2@0@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@5@00)
  (=> (< $Perm.No $k@5@00) (not (= this$_2@0@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (and
    (not
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
          $Ref.null))
      (and
        (=
          (Seq_length
            (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
          1)
        (Nodevals$%precondition ($Snap.combine
          $Snap.unit
          ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))))))
; Joined path conditions
(assert (and
  (Nodelist$%trigger ($Snap.second s@$) this$_2@0@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@5@00)
  (=> (< $Perm.No $k@5@00) (not (= this$_2@0@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (and
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
    (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit)
    (=>
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
      (=
        (Seq_length
          (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
        1)))))
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))))
(assert (= result@1@00 (joined_unfolding@8@00 s@$ this$_2@0@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_2@0@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@4@00)
    ($Perm.isReadVar $k@5@00)
    ($Perm.isReadVar $k@6@00)
    ($Perm.isReadVar $k@7@00)
    (=>
      (Nodevals$%precondition s@$ this$_2@0@00)
      (=
        (Nodevals$ s@$ this$_2@0@00)
        (ite
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
            $Ref.null)
          (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$)))))
          (Seq_append
            (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$)))))
            (Nodevals$%limited ($Snap.combine
              $Snap.unit
              ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))))))
  :pattern ((Nodevals$ s@$ this$_2@0@00))
  :pattern ((Nodevals$%stateless this$_2@0@00) (Nodelist$%trigger ($Snap.second s@$) this$_2@0@00))
  :qid |quant-u-24430|)))
(assert (forall ((s@$ $Snap) (this$_2@0@00 $Ref)) (!
  (=>
    (Nodevals$%precondition s@$ this$_2@0@00)
    (ite
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
      true
      (Nodevals$%precondition ($Snap.combine
        $Snap.unit
        ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((Nodevals$ s@$ this$_2@0@00))
  :qid |quant-u-24431|)))
; ---------- FUNCTION Nodereverse_vals$----------
(declare-fun this$_3@2@00 () $Ref)
(declare-fun result@3@00 () Seq<Int>)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this$_3 != null
(assert (not (= this$_3@2@00 $Ref.null)))
(declare-const $k@9@00 $Perm)
(assert ($Perm.isReadVar $k@9@00))
(assert (<= $Perm.No $k@9@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_3@2@00 $Ref)) (!
  (=
    (Nodereverse_vals$%limited s@$ this$_3@2@00)
    (Nodereverse_vals$ s@$ this$_3@2@00))
  :pattern ((Nodereverse_vals$ s@$ this$_3@2@00))
  :qid |quant-u-24428|)))
(assert (forall ((s@$ $Snap) (this$_3@2@00 $Ref)) (!
  (Nodereverse_vals$%stateless this$_3@2@00)
  :pattern ((Nodereverse_vals$%limited s@$ this$_3@2@00))
  :qid |quant-u-24429|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@9@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= this$_3@2@00 $Ref.null)))
(assert (<= $Perm.No $k@9@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(Nodelist$(this$_3), wildcard) in (this$_3.Nodenext$ == null ? Seq(this$_3.Nodeval$) : Nodereverse_vals$(this$_3.Nodenext$) ++ Seq(this$_3.Nodeval$)))
(declare-const $k@10@00 $Perm)
(assert ($Perm.isReadVar $k@10@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@11@00 $Perm)
(assert ($Perm.isReadVar $k@11@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@11@00) (< $Perm.No $k@9@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@11@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Nodelist$%trigger ($Snap.second s@$) this$_3@2@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (<= $Perm.No $k@10@00))
(assert (=> (< $Perm.No $k@10@00) (not (= this$_3@2@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
; [eval] this$_1.Nodenext$ != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | First:(Second:(s@$)) != Null | live]
; [else-branch: 3 | First:(Second:(s@$)) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | First:(Second:(s@$)) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= this$_3@2@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (this$_3.Nodenext$ == null ? Seq(this$_3.Nodeval$) : Nodereverse_vals$(this$_3.Nodenext$) ++ Seq(this$_3.Nodeval$))
; [eval] this$_3.Nodenext$ == null
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
; [then-branch: 4 | First:(Second:(s@$)) == Null | dead]
; [else-branch: 4 | First:(Second:(s@$)) != Null | live]
(push) ; 5
; [else-branch: 4 | First:(Second:(s@$)) != Null]
; [eval] Nodereverse_vals$(this$_3.Nodenext$) ++ Seq(this$_3.Nodeval$)
; [eval] Nodereverse_vals$(this$_3.Nodenext$)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [eval] this$_3 != null
(declare-const $k@12@00 $Perm)
(assert ($Perm.isReadVar $k@12@00))
(push) ; 7
(assert (not (=> (< $Perm.No $k@12@00) (< $Perm.No $k@10@00))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@12@00)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Nodereverse_vals$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@12@00))
(assert (Nodereverse_vals$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
; [eval] Seq(this$_3.Nodeval$)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
  1))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@12@00))
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (and
    (Nodereverse_vals$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
    (=
      (Seq_length
        (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
      1))))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 3 | First:(Second:(s@$)) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] (this$_3.Nodenext$ == null ? Seq(this$_3.Nodeval$) : Nodereverse_vals$(this$_3.Nodenext$) ++ Seq(this$_3.Nodeval$))
; [eval] this$_3.Nodenext$ == null
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | First:(Second:(s@$)) == Null | live]
; [else-branch: 5 | First:(Second:(s@$)) != Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 5 | First:(Second:(s@$)) == Null]
; [eval] Seq(this$_3.Nodeval$)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
  1))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (=
    (Seq_length
      (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
    1)))
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@13@00 ($Snap $Ref) Seq<Int>)
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (=
    (joined_unfolding@13@00 s@$ this$_3@2@00)
    (Seq_append
      (Nodereverse_vals$ ($Snap.combine
        $Snap.unit
        ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
      (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$)))))))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (=
    (joined_unfolding@13@00 s@$ this$_3@2@00)
    (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))))
; Joined path conditions
(assert ($Perm.isReadVar $k@11@00))
(assert ($Perm.isReadVar $k@12@00))
(assert (and
  (Nodelist$%trigger ($Snap.second s@$) this$_3@2@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@10@00)
  (=> (< $Perm.No $k@10@00) (not (= this$_3@2@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (and
    (not
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
          $Ref.null))
      (and
        (Nodereverse_vals$%precondition ($Snap.combine
          $Snap.unit
          ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
        (=
          (Seq_length
            (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
          1))))))
; Joined path conditions
(assert (and
  (Nodelist$%trigger ($Snap.second s@$) this$_3@2@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@10@00)
  (=> (< $Perm.No $k@10@00) (not (= this$_3@2@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (and
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
    (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit)
    (=>
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
      (=
        (Seq_length
          (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))
        1)))))
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))))
(assert (= result@3@00 (joined_unfolding@13@00 s@$ this$_3@2@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_3@2@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@9@00)
    ($Perm.isReadVar $k@10@00)
    ($Perm.isReadVar $k@11@00)
    ($Perm.isReadVar $k@12@00)
    (=>
      (Nodereverse_vals$%precondition s@$ this$_3@2@00)
      (=
        (Nodereverse_vals$ s@$ this$_3@2@00)
        (ite
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
            $Ref.null)
          (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$)))))
          (Seq_append
            (Nodereverse_vals$%limited ($Snap.combine
              $Snap.unit
              ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
            (Seq_singleton ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second s@$))))))))))
  :pattern ((Nodereverse_vals$ s@$ this$_3@2@00))
  :pattern ((Nodereverse_vals$%stateless this$_3@2@00) (Nodelist$%trigger ($Snap.second s@$) this$_3@2@00))
  :qid |quant-u-24432|)))
(assert (forall ((s@$ $Snap) (this$_3@2@00 $Ref)) (!
  (=>
    (Nodereverse_vals$%precondition s@$ this$_3@2@00)
    (ite
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
      true
      (Nodereverse_vals$%precondition ($Snap.combine
        $Snap.unit
        ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((Nodereverse_vals$ s@$ this$_3@2@00))
  :qid |quant-u-24433|)))
; ---------- Node$MonitorInvariant ----------
(declare-const this$@14@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@15@00 $Snap)
(assert (= $t@15@00 $Snap.unit))
(pop) ; 1
; ---------- Nodelist$ ----------
(declare-const this$_1@16@00 $Ref)
(push) ; 1
(declare-const $t@17@00 $Snap)
(assert (= $t@17@00 ($Snap.combine ($Snap.first $t@17@00) ($Snap.second $t@17@00))))
(assert (not (= this$_1@16@00 $Ref.null)))
(assert (=
  ($Snap.second $t@17@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@17@00))
    ($Snap.second ($Snap.second $t@17@00)))))
; [eval] this$_1.Nodenext$ != null
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@17@00)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@17@00)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | First:($t@17@00) != Null | live]
; [else-branch: 6 | First:($t@17@00) == Null | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 6 | First:($t@17@00) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@17@00)) $Ref.null)))
(pop) ; 2
(push) ; 2
; [else-branch: 6 | First:($t@17@00) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@17@00)) $Ref.null))
(assert (= ($Snap.second ($Snap.second $t@17@00)) $Snap.unit))
(pop) ; 2
(pop) ; 1