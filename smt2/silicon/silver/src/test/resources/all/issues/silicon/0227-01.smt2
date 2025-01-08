(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:25:02
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
; ////////// Symbols
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun mustSendBounded$%trigger ($Snap $Ref) Bool)
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
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test ----------
(declare-const this@0@01 $Ref)
(declare-const c@1@01 $Ref)
(declare-const n@2@01 Int)
(declare-const this@3@01 $Ref)
(declare-const c@4@01 $Ref)
(declare-const n@5@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.first $t@6@01) $Snap.unit))
; [eval] this != null
(assert (not (= this@3@01 $Ref.null)))
(assert (=
  ($Snap.second $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@6@01))
    ($Snap.second ($Snap.second $t@6@01)))))
(assert (= ($Snap.first ($Snap.second $t@6@01)) $Snap.unit))
; [eval] n > 0
(assert (> n@5@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@6@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@6@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@6@01))) $Snap.unit))
; [eval] c != null
(assert (not (= c@4@01 $Ref.null)))
; [eval] n * write
(push) ; 2
(assert (not (or
  (= (* (to_real n@5@01) $Perm.Write) $Perm.No)
  (< $Perm.No (* (to_real n@5@01) $Perm.Write)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (* (to_real n@5@01) $Perm.Write)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var i: Int
(declare-const i@7@01 Int)
; [exec]
; i := 0
; [exec]
; exhale (n - i) * write >= none && acc(mustSendBounded$(c), (n - i) * write)
; [eval] (n - i) * write >= none
; [eval] (n - i) * write
; [eval] n - i
(push) ; 3
(assert (not (>= (* (to_real n@5@01) $Perm.Write) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (>= (* (to_real n@5@01) $Perm.Write) $Perm.No))
; [eval] (n - i) * write
; [eval] n - i
(push) ; 3
(assert (not (or
  (= (* (to_real n@5@01) $Perm.Write) $Perm.No)
  (< $Perm.No (* (to_real n@5@01) $Perm.Write)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale n - i + 1 > 0 && n - i >= 0
; [eval] n - i + 1 > 0
; [eval] n - i + 1
; [eval] n - i
(push) ; 3
(assert (not (> (+ n@5@01 1) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (> (+ n@5@01 1) 0))
; [eval] n - i >= 0
; [eval] n - i
(push) ; 3
(assert (not (>= n@5@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (>= n@5@01 0))
(push) ; 3
; Loop head block: Check well-definedness of invariant
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 5
; [eval] i < n
(pop) ; 5
(push) ; 5
; [eval] !(i < n)
; [eval] i < n
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] i < n
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< 0 n@5@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< 0 n@5@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | 0 < n@5@01 | live]
; [else-branch: 0 | !(0 < n@5@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 0 | 0 < n@5@01]
(assert (< 0 n@5@01))
; [exec]
; inhale (n - i) * write >= none && acc(mustSendBounded$(c), (n - i) * write)
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] (n - i) * write >= none
; [eval] (n - i) * write
; [eval] n - i
; [eval] (n - i) * write
; [eval] n - i
(push) ; 6
(assert (not (or
  (= (* (to_real n@5@01) $Perm.Write) $Perm.No)
  (< $Perm.No (* (to_real n@5@01) $Perm.Write)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale n - i + 1 > 0 && n - i >= 0
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (= ($Snap.first $t@9@01) $Snap.unit))
; [eval] n - i + 1 > 0
; [eval] n - i + 1
; [eval] n - i
(assert (= ($Snap.second $t@9@01) $Snap.unit))
; [eval] n - i >= 0
; [eval] n - i
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; assert c != null
; [eval] c != null
; [exec]
; exhale acc(mustSendBounded$(c), 1 * write)
; [eval] 1 * write
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (-
    (* (to_real n@5@01) $Perm.Write)
    ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (* (to_real n@5@01) $Perm.Write)
    ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (- $Perm.Write ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))
    $Perm.No)
  (<
    (- $Perm.Write ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale (forperm r$_4: Ref [mustSendBounded$(r$_4)] :: false)
; [eval] (forperm r$_4: Ref [mustSendBounded$(r$_4)] :: false)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (-
    (* (to_real n@5@01) $Perm.Write)
    ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | (Z) < (n@5@01 * W - (min (n@5@01 * W, W))) | live]
; [else-branch: 1 | !((Z) < (n@5@01 * W - (min (n@5@01 * W, W)))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 1 | (Z) < (n@5@01 * W - (min (n@5@01 * W, W)))]
(assert (<
  $Perm.No
  (-
    (* (to_real n@5@01) $Perm.Write)
    ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))))
(pop) ; 7
(push) ; 7
; [else-branch: 1 | !((Z) < (n@5@01 * W - (min (n@5@01 * W, W))))]
(assert (not
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (<
      $Perm.No
      (-
        (* (to_real n@5@01) $Perm.Write)
        ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))))
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))))
(push) ; 6
(assert (not (=>
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))
  false)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forperm r$_4: Ref [mustSendBounded$(r$_4)] :: false)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (-
    (* (to_real n@5@01) $Perm.Write)
    ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | (Z) < (n@5@01 * W - (min (n@5@01 * W, W))) | live]
; [else-branch: 2 | !((Z) < (n@5@01 * W - (min (n@5@01 * W, W)))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 2 | (Z) < (n@5@01 * W - (min (n@5@01 * W, W)))]
(assert (<
  $Perm.No
  (-
    (* (to_real n@5@01) $Perm.Write)
    ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 2 | !((Z) < (n@5@01 * W - (min (n@5@01 * W, W))))]
(assert (not
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 6
(assert (not (=>
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))
  false)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forperm r$_4: Ref [mustSendBounded$(r$_4)] :: false)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (-
    (* (to_real n@5@01) $Perm.Write)
    ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | (Z) < (n@5@01 * W - (min (n@5@01 * W, W))) | live]
; [else-branch: 3 | !((Z) < (n@5@01 * W - (min (n@5@01 * W, W)))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 3 | (Z) < (n@5@01 * W - (min (n@5@01 * W, W)))]
(assert (<
  $Perm.No
  (-
    (* (to_real n@5@01) $Perm.Write)
    ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 3 | !((Z) < (n@5@01 * W - (min (n@5@01 * W, W))))]
(assert (not
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 6
(assert (not (=>
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))
  false)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forperm r$_4: Ref [mustSendBounded$(r$_4)] :: false)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (-
    (* (to_real n@5@01) $Perm.Write)
    ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | (Z) < (n@5@01 * W - (min (n@5@01 * W, W))) | live]
; [else-branch: 4 | !((Z) < (n@5@01 * W - (min (n@5@01 * W, W)))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 4 | (Z) < (n@5@01 * W - (min (n@5@01 * W, W)))]
(assert (<
  $Perm.No
  (-
    (* (to_real n@5@01) $Perm.Write)
    ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 4 | !((Z) < (n@5@01 * W - (min (n@5@01 * W, W))))]
(assert (not
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 6
(assert (not (=>
  (<
    $Perm.No
    (-
      (* (to_real n@5@01) $Perm.Write)
      ($Perm.min (* (to_real n@5@01) $Perm.Write) $Perm.Write)))
  false)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
