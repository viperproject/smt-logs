(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:36:24
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
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
(declare-fun sum_rec ($Snap $Ref) Int)
(declare-fun sum_rec%limited ($Snap $Ref) Int)
(declare-fun sum_rec%stateless ($Ref) Bool)
(declare-fun sum_rec%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun List%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun joined_unfolding@2@00 ($Snap $Ref) Int)
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (= (sum_rec%limited s@$ this@0@00) (sum_rec s@$ this@0@00))
  :pattern ((sum_rec s@$ this@0@00))
  :qid |quant-u-19718|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (sum_rec%stateless this@0@00)
  :pattern ((sum_rec%limited s@$ this@0@00))
  :qid |quant-u-19719|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (=>
    (sum_rec%precondition s@$ this@0@00)
    (=
      (sum_rec s@$ this@0@00)
      (+
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        (ite
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
            $Ref.null)
          0
          (sum_rec%limited ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))))
  :pattern ((sum_rec s@$ this@0@00))
  :pattern ((sum_rec%stateless this@0@00) (List%trigger s@$ this@0@00))
  :qid |quant-u-19720|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (=>
    (sum_rec%precondition s@$ this@0@00)
    (ite
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
      true
      (sum_rec%precondition ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((sum_rec s@$ this@0@00))
  :qid |quant-u-19721|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- sum_it ----------
(declare-const ys@0@01 $Ref)
(declare-const sum@1@01 Int)
(declare-const ys@2@01 $Ref)
(declare-const sum@3@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (= ($Snap.first $t@4@01) $Snap.unit))
; [eval] ys != null
(assert (not (= ys@2@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 ($Snap.combine ($Snap.first $t@5@01) ($Snap.second $t@5@01))))
(assert (= ($Snap.second $t@5@01) $Snap.unit))
; [eval] sum == old(sum_rec(ys))
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 3
(assert (sum_rec%precondition ($Snap.second $t@4@01) ys@2@01))
(pop) ; 3
; Joined path conditions
(assert (sum_rec%precondition ($Snap.second $t@4@01) ys@2@01))
(assert (= sum@3@01 (sum_rec ($Snap.second $t@4@01) ys@2@01)))
(pop) ; 2
(push) ; 2
; [exec]
; var xs: Ref
(declare-const xs@6@01 $Ref)
; [exec]
; var oldsum_xs: Int
(declare-const oldsum_xs@7@01 Int)
; [exec]
; xs := ys
; [exec]
; sum := 0
; [exec]
; oldsum_xs := sum_rec(xs)
; [eval] sum_rec(xs)
(push) ; 3
(assert (sum_rec%precondition ($Snap.second $t@4@01) ys@2@01))
(pop) ; 3
; Joined path conditions
(assert (sum_rec%precondition ($Snap.second $t@4@01) ys@2@01))
(declare-const oldsum_xs@8@01 Int)
(assert (= oldsum_xs@8@01 (sum_rec ($Snap.second $t@4@01) ys@2@01)))
; [exec]
; package (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --*
; acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) {
; }
(push) ; 3
(declare-const $t@9@01 $Snap)
; [eval] xs != null
(push) ; 4
(set-option :timeout 10)
(assert (not (= ys@2@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | ys@2@01 != Null | live]
; [else-branch: 0 | ys@2@01 == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 0 | ys@2@01 != Null]
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (= ($Snap.second $t@9@01) $Snap.unit))
; [eval] sum_rec(xs) == oldsum_xs
; [eval] sum_rec(xs)
(push) ; 5
(assert (sum_rec%precondition ($Snap.first $t@9@01) ys@2@01))
(pop) ; 5
; Joined path conditions
(assert (sum_rec%precondition ($Snap.first $t@9@01) ys@2@01))
(assert (= (sum_rec ($Snap.first $t@9@01) ys@2@01) oldsum_xs@8@01))
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] sum_rec(ys) == old(sum_rec(ys))
; [eval] sum_rec(ys)
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (=
  (sum_rec ($Snap.first $t@9@01) ys@2@01)
  (sum_rec ($Snap.second $t@4@01) ys@2@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (sum_rec ($Snap.first $t@9@01) ys@2@01)
  (sum_rec ($Snap.second $t@4@01) ys@2@01)))
; Create MagicWandSnapFunction for wand (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
(declare-const mwsf@10@01 $MWSF)
(assert (forall (($t@9@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@10@01 $t@9@01)
    ($Snap.combine ($Snap.first $t@9@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@10@01 $t@9@01))
  :qid |quant-u-19722|)))
; [eval] xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 5
(pop) ; 5
; Joined path conditions
(pop) ; 4
(pop) ; 3
(push) ; 3
(assert (forall (($t@9@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@10@01 $t@9@01)
    ($Snap.combine ($Snap.first $t@9@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@10@01 $t@9@01))
  :qid |quant-u-19723|)))
(assert true)
(declare-const prev_xs@11@01 $Ref)
(declare-const sum@12@01 Int)
(declare-const xs@13@01 $Ref)
(declare-const oldoldsum_xs@14@01 Int)
(declare-const oldsum_xs@15@01 Int)
(push) ; 4
; Loop head block: Check well-definedness of invariant
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
; [eval] xs != null
(push) ; 5
(set-option :timeout 10)
(assert (not (= xs@13@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= xs@13@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | xs@13@01 != Null | live]
; [else-branch: 1 | xs@13@01 == Null | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 1 | xs@13@01 != Null]
(assert (not (= xs@13@01 $Ref.null)))
(assert (=
  ($Snap.second $t@16@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second $t@16@01)))))
(assert (= ($Snap.first ($Snap.second $t@16@01)) $Snap.unit))
; [eval] sum == old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
; [eval] old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 6
(pop) ; 6
; Joined path conditions
; [eval] (xs == null ? 0 : sum_rec(xs))
; [eval] xs == null
(push) ; 6
; [then-branch: 2 | xs@13@01 == Null | dead]
; [else-branch: 2 | xs@13@01 != Null | live]
(push) ; 7
; [else-branch: 2 | xs@13@01 != Null]
; [eval] sum_rec(xs)
(push) ; 8
(assert (sum_rec%precondition ($Snap.first $t@16@01) xs@13@01))
(pop) ; 8
; Joined path conditions
(assert (sum_rec%precondition ($Snap.first $t@16@01) xs@13@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (not (= xs@13@01 $Ref.null))
  (sum_rec%precondition ($Snap.first $t@16@01) xs@13@01)))
(assert (=
  sum@12@01
  (-
    (sum_rec ($Snap.second $t@4@01) ys@2@01)
    (sum_rec ($Snap.first $t@16@01) xs@13@01))))
; [eval] xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
(push) ; 5
; [else-branch: 1 | xs@13@01 == Null]
(assert (= xs@13@01 $Ref.null))
(assert (= ($Snap.first $t@16@01) $Snap.unit))
(assert (=
  ($Snap.second $t@16@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second $t@16@01)))))
(assert (= ($Snap.first ($Snap.second $t@16@01)) $Snap.unit))
; [eval] sum == old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
; [eval] old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 6
(pop) ; 6
; Joined path conditions
; [eval] (xs == null ? 0 : sum_rec(xs))
; [eval] xs == null
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= xs@13@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | xs@13@01 == Null | live]
; [else-branch: 3 | xs@13@01 != Null | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 3 | xs@13@01 == Null]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (= sum@12@01 (sum_rec ($Snap.second $t@4@01) ys@2@01)))
; [eval] xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
(push) ; 4
; Loop head block: Establish invariant
; [eval] xs != null
(push) ; 5
(set-option :timeout 10)
(assert (not (= ys@2@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | ys@2@01 != Null | live]
; [else-branch: 4 | ys@2@01 == Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 4 | ys@2@01 != Null]
; [eval] sum == old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
; [eval] old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 6
(pop) ; 6
; Joined path conditions
; [eval] (xs == null ? 0 : sum_rec(xs))
; [eval] xs == null
(push) ; 6
; [then-branch: 5 | ys@2@01 == Null | dead]
; [else-branch: 5 | ys@2@01 != Null | live]
(push) ; 7
; [else-branch: 5 | ys@2@01 != Null]
; [eval] sum_rec(xs)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 6
(pop) ; 6
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 6
(assert (not (= xs@13@01 $Ref.null)))
(assert (=
  ($Snap.second $t@16@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second $t@16@01)))))
(assert (= ($Snap.first ($Snap.second $t@16@01)) $Snap.unit))
(assert (=>
  (not (= xs@13@01 $Ref.null))
  (sum_rec%precondition ($Snap.first $t@16@01) xs@13@01)))
(assert (=
  sum@12@01
  (-
    (sum_rec ($Snap.second $t@4@01) ys@2@01)
    (sum_rec ($Snap.first $t@16@01) xs@13@01))))
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
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
; [eval] xs != null
(pop) ; 7
(push) ; 7
; [eval] !(xs != null)
; [eval] xs != null
(pop) ; 7
; Loop head block: Follow loop-internal edges
; [eval] xs != null
(push) ; 7
(set-option :timeout 10)
(assert (not (= xs@13@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | xs@13@01 != Null | live]
; [else-branch: 6 | xs@13@01 == Null | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 6 | xs@13@01 != Null]
; [exec]
; var prev_xs: Ref
(declare-const prev_xs@17@01 $Ref)
; [exec]
; var oldoldsum_xs: Int
(declare-const oldoldsum_xs@18@01 Int)
; [exec]
; inhale oldsum_xs == sum_rec(xs)
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
; [eval] oldsum_xs == sum_rec(xs)
; [eval] sum_rec(xs)
(push) ; 8
(assert (sum_rec%precondition ($Snap.first $t@16@01) xs@13@01))
(pop) ; 8
; Joined path conditions
(assert (sum_rec%precondition ($Snap.first $t@16@01) xs@13@01))
(assert (= oldsum_xs@15@01 (sum_rec ($Snap.first $t@16@01) xs@13@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; prev_xs := xs
; [exec]
; unfold acc(List(xs), write)
(assert (=
  ($Snap.first $t@16@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@16@01))
    ($Snap.second ($Snap.first $t@16@01)))))
(assert (=
  ($Snap.second ($Snap.first $t@16@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
    ($Snap.second ($Snap.second ($Snap.first $t@16@01))))))
; [eval] this.n != null
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))
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
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | First:(Second:(First:($t@16@01))) != Null | live]
; [else-branch: 7 | First:(Second:(First:($t@16@01))) == Null | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 7 | First:(Second:(First:($t@16@01))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))
    $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (List%trigger ($Snap.first $t@16@01) xs@13@01))
; [exec]
; sum := sum + xs.v
; [eval] sum + xs.v
(declare-const sum@20@01 Int)
(assert (=
  sum@20@01
  (+ sum@12@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@16@01))))))
