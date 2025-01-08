(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:23:23
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
(declare-fun fun01 ($Snap $Ref) Int)
(declare-fun fun01%limited ($Snap $Ref) Int)
(declare-fun fun01%stateless ($Ref) Bool)
(declare-fun fun01%precondition ($Snap $Ref) Bool)
(declare-fun fun02 ($Snap $Ref) Int)
(declare-fun fun02%limited ($Snap $Ref) Int)
(declare-fun fun02%stateless ($Ref) Bool)
(declare-fun fun02%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION fun01----------
(declare-fun x@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $k@4@00 $Perm)
(assert ($Perm.isReadVar $k@4@00))
(assert (<= $Perm.No $k@4@00))
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 $Snap.unit))
; [eval] result > 0
(assert (> result@1@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (fun01%limited s@$ x@0@00) (fun01 s@$ x@0@00))
  :pattern ((fun01 s@$ x@0@00))
  :qid |quant-u-22709|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (fun01%stateless x@0@00)
  :pattern ((fun01%limited s@$ x@0@00))
  :qid |quant-u-22710|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (let ((result@1@00 (fun01%limited s@$ x@0@00))) (and
    ($Perm.isReadVar $k@4@00)
    (=> (fun01%precondition s@$ x@0@00) (> result@1@00 0))))
  :pattern ((fun01%limited s@$ x@0@00))
  :qid |quant-u-22713|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (let ((result@1@00 (fun01%limited s@$ x@0@00))) true)
  :pattern ((fun01%limited s@$ x@0@00))
  :qid |quant-u-22714|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@4@00))
(assert (<= $Perm.No $k@4@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(P(x), wildcard) in x.g)
(declare-const $k@6@00 $Perm)
(assert ($Perm.isReadVar $k@6@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@7@00 $Perm)
(assert ($Perm.isReadVar $k@7@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@7@00) (< $Perm.No $k@4@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@7@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (P%trigger s@$ x@0@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (<= $Perm.No $k@6@00))
(assert (=> (< $Perm.No $k@6@00) (not (= x@0@00 $Ref.null))))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] x.g == 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@7@00))
(assert (and
  (P%trigger s@$ x@0@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (<= $Perm.No $k@6@00)
  (=> (< $Perm.No $k@6@00) (not (= x@0@00 $Ref.null)))
  (= ($Snap.second s@$) $Snap.unit)
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)))
(assert (= result@1@00 ($SortWrappers.$SnapToInt ($Snap.first s@$))))
; [eval] result > 0
(set-option :timeout 0)
(push) ; 2
(assert (not (> result@1@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (> result@1@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@4@00)
    ($Perm.isReadVar $k@6@00)
    ($Perm.isReadVar $k@7@00)
    (=>
      (fun01%precondition s@$ x@0@00)
      (= (fun01 s@$ x@0@00) ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
  :pattern ((fun01 s@$ x@0@00))
  :qid |quant-u-22715|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  true
  :pattern ((fun01 s@$ x@0@00))
  :qid |quant-u-22716|)))
; ---------- FUNCTION fun02----------
(declare-fun x@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (not (= x@2@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (= (fun02%limited s@$ x@2@00) (fun02 s@$ x@2@00))
  :pattern ((fun02 s@$ x@2@00))
  :qid |quant-u-22711|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (fun02%stateless x@2@00)
  :pattern ((fun02%limited s@$ x@2@00))
  :qid |quant-u-22712|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (not (= x@2@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (let y == (x.g) in y + x.g)
(declare-fun letvar@8@00 ($Snap $Ref) Int)
(assert (= (letvar@8@00 s@$ x@2@00) ($SortWrappers.$SnapToInt s@$)))
; [eval] y + x.g
(assert (= result@3@00 (+ ($SortWrappers.$SnapToInt s@$) ($SortWrappers.$SnapToInt s@$))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (=>
    (fun02%precondition s@$ x@2@00)
    (=
      (fun02 s@$ x@2@00)
      (let ((y ($SortWrappers.$SnapToInt s@$))) (+
        y
        ($SortWrappers.$SnapToInt s@$)))))
  :pattern ((fun02 s@$ x@2@00))
  :qid |quant-u-22717|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (=>
    (fun02%precondition s@$ x@2@00)
    (let ((y ($SortWrappers.$SnapToInt s@$))) true))
  :pattern ((fun02 s@$ x@2@00))
  :qid |quant-u-22718|)))
; ---------- P ----------
(declare-const x@9@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@10@00 $Snap)
(assert (= $t@10@00 ($Snap.combine ($Snap.first $t@10@00) ($Snap.second $t@10@00))))
(assert (not (= x@9@00 $Ref.null)))
(assert (= ($Snap.second $t@10@00) $Snap.unit))
; [eval] x.g == 1
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@10@00)) 1))
(pop) ; 1
