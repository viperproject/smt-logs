(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 23:05:48
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
(declare-fun trigF ($Snap Int Int) Bool)
(declare-fun trigF%limited ($Snap Int Int) Bool)
(declare-fun trigF%stateless (Int Int) Bool)
(declare-fun trigF%precondition ($Snap Int Int) Bool)
(declare-fun trigG ($Snap Int Bool) Bool)
(declare-fun trigG%limited ($Snap Int Bool) Bool)
(declare-fun trigG%stateless (Int Bool) Bool)
(declare-fun trigG%precondition ($Snap Int Bool) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap) Bool)
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
(assert (forall ((s@$ $Snap) (x@0@00 Int) (y@1@00 Int)) (!
  (= (trigF%limited s@$ x@0@00 y@1@00) (trigF s@$ x@0@00 y@1@00))
  :pattern ((trigF s@$ x@0@00 y@1@00))
  :qid |quant-u-10178|)))
(assert (forall ((s@$ $Snap) (x@0@00 Int) (y@1@00 Int)) (!
  (trigF%stateless x@0@00 y@1@00)
  :pattern ((trigF%limited s@$ x@0@00 y@1@00))
  :qid |quant-u-10179|)))
(assert (forall ((s@$ $Snap) (x@0@00 Int) (y@1@00 Int)) (!
  (=> (trigF%precondition s@$ x@0@00 y@1@00) (= (trigF s@$ x@0@00 y@1@00) true))
  :pattern ((trigF s@$ x@0@00 y@1@00))
  :qid |quant-u-10182|)))
(assert (forall ((s@$ $Snap) (x@0@00 Int) (y@1@00 Int)) (!
  true
  :pattern ((trigF s@$ x@0@00 y@1@00))
  :qid |quant-u-10183|)))
(assert (forall ((s@$ $Snap) (x@3@00 Int) (b@4@00 Bool)) (!
  (= (trigG%limited s@$ x@3@00 b@4@00) (trigG s@$ x@3@00 b@4@00))
  :pattern ((trigG s@$ x@3@00 b@4@00))
  :qid |quant-u-10180|)))
(assert (forall ((s@$ $Snap) (x@3@00 Int) (b@4@00 Bool)) (!
  (trigG%stateless x@3@00 b@4@00)
  :pattern ((trigG%limited s@$ x@3@00 b@4@00))
  :qid |quant-u-10181|)))
(assert (forall ((s@$ $Snap) (x@3@00 Int) (b@4@00 Bool)) (!
  (=>
    (trigG%precondition s@$ x@3@00 b@4@00)
    (= (trigG s@$ x@3@00 b@4@00) b@4@00))
  :pattern ((trigG s@$ x@3@00 b@4@00))
  :qid |quant-u-10184|)))