; [exec]
; xs := xs.n
(declare-const xs@21@01 $Ref)
(assert (=
  xs@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))))
; [exec]
; oldoldsum_xs := oldsum_xs
; [eval] xs != null
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= xs@21@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= xs@21@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | xs@21@01 != Null | live]
; [else-branch: 8 | xs@21@01 == Null | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 8 | xs@21@01 != Null]
(assert (not (= xs@21@01 $Ref.null)))
; [exec]
; oldsum_xs := sum_rec(xs)
; [eval] sum_rec(xs)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))
  xs@21@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (sum_rec%precondition ($Snap.second ($Snap.second ($Snap.first $t@16@01))) xs@21@01))
(pop) ; 10
; Joined path conditions
(assert (sum_rec%precondition ($Snap.second ($Snap.second ($Snap.first $t@16@01))) xs@21@01))
(declare-const oldsum_xs@22@01 Int)
(assert (=
  oldsum_xs@22@01
  (sum_rec ($Snap.second ($Snap.second ($Snap.first $t@16@01))) xs@21@01)))
; [exec]
; package (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --*
; acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) {
;   fold acc(List(prev_xs), write)
;   apply (prev_xs != null ==>
;     acc(List(prev_xs), write) && sum_rec(prev_xs) == oldoldsum_xs) --*
;     acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
; }
(set-option :timeout 0)
(push) ; 10
(declare-const $t@23@01 $Snap)
; [eval] xs != null
(push) ; 11
(set-option :timeout 10)
(assert (not (= xs@21@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | xs@21@01 != Null | live]
; [else-branch: 9 | xs@21@01 == Null | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 9 | xs@21@01 != Null]
(assert (= $t@23@01 ($Snap.combine ($Snap.first $t@23@01) ($Snap.second $t@23@01))))
(assert (= ($Snap.second $t@23@01) $Snap.unit))
; [eval] sum_rec(xs) == oldsum_xs
; [eval] sum_rec(xs)
(push) ; 12
(assert (sum_rec%precondition ($Snap.first $t@23@01) xs@21@01))
(pop) ; 12
; Joined path conditions
(assert (sum_rec%precondition ($Snap.first $t@23@01) xs@21@01))
(assert (= (sum_rec ($Snap.first $t@23@01) xs@21@01) oldsum_xs@22@01))
; [exec]
; fold acc(List(prev_xs), write)
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] this.n != null
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | First:(Second:(First:($t@16@01))) != Null | live]
; [else-branch: 10 | First:(Second:(First:($t@16@01))) == Null | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 10 | First:(Second:(First:($t@16@01))) != Null]
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(assert (List%trigger ($Snap.combine
  ($Snap.first ($Snap.first $t@16@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
    ($Snap.first $t@23@01))) xs@13@01))
; [exec]
; apply (prev_xs != null ==>
;   acc(List(prev_xs), write) && sum_rec(prev_xs) == oldoldsum_xs) --*
;   acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
; [eval] prev_xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(set-option :timeout 0)
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] prev_xs != null
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= xs@13@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | xs@13@01 != Null | live]
; [else-branch: 11 | xs@13@01 == Null | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 11 | xs@13@01 != Null]
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
; [eval] sum_rec(prev_xs) == oldoldsum_xs
; [eval] sum_rec(prev_xs)
(set-option :timeout 0)
(push) ; 14
(assert (sum_rec%precondition ($Snap.combine
  ($Snap.first ($Snap.first $t@16@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
    ($Snap.first $t@23@01))) xs@13@01))
(pop) ; 14
; Joined path conditions
(assert (sum_rec%precondition ($Snap.combine
  ($Snap.first ($Snap.first $t@16@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
    ($Snap.first $t@23@01))) xs@13@01))
(push) ; 14
(assert (not (=
  (sum_rec ($Snap.combine
    ($Snap.first ($Snap.first $t@16@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
      ($Snap.first $t@23@01))) xs@13@01)
  oldsum_xs@15@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (=
  (sum_rec ($Snap.combine
    ($Snap.first ($Snap.first $t@16@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
      ($Snap.first $t@23@01))) xs@13@01)
  oldsum_xs@15@01))
(assert (=
  (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@16@01))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
        ($Snap.first $t@23@01)))
    $Snap.unit))
  ($Snap.combine
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first $t@16@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
          ($Snap.first $t@23@01)))
      $Snap.unit)))
    ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first $t@16@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
          ($Snap.first $t@23@01)))
      $Snap.unit))))))
