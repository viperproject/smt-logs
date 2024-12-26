(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:41:26
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
(declare-sort Dummy 0)
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
(declare-fun $SortWrappers.DummyTo$Snap (Dummy) $Snap)
(declare-fun $SortWrappers.$SnapToDummy ($Snap) Dummy)
(assert (forall ((x Dummy)) (!
    (= x ($SortWrappers.$SnapToDummy($SortWrappers.DummyTo$Snap x)))
    :pattern (($SortWrappers.DummyTo$Snap x))
    :qid |$Snap.$SnapToDummyTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.DummyTo$Snap($SortWrappers.$SnapToDummy x)))
    :pattern (($SortWrappers.$SnapToDummy x))
    :qid |$Snap.DummyTo$SnapToDummy|
    )))
; ////////// Symbols
(declare-fun guard<Bool> ($Ref) Bool)
; Declaring symbols related to program functions (from program analysis)
(declare-fun foo_2_2 ($Snap $Ref $Ref) Bool)
(declare-fun foo_2_2%limited ($Snap $Ref $Ref) Bool)
(declare-fun foo_2_2%stateless ($Ref $Ref) Bool)
(declare-fun foo_2_2%precondition ($Snap $Ref $Ref) Bool)
(declare-fun foo_2_1 ($Snap $Ref $Ref) Bool)
(declare-fun foo_2_1%limited ($Snap $Ref $Ref) Bool)
(declare-fun foo_2_1%stateless ($Ref $Ref) Bool)
(declare-fun foo_2_1%precondition ($Snap $Ref $Ref) Bool)
(declare-fun foo_1_2 ($Snap $Ref $Ref) Bool)
(declare-fun foo_1_2%limited ($Snap $Ref $Ref) Bool)
(declare-fun foo_1_2%stateless ($Ref $Ref) Bool)
(declare-fun foo_1_2%precondition ($Snap $Ref $Ref) Bool)
(declare-fun foo_1_1 ($Snap $Ref $Ref) Bool)
(declare-fun foo_1_1%limited ($Snap $Ref $Ref) Bool)
(declare-fun foo_1_1%stateless ($Ref $Ref) Bool)
(declare-fun foo_1_1%precondition ($Snap $Ref $Ref) Bool)
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
; ---------- FUNCTION foo_2_2----------
(declare-fun y@0@00 () $Ref)
(declare-fun x@1@00 () $Ref)
(declare-fun result@2@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
; [eval] guard(y)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (guard<Bool> y@0@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (guard<Bool> y@0@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | guard[Bool](y@0@00) | live]
; [else-branch: 0 | !(guard[Bool](y@0@00)) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 0 | guard[Bool](y@0@00)]
(assert (guard<Bool> y@0@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@1@00 $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@1@00 y@0@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@0@00 $Ref.null)))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [else-branch: 0 | !(guard[Bool](y@0@00))]
(assert (not (guard<Bool> y@0@00)))
(assert (not (= x@1@00 $Ref.null)))
(pop) ; 2
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@0@00 $Ref) (x@1@00 $Ref)) (!
  (= (foo_2_2%limited s@$ y@0@00 x@1@00) (foo_2_2 s@$ y@0@00 x@1@00))
  :pattern ((foo_2_2 s@$ y@0@00 x@1@00))
  :qid |quant-u-25749|)))
(assert (forall ((s@$ $Snap) (y@0@00 $Ref) (x@1@00 $Ref)) (!
  (foo_2_2%stateless y@0@00 x@1@00)
  :pattern ((foo_2_2%limited s@$ y@0@00 x@1@00))
  :qid |quant-u-25750|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (guard<Bool> y@0@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@1@00 $Ref.null)))
(assert (not (= y@0@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] guard(y) ==> y.flag
; [eval] guard(y)
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (guard<Bool> y@0@00))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | guard[Bool](y@0@00) | live]
; [else-branch: 1 | !(guard[Bool](y@0@00)) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | guard[Bool](y@0@00)]
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=
  result@2@00
  (=> (guard<Bool> y@0@00) ($SortWrappers.$SnapToBool ($Snap.second s@$)))))