(assert (forall ((s@$ $Snap) (x@3@00 Int) (b@4@00 Bool)) (!
  true
  :pattern ((trigG s@$ x@3@00 b@4@00))
  :qid |quant-u-10185|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test ----------
(declare-const flag@0@01 Bool)
(declare-const flag@1@01 Bool)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] (forall a: Int, b: Int :: { trigG(a, flag), trigF(a, b) } { trigF(a, b) } true ==> trigG(a, flag) && trigF(a, b))
(declare-const a@3@01 Int)
(declare-const b@4@01 Int)
(push) ; 2
; [eval] true ==> trigG(a, flag) && trigF(a, b)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | True | live]
; [else-branch: 0 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 0 | True]
; [eval] trigG(a, flag) && trigF(a, b)
; [eval] trigG(a, flag)
(push) ; 5
(assert (trigG%precondition ($Snap.first $t@2@01) a@3@01 flag@1@01))
(pop) ; 5
; Joined path conditions
(assert (trigG%precondition ($Snap.first $t@2@01) a@3@01 flag@1@01))
(push) ; 5
; [then-branch: 1 | !(trigG(First:($t@2@01), a@3@01, flag@1@01)) | live]
; [else-branch: 1 | trigG(First:($t@2@01), a@3@01, flag@1@01) | live]
(push) ; 6
; [then-branch: 1 | !(trigG(First:($t@2@01), a@3@01, flag@1@01))]
(assert (not (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | trigG(First:($t@2@01), a@3@01, flag@1@01)]
(assert (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01))
; [eval] trigF(a, b)
(push) ; 7
(assert (trigF%precondition ($Snap.first $t@2@01) a@3@01 b@4@01))
(pop) ; 7
; Joined path conditions
(assert (trigF%precondition ($Snap.first $t@2@01) a@3@01 b@4@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
  (and
    (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
    (trigF%precondition ($Snap.first $t@2@01) a@3@01 b@4@01))))
(assert (or
  (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
  (not (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (and
  (trigG%precondition ($Snap.first $t@2@01) a@3@01 flag@1@01)
  (=>
    (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
    (and
      (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
      (trigF%precondition ($Snap.first $t@2@01) a@3@01 b@4@01)))
  (or
    (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
    (not (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((a@3@01 Int) (b@4@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@3@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@3@01 b@4@01)))
    (or
      (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
      (not (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01))))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@3@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@3@01 b@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@16@12@16@75-aux|)))
(assert (forall ((a@3@01 Int) (b@4@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@3@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@3@01 b@4@01)))
    (or
      (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
      (not (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01))))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@3@01 b@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@16@12@16@75-aux|)))
(assert (forall ((a@3@01 Int) (b@4@01 Int)) (!
  (and
    (trigG ($Snap.first $t@2@01) a@3@01 flag@1@01)
    (trigF ($Snap.first $t@2@01) a@3@01 b@4@01))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@3@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@3@01 b@4@01))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@3@01 b@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@16@12@16@75|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 ($Snap.combine ($Snap.first $t@5@01) ($Snap.second $t@5@01))))
(assert (= ($Snap.second $t@5@01) $Snap.unit))
; [eval] (forall a: Int, b: Int :: { trigG(a, flag), trigF(a, b) } { trigF(a, b) } true ==> trigG(a, flag) && trigF(a, b))
(declare-const a@6@01 Int)
(declare-const b@7@01 Int)
(push) ; 3
; [eval] true ==> trigG(a, flag) && trigF(a, b)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | True | live]
; [else-branch: 2 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | True]
; [eval] trigG(a, flag) && trigF(a, b)
; [eval] trigG(a, flag)
(push) ; 6
(assert (trigG%precondition ($Snap.first $t@5@01) a@6@01 flag@1@01))
(pop) ; 6
; Joined path conditions
(assert (trigG%precondition ($Snap.first $t@5@01) a@6@01 flag@1@01))
(push) ; 6
; [then-branch: 3 | !(trigG(First:($t@5@01), a@6@01, flag@1@01)) | live]
; [else-branch: 3 | trigG(First:($t@5@01), a@6@01, flag@1@01) | live]
(push) ; 7
; [then-branch: 3 | !(trigG(First:($t@5@01), a@6@01, flag@1@01))]
(assert (not (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 3 | trigG(First:($t@5@01), a@6@01, flag@1@01)]
(assert (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01))
; [eval] trigF(a, b)
(push) ; 8
(assert (trigF%precondition ($Snap.first $t@5@01) a@6@01 b@7@01))
(pop) ; 8
; Joined path conditions
(assert (trigF%precondition ($Snap.first $t@5@01) a@6@01 b@7@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
  (and
    (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
    (trigF%precondition ($Snap.first $t@5@01) a@6@01 b@7@01))))
(assert (or
  (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
  (not (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (trigG%precondition ($Snap.first $t@5@01) a@6@01 flag@1@01)
  (=>
    (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
    (and
      (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
      (trigF%precondition ($Snap.first $t@5@01) a@6@01 b@7@01)))
  (or
    (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
    (not (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((a@6@01 Int) (b@7@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@5@01) a@6@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@5@01) a@6@01 b@7@01)))
    (or
      (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
      (not (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01))))
  :pattern ((trigG%limited ($Snap.first $t@5@01) a@6@01 flag@1@01) (trigF%limited ($Snap.first $t@5@01) a@6@01 b@7@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74-aux|)))
(assert (forall ((a@6@01 Int) (b@7@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@5@01) a@6@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@5@01) a@6@01 b@7@01)))
    (or
      (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
      (not (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01))))
  :pattern ((trigF%limited ($Snap.first $t@5@01) a@6@01 b@7@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74-aux|)))
(assert (forall ((a@6@01 Int) (b@7@01 Int)) (!
  (and
    (trigG ($Snap.first $t@5@01) a@6@01 flag@1@01)
    (trigF ($Snap.first $t@5@01) a@6@01 b@7@01))
  :pattern ((trigG%limited ($Snap.first $t@5@01) a@6@01 flag@1@01) (trigF%limited ($Snap.first $t@5@01) a@6@01 b@7@01))
  :pattern ((trigF%limited ($Snap.first $t@5@01) a@6@01 b@7@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74|)))
(pop) ; 2
(push) ; 2
; [eval] (forall a: Int, b: Int :: { trigG(a, flag), trigF(a, b) } { trigF(a, b) } true ==> trigG(a, flag) && trigF(a, b))
(declare-const a@8@01 Int)
(declare-const b@9@01 Int)
(push) ; 3
; [eval] true ==> trigG(a, flag) && trigF(a, b)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | True | live]
; [else-branch: 4 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 4 | True]
; [eval] trigG(a, flag) && trigF(a, b)
; [eval] trigG(a, flag)
(push) ; 6
(assert (trigG%precondition ($Snap.first $t@2@01) a@8@01 flag@1@01))
(pop) ; 6
; Joined path conditions
(assert (trigG%precondition ($Snap.first $t@2@01) a@8@01 flag@1@01))
(push) ; 6
; [then-branch: 5 | !(trigG(First:($t@2@01), a@8@01, flag@1@01)) | live]
; [else-branch: 5 | trigG(First:($t@2@01), a@8@01, flag@1@01) | live]
(push) ; 7
; [then-branch: 5 | !(trigG(First:($t@2@01), a@8@01, flag@1@01))]
(assert (not (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 5 | trigG(First:($t@2@01), a@8@01, flag@1@01)]
(assert (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01))
; [eval] trigF(a, b)
(push) ; 8
(assert (trigF%precondition ($Snap.first $t@2@01) a@8@01 b@9@01))
(pop) ; 8
; Joined path conditions
(assert (trigF%precondition ($Snap.first $t@2@01) a@8@01 b@9@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
  (and
    (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
    (trigF%precondition ($Snap.first $t@2@01) a@8@01 b@9@01))))
(assert (or
  (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
  (not (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (trigG%precondition ($Snap.first $t@2@01) a@8@01 flag@1@01)
  (=>
    (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
    (and
      (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
      (trigF%precondition ($Snap.first $t@2@01) a@8@01 b@9@01)))
  (or
    (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
    (not (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((a@8@01 Int) (b@9@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@8@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@8@01 b@9@01)))
    (or
      (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
      (not (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01))))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@8@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@8@01 b@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74-aux|)))
(assert (forall ((a@8@01 Int) (b@9@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@8@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@8@01 b@9@01)))
    (or
      (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
      (not (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01))))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@8@01 b@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74-aux|)))
(assert (forall ((a@8@01 Int) (b@9@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@8@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
      (trigF%precondition ($Snap.first $t@2@01) a@8@01 b@9@01)))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@8@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@8@01 b@9@01))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@8@01 b@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74_precondition|)))
(push) ; 3
(assert (not (forall ((a@8@01 Int) (b@9@01 Int)) (!
  (=>
    (and
      (trigG%precondition ($Snap.first $t@2@01) a@8@01 flag@1@01)
      (=>
        (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@8@01 b@9@01)))
    (and
      (trigG ($Snap.first $t@2@01) a@8@01 flag@1@01)
      (trigF ($Snap.first $t@2@01) a@8@01 b@9@01)))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@8@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@8@01 b@9@01))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@8@01 b@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74|))))
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
; [eval] (forall a: Int, b: Int :: { trigG(a, flag), trigF(a, b) } { trigF(a, b) } true ==> trigG(a, flag) && trigF(a, b))
(declare-const a@10@01 Int)
(declare-const b@11@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] true ==> trigG(a, flag) && trigF(a, b)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | True | live]
; [else-branch: 6 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 6 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] trigG(a, flag) && trigF(a, b)
; [eval] trigG(a, flag)
(set-option :timeout 0)
(push) ; 6
(assert (trigG%precondition ($Snap.first $t@2@01) a@10@01 flag@1@01))
(pop) ; 6
; Joined path conditions
(assert (trigG%precondition ($Snap.first $t@2@01) a@10@01 flag@1@01))
(push) ; 6
; [then-branch: 7 | !(trigG(First:($t@2@01), a@10@01, flag@1@01)) | live]
; [else-branch: 7 | trigG(First:($t@2@01), a@10@01, flag@1@01) | live]
(push) ; 7
; [then-branch: 7 | !(trigG(First:($t@2@01), a@10@01, flag@1@01))]
(assert (not (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 7 | trigG(First:($t@2@01), a@10@01, flag@1@01)]
(assert (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] trigF(a, b)
(set-option :timeout 0)
(push) ; 8
(assert (trigF%precondition ($Snap.first $t@2@01) a@10@01 b@11@01))
(pop) ; 8
; Joined path conditions
(assert (trigF%precondition ($Snap.first $t@2@01) a@10@01 b@11@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
  (and
    (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
    (trigF%precondition ($Snap.first $t@2@01) a@10@01 b@11@01))))
(assert (or
  (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
  (not (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (trigG%precondition ($Snap.first $t@2@01) a@10@01 flag@1@01)
  (=>
    (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
    (and
      (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
      (trigF%precondition ($Snap.first $t@2@01) a@10@01 b@11@01)))
  (or
    (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
    (not (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((a@10@01 Int) (b@11@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@10@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@10@01 b@11@01)))
    (or
      (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
      (not (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01))))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@10@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@10@01 b@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74-aux|)))
(assert (forall ((a@10@01 Int) (b@11@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@10@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@10@01 b@11@01)))
    (or
      (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
      (not (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01))))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@10@01 b@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74-aux|)))
(assert (forall ((a@10@01 Int) (b@11@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@10@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
      (trigF%precondition ($Snap.first $t@2@01) a@10@01 b@11@01)))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@10@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@10@01 b@11@01))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@10@01 b@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74_precondition|)))
(push) ; 3
(assert (not (forall ((a@10@01 Int) (b@11@01 Int)) (!
  (=>
    (and
      (trigG%precondition ($Snap.first $t@2@01) a@10@01 flag@1@01)
      (=>
        (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@10@01 b@11@01)))
    (and
      (trigG ($Snap.first $t@2@01) a@10@01 flag@1@01)
      (trigF ($Snap.first $t@2@01) a@10@01 b@11@01)))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@10@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@10@01 b@11@01))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@10@01 b@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74|))))
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
; [eval] (forall a: Int, b: Int :: { trigG(a, flag), trigF(a, b) } { trigF(a, b) } true ==> trigG(a, flag) && trigF(a, b))
(declare-const a@12@01 Int)
(declare-const b@13@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] true ==> trigG(a, flag) && trigF(a, b)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | True | live]
; [else-branch: 8 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 8 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] trigG(a, flag) && trigF(a, b)
; [eval] trigG(a, flag)
(set-option :timeout 0)
(push) ; 6
(assert (trigG%precondition ($Snap.first $t@2@01) a@12@01 flag@1@01))
(pop) ; 6
; Joined path conditions
(assert (trigG%precondition ($Snap.first $t@2@01) a@12@01 flag@1@01))
(push) ; 6
; [then-branch: 9 | !(trigG(First:($t@2@01), a@12@01, flag@1@01)) | live]
; [else-branch: 9 | trigG(First:($t@2@01), a@12@01, flag@1@01) | live]
(push) ; 7
; [then-branch: 9 | !(trigG(First:($t@2@01), a@12@01, flag@1@01))]
(assert (not (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 9 | trigG(First:($t@2@01), a@12@01, flag@1@01)]
(assert (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] trigF(a, b)
(set-option :timeout 0)
(push) ; 8
(assert (trigF%precondition ($Snap.first $t@2@01) a@12@01 b@13@01))
(pop) ; 8
; Joined path conditions
(assert (trigF%precondition ($Snap.first $t@2@01) a@12@01 b@13@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
  (and
    (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
    (trigF%precondition ($Snap.first $t@2@01) a@12@01 b@13@01))))
(assert (or
  (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
  (not (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (trigG%precondition ($Snap.first $t@2@01) a@12@01 flag@1@01)
  (=>
    (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
    (and
      (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
      (trigF%precondition ($Snap.first $t@2@01) a@12@01 b@13@01)))
  (or
    (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
    (not (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((a@12@01 Int) (b@13@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@12@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@12@01 b@13@01)))
    (or
      (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
      (not (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01))))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@12@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@12@01 b@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74-aux|)))
(assert (forall ((a@12@01 Int) (b@13@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@12@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@12@01 b@13@01)))
    (or
      (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
      (not (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01))))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@12@01 b@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74-aux|)))
(assert (forall ((a@12@01 Int) (b@13@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@12@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
      (trigF%precondition ($Snap.first $t@2@01) a@12@01 b@13@01)))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@12@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@12@01 b@13@01))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@12@01 b@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74_precondition|)))
(push) ; 3
(assert (not (forall ((a@12@01 Int) (b@13@01 Int)) (!
  (=>
    (and
      (trigG%precondition ($Snap.first $t@2@01) a@12@01 flag@1@01)
      (=>
        (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@12@01 b@13@01)))
    (and
      (trigG ($Snap.first $t@2@01) a@12@01 flag@1@01)
      (trigF ($Snap.first $t@2@01) a@12@01 b@13@01)))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@12@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@12@01 b@13@01))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@12@01 b@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74|))))
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
; [eval] (forall a: Int, b: Int :: { trigG(a, flag), trigF(a, b) } { trigF(a, b) } true ==> trigG(a, flag) && trigF(a, b))
(declare-const a@14@01 Int)
(declare-const b@15@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] true ==> trigG(a, flag) && trigF(a, b)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | True | live]
; [else-branch: 10 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 10 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] trigG(a, flag) && trigF(a, b)
; [eval] trigG(a, flag)
(set-option :timeout 0)
(push) ; 6
(assert (trigG%precondition ($Snap.first $t@2@01) a@14@01 flag@1@01))
(pop) ; 6
; Joined path conditions
(assert (trigG%precondition ($Snap.first $t@2@01) a@14@01 flag@1@01))
(push) ; 6
; [then-branch: 11 | !(trigG(First:($t@2@01), a@14@01, flag@1@01)) | live]
; [else-branch: 11 | trigG(First:($t@2@01), a@14@01, flag@1@01) | live]
(push) ; 7
; [then-branch: 11 | !(trigG(First:($t@2@01), a@14@01, flag@1@01))]
(assert (not (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 11 | trigG(First:($t@2@01), a@14@01, flag@1@01)]
(assert (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] trigF(a, b)
(set-option :timeout 0)
(push) ; 8
(assert (trigF%precondition ($Snap.first $t@2@01) a@14@01 b@15@01))
(pop) ; 8
; Joined path conditions
(assert (trigF%precondition ($Snap.first $t@2@01) a@14@01 b@15@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
  (and
    (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
    (trigF%precondition ($Snap.first $t@2@01) a@14@01 b@15@01))))
(assert (or
  (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
  (not (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (trigG%precondition ($Snap.first $t@2@01) a@14@01 flag@1@01)
  (=>
    (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
    (and
      (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
      (trigF%precondition ($Snap.first $t@2@01) a@14@01 b@15@01)))
  (or
    (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
    (not (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((a@14@01 Int) (b@15@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@14@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@14@01 b@15@01)))
    (or
      (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
      (not (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01))))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@14@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@14@01 b@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74-aux|)))
(assert (forall ((a@14@01 Int) (b@15@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@14@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
      (and
        (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@14@01 b@15@01)))
    (or
      (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
      (not (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01))))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@14@01 b@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74-aux|)))
(assert (forall ((a@14@01 Int) (b@15@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@2@01) a@14@01 flag@1@01)
    (=>
      (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
      (trigF%precondition ($Snap.first $t@2@01) a@14@01 b@15@01)))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@14@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@14@01 b@15@01))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@14@01 b@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74_precondition|)))
(push) ; 3
(assert (not (forall ((a@14@01 Int) (b@15@01 Int)) (!
  (=>
    (and
      (trigG%precondition ($Snap.first $t@2@01) a@14@01 flag@1@01)
      (=>
        (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
        (trigF%precondition ($Snap.first $t@2@01) a@14@01 b@15@01)))
    (and
      (trigG ($Snap.first $t@2@01) a@14@01 flag@1@01)
      (trigF ($Snap.first $t@2@01) a@14@01 b@15@01)))
  :pattern ((trigG%limited ($Snap.first $t@2@01) a@14@01 flag@1@01) (trigF%limited ($Snap.first $t@2@01) a@14@01 b@15@01))
  :pattern ((trigF%limited ($Snap.first $t@2@01) a@14@01 b@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@19@11@19@74|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test2 ----------
(declare-const flag@16@01 Bool)
(declare-const flag@17@01 Bool)
(push) ; 1
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 ($Snap.combine ($Snap.first $t@18@01) ($Snap.second $t@18@01))))
(assert (= ($Snap.second $t@18@01) $Snap.unit))
; [eval] (forall a: Int, b: Int :: { trigG(a, flag), trigF(a, b) } { trigF(a, b) } true ==> trigG(a, flag) && trigF(a, b))
(declare-const a@19@01 Int)
(declare-const b@20@01 Int)
(push) ; 2
; [eval] true ==> trigG(a, flag) && trigF(a, b)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | True | live]
; [else-branch: 12 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 12 | True]
; [eval] trigG(a, flag) && trigF(a, b)
; [eval] trigG(a, flag)
(push) ; 5
(assert (trigG%precondition ($Snap.first $t@18@01) a@19@01 flag@17@01))
(pop) ; 5
; Joined path conditions
(assert (trigG%precondition ($Snap.first $t@18@01) a@19@01 flag@17@01))
(push) ; 5
; [then-branch: 13 | !(trigG(First:($t@18@01), a@19@01, flag@17@01)) | live]
; [else-branch: 13 | trigG(First:($t@18@01), a@19@01, flag@17@01) | live]
(push) ; 6
; [then-branch: 13 | !(trigG(First:($t@18@01), a@19@01, flag@17@01))]
(assert (not (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 13 | trigG(First:($t@18@01), a@19@01, flag@17@01)]
(assert (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01))
; [eval] trigF(a, b)
(push) ; 7
(assert (trigF%precondition ($Snap.first $t@18@01) a@19@01 b@20@01))
(pop) ; 7
; Joined path conditions
(assert (trigF%precondition ($Snap.first $t@18@01) a@19@01 b@20@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
  (and
    (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
    (trigF%precondition ($Snap.first $t@18@01) a@19@01 b@20@01))))
(assert (or
  (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
  (not (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (and
  (trigG%precondition ($Snap.first $t@18@01) a@19@01 flag@17@01)
  (=>
    (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
    (and
      (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
      (trigF%precondition ($Snap.first $t@18@01) a@19@01 b@20@01)))
  (or
    (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
    (not (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((a@19@01 Int) (b@20@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@18@01) a@19@01 flag@17@01)
    (=>
      (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
      (and
        (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
        (trigF%precondition ($Snap.first $t@18@01) a@19@01 b@20@01)))
    (or
      (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
      (not (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01))))
  :pattern ((trigG%limited ($Snap.first $t@18@01) a@19@01 flag@17@01) (trigF%limited ($Snap.first $t@18@01) a@19@01 b@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@26@12@26@75-aux|)))
(assert (forall ((a@19@01 Int) (b@20@01 Int)) (!
  (and
    (trigG%precondition ($Snap.first $t@18@01) a@19@01 flag@17@01)
    (=>
      (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
      (and
        (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
        (trigF%precondition ($Snap.first $t@18@01) a@19@01 b@20@01)))
    (or
      (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
      (not (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01))))
  :pattern ((trigF%limited ($Snap.first $t@18@01) a@19@01 b@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@26@12@26@75-aux|)))
(assert (forall ((a@19@01 Int) (b@20@01 Int)) (!
  (and
    (trigG ($Snap.first $t@18@01) a@19@01 flag@17@01)
    (trigF ($Snap.first $t@18@01) a@19@01 b@20@01))
  :pattern ((trigG%limited ($Snap.first $t@18@01) a@19@01 flag@17@01) (trigF%limited ($Snap.first $t@18@01) a@19@01 b@20@01))
  :pattern ((trigF%limited ($Snap.first $t@18@01) a@19@01 b@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@26@12@26@75|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(assert (= ($Snap.second $t@21@01) $Snap.unit))
; [eval] (forall a: Int, b: Int :: { trigF(a, b) } { trigG(a, flag), trigF(a, b) } true ==> (trigF(a, b) ==> trigG(a, flag)) && trigF(a, b))
(declare-const a@22@01 Int)
(declare-const b@23@01 Int)
(push) ; 3
; [eval] true ==> (trigF(a, b) ==> trigG(a, flag)) && trigF(a, b)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | True | live]
; [else-branch: 14 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 14 | True]
; [eval] (trigF(a, b) ==> trigG(a, flag)) && trigF(a, b)
; [eval] trigF(a, b) ==> trigG(a, flag)
; [eval] trigF(a, b)
(push) ; 6
(assert (trigF%precondition ($Snap.first $t@21@01) a@22@01 b@23@01))
(pop) ; 6
; Joined path conditions
(assert (trigF%precondition ($Snap.first $t@21@01) a@22@01 b@23@01))
(push) ; 6
; [then-branch: 15 | trigF(First:($t@21@01), a@22@01, b@23@01) | live]
; [else-branch: 15 | !(trigF(First:($t@21@01), a@22@01, b@23@01)) | live]
(push) ; 7
; [then-branch: 15 | trigF(First:($t@21@01), a@22@01, b@23@01)]
(assert (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
; [eval] trigG(a, flag)
(push) ; 8
(assert (trigG%precondition ($Snap.first $t@21@01) a@22@01 flag@17@01))
(pop) ; 8
; Joined path conditions
(assert (trigG%precondition ($Snap.first $t@21@01) a@22@01 flag@17@01))
(pop) ; 7
(push) ; 7
; [else-branch: 15 | !(trigF(First:($t@21@01), a@22@01, b@23@01))]
(assert (not (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
  (and
    (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
    (trigG%precondition ($Snap.first $t@21@01) a@22@01 flag@17@01))))
; Joined path conditions
(assert (or
  (not (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
  (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)))
(push) ; 6
; [then-branch: 16 | !(trigF(First:($t@21@01), a@22@01, b@23@01) ==> trigG(First:($t@21@01), a@22@01, flag@17@01)) | live]
; [else-branch: 16 | trigF(First:($t@21@01), a@22@01, b@23@01) ==> trigG(First:($t@21@01), a@22@01, flag@17@01) | live]
(push) ; 7
; [then-branch: 16 | !(trigF(First:($t@21@01), a@22@01, b@23@01) ==> trigG(First:($t@21@01), a@22@01, flag@17@01))]
(assert (not
  (=>
    (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
    (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 16 | trigF(First:($t@21@01), a@22@01, b@23@01) ==> trigG(First:($t@21@01), a@22@01, flag@17@01)]
(assert (=>
  (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
  (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01)))
; [eval] trigF(a, b)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (and
    (=>
      (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
      (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
    (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
  (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01)))
(assert (or
  (=>
    (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
    (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
  (not
    (=>
      (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
      (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (trigF%precondition ($Snap.first $t@21@01) a@22@01 b@23@01)
  (=>
    (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
    (and
      (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
      (trigG%precondition ($Snap.first $t@21@01) a@22@01 flag@17@01)))
  (or
    (not (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
    (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
  (=>
    (and
      (=>
        (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
        (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
      (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
    (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
  (or
    (=>
      (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
      (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
    (not
      (=>
        (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
        (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((a@22@01 Int) (b@23@01 Int)) (!
  (and
    (trigF%precondition ($Snap.first $t@21@01) a@22@01 b@23@01)
    (=>
      (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
      (and
        (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
        (trigG%precondition ($Snap.first $t@21@01) a@22@01 flag@17@01)))
    (or
      (not (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
      (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
    (=>
      (and
        (=>
          (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
          (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
        (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
      (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
    (or
      (=>
        (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
        (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
      (not
        (=>
          (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
          (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01)))))
  :pattern ((trigF%limited ($Snap.first $t@21@01) a@22@01 b@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@28@11@28@91-aux|)))
(assert (forall ((a@22@01 Int) (b@23@01 Int)) (!
  (and
    (trigF%precondition ($Snap.first $t@21@01) a@22@01 b@23@01)
    (=>
      (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
      (and
        (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
        (trigG%precondition ($Snap.first $t@21@01) a@22@01 flag@17@01)))
    (or
      (not (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
      (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
    (=>
      (and
        (=>
          (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
          (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
        (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
      (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
    (or
      (=>
        (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
        (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
      (not
        (=>
          (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
          (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01)))))
  :pattern ((trigG%limited ($Snap.first $t@21@01) a@22@01 flag@17@01) (trigF%limited ($Snap.first $t@21@01) a@22@01 b@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@28@11@28@91-aux|)))
(assert (forall ((a@22@01 Int) (b@23@01 Int)) (!
  (and
    (=>
      (trigF ($Snap.first $t@21@01) a@22@01 b@23@01)
      (trigG ($Snap.first $t@21@01) a@22@01 flag@17@01))
    (trigF ($Snap.first $t@21@01) a@22@01 b@23@01))
  :pattern ((trigF%limited ($Snap.first $t@21@01) a@22@01 b@23@01))
  :pattern ((trigG%limited ($Snap.first $t@21@01) a@22@01 flag@17@01) (trigF%limited ($Snap.first $t@21@01) a@22@01 b@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@28@11@28@91|)))
(pop) ; 2
(push) ; 2
; [eval] (forall a: Int, b: Int :: { trigF(a, b) } { trigG(a, flag), trigF(a, b) } true ==> (trigF(a, b) ==> trigG(a, flag)) && trigF(a, b))
(declare-const a@24@01 Int)
(declare-const b@25@01 Int)
(push) ; 3
; [eval] true ==> (trigF(a, b) ==> trigG(a, flag)) && trigF(a, b)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | True | live]
; [else-branch: 17 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 17 | True]
; [eval] (trigF(a, b) ==> trigG(a, flag)) && trigF(a, b)
; [eval] trigF(a, b) ==> trigG(a, flag)
; [eval] trigF(a, b)
(push) ; 6
(assert (trigF%precondition ($Snap.first $t@18@01) a@24@01 b@25@01))
(pop) ; 6
; Joined path conditions
(assert (trigF%precondition ($Snap.first $t@18@01) a@24@01 b@25@01))
(push) ; 6
; [then-branch: 18 | trigF(First:($t@18@01), a@24@01, b@25@01) | live]
; [else-branch: 18 | !(trigF(First:($t@18@01), a@24@01, b@25@01)) | live]
(push) ; 7
; [then-branch: 18 | trigF(First:($t@18@01), a@24@01, b@25@01)]
(assert (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
; [eval] trigG(a, flag)
(push) ; 8
(assert (trigG%precondition ($Snap.first $t@18@01) a@24@01 flag@17@01))
(pop) ; 8
; Joined path conditions
(assert (trigG%precondition ($Snap.first $t@18@01) a@24@01 flag@17@01))
(pop) ; 7
(push) ; 7
; [else-branch: 18 | !(trigF(First:($t@18@01), a@24@01, b@25@01))]
(assert (not (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
  (and
    (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
    (trigG%precondition ($Snap.first $t@18@01) a@24@01 flag@17@01))))
; Joined path conditions
(assert (or
  (not (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
  (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)))
(push) ; 6
; [then-branch: 19 | !(trigF(First:($t@18@01), a@24@01, b@25@01) ==> trigG(First:($t@18@01), a@24@01, flag@17@01)) | live]
; [else-branch: 19 | trigF(First:($t@18@01), a@24@01, b@25@01) ==> trigG(First:($t@18@01), a@24@01, flag@17@01) | live]
(push) ; 7
; [then-branch: 19 | !(trigF(First:($t@18@01), a@24@01, b@25@01) ==> trigG(First:($t@18@01), a@24@01, flag@17@01))]
(assert (not
  (=>
    (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
    (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 19 | trigF(First:($t@18@01), a@24@01, b@25@01) ==> trigG(First:($t@18@01), a@24@01, flag@17@01)]
(assert (=>
  (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
  (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01)))
; [eval] trigF(a, b)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (and
    (=>
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
      (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
    (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
  (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01)))
(assert (or
  (=>
    (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
    (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
  (not
    (=>
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
      (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (trigF%precondition ($Snap.first $t@18@01) a@24@01 b@25@01)
  (=>
    (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
    (and
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
      (trigG%precondition ($Snap.first $t@18@01) a@24@01 flag@17@01)))
  (or
    (not (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
    (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
  (=>
    (and
      (=>
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
        (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
    (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
  (or
    (=>
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
      (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
    (not
      (=>
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
        (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((a@24@01 Int) (b@25@01 Int)) (!
  (and
    (trigF%precondition ($Snap.first $t@18@01) a@24@01 b@25@01)
    (=>
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
      (and
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
        (trigG%precondition ($Snap.first $t@18@01) a@24@01 flag@17@01)))
    (or
      (not (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
    (=>
      (and
        (=>
          (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
          (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
      (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
    (or
      (=>
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
        (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
      (not
        (=>
          (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
          (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01)))))
  :pattern ((trigF%limited ($Snap.first $t@18@01) a@24@01 b@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@28@11@28@91-aux|)))
(assert (forall ((a@24@01 Int) (b@25@01 Int)) (!
  (and
    (trigF%precondition ($Snap.first $t@18@01) a@24@01 b@25@01)
    (=>
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
      (and
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
        (trigG%precondition ($Snap.first $t@18@01) a@24@01 flag@17@01)))
    (or
      (not (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
    (=>
      (and
        (=>
          (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
          (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
      (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
    (or
      (=>
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
        (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
      (not
        (=>
          (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
          (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01)))))
  :pattern ((trigG%limited ($Snap.first $t@18@01) a@24@01 flag@17@01) (trigF%limited ($Snap.first $t@18@01) a@24@01 b@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@28@11@28@91-aux|)))
(assert (forall ((a@24@01 Int) (b@25@01 Int)) (!
  (and
    (and
      (trigF%precondition ($Snap.first $t@18@01) a@24@01 b@25@01)
      (=>
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
        (trigG%precondition ($Snap.first $t@18@01) a@24@01 flag@17@01)))
    (=>
      (=>
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
        (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
      (trigF%precondition ($Snap.first $t@18@01) a@24@01 b@25@01)))
  :pattern ((trigF%limited ($Snap.first $t@18@01) a@24@01 b@25@01))
  :pattern ((trigG%limited ($Snap.first $t@18@01) a@24@01 flag@17@01) (trigF%limited ($Snap.first $t@18@01) a@24@01 b@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@28@11@28@91_precondition|)))
(push) ; 3
(assert (not (forall ((a@24@01 Int) (b@25@01 Int)) (!
  (=>
    (and
      (and
        (trigF%precondition ($Snap.first $t@18@01) a@24@01 b@25@01)
        (=>
          (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
          (trigG%precondition ($Snap.first $t@18@01) a@24@01 flag@17@01)))
      (=>
        (=>
          (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
          (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
        (trigF%precondition ($Snap.first $t@18@01) a@24@01 b@25@01)))
    (and
      (=>
        (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
        (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)))
  :pattern ((trigF%limited ($Snap.first $t@18@01) a@24@01 b@25@01))
  :pattern ((trigG%limited ($Snap.first $t@18@01) a@24@01 flag@17@01) (trigF%limited ($Snap.first $t@18@01) a@24@01 b@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@28@11@28@91|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((a@24@01 Int) (b@25@01 Int)) (!
  (and
    (=>
      (trigF ($Snap.first $t@18@01) a@24@01 b@25@01)
      (trigG ($Snap.first $t@18@01) a@24@01 flag@17@01))
    (trigF ($Snap.first $t@18@01) a@24@01 b@25@01))
  :pattern ((trigF%limited ($Snap.first $t@18@01) a@24@01 b@25@01))
  :pattern ((trigG%limited ($Snap.first $t@18@01) a@24@01 flag@17@01) (trigF%limited ($Snap.first $t@18@01) a@24@01 b@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0005a.vpr@28@11@28@91|)))
(pop) ; 2
(pop) ; 1