(assert (=
  ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@16@01))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
        ($Snap.first $t@23@01)))
    $Snap.unit)))
  $Snap.unit))
; [eval] sum_rec(ys) == old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 14
(assert (sum_rec%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first $t@16@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
      ($Snap.first $t@23@01)))
  $Snap.unit))) ys@2@01))
(pop) ; 14
; Joined path conditions
(assert (sum_rec%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first $t@16@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
      ($Snap.first $t@23@01)))
  $Snap.unit))) ys@2@01))
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 14
(pop) ; 14
; Joined path conditions
(assert (=
  (sum_rec ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@16@01))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
        ($Snap.first $t@23@01)))
    $Snap.unit))) ys@2@01)
  (sum_rec ($Snap.second $t@4@01) ys@2@01)))
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
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
; [eval] sum_rec(ys) == old(sum_rec(ys))
; [eval] sum_rec(ys)
(set-option :timeout 0)
(push) ; 14
(pop) ; 14
; Joined path conditions
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 14
(pop) ; 14
; Joined path conditions
; Create MagicWandSnapFunction for wand (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
(declare-const mwsf@24@01 $MWSF)
(assert (forall (($t@23@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@24@01 $t@23@01)
    ($Snap.combine
      ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.first $t@16@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
            ($Snap.first $t@23@01)))
        $Snap.unit)))
      $Snap.unit))
  :pattern ((MWSF_apply mwsf@24@01 $t@23@01))
  :qid |quant-u-19724|)))
