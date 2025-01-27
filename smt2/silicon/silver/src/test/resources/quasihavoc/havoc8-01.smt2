(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 03:01:38
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
; ---------- foo ----------
(declare-const x@0@01 $Ref)
(declare-const y@1@01 $Ref)
(declare-const z@2@01 $Ref)
(declare-const x@3@01 $Ref)
(declare-const y@4@01 $Ref)
(declare-const z@5@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (not (= x@3@01 $Ref.null)))
(assert (=
  ($Snap.second $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@6@01))
    ($Snap.second ($Snap.second $t@6@01)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= x@3@01 y@4@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@4@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@6@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@6@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@6@01))) $Snap.unit))
; [eval] x.f == 42
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)) 42))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@6@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) $Snap.unit))
; [eval] y.f == 42
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@6@01))) 42))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))
  $Snap.unit))
; [eval] z == x || z == y
; [eval] z == x
(set-option :timeout 0)
(push) ; 2
; [then-branch: 0 | z@5@01 == x@3@01 | live]
; [else-branch: 0 | z@5@01 != x@3@01 | live]
(push) ; 3
; [then-branch: 0 | z@5@01 == x@3@01]
(assert (= z@5@01 x@3@01))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | z@5@01 != x@3@01]
(assert (not (= z@5@01 x@3@01)))
; [eval] z == y
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (= z@5@01 x@3@01)) (= z@5@01 x@3@01)))
(assert (or (= z@5@01 x@3@01) (= z@5@01 y@4@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; quasihavoc z.f
(declare-const $t@7@01 Int)
(declare-const $t@8@01 Int)
; [exec]
; inhale x != y
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 $Snap.unit))
; [eval] x != y
(assert (not (= x@3@01 y@4@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert x.f == 42 || y.f == 42
; [eval] x.f == 42 || y.f == 42
; [eval] x.f == 42
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | (x@3@01 == z@5@01 ? $t@7@01 : First:($t@6@01)) == 42 | live]
; [else-branch: 1 | (x@3@01 == z@5@01 ? $t@7@01 : First:($t@6@01)) != 42 | live]
(push) ; 4
; [then-branch: 1 | (x@3@01 == z@5@01 ? $t@7@01 : First:($t@6@01)) == 42]
(assert (=
  (ite
    (= x@3@01 z@5@01)
    $t@7@01
    ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)))
  42))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | (x@3@01 == z@5@01 ? $t@7@01 : First:($t@6@01)) != 42]
(assert (not
  (=
    (ite
      (= x@3@01 z@5@01)
      $t@7@01
      ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)))
    42)))
; [eval] y.f == 42
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      (ite
        (= x@3@01 z@5@01)
        $t@7@01
        ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)))
      42))
  (=
    (ite
      (= x@3@01 z@5@01)
      $t@7@01
      ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)))
    42)))
(push) ; 3
(assert (not (or
  (=
    (ite
      (= x@3@01 z@5@01)
      $t@7@01
      ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)))
    42)
  (=
    (ite
      (= y@4@01 z@5@01)
      $t@8@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@6@01))))
    42))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (or
  (=
    (ite
      (= x@3@01 z@5@01)
      $t@7@01
      ($SortWrappers.$SnapToInt ($Snap.first $t@6@01)))
    42)
  (=
    (ite
      (= y@4@01 z@5@01)
      $t@8@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@6@01))))
    42)))
(pop) ; 2
(pop) ; 1
