(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:27:19
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
(declare-fun partiallyTerminating ($Snap Int) Bool)
(declare-fun partiallyTerminating%limited ($Snap Int) Bool)
(declare-fun partiallyTerminating%stateless (Int) Bool)
(declare-fun partiallyTerminating%precondition ($Snap Int) Bool)
(declare-fun nonTerminating ($Snap $Ref) Bool)
(declare-fun nonTerminating%limited ($Snap $Ref) Bool)
(declare-fun nonTerminating%stateless ($Ref) Bool)
(declare-fun nonTerminating%precondition ($Snap $Ref) Bool)
(declare-fun test2 ($Snap) Bool)
(declare-fun test2%limited ($Snap) Bool)
(declare-const test2%stateless Bool)
(declare-fun test2%precondition ($Snap) Bool)
(declare-fun test ($Snap $Ref) Bool)
(declare-fun test%limited ($Snap $Ref) Bool)
(declare-fun test%stateless ($Ref) Bool)
(declare-fun test%precondition ($Snap $Ref) Bool)
(declare-fun test4 ($Snap Int) Bool)
(declare-fun test4%limited ($Snap Int) Bool)
(declare-fun test4%stateless (Int) Bool)
(declare-fun test4%precondition ($Snap Int) Bool)
(declare-fun test5 ($Snap Int) Bool)
(declare-fun test5%limited ($Snap Int) Bool)
(declare-fun test5%stateless (Int) Bool)
(declare-fun test5%precondition ($Snap Int) Bool)
(declare-fun test3 ($Snap Int) Bool)
(declare-fun test3%limited ($Snap Int) Bool)
(declare-fun test3%stateless (Int) Bool)
(declare-fun test3%precondition ($Snap Int) Bool)
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
(assert (forall ((s@$ $Snap) (x@0@00 Int)) (!
  (= (partiallyTerminating%limited s@$ x@0@00) (partiallyTerminating s@$ x@0@00))
  :pattern ((partiallyTerminating s@$ x@0@00))
  :qid |quant-u-26448|)))
(assert (forall ((s@$ $Snap) (x@0@00 Int)) (!
  (partiallyTerminating%stateless x@0@00)
  :pattern ((partiallyTerminating%limited s@$ x@0@00))
  :qid |quant-u-26449|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (= (nonTerminating%limited s@$ x@2@00) (nonTerminating s@$ x@2@00))
  :pattern ((nonTerminating s@$ x@2@00))
  :qid |quant-u-26450|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (nonTerminating%stateless x@2@00)
  :pattern ((nonTerminating%limited s@$ x@2@00))
  :qid |quant-u-26451|)))
(assert (forall ((s@$ $Snap)) (!
  (= (test2%limited s@$) (test2 s@$))
  :pattern ((test2 s@$))
  :qid |quant-u-26452|)))
(assert (forall ((s@$ $Snap)) (!
  (as test2%stateless  Bool)
  :pattern ((test2%limited s@$))
  :qid |quant-u-26453|)))
(assert (forall ((s@$ $Snap)) (!
  (=>
    (test2%precondition s@$)
    (=
      (test2 s@$)
      (exists ((x2 Int)) (!
        (partiallyTerminating $Snap.unit x2)
        :pattern ((partiallyTerminating%limited $Snap.unit x2))
        ))))
  :pattern ((test2 s@$))
  :qid |quant-u-26462|)))
(assert (forall ((s@$ $Snap)) (!
  (=>
    (test2%precondition s@$)
    (forall ((x2 Int)) (!
      (partiallyTerminating%precondition $Snap.unit x2)
      :pattern ((partiallyTerminating%limited $Snap.unit x2))
      )))
  :pattern ((test2 s@$))
  :qid |quant-u-26463|)))
(assert (forall ((s@$ $Snap) (x@5@00 $Ref)) (!
  (= (test%limited s@$ x@5@00) (test s@$ x@5@00))
  :pattern ((test s@$ x@5@00))
  :qid |quant-u-26454|)))
(assert (forall ((s@$ $Snap) (x@5@00 $Ref)) (!
  (test%stateless x@5@00)
  :pattern ((test%limited s@$ x@5@00))
  :qid |quant-u-26455|)))
(assert (forall ((s@$ $Snap) (x@5@00 $Ref)) (!
  (=>
    (test%precondition s@$ x@5@00)
    (=
      (test s@$ x@5@00)
      (exists ((x2 $Ref)) (!
        (and (= x@5@00 x2) (nonTerminating $Snap.unit x2))
        :pattern ((nonTerminating%limited $Snap.unit x2))
        ))))
  :pattern ((test s@$ x@5@00))
  :qid |quant-u-26464|)))
(assert (forall ((s@$ $Snap) (x@5@00 $Ref)) (!
  (=>
    (test%precondition s@$ x@5@00)
    (forall ((x2 $Ref)) (!
      (=> (= x@5@00 x2) (nonTerminating%precondition $Snap.unit x2))
      :pattern ((nonTerminating%limited $Snap.unit x2))
      )))
  :pattern ((test s@$ x@5@00))
  :qid |quant-u-26465|)))
(assert (forall ((s@$ $Snap) (x@7@00 Int)) (!
  (= (test4%limited s@$ x@7@00) (test4 s@$ x@7@00))
  :pattern ((test4 s@$ x@7@00))
  :qid |quant-u-26456|)))
(assert (forall ((s@$ $Snap) (x@7@00 Int)) (!
  (test4%stateless x@7@00)
  :pattern ((test4%limited s@$ x@7@00))
  :qid |quant-u-26457|)))
(assert (forall ((s@$ $Snap) (x@7@00 Int)) (!
  (=>
    (test4%precondition s@$ x@7@00)
    (=
      (test4 s@$ x@7@00)
      (and
        (exists ((x2 Int)) 
          (= x@7@00 x2))
        (partiallyTerminating $Snap.unit x@7@00))))
  :pattern ((test4 s@$ x@7@00))
  :qid |quant-u-26466|)))
(assert (forall ((s@$ $Snap) (x@7@00 Int)) (!
  (=>
    (and (test4%precondition s@$ x@7@00) (exists ((x2 Int))  (= x@7@00 x2)))
    (partiallyTerminating%precondition $Snap.unit x@7@00))
  :pattern ((test4 s@$ x@7@00))
  :qid |quant-u-26467|)))
(assert (forall ((s@$ $Snap) (x@9@00 Int)) (!
  (= (test5%limited s@$ x@9@00) (test5 s@$ x@9@00))
  :pattern ((test5 s@$ x@9@00))
  :qid |quant-u-26458|)))
(assert (forall ((s@$ $Snap) (x@9@00 Int)) (!
  (test5%stateless x@9@00)
  :pattern ((test5%limited s@$ x@9@00))
  :qid |quant-u-26459|)))
(assert (forall ((s@$ $Snap) (x@9@00 Int)) (!
  (=>
    (test5%precondition s@$ x@9@00)
    (=
      (test5 s@$ x@9@00)
      (and
        (exists ((x2 Int)) 
          (and (= x@9@00 x2) (not (= x@9@00 x2))))
        (partiallyTerminating $Snap.unit x@9@00))))
  :pattern ((test5 s@$ x@9@00))
  :qid |quant-u-26468|)))
(assert (forall ((s@$ $Snap) (x@9@00 Int)) (!
  (=>
    (and
      (test5%precondition s@$ x@9@00)
      (exists ((x2 Int)) 
        (and (= x@9@00 x2) (not (= x@9@00 x2)))))
    (partiallyTerminating%precondition $Snap.unit x@9@00))
  :pattern ((test5 s@$ x@9@00))
  :qid |quant-u-26469|)))
(assert (forall ((s@$ $Snap) (x@11@00 Int)) (!
  (= (test3%limited s@$ x@11@00) (test3 s@$ x@11@00))
  :pattern ((test3 s@$ x@11@00))
  :qid |quant-u-26460|)))
(assert (forall ((s@$ $Snap) (x@11@00 Int)) (!
  (test3%stateless x@11@00)
  :pattern ((test3%limited s@$ x@11@00))
  :qid |quant-u-26461|)))
(assert (forall ((s@$ $Snap) (x@11@00 Int)) (!
  (=>
    (test3%precondition s@$ x@11@00)
    (=
      (test3 s@$ x@11@00)
      (exists ((x2 Int)) (!
        (and (= x@11@00 x2) (partiallyTerminating $Snap.unit x2))
        :pattern ((partiallyTerminating%limited $Snap.unit x2))
        ))))
  :pattern ((test3 s@$ x@11@00))
  :qid |quant-u-26470|)))
(assert (forall ((s@$ $Snap) (x@11@00 Int)) (!
  (=>
    (test3%precondition s@$ x@11@00)
    (forall ((x2 Int)) (!
      (=> (= x@11@00 x2) (partiallyTerminating%precondition $Snap.unit x2))
      :pattern ((partiallyTerminating%limited $Snap.unit x2))
      )))
  :pattern ((test3 s@$ x@11@00))
  :qid |quant-u-26471|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test_termination_proof ----------
(declare-const x@0@01 $Ref)
(declare-const x@1@01 $Ref)
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
; var x21: Ref
(declare-const x21@2@01 $Ref)
; [exec]
; inhale x == x21 && nonTerminating(x21)
(declare-const $t@3@01 $Snap)
(assert (= $t@3@01 ($Snap.combine ($Snap.first $t@3@01) ($Snap.second $t@3@01))))
(assert (= ($Snap.first $t@3@01) $Snap.unit))
; [eval] x == x21
(assert (= x@1@01 x21@2@01))
(assert (= ($Snap.second $t@3@01) $Snap.unit))
; [eval] nonTerminating(x21)
(push) ; 3
(assert (nonTerminating%precondition $Snap.unit x21@2@01))
(pop) ; 3
; Joined path conditions
(assert (nonTerminating%precondition $Snap.unit x21@2@01))
(assert (nonTerminating $Snap.unit x21@2@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] x == x21
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= x@1@01 x21@2@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | x@1@01 == x21@2@01 | live]
; [else-branch: 0 | x@1@01 != x21@2@01 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | x@1@01 == x21@2@01]
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test2_termination_proof ----------
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
; var x22: Int
(declare-const x22@4@01 Int)
; [exec]
; inhale partiallyTerminating(x22)
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 $Snap.unit))
; [eval] partiallyTerminating(x22)
(push) ; 3
(assert (partiallyTerminating%precondition $Snap.unit x22@4@01))
(pop) ; 3
; Joined path conditions
(assert (partiallyTerminating%precondition $Snap.unit x22@4@01))
(assert (partiallyTerminating $Snap.unit x22@4@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert x22 == 42
; [eval] x22 == 42
(set-option :timeout 0)
(push) ; 3
(assert (not (= x22@4@01 42)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x22 == 42
(set-option :timeout 0)
(push) ; 3
(assert (not (= x22@4@01 42)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x22 == 42
(set-option :timeout 0)
(push) ; 3
(assert (not (= x22@4@01 42)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x22 == 42
(set-option :timeout 0)
(push) ; 3
(assert (not (= x22@4@01 42)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test3_termination_proof ----------
(declare-const x@6@01 Int)
(declare-const x@7@01 Int)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 $Snap.unit))
; [eval] x == 42
(assert (= x@7@01 42))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var x23: Int
(declare-const x23@9@01 Int)
; [exec]
; inhale x == x23 && partiallyTerminating(x23)
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] x == x23
(assert (= x@7@01 x23@9@01))
(assert (= ($Snap.second $t@10@01) $Snap.unit))
; [eval] partiallyTerminating(x23)
(push) ; 3
(assert (partiallyTerminating%precondition $Snap.unit x23@9@01))
(pop) ; 3
; Joined path conditions
(assert (partiallyTerminating%precondition $Snap.unit x23@9@01))
(assert (partiallyTerminating $Snap.unit x23@9@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] x == x23
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= x@7@01 x23@9@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | x@7@01 == x23@9@01 | live]
; [else-branch: 1 | x@7@01 != x23@9@01 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | x@7@01 == x23@9@01]
; [exec]
; assert x23 == 42
; [eval] x23 == 42
(push) ; 4
(assert (not (= x23@9@01 42)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= x23@9@01 42))
(pop) ; 3
; [eval] !(x == x23)
; [eval] x == x23
; [then-branch: 2 | x@7@01 != x23@9@01 | dead]
; [else-branch: 2 | x@7@01 == x23@9@01 | live]
(push) ; 3
; [else-branch: 2 | x@7@01 == x23@9@01]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test4_termination_proof ----------
(declare-const x@11@01 Int)
(declare-const x@12@01 Int)
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
; var x24: Int
(declare-const x24@13@01 Int)
; [exec]
; inhale x == x24
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 $Snap.unit))
; [eval] x == x24
(assert (= x@12@01 x24@13@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] (exists x2: Int :: x == x2)
(declare-const x2@15@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] x == x2
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (exists ((x2@15@01 Int)) (!
    (= x@12@01 x2@15@01)
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/termination/functions/expressions/exists.vpr@36@6@36@31|)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (exists ((x2@15@01 Int)) (!
  (= x@12@01 x2@15@01)
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/termination/functions/expressions/exists.vpr@36@6@36@31|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | QE x2@15@01 :: x@12@01 == x2@15@01 | live]
; [else-branch: 3 | !(QE x2@15@01 :: x@12@01 == x2@15@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | QE x2@15@01 :: x@12@01 == x2@15@01]
(assert (exists ((x2@15@01 Int)) (!
  (= x@12@01 x2@15@01)
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/termination/functions/expressions/exists.vpr@36@6@36@31|)))
; [exec]
; assert x == 42
; [eval] x == 42
(push) ; 4
(assert (not (= x@12@01 42)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x == 42
(set-option :timeout 0)
(push) ; 4
(assert (not (= x@12@01 42)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x == 42
(set-option :timeout 0)
(push) ; 4
(assert (not (= x@12@01 42)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x == 42
(set-option :timeout 0)
(push) ; 4
(assert (not (= x@12@01 42)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test5_termination_proof ----------
(declare-const x@16@01 Int)
(declare-const x@17@01 Int)
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
; var x25: Int
(declare-const x25@18@01 Int)
; [exec]
; inhale x == x25 && x != x25
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 ($Snap.combine ($Snap.first $t@19@01) ($Snap.second $t@19@01))))
(assert (= ($Snap.first $t@19@01) $Snap.unit))
; [eval] x == x25
(assert (= x@17@01 x25@18@01))
(assert (= ($Snap.second $t@19@01) $Snap.unit))
; [eval] x != x25
(assert (not (= x@17@01 x25@18@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unsat
; [eval] (exists x2: Int :: x == x2 && x != x2)
(declare-const x2@20@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] x == x2 && x != x2
; [eval] x == x2
(push) ; 4
; [then-branch: 4 | x@17@01 != x2@20@01 | live]
; [else-branch: 4 | x@17@01 == x2@20@01 | live]
(push) ; 5
; [then-branch: 4 | x@17@01 != x2@20@01]
(assert (not (= x@17@01 x2@20@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | x@17@01 == x2@20@01]
(assert (= x@17@01 x2@20@01))
; [eval] x != x2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (= x@17@01 x2@20@01) (not (= x@17@01 x2@20@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (exists ((x2@20@01 Int)) (!
    (and (= x@17@01 x2@20@01) (not (= x@17@01 x2@20@01)))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/termination/functions/expressions/exists.vpr@43@6@43@42|)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | QE x2@20@01 :: x@17@01 == x2@20@01 && x@17@01 != x2@20@01 | dead]
; [else-branch: 5 | !(QE x2@20@01 :: x@17@01 == x2@20@01 && x@17@01 != x2@20@01) | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 5 | !(QE x2@20@01 :: x@17@01 == x2@20@01 && x@17@01 != x2@20@01)]
(assert (not
  (exists ((x2@20@01 Int)) (!
    (and (= x@17@01 x2@20@01) (not (= x@17@01 x2@20@01)))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/termination/functions/expressions/exists.vpr@43@6@43@42|))))
(pop) ; 3
; [eval] !(exists x2: Int :: x == x2 && x != x2)
; [eval] (exists x2: Int :: x == x2 && x != x2)
(declare-const x2@21@01 Int)
(push) ; 3
; [eval] x == x2 && x != x2
; [eval] x == x2
(push) ; 4
; [then-branch: 6 | x@17@01 != x2@21@01 | live]
; [else-branch: 6 | x@17@01 == x2@21@01 | live]
(push) ; 5
; [then-branch: 6 | x@17@01 != x2@21@01]
(assert (not (= x@17@01 x2@21@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | x@17@01 == x2@21@01]
(assert (= x@17@01 x2@21@01))
; [eval] x != x2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (= x@17@01 x2@21@01) (not (= x@17@01 x2@21@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 3
(set-option :timeout 10)
(assert (not (exists ((x2@21@01 Int)) (!
  (and (= x@17@01 x2@21@01) (not (= x@17@01 x2@21@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/termination/functions/expressions/exists.vpr@43@6@43@42|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | !(QE x2@21@01 :: x@17@01 == x2@21@01 && x@17@01 != x2@21@01) | dead]
; [else-branch: 7 | QE x2@21@01 :: x@17@01 == x2@21@01 && x@17@01 != x2@21@01 | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 7 | QE x2@21@01 :: x@17@01 == x2@21@01 && x@17@01 != x2@21@01]
(assert (exists ((x2@21@01 Int)) (!
  (and (= x@17@01 x2@21@01) (not (= x@17@01 x2@21@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/termination/functions/expressions/exists.vpr@43@6@43@42|)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