; [eval] xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 14
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
(pop) ; 11
(pop) ; 10
(push) ; 10
(assert (and
  (not (= xs@13@01 $Ref.null))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))
      $Ref.null))
  (not (= xs@21@01 $Ref.null))
  (not (= ys@2@01 $Ref.null))))
(assert (forall (($t@23@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@24@01 $t@23@01)
    ($Snap.combine
      ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.first $t@16@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
            ($Snap.first $t@23@01)))
        $Snap.unit)))
      $Snap.unit))
  :pattern ((MWSF_apply mwsf@24@01 $t@23@01))
  :qid |quant-u-19725|)))
(assert true)
; Loop head block: Re-establish invariant
; [eval] xs != null
(push) ; 11
(set-option :timeout 10)
(assert (not (= xs@21@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | xs@21@01 != Null | live]
; [else-branch: 12 | xs@21@01 == Null | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 12 | xs@21@01 != Null]
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))
  xs@21@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] sum == old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
; [eval] old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(set-option :timeout 0)
(push) ; 12
(pop) ; 12
; Joined path conditions
; [eval] (xs == null ? 0 : sum_rec(xs))
; [eval] xs == null
(push) ; 12
; [then-branch: 13 | xs@21@01 == Null | dead]
; [else-branch: 13 | xs@21@01 != Null | live]
(push) ; 13
; [else-branch: 13 | xs@21@01 != Null]
; [eval] sum_rec(xs)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))
  xs@21@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
