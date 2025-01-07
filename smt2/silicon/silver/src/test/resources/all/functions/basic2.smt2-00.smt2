(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-07 13:46:41
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
(declare-fun fun02 ($Snap) Int)
(declare-fun fun02%limited ($Snap) Int)
(declare-const fun02%stateless Bool)
(declare-fun fun02%precondition ($Snap) Bool)
(declare-fun fun01 ($Snap) Int)
(declare-fun fun01%limited ($Snap) Int)
(declare-const fun01%stateless Bool)
(declare-fun fun01%precondition ($Snap) Bool)
(declare-fun fun03 ($Snap) Int)
(declare-fun fun03%limited ($Snap) Int)
(declare-const fun03%stateless Bool)
(declare-fun fun03%precondition ($Snap) Bool)
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
; ---------- FUNCTION fun02----------
(declare-fun result@0@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@3@00 $Snap)
(assert (= $t@3@00 ($Snap.combine ($Snap.first $t@3@00) ($Snap.second $t@3@00))))
(assert (= ($Snap.first $t@3@00) $Snap.unit))
; [eval] result != 0
(assert (not (= result@0@00 0)))
(assert (= ($Snap.second $t@3@00) $Snap.unit))
; [eval] 1 \ result != 1
; [eval] 1 \ result
(assert (not (= (div 1 result@0@00) 1)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (fun02%limited s@$) (fun02 s@$))
  :pattern ((fun02 s@$))
  :qid |quant-u-22262|)))
(assert (forall ((s@$ $Snap)) (!
  (as fun02%stateless  Bool)
  :pattern ((fun02%limited s@$))
  :qid |quant-u-22263|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (fun02%limited s@$))) (=>
    (fun02%precondition s@$)
    (and (not (= result@0@00 0)) (not (= (div 1 result@0@00) 1)))))
  :pattern ((fun02%limited s@$))
  :qid |quant-u-22268|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (fun02%limited s@$))) true)
  :pattern ((fun02%limited s@$))
  :qid |quant-u-22269|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (fun02%limited s@$))) true)
  :pattern ((fun02%limited s@$))
  :qid |quant-u-22270|)))
; ---------- FUNCTION fun01----------
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@4@00 $Snap)
(assert (= $t@4@00 $Snap.unit))
; [eval] 1 \ result != 1
; [eval] 1 \ result
(push) ; 2
(assert (not (not (= result@1@00 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- FUNCTION fun03----------
(declare-fun result@2@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 ($Snap.combine ($Snap.first $t@5@00) ($Snap.second $t@5@00))))
(assert (= ($Snap.first $t@5@00) $Snap.unit))
; [eval] result != 0
(assert (not (= result@2@00 0)))
(assert (= ($Snap.second $t@5@00) $Snap.unit))
; [eval] 1 \ result != 1
; [eval] 1 \ result
(assert (not (= (div 1 result@2@00) 1)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (fun03%limited s@$) (fun03 s@$))
  :pattern ((fun03 s@$))
  :qid |quant-u-22266|)))
(assert (forall ((s@$ $Snap)) (!
  (as fun03%stateless  Bool)
  :pattern ((fun03%limited s@$))
  :qid |quant-u-22267|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (fun03%limited s@$))) (=>
    (fun03%precondition s@$)
    (and (not (= result@2@00 0)) (not (= (div 1 result@2@00) 1)))))
  :pattern ((fun03%limited s@$))
  :qid |quant-u-22271|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (fun03%limited s@$))) true)
  :pattern ((fun03%limited s@$))
  :qid |quant-u-22272|)))
