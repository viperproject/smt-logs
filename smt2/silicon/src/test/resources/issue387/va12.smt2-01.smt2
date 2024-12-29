(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 14:49:34
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
(declare-fun Cell_get ($Snap $Ref) Int)
(declare-fun Cell_get%limited ($Snap $Ref) Int)
(declare-fun Cell_get%stateless ($Ref) Bool)
(declare-fun Cell_get%precondition ($Snap $Ref) Bool)
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
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (= (Cell_get%limited s@$ this@0@00) (Cell_get s@$ this@0@00))
  :pattern ((Cell_get s@$ this@0@00))
  :qid |quant-u-5212|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (Cell_get%stateless this@0@00)
  :pattern ((Cell_get%limited s@$ this@0@00))
  :qid |quant-u-5213|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (=>
    (Cell_get%precondition s@$ this@0@00)
    (= (Cell_get s@$ this@0@00) ($SortWrappers.$SnapToInt s@$)))
  :pattern ((Cell_get s@$ this@0@00))
  :qid |quant-u-5214|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  true
  :pattern ((Cell_get s@$ this@0@00))
  :qid |quant-u-5215|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- forallCellGet10 ----------
(declare-const c@0@01 $Ref)
(declare-const d@1@01 $Ref)
(declare-const c@2@01 $Ref)
(declare-const d@3@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (= ($Snap.first $t@4@01) $Snap.unit))
; [eval] c != null
(assert (not (= c@2@01 $Ref.null)))
(assert (=
  ($Snap.second $t@4@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@4@01))
    ($Snap.second ($Snap.second $t@4@01)))))
(assert (= ($Snap.second ($Snap.second $t@4@01)) $Snap.unit))
; [eval] (forall i1: Int ::0 <= i1 && i1 < Cell_get(c) ==> Cell_get(c) > i1)
(declare-const i1@5@01 Int)
(push) ; 2
; [eval] 0 <= i1 && i1 < Cell_get(c) ==> Cell_get(c) > i1
; [eval] 0 <= i1 && i1 < Cell_get(c)
; [eval] 0 <= i1
(push) ; 3
; [then-branch: 0 | !(0 <= i1@5@01) | live]
; [else-branch: 0 | 0 <= i1@5@01 | live]
(push) ; 4
; [then-branch: 0 | !(0 <= i1@5@01)]
(assert (not (<= 0 i1@5@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | 0 <= i1@5@01]
(assert (<= 0 i1@5@01))
; [eval] i1 < Cell_get(c)
; [eval] Cell_get(c)
(push) ; 5
(assert (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))
(pop) ; 5
; Joined path conditions
(assert (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@5@01)
  (and
    (<= 0 i1@5@01)
    (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))))
(assert (or (<= 0 i1@5@01) (not (<= 0 i1@5@01))))
(push) ; 3
; [then-branch: 1 | 0 <= i1@5@01 && i1@5@01 < Cell_get(First:(Second:($t@4@01)), c@2@01) | live]
; [else-branch: 1 | !(0 <= i1@5@01 && i1@5@01 < Cell_get(First:(Second:($t@4@01)), c@2@01)) | live]
(push) ; 4
; [then-branch: 1 | 0 <= i1@5@01 && i1@5@01 < Cell_get(First:(Second:($t@4@01)), c@2@01)]
(assert (and
  (<= 0 i1@5@01)
  (< i1@5@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01))))
; [eval] Cell_get(c) > i1
; [eval] Cell_get(c)
(push) ; 5
(assert (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))
(pop) ; 5
; Joined path conditions
(assert (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | !(0 <= i1@5@01 && i1@5@01 < Cell_get(First:(Second:($t@4@01)), c@2@01))]
(assert (not
  (and
    (<= 0 i1@5@01)
    (< i1@5@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i1@5@01)
    (< i1@5@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01)))
  (and
    (<= 0 i1@5@01)
    (< i1@5@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01))
    (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i1@5@01)
      (< i1@5@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01))))
  (and
    (<= 0 i1@5@01)
    (< i1@5@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01)))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@5@01 Int)) (!
  (=>
    (and
      (<= 0 i1@5@01)
      (< i1@5@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01)))
    (> (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01) i1@5@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va12.vpr@10@11@10@81|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.second $t@6@01) $Snap.unit))