(set-option :timeout 0)
(push) ; 12
(assert (not (=
  sum@20@01
  (-
    (sum_rec ($Snap.second $t@4@01) ys@2@01)
    (sum_rec ($Snap.second ($Snap.second ($Snap.first $t@16@01))) xs@21@01)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=
  sum@20@01
  (-
    (sum_rec ($Snap.second $t@4@01) ys@2@01)
    (sum_rec ($Snap.second ($Snap.second ($Snap.first $t@16@01))) xs@21@01))))
; [eval] xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
(pop) ; 10
(pop) ; 9
; [eval] !(xs != null)
; [eval] xs != null
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= xs@21@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | xs@21@01 == Null | dead]
; [else-branch: 14 | xs@21@01 != Null | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 14 | xs@21@01 != Null]
(assert (not (= xs@21@01 $Ref.null)))
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 7 | First:(Second:(First:($t@16@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))
  $Ref.null))
(assert (= ($Snap.second ($Snap.second ($Snap.first $t@16@01))) $Snap.unit))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (List%trigger ($Snap.first $t@16@01) xs@13@01))
; [exec]
; sum := sum + xs.v
; [eval] sum + xs.v
(declare-const sum@25@01 Int)
(assert (=
  sum@25@01
  (+ sum@12@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@16@01))))))
; [exec]
; xs := xs.n
(declare-const xs@26@01 $Ref)
(assert (=
  xs@26@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))))
