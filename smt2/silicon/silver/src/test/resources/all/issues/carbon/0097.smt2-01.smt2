(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 14:59:10
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
(declare-fun sum_ok ($Snap $Ref) $Ref)
(declare-fun sum_ok%limited ($Snap $Ref) $Ref)
(declare-fun sum_ok%stateless ($Ref) Bool)
(declare-fun sum_ok%precondition ($Snap $Ref) Bool)
(declare-fun sum_fail ($Snap $Ref) Int)
(declare-fun sum_fail%limited ($Snap $Ref) Int)
(declare-fun sum_fail%stateless ($Ref) Bool)
(declare-fun sum_fail%precondition ($Snap $Ref) Bool)
(declare-fun func3 ($Snap Int Int Bool) Bool)
(declare-fun func3%limited ($Snap Int Int Bool) Bool)
(declare-fun func3%stateless (Int Int Bool) Bool)
(declare-fun func3%precondition ($Snap Int Int Bool) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun valid__List%trigger ($Snap $Ref) Bool)
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
(declare-fun $k@8@00 () $Perm)
(declare-fun $k@9@00 () $Perm)
(declare-fun $k@10@00 () $Perm)
(declare-fun letvar@11@00 ($Snap $Ref) $Ref)
(declare-fun $k@12@00 () $Perm)
(declare-fun $k@13@00 () $Perm)
(declare-fun $k@14@00 () $Perm)
(declare-fun letvar@15@00 ($Snap $Ref) $Ref)
(assert (forall ((s@$ $Snap) (l@0@00 $Ref)) (!
  (= (sum_ok%limited s@$ l@0@00) (sum_ok s@$ l@0@00))
  :pattern ((sum_ok s@$ l@0@00))
  :qid |quant-u-23788|)))
(assert (forall ((s@$ $Snap) (l@0@00 $Ref)) (!
  (sum_ok%stateless l@0@00)
  :pattern ((sum_ok%limited s@$ l@0@00))
  :qid |quant-u-23789|)))
(assert (forall ((s@$ $Snap) (l@0@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@8@00)
    ($Perm.isReadVar $k@9@00)
    ($Perm.isReadVar $k@10@00)
    (=>
      (sum_ok%precondition s@$ l@0@00)
      (=
        (sum_ok s@$ l@0@00)
        (let ((c ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))) c))))
  :pattern ((sum_ok s@$ l@0@00))
  :qid |quant-u-23794|)))
(assert (forall ((s@$ $Snap) (l@0@00 $Ref)) (!
  (=>
    (sum_ok%precondition s@$ l@0@00)
    (let ((c ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))) true))
  :pattern ((sum_ok s@$ l@0@00))
  :qid |quant-u-23795|)))
(assert (forall ((s@$ $Snap) (l@2@00 $Ref)) (!
  (= (sum_fail%limited s@$ l@2@00) (sum_fail s@$ l@2@00))
  :pattern ((sum_fail s@$ l@2@00))
  :qid |quant-u-23790|)))
(assert (forall ((s@$ $Snap) (l@2@00 $Ref)) (!
  (sum_fail%stateless l@2@00)
  :pattern ((sum_fail%limited s@$ l@2@00))
  :qid |quant-u-23791|)))
(assert (forall ((s@$ $Snap) (l@2@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@12@00)
    ($Perm.isReadVar $k@13@00)
    ($Perm.isReadVar $k@14@00)
    (=>
      (sum_fail%precondition s@$ l@2@00)
      (=
        (sum_fail s@$ l@2@00)
        (let ((c ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))) ($SortWrappers.$SnapToInt ($Snap.second s@$))))))
  :pattern ((sum_fail s@$ l@2@00))
  :qid |quant-u-23796|)))
(assert (forall ((s@$ $Snap) (l@2@00 $Ref)) (!
  (=>
    (sum_fail%precondition s@$ l@2@00)
    (let ((c ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))) true))
  :pattern ((sum_fail s@$ l@2@00))
  :qid |quant-u-23797|)))