(pop) ; 1
(push) ; 1
(assert (not (guard<Bool> y@0@00)))
(assert (not (= x@1@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] guard(y) ==> y.flag
; [eval] guard(y)
(set-option :timeout 0)
(push) ; 2
; [then-branch: 2 | guard[Bool](y@0@00) | dead]
; [else-branch: 2 | !(guard[Bool](y@0@00)) | live]
(push) ; 3
; [else-branch: 2 | !(guard[Bool](y@0@00))]
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (= result@2@00 true))
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@0@00 $Ref) (x@1@00 $Ref)) (!
  (=>
    (foo_2_2%precondition s@$ y@0@00 x@1@00)
    (=
      (foo_2_2 s@$ y@0@00 x@1@00)
      (=> (guard<Bool> y@0@00) ($SortWrappers.$SnapToBool ($Snap.second s@$)))))
  :pattern ((foo_2_2 s@$ y@0@00 x@1@00))
  :qid |quant-u-25757|)))
(assert (forall ((s@$ $Snap) (y@0@00 $Ref) (x@1@00 $Ref)) (!
  true
  :pattern ((foo_2_2 s@$ y@0@00 x@1@00))
  :qid |quant-u-25758|)))
; ---------- FUNCTION foo_2_1----------
(declare-fun y@3@00 () $Ref)
(declare-fun x@4@00 () $Ref)
(declare-fun result@5@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
; [eval] guard(y)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (guard<Bool> y@3@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (guard<Bool> y@3@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | guard[Bool](y@3@00) | live]
; [else-branch: 3 | !(guard[Bool](y@3@00)) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 3 | guard[Bool](y@3@00)]
(assert (guard<Bool> y@3@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@4@00 $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@4@00 y@3@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@3@00 $Ref.null)))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [else-branch: 3 | !(guard[Bool](y@3@00))]
(assert (not (guard<Bool> y@3@00)))
(assert (not (= x@4@00 $Ref.null)))
(pop) ; 2
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@3@00 $Ref) (x@4@00 $Ref)) (!
  (= (foo_2_1%limited s@$ y@3@00 x@4@00) (foo_2_1 s@$ y@3@00 x@4@00))
  :pattern ((foo_2_1 s@$ y@3@00 x@4@00))
  :qid |quant-u-25751|)))