; [exec]
; oldoldsum_xs := oldsum_xs
; [eval] xs != null
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= xs@26@01 $Ref.null)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | xs@26@01 != Null | dead]
; [else-branch: 15 | xs@26@01 == Null | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 15 | xs@26@01 == Null]
(assert (= xs@26@01 $Ref.null))
(pop) ; 9
; [eval] !(xs != null)
; [eval] xs != null
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= xs@26@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= xs@26@01 $Ref.null)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | xs@26@01 == Null | live]
; [else-branch: 16 | xs@26@01 != Null | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 16 | xs@26@01 == Null]
(assert (= xs@26@01 $Ref.null))
; [exec]
; package (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --*
; acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys)) {
;   fold acc(List(prev_xs), write)
;   apply (prev_xs != null ==>
;     acc(List(prev_xs), write) && sum_rec(prev_xs) == oldoldsum_xs) --*
;     acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
; }
(push) ; 10
(declare-const $t@27@01 $Snap)
; [eval] xs != null
; [then-branch: 17 | xs@26@01 != Null | dead]
; [else-branch: 17 | xs@26@01 == Null | live]
(push) ; 11
; [else-branch: 17 | xs@26@01 == Null]
(assert (= $t@27@01 $Snap.unit))
; [exec]
; fold acc(List(prev_xs), write)
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
(assert (not (= xs@13@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] this.n != null
; [then-branch: 18 | First:(Second:(First:($t@16@01))) != Null | dead]
; [else-branch: 18 | First:(Second:(First:($t@16@01))) == Null | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 18 | First:(Second:(First:($t@16@01))) == Null]
(assert (List%trigger ($Snap.combine
  ($Snap.first ($Snap.first $t@16@01))
  ($Snap.combine ($Snap.first ($Snap.second ($Snap.first $t@16@01))) $Snap.unit)) xs@13@01))
; [exec]
; apply (prev_xs != null ==>
;   acc(List(prev_xs), write) && sum_rec(prev_xs) == oldoldsum_xs) --*
;   acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
; [eval] prev_xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] prev_xs != null
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= xs@13@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | xs@13@01 != Null | live]
; [else-branch: 19 | xs@13@01 == Null | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 19 | xs@13@01 != Null]
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
; [eval] sum_rec(prev_xs) == oldoldsum_xs
; [eval] sum_rec(prev_xs)
(set-option :timeout 0)
(push) ; 14
(assert (sum_rec%precondition ($Snap.combine
  ($Snap.first ($Snap.first $t@16@01))
  ($Snap.combine ($Snap.first ($Snap.second ($Snap.first $t@16@01))) $Snap.unit)) xs@13@01))
(pop) ; 14
; Joined path conditions
(assert (sum_rec%precondition ($Snap.combine
  ($Snap.first ($Snap.first $t@16@01))
  ($Snap.combine ($Snap.first ($Snap.second ($Snap.first $t@16@01))) $Snap.unit)) xs@13@01))
(push) ; 14
(assert (not (=
  (sum_rec ($Snap.combine
    ($Snap.first ($Snap.first $t@16@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
      $Snap.unit)) xs@13@01)
  oldsum_xs@15@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (=
  (sum_rec ($Snap.combine
    ($Snap.first ($Snap.first $t@16@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
      $Snap.unit)) xs@13@01)
  oldsum_xs@15@01))
(assert (=
  (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@16@01))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
        $Snap.unit))
    $Snap.unit))
  ($Snap.combine
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first $t@16@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
          $Snap.unit))
      $Snap.unit)))
    ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first $t@16@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
          $Snap.unit))
      $Snap.unit))))))
(assert (=
  ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@16@01))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
        $Snap.unit))
    $Snap.unit)))
  $Snap.unit))
; [eval] sum_rec(ys) == old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 14
(assert (sum_rec%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first $t@16@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
      $Snap.unit))
  $Snap.unit))) ys@2@01))
(pop) ; 14
; Joined path conditions
(assert (sum_rec%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first $t@16@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
      $Snap.unit))
  $Snap.unit))) ys@2@01))
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 14
(pop) ; 14
; Joined path conditions
(assert (=
  (sum_rec ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@16@01))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
        $Snap.unit))
    $Snap.unit))) ys@2@01)
  (sum_rec ($Snap.second $t@4@01) ys@2@01)))
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
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
; [eval] sum_rec(ys) == old(sum_rec(ys))
; [eval] sum_rec(ys)
(set-option :timeout 0)
(push) ; 14
(pop) ; 14
; Joined path conditions
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 14
(pop) ; 14
; Joined path conditions
; Create MagicWandSnapFunction for wand (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --* acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
(declare-const mwsf@28@01 $MWSF)
(assert (forall (($t@27@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@28@01 $t@27@01)
    ($Snap.combine
      ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.first $t@16@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
            $Snap.unit))
        $Snap.unit)))
      $Snap.unit))
  :pattern ((MWSF_apply mwsf@28@01 $t@27@01))
  :qid |quant-u-19726|)))
