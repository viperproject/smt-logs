(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:58:06
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
; ---------- Ref__Mul ----------
(declare-const diz@0@01 $Ref)
(declare-const current_thread_id@1@01 Int)
(declare-const n@2@01 Int)
(declare-const sys__result@3@01 Int)
(declare-const diz@4@01 $Ref)
(declare-const current_thread_id@5@01 Int)
(declare-const n@6@01 Int)
(declare-const sys__result@7@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@4@01 $Ref.null)))
(assert (=
  ($Snap.second $t@8@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@8@01))
    ($Snap.second ($Snap.second $t@8@01)))))
(assert (= ($Snap.first ($Snap.second $t@8@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@5@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@8@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@8@01))) $Snap.unit))
; [eval] n > 0
(assert (> n@6@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@8@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
  $Snap.unit))
; [eval] diz.Ref__res == 0
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (=
  ($Snap.second $t@9@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@9@01))
    ($Snap.second ($Snap.second $t@9@01)))))
(assert (= ($Snap.first ($Snap.second $t@9@01)) $Snap.unit))
; [eval] diz.Ref__res == n * n
; [eval] n * n
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@9@01)) (* n@6@01 n@6@01)))
(assert (= ($Snap.second ($Snap.second $t@9@01)) $Snap.unit))
; [eval] n > 0
(pop) ; 2
(push) ; 2
; [exec]
; var i: Int
(declare-const i@10@01 Int)
; [exec]
; var __flatten_1: Int
(declare-const __flatten_1@11@01 Int)
; [exec]
; var __flatten_2: Int
(declare-const __flatten_2@12@01 Int)
; [exec]
; var __flatten_3: Int
(declare-const __flatten_3@13@01 Int)
; [exec]
; var __flatten_4: Int
(declare-const __flatten_4@14@01 Int)
; [exec]
; var __flatten_5: Int
(declare-const __flatten_5@15@01 Int)
; [exec]
; i := 0
; [exec]
; __flatten_1 := 0
; [exec]
; __flatten_4 := __flatten_1
; [exec]
; diz.Ref__res := __flatten_4
(declare-const __flatten_2@16@01 Int)
(declare-const __flatten_5@17@01 Int)
(declare-const i@18@01 Int)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 ($Snap.combine ($Snap.first $t@19@01) ($Snap.second $t@19@01))))
(assert (=
  ($Snap.second $t@19@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@19@01))
    ($Snap.second ($Snap.second $t@19@01)))))
(assert (= ($Snap.first ($Snap.second $t@19@01)) $Snap.unit))
; [eval] i <= n
(assert (<= i@18@01 n@6@01))
(assert (= ($Snap.second ($Snap.second $t@19@01)) $Snap.unit))
; [eval] diz.Ref__res == i * n
; [eval] i * n
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) (* i@18@01 n@6@01)))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] i <= n
(push) ; 4
(assert (not (<= 0 n@6@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 n@6@01))
; [eval] diz.Ref__res == i * n
; [eval] i * n
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (= $t@19@01 ($Snap.combine ($Snap.first $t@19@01) ($Snap.second $t@19@01))))
(assert (=
  ($Snap.second $t@19@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@19@01))
    ($Snap.second ($Snap.second $t@19@01)))))
(assert (= ($Snap.first ($Snap.second $t@19@01)) $Snap.unit))
(assert (<= i@18@01 n@6@01))
(assert (= ($Snap.second ($Snap.second $t@19@01)) $Snap.unit))
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) (* i@18@01 n@6@01)))
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
(assert (not (not (< i@18@01 n@6@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< i@18@01 n@6@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | i@18@01 < n@6@01 | live]
; [else-branch: 0 | !(i@18@01 < n@6@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 0 | i@18@01 < n@6@01]
(assert (< i@18@01 n@6@01))
; [exec]
; __flatten_2 := diz.Ref__res + n
; [eval] diz.Ref__res + n
(declare-const __flatten_2@20@01 Int)
(assert (=
  __flatten_2@20@01
  (+ ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) n@6@01)))
; [exec]
; __flatten_5 := __flatten_2
; [exec]
; diz.Ref__res := __flatten_5
; [exec]
; i := i + 1
; [eval] i + 1
(declare-const i@21@01 Int)
(assert (= i@21@01 (+ i@18@01 1)))
; Loop head block: Re-establish invariant
; [eval] i <= n
(push) ; 6
(assert (not (<= i@21@01 n@6@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= i@21@01 n@6@01))
; [eval] diz.Ref__res == i * n
; [eval] i * n
(push) ; 6
(assert (not (= __flatten_2@20@01 (* i@21@01 n@6@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_2@20@01 (* i@21@01 n@6@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | !(i@18@01 < n@6@01)]
(assert (not (< i@18@01 n@6@01)))
(pop) ; 5
; [eval] !(i < n)
; [eval] i < n
(push) ; 5
(set-option :timeout 10)
(assert (not (< i@18@01 n@6@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< i@18@01 n@6@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | !(i@18@01 < n@6@01) | live]
; [else-branch: 1 | i@18@01 < n@6@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 1 | !(i@18@01 < n@6@01)]
(assert (not (< i@18@01 n@6@01)))
; [exec]
; __flatten_3 := diz.Ref__res
(declare-const __flatten_3@22@01 Int)
(assert (= __flatten_3@22@01 ($SortWrappers.$SnapToInt ($Snap.first $t@19@01))))
; [exec]
; sys__result := __flatten_3
; [exec]
; assert acc(diz.Ref__res, write) && (diz.Ref__res == n * n && n > 0)
; [eval] diz.Ref__res == n * n
; [eval] n * n
(push) ; 6
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) (* n@6@01 n@6@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) (* n@6@01 n@6@01)))
; [eval] n > 0
; [exec]
; inhale false
(pop) ; 5
(push) ; 5
; [else-branch: 1 | i@18@01 < n@6@01]
(assert (< i@18@01 n@6@01))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1