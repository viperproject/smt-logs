(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 21:21:18
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
(declare-fun P%trigger ($Snap $Ref) Bool)
(declare-fun Q%trigger ($Snap $Ref) Bool)
(declare-fun R%trigger ($Snap $Ref) Bool)
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
; ---------- test0 ----------
(declare-const b@0@01 Bool)
(declare-const x@1@01 $Ref)
(declare-const b@2@01 Bool)
(declare-const x@3@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (not (= x@3@01 $Ref.null)))
(assert (= ($Snap.second $t@4@01) $Snap.unit))
; [eval] b ==> x != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@2@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@2@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | b@2@01 | live]
; [else-branch: 0 | !(b@2@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | b@2@01]
(assert b@2@01)
; [eval] x != null
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(b@2@01)]
(assert (not b@2@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not b@2@01) b@2@01))
(assert (=> b@2@01 (not (= x@3@01 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- test10 ----------
(declare-const b@5@01 Bool)
(declare-const x@6@01 $Ref)
(declare-const b@7@01 Bool)
(declare-const x@8@01 $Ref)
(push) ; 1
(push) ; 2
(set-option :timeout 10)
(assert (not (not b@7@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not b@7@01))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | b@7@01 | live]
; [else-branch: 1 | !(b@7@01) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 1 | b@7@01]
(assert b@7@01)
(declare-const $t@9@01 $Ref)
(assert (not (= x@8@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; inhale false
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 1 | !(b@7@01)]
(assert (not b@7@01))
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; inhale false
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test20 ----------
(declare-const b@11@01 Bool)
(declare-const x@12@01 $Ref)
(declare-const i@13@01 Int)
(declare-const b@14@01 Bool)
(declare-const x@15@01 $Ref)
(declare-const i@16@01 Int)
(push) ; 1
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01))))
(assert (=
  ($Snap.second $t@17@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@17@01))
    ($Snap.second ($Snap.second $t@17@01)))))
(assert (= ($Snap.first ($Snap.second $t@17@01)) $Snap.unit))
; [eval] b ==> x != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@14@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@14@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | b@14@01 | live]
; [else-branch: 2 | !(b@14@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | b@14@01]
(assert b@14@01)
; [eval] x != null
(pop) ; 3
(push) ; 3
; [else-branch: 2 | !(b@14@01)]
(assert (not b@14@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not b@14@01) b@14@01))
(assert (=> b@14@01 (not (= x@15@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@17@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@17@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@17@01))) $Snap.unit))
; [eval] i != 0
(assert (not (= i@16@01 0)))
(push) ; 2
(set-option :timeout 10)
(assert (not (not b@14@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not b@14@01))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | b@14@01 | live]
; [else-branch: 3 | !(b@14@01) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 3 | b@14@01]
(assert b@14@01)
(assert (not (= x@15@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; inhale false
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 3 | !(b@14@01)]
(assert (not b@14@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@17@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; inhale false
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test30 ----------
(declare-const b@18@01 Bool)
(declare-const x@19@01 $Ref)
(declare-const i@20@01 Int)
(declare-const b@21@01 Bool)
(declare-const x@22@01 $Ref)
(declare-const i@23@01 Int)
(push) ; 1
(push) ; 2
(set-option :timeout 10)
(assert (not (not b@21@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not b@21@01))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | b@21@01 | live]
; [else-branch: 4 | !(b@21@01) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 4 | b@21@01]
(assert b@21@01)
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
(assert (not (= x@22@01 $Ref.null)))
(assert (= ($Snap.second $t@24@01) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; inhale false
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 4 | !(b@21@01)]
(assert (not b@21@01))
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; inhale false
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test40 ----------
(declare-const b@26@01 Bool)
(declare-const x@27@01 $Ref)
(declare-const i@28@01 Int)
(declare-const b@29@01 Bool)
(declare-const x@30@01 $Ref)
(declare-const i@31@01 Int)
(push) ; 1
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 ($Snap.combine ($Snap.first $t@32@01) ($Snap.second $t@32@01))))
(push) ; 2
(set-option :timeout 10)
(assert (not (not b@29@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not b@29@01))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | b@29@01 | live]
; [else-branch: 5 | !(b@29@01) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 5 | b@29@01]
(assert b@29@01)
(assert (=
  ($Snap.first $t@32@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@32@01))
    ($Snap.second ($Snap.first $t@32@01)))))
(assert (not (= x@30@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first $t@32@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@32@01)))
    ($Snap.second ($Snap.second ($Snap.first $t@32@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first $t@32@01))) $Snap.unit))
(assert (= ($Snap.second ($Snap.second ($Snap.first $t@32@01))) $Snap.unit))
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@29@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | b@29@01 | live]
; [else-branch: 6 | !(b@29@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 6 | b@29@01]
(assert (=
  ($Snap.second $t@32@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@32@01))
    ($Snap.second ($Snap.second $t@32@01)))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@32@01)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@32@01)))))
(assert false)
(assert (=
  ($Snap.second ($Snap.second $t@32@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@32@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@32@01))) $Snap.unit))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@32@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unsat
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(push) ; 4
; [exec]
; inhale false
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 5 | !(b@29@01)]
(assert (not b@29@01))
(assert (= ($Snap.first $t@32@01) $Snap.unit))
; [then-branch: 7 | b@29@01 | dead]
; [else-branch: 7 | !(b@29@01) | live]
(push) ; 3
; [else-branch: 7 | !(b@29@01)]
(assert (= ($Snap.second $t@32@01) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(push) ; 4
; [exec]
; inhale false
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test1000 ----------
(declare-const b@33@01 Bool)
(declare-const x@34@01 $Ref)
(declare-const i@35@01 Int)
(declare-const b@36@01 Bool)
(declare-const x@37@01 $Ref)
(declare-const i@38@01 Int)
(push) ; 1
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 ($Snap.combine ($Snap.first $t@39@01) ($Snap.second $t@39@01))))
(assert (=
  ($Snap.second $t@39@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@39@01))
    ($Snap.second ($Snap.second $t@39@01)))))