; [eval] xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 14
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
(pop) ; 11
(pop) ; 10
(push) ; 10
(assert (and
  (not (= xs@13@01 $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first $t@16@01))))
    $Ref.null)
  (= xs@26@01 $Ref.null)
  (not (= ys@2@01 $Ref.null))))
(assert (forall (($t@27@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@28@01 $t@27@01)
    ($Snap.combine
      ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.first $t@16@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first $t@16@01)))
            $Snap.unit))
        $Snap.unit)))
      $Snap.unit))
  :pattern ((MWSF_apply mwsf@28@01 $t@27@01))
  :qid |quant-u-19727|)))
(assert true)
; Loop head block: Re-establish invariant
; [eval] xs != null
; [then-branch: 20 | xs@26@01 != Null | dead]
; [else-branch: 20 | xs@26@01 == Null | live]
(push) ; 11
; [else-branch: 20 | xs@26@01 == Null]
; [eval] sum == old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
; [eval] old(sum_rec(ys)) - (xs == null ? 0 : sum_rec(xs))
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 12
(pop) ; 12
; Joined path conditions
; [eval] (xs == null ? 0 : sum_rec(xs))
; [eval] xs == null
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (= xs@26@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | xs@26@01 == Null | live]
; [else-branch: 21 | xs@26@01 != Null | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 21 | xs@26@01 == Null]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(push) ; 12
(assert (not (= sum@25@01 (sum_rec ($Snap.second $t@4@01) ys@2@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (= sum@25@01 (sum_rec ($Snap.second $t@4@01) ys@2@01)))
; [eval] xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
; [eval] !(xs != null)
; [eval] xs != null
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= xs@13@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | xs@13@01 == Null | dead]
; [else-branch: 22 | xs@13@01 != Null | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 22 | xs@13@01 != Null]
(assert (not (= xs@13@01 $Ref.null)))
(pop) ; 7
(pop) ; 6
(push) ; 6
(assert (= xs@13@01 $Ref.null))
(assert (= ($Snap.first $t@16@01) $Snap.unit))
(assert (=
  ($Snap.second $t@16@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second $t@16@01)))))
(assert (= ($Snap.first ($Snap.second $t@16@01)) $Snap.unit))
(assert (= sum@12@01 (sum_rec ($Snap.second $t@4@01) ys@2@01)))
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
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
; [eval] xs != null
(pop) ; 7
(push) ; 7
; [eval] !(xs != null)
; [eval] xs != null
(pop) ; 7
; Loop head block: Follow loop-internal edges
; [eval] xs != null
; [then-branch: 23 | xs@13@01 != Null | dead]
; [else-branch: 23 | xs@13@01 == Null | live]
(push) ; 7
; [else-branch: 23 | xs@13@01 == Null]
(pop) ; 7
; [eval] !(xs != null)
; [eval] xs != null
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= xs@13@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | xs@13@01 == Null | live]
; [else-branch: 24 | xs@13@01 != Null | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 24 | xs@13@01 == Null]
; [exec]
; apply (xs != null ==> acc(List(xs), write) && sum_rec(xs) == oldsum_xs) --*
;   acc(List(ys), write) && sum_rec(ys) == old(sum_rec(ys))
; [eval] xs != null
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 8
(pop) ; 8
; Joined path conditions
; [eval] xs != null
; [then-branch: 25 | xs@13@01 != Null | dead]
; [else-branch: 25 | xs@13@01 == Null | live]
(push) ; 8
; [else-branch: 25 | xs@13@01 == Null]
(assert (=
  (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) $Snap.unit)
  ($Snap.combine
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) $Snap.unit))
    ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) $Snap.unit)))))
(assert (=
  ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) $Snap.unit))
  $Snap.unit))
; [eval] sum_rec(ys) == old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 9
(assert (sum_rec%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) $Snap.unit)) ys@2@01))
(pop) ; 9
; Joined path conditions
(assert (sum_rec%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) $Snap.unit)) ys@2@01))
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (=
  (sum_rec ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second $t@16@01))) $Snap.unit)) ys@2@01)
  (sum_rec ($Snap.second $t@4@01) ys@2@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] sum == old(sum_rec(ys))
; [eval] old(sum_rec(ys))
; [eval] sum_rec(ys)
(set-option :timeout 0)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1