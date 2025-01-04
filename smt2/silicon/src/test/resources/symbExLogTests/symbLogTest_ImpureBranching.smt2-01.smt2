(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:25:31
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
(declare-fun P%trigger ($Snap Bool $Ref) Bool)
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
; ---------- test1 ----------
(declare-const b@0@01 Bool)
(declare-const x@1@01 $Ref)
(declare-const b@2@01 Bool)
(declare-const x@3@01 $Ref)
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@4@01 $Snap)
(pop) ; 2
(push) ; 2
; [exec]
; inhale (b ? acc(x.f, write) : acc(x.g, write))
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
(declare-const $t@5@01 Int)
(assert (not (= x@3@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; fold acc(P(b, x), write)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@2@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | b@2@01 | live]
; [else-branch: 1 | !(b@2@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | b@2@01]
(assert (P%trigger ($SortWrappers.IntTo$Snap $t@5@01) b@2@01 x@3@01))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(b@2@01)]
(assert (not b@2@01))
(declare-const $t@6@01 Int)
(assert (not (= x@3@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; fold acc(P(b, x), write)
; [then-branch: 2 | b@2@01 | dead]
; [else-branch: 2 | !(b@2@01) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 2 | !(b@2@01)]
(assert (P%trigger ($SortWrappers.IntTo$Snap $t@6@01) b@2@01 x@3@01))
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test2 ----------
(declare-const b@7@01 Bool)
(declare-const x@8@01 $Ref)
(declare-const b@9@01 Bool)
(declare-const x@10@01 $Ref)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@11@01 $Snap)
(pop) ; 2
(push) ; 2
; [exec]
; var a: Int
(declare-const a@12@01 Int)
; [exec]
; inhale (b ==> acc(x.f, write)) && (!b ==> acc(x.g, write))
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 ($Snap.combine ($Snap.first $t@13@01) ($Snap.second $t@13@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@9@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@9@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | b@9@01 | live]
; [else-branch: 3 | !(b@9@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | b@9@01]
(assert b@9@01)
(assert (not (= x@10@01 $Ref.null)))
; [eval] !b
; [then-branch: 4 | !(b@9@01) | dead]
; [else-branch: 4 | b@9@01 | live]
(push) ; 4
; [else-branch: 4 | b@9@01]
(assert (= ($Snap.second $t@13@01) $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
; [exec]
; fold acc(P(b, x), write)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@9@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | b@9@01 | live]
; [else-branch: 5 | !(b@9@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 5 | b@9@01]
(assert (P%trigger ($Snap.first $t@13@01) b@9@01 x@10@01))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 3 | !(b@9@01)]
(assert (not b@9@01))
(assert (= ($Snap.first $t@13@01) $Snap.unit))
; [eval] !b
(push) ; 4
(set-option :timeout 10)
(assert (not b@9@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | !(b@9@01) | live]
; [else-branch: 6 | b@9@01 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 6 | !(b@9@01)]
(assert (not (= x@10@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
; [exec]
; fold acc(P(b, x), write)
; [then-branch: 7 | b@9@01 | dead]
; [else-branch: 7 | !(b@9@01) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 7 | !(b@9@01)]
(assert (P%trigger ($Snap.second $t@13@01) b@9@01 x@10@01))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test3 ----------
(declare-const b@14@01 Bool)
(declare-const x@15@01 $Ref)
(declare-const b@16@01 Bool)
(declare-const x@17@01 $Ref)
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
; var a: Int
(declare-const a@18@01 Int)
; [exec]
; inhale b ==> acc(x.f, write)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@16@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@16@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | b@16@01 | live]
; [else-branch: 8 | !(b@16@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 8 | b@16@01]
(assert b@16@01)
(declare-const $t@19@01 Int)
(assert (not (= x@17@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 8 | !(b@16@01)]
(assert (not b@16@01))
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test4 ----------
(declare-const b@21@01 Bool)
(declare-const x@22@01 $Ref)
(declare-const b@23@01 Bool)
(declare-const x@24@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(push) ; 2
(set-option :timeout 10)
(assert (not (not b@23@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not b@23@01))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | b@23@01 | live]
; [else-branch: 9 | !(b@23@01) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 9 | b@23@01]
(assert b@23@01)
(declare-const $t@25@01 Int)
(assert (not (= x@24@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; var a: Int
(declare-const a@26@01 Int)
; [exec]
; a := 1
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 9 | !(b@23@01)]
(assert (not b@23@01))
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; var a: Int
(declare-const a@28@01 Int)
; [exec]
; a := 1
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test5 ----------
(declare-const b1@29@01 Bool)
(declare-const b2@30@01 Bool)
(declare-const x@31@01 $Ref)
(declare-const b1@32@01 Bool)
(declare-const b2@33@01 Bool)
(declare-const x@34@01 $Ref)
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
; var a: Int
(declare-const a@35@01 Int)
; [exec]
; inhale b1 ==> acc(x.f, write)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b1@32@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b1@32@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | b1@32@01 | live]
; [else-branch: 10 | !(b1@32@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 10 | b1@32@01]
(assert b1@32@01)
(declare-const $t@36@01 Int)
(assert (not (= x@34@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale b2 ==> acc(x.f, write)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@33@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b2@33@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | b2@33@01 | live]
; [else-branch: 11 | !(b2@33@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 11 | b2@33@01]
(assert b2@33@01)
(declare-const $t@37@01 Int)
(assert (= $t@36@01 $t@37@01))
(assert false)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unsat
; [exec]
; a := 1
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 11 | !(b2@33@01)]
(assert (not b2@33@01))
(declare-const $t@38@01 $Snap)
(assert (= $t@38@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 10 | !(b1@32@01)]
(assert (not b1@32@01))
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale b2 ==> acc(x.f, write)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@33@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b2@33@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | b2@33@01 | live]
; [else-branch: 12 | !(b2@33@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 12 | b2@33@01]
(assert b2@33@01)
(declare-const $t@40@01 Int)
(assert (not (= x@34@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 12 | !(b2@33@01)]
(assert (not b2@33@01))
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test5a ----------
(declare-const b1@42@01 Bool)
(declare-const b2@43@01 Bool)
(declare-const x@44@01 $Ref)
(declare-const b1@45@01 Bool)
(declare-const b2@46@01 Bool)
(declare-const x@47@01 $Ref)
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
; var a: Int
(declare-const a@48@01 Int)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b1@45@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b1@45@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | b1@45@01 | live]
; [else-branch: 13 | !(b1@45@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 13 | b1@45@01]
(assert b1@45@01)
; [exec]
; inhale acc(x.f, write)
(declare-const $t@49@01 Int)
(assert (not (= x@47@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@46@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b2@46@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | b2@46@01 | live]
; [else-branch: 14 | !(b2@46@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 14 | b2@46@01]
(assert b2@46@01)
; [exec]
; inhale acc(x.f, write)
(declare-const $t@50@01 Int)
(assert (= $t@49@01 $t@50@01))
(assert false)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unsat
; [exec]
; a := 1
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 14 | !(b2@46@01)]
(assert (not b2@46@01))
(pop) ; 4
; [eval] !b2
(push) ; 4
(set-option :timeout 10)
(assert (not b2@46@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@46@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | !(b2@46@01) | live]
; [else-branch: 15 | b2@46@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 15 | !(b2@46@01)]
(assert (not b2@46@01))
; [exec]
; a := 1
(pop) ; 4
(push) ; 4
; [else-branch: 15 | b2@46@01]
(assert b2@46@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 13 | !(b1@45@01)]
(assert (not b1@45@01))
(pop) ; 3
; [eval] !b1
(push) ; 3
(set-option :timeout 10)
(assert (not b1@45@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b1@45@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | !(b1@45@01) | live]
; [else-branch: 16 | b1@45@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 16 | !(b1@45@01)]
(assert (not b1@45@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@46@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b2@46@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | b2@46@01 | live]
; [else-branch: 17 | !(b2@46@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 17 | b2@46@01]
(assert b2@46@01)
; [exec]
; inhale acc(x.f, write)
(declare-const $t@51@01 Int)
(assert (not (= x@47@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 17 | !(b2@46@01)]
(assert (not b2@46@01))
(pop) ; 4
; [eval] !b2
(push) ; 4
(set-option :timeout 10)
(assert (not b2@46@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@46@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | !(b2@46@01) | live]
; [else-branch: 18 | b2@46@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 18 | !(b2@46@01)]
(assert (not b2@46@01))
; [exec]
; a := 1
(pop) ; 4
(push) ; 4
; [else-branch: 18 | b2@46@01]
(assert b2@46@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 16 | b1@45@01]
(assert b1@45@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test5b ----------
(declare-const b1@52@01 Bool)
(declare-const b2@53@01 Bool)
(declare-const x@54@01 $Ref)
(declare-const b1@55@01 Bool)
(declare-const b2@56@01 Bool)
(declare-const x@57@01 $Ref)
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
; var a: Int
(declare-const a@58@01 Int)
; [exec]
; inhale (b1 ? acc(x.f, write) : true)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b1@55@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b1@55@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | b1@55@01 | live]
; [else-branch: 19 | !(b1@55@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 19 | b1@55@01]
(assert b1@55@01)
(declare-const $t@59@01 Int)
(assert (not (= x@57@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (b2 ? acc(x.f, write) : true)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@56@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b2@56@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | b2@56@01 | live]
; [else-branch: 20 | !(b2@56@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 20 | b2@56@01]
(assert b2@56@01)
(declare-const $t@60@01 Int)
(assert (= $t@59@01 $t@60@01))
(assert false)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unsat
; [exec]
; a := 1
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 20 | !(b2@56@01)]
(assert (not b2@56@01))
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 19 | !(b1@55@01)]
(assert (not b1@55@01))
(declare-const $t@62@01 $Snap)
(assert (= $t@62@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (b2 ? acc(x.f, write) : true)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@56@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b2@56@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | b2@56@01 | live]
; [else-branch: 21 | !(b2@56@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 21 | b2@56@01]
(assert b2@56@01)
(declare-const $t@63@01 Int)
(assert (not (= x@57@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 21 | !(b2@56@01)]
(assert (not b2@56@01))
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test6 ----------
(declare-const b1@65@01 Bool)
(declare-const b2@66@01 Bool)
(declare-const x@67@01 $Ref)
(declare-const b1@68@01 Bool)
(declare-const b2@69@01 Bool)
(declare-const x@70@01 $Ref)
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
; var a: Int
(declare-const a@71@01 Int)
; [exec]
; inhale (b1 ? acc(x.f, write) : acc(x.g, write))
(push) ; 3
(set-option :timeout 10)
(assert (not (not b1@68@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b1@68@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | b1@68@01 | live]
; [else-branch: 22 | !(b1@68@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 22 | b1@68@01]
(assert b1@68@01)
(declare-const $t@72@01 Int)
(assert (not (= x@70@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (b2 ? acc(x.f, write) : acc(x.g, write))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@69@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b2@69@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | b2@69@01 | live]
; [else-branch: 23 | !(b2@69@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 23 | b2@69@01]
(assert b2@69@01)
(declare-const $t@73@01 Int)
(assert (= $t@72@01 $t@73@01))
(assert false)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unsat
; [exec]
; a := 1
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 23 | !(b2@69@01)]
(assert (not b2@69@01))
(declare-const $t@74@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 22 | !(b1@68@01)]
(assert (not b1@68@01))
(declare-const $t@75@01 Int)
(assert (not (= x@70@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (b2 ? acc(x.f, write) : acc(x.g, write))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@69@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b2@69@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | b2@69@01 | live]
; [else-branch: 24 | !(b2@69@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 24 | b2@69@01]
(assert b2@69@01)
(declare-const $t@76@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 24 | !(b2@69@01)]
(assert (not b2@69@01))
(declare-const $t@77@01 Int)
(assert (= $t@75@01 $t@77@01))
(assert false)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unsat
; [exec]
; a := 1
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test7 ----------
(declare-const b@78@01 Bool)
(declare-const x@79@01 $Ref)
(declare-const b@80@01 Bool)
(declare-const x@81@01 $Ref)
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
; var a: Int
(declare-const a@82@01 Int)
; [exec]
; inhale (b ? acc(x.f, write) : acc(x.g, write))
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@80@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@80@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | b@80@01 | live]
; [else-branch: 25 | !(b@80@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 25 | b@80@01]
(assert b@80@01)
(declare-const $t@83@01 Int)
(assert (not (= x@81@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 25 | !(b@80@01)]
(assert (not b@80@01))
(declare-const $t@84@01 Int)
(assert (not (= x@81@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test8 ----------
(declare-const b@85@01 Bool)
(declare-const x@86@01 $Ref)
(declare-const b@87@01 Bool)
(declare-const x@88@01 $Ref)
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
; var a: Int
(declare-const a@89@01 Int)
; [exec]
; inhale true && (true && (true && (b ? acc(x.f, write) : acc(x.g, write))))
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 ($Snap.combine ($Snap.first $t@90@01) ($Snap.second $t@90@01))))
(assert (= ($Snap.first $t@90@01) $Snap.unit))
(assert (=
  ($Snap.second $t@90@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@90@01))
    ($Snap.second ($Snap.second $t@90@01)))))
(assert (= ($Snap.first ($Snap.second $t@90@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@90@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@90@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@90@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@90@01))) $Snap.unit))
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@87@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@87@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | b@87@01 | live]
; [else-branch: 26 | !(b@87@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 26 | b@87@01]
(assert b@87@01)
(assert (not (= x@88@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 26 | !(b@87@01)]
(assert (not b@87@01))
(assert (not (= x@88@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := 1
(pop) ; 3
(pop) ; 2
(pop) ; 1
