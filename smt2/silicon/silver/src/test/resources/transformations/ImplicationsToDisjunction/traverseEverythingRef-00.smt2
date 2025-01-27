(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 03:05:06
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
(declare-fun fun ($Snap) Bool)
(declare-fun fun%limited ($Snap) Bool)
(declare-const fun%stateless Bool)
(declare-fun fun%precondition ($Snap) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun pred%trigger ($Snap) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION fun----------
(declare-fun result@0@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] !true || true
; [eval] !true
(push) ; 2
; [then-branch: 0 | False | live]
; [else-branch: 0 | True | live]
(push) ; 3
; [then-branch: 0 | False]
(assert false)
(pop) ; 3
(push) ; 3
; [else-branch: 0 | True]
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(declare-const $t@1@00 $Snap)
(assert (= $t@1@00 $Snap.unit))
; [eval] !true || true
; [eval] !true
(push) ; 2
; [then-branch: 1 | False | live]
; [else-branch: 1 | True | live]
(push) ; 3
; [then-branch: 1 | False]
(assert false)
(pop) ; 3
(push) ; 3
; [else-branch: 1 | True]
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (fun%limited s@$) (fun s@$))
  :pattern ((fun s@$))
  :qid |quant-u-22899|)))
(assert (forall ((s@$ $Snap)) (!
  (as fun%stateless  Bool)
  :pattern ((fun%limited s@$))
  :qid |quant-u-22900|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (fun%limited s@$))) true)
  :pattern ((fun%limited s@$))
  :qid |quant-u-22901|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (fun%limited s@$))) true)
  :pattern ((fun%limited s@$))
  :qid |quant-u-22902|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] !true || true
; [eval] !true
(set-option :timeout 0)
(push) ; 2
; [then-branch: 2 | False | live]
; [else-branch: 2 | True | live]
(push) ; 3
; [then-branch: 2 | False]
(assert false)
(pop) ; 3
(push) ; 3
; [else-branch: 2 | True]
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (= result@0@00 true))
; [eval] !true || true
; [eval] !true
(push) ; 2
; [then-branch: 3 | False | live]
; [else-branch: 3 | True | live]
(push) ; 3
; [then-branch: 3 | False]
(assert false)
(pop) ; 3
(push) ; 3
; [else-branch: 3 | True]
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=> (fun%precondition s@$) (= (fun s@$) true))
  :pattern ((fun s@$))
  :qid |quant-u-22903|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((fun s@$))
  :qid |quant-u-22904|)))
; ---------- pred ----------
(push) ; 1
(declare-const $t@2@00 $Snap)
(assert (= $t@2@00 $Snap.unit))
; [eval] !true || true
; [eval] !true
(push) ; 2
; [then-branch: 4 | False | live]
; [else-branch: 4 | True | live]
(push) ; 3
; [then-branch: 4 | False]
(assert false)
(pop) ; 3
(push) ; 3
; [else-branch: 4 | True]
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(pop) ; 1