(assert (= ($Snap.first ($Snap.second $t@39@01)) $Snap.unit))
; [eval] b ==> x != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@36@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@36@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | b@36@01 | live]
; [else-branch: 8 | !(b@36@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 8 | b@36@01]
(assert b@36@01)
; [eval] x != null
(pop) ; 3
(push) ; 3
; [else-branch: 8 | !(b@36@01)]
(assert (not b@36@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not b@36@01) b@36@01))
(assert (=> b@36@01 (not (= x@37@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@39@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@39@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@39@01))) $Snap.unit))
; [eval] i != 0
(assert (not (= i@38@01 0)))
(push) ; 2
(set-option :timeout 10)
(assert (not (not b@36@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not b@36@01))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | b@36@01 | live]
; [else-branch: 9 | !(b@36@01) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 9 | b@36@01]
(assert b@36@01)
(assert (not (= x@37@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; assert x != null || x == null
; [eval] x != null || x == null
; [eval] x != null
(push) ; 4
; [then-branch: 10 | x@37@01 != Null | live]
; [else-branch: 10 | x@37@01 == Null | live]
(push) ; 5
; [then-branch: 10 | x@37@01 != Null]
(pop) ; 5
(push) ; 5
; [else-branch: 10 | x@37@01 == Null]
(assert (= x@37@01 $Ref.null))
; [eval] x == null
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (= x@37@01 $Ref.null) (not (= x@37@01 $Ref.null))))
(push) ; 4
(assert (not (or (not (= x@37@01 $Ref.null)) (= x@37@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (or (not (= x@37@01 $Ref.null)) (= x@37@01 $Ref.null)))
; [exec]
; assert b ==> acc(x.f, write) && (x.f != null || x.f == null)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@36@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | b@36@01 | live]
; [else-branch: 11 | !(b@36@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 11 | b@36@01]
; [eval] x.f != null || x.f == null
; [eval] x.f != null
(push) ; 5
; [then-branch: 12 | Second:(Second:(Second:($t@39@01))) != Null | live]
; [else-branch: 12 | Second:(Second:(Second:($t@39@01))) == Null | live]
(push) ; 6
; [then-branch: 12 | Second:(Second:(Second:($t@39@01))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
    $Ref.null)))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | Second:(Second:(Second:($t@39@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
  $Ref.null))
; [eval] x.f == null
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
      $Ref.null))))
(push) ; 5
(assert (not (or
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
    $Ref.null))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (or
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
    $Ref.null)))
; [exec]
; assert b ==> i != 0 && (acc(x.f, write) && x != null)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@36@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | b@36@01 | live]
; [else-branch: 13 | !(b@36@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 13 | b@36@01]
; [eval] i != 0
; [eval] x != null
; [exec]
; assert b ==> i != 0 && acc(x.f, write) && x != null
(push) ; 6
(set-option :timeout 10)
(assert (not (not b@36@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | b@36@01 | live]
; [else-branch: 14 | !(b@36@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 14 | b@36@01]
; [eval] i != 0
; [eval] x != null
; [exec]
; assert b ==> acc(x.f, write) && x != null && i != 0
(push) ; 7
(set-option :timeout 10)
(assert (not (not b@36@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | b@36@01 | live]
; [else-branch: 15 | !(b@36@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 15 | b@36@01]
; [eval] x != null
; [eval] i != 0
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 9 | !(b@36@01)]
(assert (not b@36@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@39@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; assert x != null || x == null
; [eval] x != null || x == null
; [eval] x != null
(push) ; 4
; [then-branch: 16 | x@37@01 != Null | live]
; [else-branch: 16 | x@37@01 == Null | live]
(push) ; 5
; [then-branch: 16 | x@37@01 != Null]
(assert (not (= x@37@01 $Ref.null)))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | x@37@01 == Null]
(assert (= x@37@01 $Ref.null))
; [eval] x == null
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (= x@37@01 $Ref.null) (not (= x@37@01 $Ref.null))))
(push) ; 4
(assert (not (or (not (= x@37@01 $Ref.null)) (= x@37@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (or (not (= x@37@01 $Ref.null)) (= x@37@01 $Ref.null)))
; [exec]
; assert b ==> acc(x.f, write) && (x.f != null || x.f == null)
; [then-branch: 17 | b@36@01 | dead]
; [else-branch: 17 | !(b@36@01) | live]
(push) ; 4
; [else-branch: 17 | !(b@36@01)]
; [exec]
; assert b ==> i != 0 && (acc(x.f, write) && x != null)
; [then-branch: 18 | b@36@01 | dead]
; [else-branch: 18 | !(b@36@01) | live]
(push) ; 5
; [else-branch: 18 | !(b@36@01)]
; [exec]
; assert b ==> i != 0 && acc(x.f, write) && x != null
; [then-branch: 19 | b@36@01 | dead]
; [else-branch: 19 | !(b@36@01) | live]
(push) ; 6
; [else-branch: 19 | !(b@36@01)]
; [exec]
; assert b ==> acc(x.f, write) && x != null && i != 0
; [then-branch: 20 | b@36@01 | dead]
; [else-branch: 20 | !(b@36@01) | live]
(push) ; 7
; [else-branch: 20 | !(b@36@01)]
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