(assert (forall ((s@$ $Snap) (y@3@00 $Ref) (x@4@00 $Ref)) (!
  (foo_2_1%stateless y@3@00 x@4@00)
  :pattern ((foo_2_1%limited s@$ y@3@00 x@4@00))
  :qid |quant-u-25752|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (guard<Bool> y@3@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@4@00 $Ref.null)))
(assert (not (= y@3@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] !guard(y) || y.flag
; [eval] !guard(y)
; [eval] guard(y)
(set-option :timeout 0)
(push) ; 2
; [then-branch: 4 | !(guard[Bool](y@3@00)) | live]
; [else-branch: 4 | guard[Bool](y@3@00) | live]
(push) ; 3
; [then-branch: 4 | !(guard[Bool](y@3@00))]
(assert (not (guard<Bool> y@3@00)))
(pop) ; 3
(push) ; 3
; [else-branch: 4 | guard[Bool](y@3@00)]
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (guard<Bool> y@3@00) (not (guard<Bool> y@3@00))))
(assert (=
  result@5@00
  (or (not (guard<Bool> y@3@00)) ($SortWrappers.$SnapToBool ($Snap.second s@$)))))
(pop) ; 1
(push) ; 1
(assert (not (guard<Bool> y@3@00)))
(assert (not (= x@4@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] !guard(y) || y.flag
; [eval] !guard(y)
; [eval] guard(y)
(set-option :timeout 0)
(push) ; 2
; [then-branch: 5 | !(guard[Bool](y@3@00)) | live]
; [else-branch: 5 | guard[Bool](y@3@00) | live]
(push) ; 3
; [then-branch: 5 | !(guard[Bool](y@3@00))]
(pop) ; 3
(push) ; 3
; [else-branch: 5 | guard[Bool](y@3@00)]
(assert (guard<Bool> y@3@00))
(push) ; 4
(set-option :timeout 10)
(assert (not (= x@4@00 y@3@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (guard<Bool> y@3@00) (not (guard<Bool> y@3@00))))
(assert (= result@5@00 (or (not (guard<Bool> y@3@00)) ($SortWrappers.$SnapToBool s@$))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@3@00 $Ref) (x@4@00 $Ref)) (!
  (=>
    (foo_2_1%precondition s@$ y@3@00 x@4@00)
    (=
      (foo_2_1 s@$ y@3@00 x@4@00)
      (or
        (not (guard<Bool> y@3@00))
        (ite
          (guard<Bool> y@3@00)
          ($SortWrappers.$SnapToBool ($Snap.second s@$))
          ($SortWrappers.$SnapToBool s@$)))))
  :pattern ((foo_2_1 s@$ y@3@00 x@4@00))
  :qid |quant-u-25759|)))
(assert (forall ((s@$ $Snap) (y@3@00 $Ref) (x@4@00 $Ref)) (!
  true
  :pattern ((foo_2_1 s@$ y@3@00 x@4@00))
  :qid |quant-u-25760|)))
; ---------- FUNCTION foo_1_2----------
(declare-fun y@6@00 () $Ref)
(declare-fun x@7@00 () $Ref)
(declare-fun result@8@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@7@00 $Ref.null)))
; [eval] guard(y)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (guard<Bool> y@6@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (guard<Bool> y@6@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | guard[Bool](y@6@00) | live]
; [else-branch: 6 | !(guard[Bool](y@6@00)) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 6 | guard[Bool](y@6@00)]
(assert (guard<Bool> y@6@00))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@7@00 y@6@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@6@00 $Ref.null)))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [else-branch: 6 | !(guard[Bool](y@6@00))]
(assert (not (guard<Bool> y@6@00)))
(assert (= ($Snap.second s@$) $Snap.unit))
(pop) ; 2
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@6@00 $Ref) (x@7@00 $Ref)) (!
  (= (foo_1_2%limited s@$ y@6@00 x@7@00) (foo_1_2 s@$ y@6@00 x@7@00))
  :pattern ((foo_1_2 s@$ y@6@00 x@7@00))
  :qid |quant-u-25753|)))
(assert (forall ((s@$ $Snap) (y@6@00 $Ref) (x@7@00 $Ref)) (!
  (foo_1_2%stateless y@6@00 x@7@00)
  :pattern ((foo_1_2%limited s@$ y@6@00 x@7@00))
  :qid |quant-u-25754|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (guard<Bool> y@6@00))
(assert (not (= y@6@00 $Ref.null)))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@7@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] guard(y) ==> y.flag
; [eval] guard(y)
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (guard<Bool> y@6@00))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | guard[Bool](y@6@00) | live]
; [else-branch: 7 | !(guard[Bool](y@6@00)) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | guard[Bool](y@6@00)]
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=
  result@8@00
  (=> (guard<Bool> y@6@00) ($SortWrappers.$SnapToBool ($Snap.second s@$)))))
(pop) ; 1
(push) ; 1
(assert (not (guard<Bool> y@6@00)))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@7@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] guard(y) ==> y.flag
; [eval] guard(y)
(set-option :timeout 0)
(push) ; 2
; [then-branch: 8 | guard[Bool](y@6@00) | dead]
; [else-branch: 8 | !(guard[Bool](y@6@00)) | live]
(push) ; 3
; [else-branch: 8 | !(guard[Bool](y@6@00))]
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (= result@8@00 true))
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@6@00 $Ref) (x@7@00 $Ref)) (!
  (=>
    (foo_1_2%precondition s@$ y@6@00 x@7@00)
    (=
      (foo_1_2 s@$ y@6@00 x@7@00)
      (=> (guard<Bool> y@6@00) ($SortWrappers.$SnapToBool ($Snap.second s@$)))))
  :pattern ((foo_1_2 s@$ y@6@00 x@7@00))
  :qid |quant-u-25761|)))
(assert (forall ((s@$ $Snap) (y@6@00 $Ref) (x@7@00 $Ref)) (!
  true
  :pattern ((foo_1_2 s@$ y@6@00 x@7@00))
  :qid |quant-u-25762|)))