; [eval] (forall i2: Int ::0 <= i2 && i2 < Cell_get(c) ==> Cell_get(c) > i2)
(declare-const i2@7@01 Int)
(push) ; 3
; [eval] 0 <= i2 && i2 < Cell_get(c) ==> Cell_get(c) > i2
; [eval] 0 <= i2 && i2 < Cell_get(c)
; [eval] 0 <= i2
(push) ; 4
; [then-branch: 2 | !(0 <= i2@7@01) | live]
; [else-branch: 2 | 0 <= i2@7@01 | live]
(push) ; 5
; [then-branch: 2 | !(0 <= i2@7@01)]
(assert (not (<= 0 i2@7@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | 0 <= i2@7@01]
(assert (<= 0 i2@7@01))
; [eval] i2 < Cell_get(c)
; [eval] Cell_get(c)
(push) ; 6
(assert (Cell_get%precondition ($Snap.first $t@6@01) c@2@01))
(pop) ; 6
; Joined path conditions
(assert (Cell_get%precondition ($Snap.first $t@6@01) c@2@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i2@7@01)
  (and (<= 0 i2@7@01) (Cell_get%precondition ($Snap.first $t@6@01) c@2@01))))
(assert (or (<= 0 i2@7@01) (not (<= 0 i2@7@01))))
(push) ; 4
; [then-branch: 3 | 0 <= i2@7@01 && i2@7@01 < Cell_get(First:($t@6@01), c@2@01) | live]
; [else-branch: 3 | !(0 <= i2@7@01 && i2@7@01 < Cell_get(First:($t@6@01), c@2@01)) | live]
(push) ; 5
; [then-branch: 3 | 0 <= i2@7@01 && i2@7@01 < Cell_get(First:($t@6@01), c@2@01)]
(assert (and (<= 0 i2@7@01) (< i2@7@01 (Cell_get ($Snap.first $t@6@01) c@2@01))))
; [eval] Cell_get(c) > i2
; [eval] Cell_get(c)
(push) ; 6
(assert (Cell_get%precondition ($Snap.first $t@6@01) c@2@01))
(pop) ; 6
; Joined path conditions
(assert (Cell_get%precondition ($Snap.first $t@6@01) c@2@01))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | !(0 <= i2@7@01 && i2@7@01 < Cell_get(First:($t@6@01), c@2@01))]
(assert (not (and (<= 0 i2@7@01) (< i2@7@01 (Cell_get ($Snap.first $t@6@01) c@2@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and (<= 0 i2@7@01) (< i2@7@01 (Cell_get ($Snap.first $t@6@01) c@2@01)))
  (and
    (<= 0 i2@7@01)
    (< i2@7@01 (Cell_get ($Snap.first $t@6@01) c@2@01))
    (Cell_get%precondition ($Snap.first $t@6@01) c@2@01))))
; Joined path conditions
(assert (or
  (not (and (<= 0 i2@7@01) (< i2@7@01 (Cell_get ($Snap.first $t@6@01) c@2@01))))
  (and (<= 0 i2@7@01) (< i2@7@01 (Cell_get ($Snap.first $t@6@01) c@2@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i2@7@01 Int)) (!
  (=>
    (and (<= 0 i2@7@01) (< i2@7@01 (Cell_get ($Snap.first $t@6@01) c@2@01)))
    (> (Cell_get ($Snap.first $t@6@01) c@2@01) i2@7@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va12.vpr@12@10@12@80|)))
(pop) ; 2
(push) ; 2
; [eval] (forall i2: Int ::0 <= i2 && i2 < Cell_get(c) ==> Cell_get(c) > i2)
(declare-const i2@8@01 Int)
(push) ; 3
; [eval] 0 <= i2 && i2 < Cell_get(c) ==> Cell_get(c) > i2
; [eval] 0 <= i2 && i2 < Cell_get(c)
; [eval] 0 <= i2
(push) ; 4
; [then-branch: 4 | !(0 <= i2@8@01) | live]
; [else-branch: 4 | 0 <= i2@8@01 | live]
(push) ; 5
; [then-branch: 4 | !(0 <= i2@8@01)]
(assert (not (<= 0 i2@8@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | 0 <= i2@8@01]
(assert (<= 0 i2@8@01))
; [eval] i2 < Cell_get(c)
; [eval] Cell_get(c)
(push) ; 6
(assert (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))
(pop) ; 6
; Joined path conditions
(assert (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i2@8@01)
  (and
    (<= 0 i2@8@01)
    (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))))
(assert (or (<= 0 i2@8@01) (not (<= 0 i2@8@01))))
(push) ; 4
; [then-branch: 5 | 0 <= i2@8@01 && i2@8@01 < Cell_get(First:(Second:($t@4@01)), c@2@01) | live]
; [else-branch: 5 | !(0 <= i2@8@01 && i2@8@01 < Cell_get(First:(Second:($t@4@01)), c@2@01)) | live]
(push) ; 5
; [then-branch: 5 | 0 <= i2@8@01 && i2@8@01 < Cell_get(First:(Second:($t@4@01)), c@2@01)]
(assert (and
  (<= 0 i2@8@01)
  (< i2@8@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01))))
; [eval] Cell_get(c) > i2
; [eval] Cell_get(c)
(push) ; 6
(assert (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))
(pop) ; 6
; Joined path conditions
(assert (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(0 <= i2@8@01 && i2@8@01 < Cell_get(First:(Second:($t@4@01)), c@2@01))]
(assert (not
  (and
    (<= 0 i2@8@01)
    (< i2@8@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 i2@8@01)
    (< i2@8@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01)))
  (and
    (<= 0 i2@8@01)
    (< i2@8@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01))
    (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i2@8@01)
      (< i2@8@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01))))
  (and
    (<= 0 i2@8@01)
    (< i2@8@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i2@8@01 Int)) (!
  (and
    (=>
      (<= 0 i2@8@01)
      (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))
    (=>
      (and
        (<= 0 i2@8@01)
        (< i2@8@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01)))
      (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va12.vpr@12@10@12@80_precondition|)))
(push) ; 3
(assert (not (forall ((i2@8@01 Int)) (!
  (=>
    (and
      (and
        (=>
          (<= 0 i2@8@01)
          (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01))
        (=>
          (and
            (<= 0 i2@8@01)
            (< i2@8@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01)))
          (Cell_get%precondition ($Snap.first ($Snap.second $t@4@01)) c@2@01)))
      (and
        (<= 0 i2@8@01)
        (< i2@8@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01))))
    (> (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01) i2@8@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va12.vpr@12@10@12@80|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i2@8@01 Int)) (!
  (=>
    (and
      (<= 0 i2@8@01)
      (< i2@8@01 (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01)))
    (> (Cell_get ($Snap.first ($Snap.second $t@4@01)) c@2@01) i2@8@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/va12.vpr@12@10@12@80|)))
(pop) ; 2
(pop) ; 1