(assert (forall ((s@$ $Snap) (x@4@00 Int) (y@5@00 Int) (z@6@00 Bool)) (!
  (= (func3%limited s@$ x@4@00 y@5@00 z@6@00) (func3 s@$ x@4@00 y@5@00 z@6@00))
  :pattern ((func3 s@$ x@4@00 y@5@00 z@6@00))
  :qid |quant-u-23792|)))
(assert (forall ((s@$ $Snap) (x@4@00 Int) (y@5@00 Int) (z@6@00 Bool)) (!
  (func3%stateless x@4@00 y@5@00 z@6@00)
  :pattern ((func3%limited s@$ x@4@00 y@5@00 z@6@00))
  :qid |quant-u-23793|)))
(assert (forall ((s@$ $Snap) (x@4@00 Int) (y@5@00 Int) (z@6@00 Bool)) (!
  (let ((result@7@00 (func3%limited s@$ x@4@00 y@5@00 z@6@00))) (=>
    (func3%precondition s@$ x@4@00 y@5@00 z@6@00)
    (= result@7@00 (not (= x@4@00 y@5@00)))))
  :pattern ((func3%limited s@$ x@4@00 y@5@00 z@6@00))
  :qid |quant-u-23798|)))
(assert (forall ((s@$ $Snap) (x@4@00 Int) (y@5@00 Int) (z@6@00 Bool)) (!
  (let ((result@7@00 (func3%limited s@$ x@4@00 y@5@00 z@6@00))) true)
  :pattern ((func3%limited s@$ x@4@00 y@5@00 z@6@00))
  :qid |quant-u-23799|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test ----------
(declare-const l@0@01 $Ref)
(declare-const l@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(declare-const $k@3@01 $Perm)
(assert ($Perm.isReadVar $k@3@01))
(assert (<= $Perm.No $k@3@01))
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] (unfolding acc(valid__List(l), wildcard) in (let c == (l.List__Node__0) in c.Int__v == 0))
(declare-const $k@4@01 $Perm)
(assert ($Perm.isReadVar $k@4@01))
(push) ; 2
(assert (not (< $Perm.No $k@4@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@5@01 $Perm)
(assert ($Perm.isReadVar $k@5@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@3@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@5@01 $k@3@01))
(assert (<= $Perm.No (- $k@3@01 $k@5@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@5@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (valid__List%trigger ($Snap.first $t@2@01) l@1@01))
(assert (=
  ($Snap.first $t@2@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@2@01))
    ($Snap.second ($Snap.first $t@2@01)))))
(assert (<= $Perm.No $k@4@01))
(assert (<= $k@4@01 $Perm.Write))
(assert (=> (< $Perm.No $k@4@01) (not (= l@1@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@4@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (< $Perm.No $k@4@01)
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@2@01))) $Ref.null))))
; [eval] (let c == (l.List__Node__0) in c.Int__v == 0)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@4@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const letvar@6@01 $Ref)
(assert (=
  (as letvar@6@01  $Ref)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@2@01)))))
; [eval] c.Int__v == 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@4@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@5@01))
(assert (and
  (< $k@5@01 $k@3@01)
  (<= $Perm.No (- $k@3@01 $k@5@01))
  (valid__List%trigger ($Snap.first $t@2@01) l@1@01)
  (=
    ($Snap.first $t@2@01)
    ($Snap.combine
      ($Snap.first ($Snap.first $t@2@01))
      ($Snap.second ($Snap.first $t@2@01))))
  (<= $Perm.No $k@4@01)
  (<= $k@4@01 $Perm.Write)
  (=> (< $Perm.No $k@4@01) (not (= l@1@01 $Ref.null)))
  (=>
    (< $Perm.No $k@4@01)
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@2@01)))
        $Ref.null)))
  (=
    (as letvar@6@01  $Ref)
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first $t@2@01))))))
(assert (= ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first $t@2@01))) 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
(pop) ; 2
(pop) ; 1