; ---------- FUNCTION foo_1_1----------
(declare-fun y@9@00 () $Ref)
(declare-fun x@10@00 () $Ref)
(declare-fun result@11@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@10@00 $Ref.null)))
; [eval] guard(y)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (guard<Bool> y@9@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (guard<Bool> y@9@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | guard[Bool](y@9@00) | live]
; [else-branch: 9 | !(guard[Bool](y@9@00)) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 9 | guard[Bool](y@9@00)]
(assert (guard<Bool> y@9@00))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@10@00 y@9@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@9@00 $Ref.null)))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [else-branch: 9 | !(guard[Bool](y@9@00))]
(assert (not (guard<Bool> y@9@00)))
(assert (= ($Snap.second s@$) $Snap.unit))
(pop) ; 2
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@9@00 $Ref) (x@10@00 $Ref)) (!
  (= (foo_1_1%limited s@$ y@9@00 x@10@00) (foo_1_1 s@$ y@9@00 x@10@00))
  :pattern ((foo_1_1 s@$ y@9@00 x@10@00))
  :qid |quant-u-25755|)))
(assert (forall ((s@$ $Snap) (y@9@00 $Ref) (x@10@00 $Ref)) (!
  (foo_1_1%stateless y@9@00 x@10@00)
  :pattern ((foo_1_1%limited s@$ y@9@00 x@10@00))
  :qid |quant-u-25756|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (guard<Bool> y@9@00))
(assert (not (= y@9@00 $Ref.null)))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@10@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] !guard(y) || y.flag
; [eval] !guard(y)
; [eval] guard(y)
(set-option :timeout 0)
(push) ; 2
; [then-branch: 10 | !(guard[Bool](y@9@00)) | live]
; [else-branch: 10 | guard[Bool](y@9@00) | live]
(push) ; 3
; [then-branch: 10 | !(guard[Bool](y@9@00))]
(assert (not (guard<Bool> y@9@00)))
(pop) ; 3
(push) ; 3
; [else-branch: 10 | guard[Bool](y@9@00)]
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (guard<Bool> y@9@00) (not (guard<Bool> y@9@00))))
(assert (=
  result@11@00
  (or (not (guard<Bool> y@9@00)) ($SortWrappers.$SnapToBool ($Snap.second s@$)))))
(pop) ; 1
(push) ; 1
(assert (not (guard<Bool> y@9@00)))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@10@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] !guard(y) || y.flag
; [eval] !guard(y)
; [eval] guard(y)
(set-option :timeout 0)
(push) ; 2
; [then-branch: 11 | !(guard[Bool](y@9@00)) | live]
; [else-branch: 11 | guard[Bool](y@9@00) | live]
(push) ; 3
; [then-branch: 11 | !(guard[Bool](y@9@00))]
(pop) ; 3
(push) ; 3
; [else-branch: 11 | guard[Bool](y@9@00)]
(assert (guard<Bool> y@9@00))
(push) ; 4
(set-option :timeout 10)
(assert (not (= x@10@00 y@9@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (guard<Bool> y@9@00) (not (guard<Bool> y@9@00))))
(assert (=
  result@11@00
  (or (not (guard<Bool> y@9@00)) ($SortWrappers.$SnapToBool ($Snap.first s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@9@00 $Ref) (x@10@00 $Ref)) (!
  (=>
    (foo_1_1%precondition s@$ y@9@00 x@10@00)
    (=
      (foo_1_1 s@$ y@9@00 x@10@00)
      (or
        (not (guard<Bool> y@9@00))
        (ite
          (guard<Bool> y@9@00)
          ($SortWrappers.$SnapToBool ($Snap.second s@$))
          ($SortWrappers.$SnapToBool ($Snap.first s@$))))))
  :pattern ((foo_1_1 s@$ y@9@00 x@10@00))
  :qid |quant-u-25763|)))
(assert (forall ((s@$ $Snap) (y@9@00 $Ref) (x@10@00 $Ref)) (!
  true
  :pattern ((foo_1_1 s@$ y@9@00 x@10@00))
  :qid |quant-u-25764|)))