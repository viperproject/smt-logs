(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:25:29
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
; ---------- m1 ----------
(declare-const b1@0@01 Bool)
(declare-const b2@1@01 Bool)
(declare-const b1@2@01 Bool)
(declare-const b2@3@01 Bool)
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
(declare-const a@4@01 Int)
; [exec]
; a := (b1 ? (b2 ? 2 : 3) : (b1 && b2 ? 4 : 5))
; [eval] (b1 ? (b2 ? 2 : 3) : (b1 && b2 ? 4 : 5))
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not b1@2@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b1@2@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | b1@2@01 | live]
; [else-branch: 0 | !(b1@2@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 0 | b1@2@01]
(assert b1@2@01)
; [eval] (b2 ? 2 : 3)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not b2@3@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not b2@3@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | b2@3@01 | live]
; [else-branch: 1 | !(b2@3@01) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 1 | b2@3@01]
(assert b2@3@01)
(pop) ; 6
(push) ; 6
; [else-branch: 1 | !(b2@3@01)]
(assert (not b2@3@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (not b2@3@01) b2@3@01))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(b1@2@01)]
(assert (not b1@2@01))
; [eval] (b1 && b2 ? 4 : 5)
; [eval] b1 && b2
(push) ; 5
; [then-branch: 2 | !(b1@2@01) | live]
; [else-branch: 2 | b1@2@01 | live]
(push) ; 6
; [then-branch: 2 | !(b1@2@01)]
(pop) ; 6
(push) ; 6
; [else-branch: 2 | b1@2@01]
(assert b1@2@01)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or b1@2@01 (not b1@2@01)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (and b1@2@01 b2@3@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | b1@2@01 && b2@3@01 | dead]
; [else-branch: 3 | !(b1@2@01 && b2@3@01) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 3 | !(b1@2@01 && b2@3@01)]
(assert (not (and b1@2@01 b2@3@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not (and b1@2@01 b2@3@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=> b1@2@01 (and b1@2@01 (or (not b2@3@01) b2@3@01))))
; Joined path conditions
(assert (=>
  (not b1@2@01)
  (and (not b1@2@01) (or b1@2@01 (not b1@2@01)) (not (and b1@2@01 b2@3@01)))))
(assert (or (not b1@2@01) b1@2@01))
(declare-const a@5@01 Int)
(assert (= a@5@01 (ite b1@2@01 (ite b2@3@01 2 3) 5)))
; [exec]
; a := 1 + (b1 ? 1 : 2) + 2
; [eval] 1 + (b1 ? 1 : 2) + 2
; [eval] 1 + (b1 ? 1 : 2)
; [eval] (b1 ? 1 : 2)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not b1@2@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b1@2@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | b1@2@01 | live]
; [else-branch: 4 | !(b1@2@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 4 | b1@2@01]
(assert b1@2@01)
(pop) ; 4
(push) ; 4
; [else-branch: 4 | !(b1@2@01)]
(assert (not b1@2@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(declare-const a@6@01 Int)
(assert (= a@6@01 (+ (+ 1 (ite b1@2@01 1 2)) 2)))
; [exec]
; a := 1
(pop) ; 2
(pop) ; 1
; ---------- m2 ----------
(declare-const b@7@01 Bool)
(declare-const a@8@01 Int)
(declare-const b@9@01 Bool)
(declare-const a@10@01 Int)
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
; a := 1
; [eval] a == 1
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | True | live]
; [else-branch: 5 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | True]
; [exec]
; a := (b ? (a == 1 ? 2 : 3) : (a != 1 ? 4 : 5))
; [eval] (b ? (a == 1 ? 2 : 3) : (a != 1 ? 4 : 5))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@9@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@9@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | b@9@01 | live]
; [else-branch: 6 | !(b@9@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 6 | b@9@01]
(assert b@9@01)
; [eval] (a == 1 ? 2 : 3)
; [eval] a == 1
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | True | live]
; [else-branch: 7 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 7 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(push) ; 5
; [else-branch: 6 | !(b@9@01)]
(assert (not b@9@01))
; [eval] (a != 1 ? 4 : 5)
; [eval] a != 1
(push) ; 6
; [then-branch: 8 | False | dead]
; [else-branch: 8 | True | live]
(push) ; 7
; [else-branch: 8 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not b@9@01) b@9@01))
(declare-const a@11@01 Int)
(assert (= a@11@01 (ite b@9@01 2 5)))
; [eval] !!b
; [eval] !b
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@9@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@9@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | b@9@01 | live]
; [else-branch: 9 | !(b@9@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 9 | b@9@01]
(assert b@9@01)
; [exec]
; a := 2
; [exec]
; a := 4
(pop) ; 4
(push) ; 4
; [else-branch: 9 | !(b@9@01)]
(assert (not b@9@01))
(pop) ; 4
; [eval] !!!b
; [eval] !!b
; [eval] !b
(push) ; 4
(set-option :timeout 10)
(assert (not b@9@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@9@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | !(b@9@01) | live]
; [else-branch: 10 | b@9@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 10 | !(b@9@01)]
(assert (not b@9@01))
; [exec]
; a := 3
; [exec]
; a := 4
(pop) ; 4
(push) ; 4
; [else-branch: 10 | b@9@01]
(assert b@9@01)
(pop) ; 4
(pop) ; 3
; [eval] !(a == 1)
; [eval] a == 1
; [then-branch: 11 | False | dead]
; [else-branch: 11 | True | live]
(push) ; 3
; [else-branch: 11 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m3 ----------
(declare-const b@12@01 Bool)
(declare-const c@13@01 Bool)
(declare-const b@14@01 Bool)
(declare-const c@15@01 Bool)
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
(declare-const a@16@01 Int)
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
; [then-branch: 12 | b@14@01 | live]
; [else-branch: 12 | !(b@14@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 12 | b@14@01]
(assert b@14@01)
; [exec]
; a := (c ? 1 : 2)
; [eval] (c ? 1 : 2)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not c@15@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not c@15@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | c@15@01 | live]
; [else-branch: 13 | !(c@15@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 13 | c@15@01]
(assert c@15@01)
(pop) ; 5
(push) ; 5
; [else-branch: 13 | !(c@15@01)]
(assert (not c@15@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not c@15@01) c@15@01))
(declare-const a@17@01 Int)
(assert (= a@17@01 (ite c@15@01 1 2)))
(pop) ; 3
(push) ; 3
; [else-branch: 12 | !(b@14@01)]
(assert (not b@14@01))
(pop) ; 3
; [eval] !b
(push) ; 3
(set-option :timeout 10)
(assert (not b@14@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@14@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | !(b@14@01) | live]
; [else-branch: 14 | b@14@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 14 | !(b@14@01)]
(assert (not b@14@01))
; [exec]
; a := 3 + 4
; [eval] 3 + 4
(pop) ; 3
(push) ; 3
; [else-branch: 14 | b@14@01]
(assert b@14@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
