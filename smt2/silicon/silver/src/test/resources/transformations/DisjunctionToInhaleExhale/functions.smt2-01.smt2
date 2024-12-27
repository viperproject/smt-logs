(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:54:41
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
(declare-fun NonDet2 ($Snap Bool Bool) Bool)
(declare-fun NonDet2%limited ($Snap Bool Bool) Bool)
(declare-fun NonDet2%stateless (Bool Bool) Bool)
(declare-fun NonDet2%precondition ($Snap Bool Bool) Bool)
(declare-fun func ($Snap Bool) Bool)
(declare-fun func%limited ($Snap Bool) Bool)
(declare-fun func%stateless (Bool) Bool)
(declare-fun func%precondition ($Snap Bool) Bool)
(declare-fun NonDet1 ($Snap Bool) Bool)
(declare-fun NonDet1%limited ($Snap Bool) Bool)
(declare-fun NonDet1%stateless (Bool) Bool)
(declare-fun NonDet1%precondition ($Snap Bool) Bool)
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
(assert (forall ((s@$ $Snap) (vari1@0@00 Bool) (vari2@1@00 Bool)) (!
  (=
    (NonDet2%limited s@$ vari1@0@00 vari2@1@00)
    (NonDet2 s@$ vari1@0@00 vari2@1@00))
  :pattern ((NonDet2 s@$ vari1@0@00 vari2@1@00))
  :qid |quant-u-15880|)))
(assert (forall ((s@$ $Snap) (vari1@0@00 Bool) (vari2@1@00 Bool)) (!
  (NonDet2%stateless vari1@0@00 vari2@1@00)
  :pattern ((NonDet2%limited s@$ vari1@0@00 vari2@1@00))
  :qid |quant-u-15881|)))
(assert (forall ((s@$ $Snap) (vari1@0@00 Bool) (vari2@1@00 Bool)) (!
  (=>
    (NonDet2%precondition s@$ vari1@0@00 vari2@1@00)
    (= (NonDet2 s@$ vari1@0@00 vari2@1@00) true))
  :pattern ((NonDet2 s@$ vari1@0@00 vari2@1@00))
  :qid |quant-u-15886|)))
(assert (forall ((s@$ $Snap) (vari1@0@00 Bool) (vari2@1@00 Bool)) (!
  true
  :pattern ((NonDet2 s@$ vari1@0@00 vari2@1@00))
  :qid |quant-u-15887|)))
(assert (forall ((s@$ $Snap) (b@3@00 Bool)) (!
  (= (func%limited s@$ b@3@00) (func s@$ b@3@00))
  :pattern ((func s@$ b@3@00))
  :qid |quant-u-15882|)))
(assert (forall ((s@$ $Snap) (b@3@00 Bool)) (!
  (func%stateless b@3@00)
  :pattern ((func%limited s@$ b@3@00))
  :qid |quant-u-15883|)))
(assert (forall ((s@$ $Snap) (b@3@00 Bool)) (!
  (let ((result@4@00 (func%limited s@$ b@3@00))) (=>
    (func%precondition s@$ b@3@00)
    (exists ((k Bool)) 
      true)))
  :pattern ((func%limited s@$ b@3@00))
  :qid |quant-u-15888|)))
(assert (forall ((s@$ $Snap) (b@3@00 Bool)) (!
  (let ((result@4@00 (func%limited s@$ b@3@00))) true)
  :pattern ((func%limited s@$ b@3@00))
  :qid |quant-u-15889|)))
(assert (forall ((s@$ $Snap) (b@3@00 Bool)) (!
  (=> (func%precondition s@$ b@3@00) (= (func s@$ b@3@00) true))
  :pattern ((func s@$ b@3@00))
  :qid |quant-u-15890|)))
(assert (forall ((s@$ $Snap) (b@3@00 Bool)) (!
  true
  :pattern ((func s@$ b@3@00))
  :qid |quant-u-15891|)))
(assert (forall ((s@$ $Snap) (vari1@5@00 Bool)) (!
  (= (NonDet1%limited s@$ vari1@5@00) (NonDet1 s@$ vari1@5@00))
  :pattern ((NonDet1 s@$ vari1@5@00))
  :qid |quant-u-15884|)))
(assert (forall ((s@$ $Snap) (vari1@5@00 Bool)) (!
  (NonDet1%stateless vari1@5@00)
  :pattern ((NonDet1%limited s@$ vari1@5@00))
  :qid |quant-u-15885|)))
(assert (forall ((s@$ $Snap) (vari1@5@00 Bool)) (!
  (=> (NonDet1%precondition s@$ vari1@5@00) (= (NonDet1 s@$ vari1@5@00) true))
  :pattern ((NonDet1 s@$ vari1@5@00))
  :qid |quant-u-15892|)))
(assert (forall ((s@$ $Snap) (vari1@5@00 Bool)) (!
  true
  :pattern ((NonDet1 s@$ vari1@5@00))
  :qid |quant-u-15893|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- foo ----------
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@0@01 $Snap)
(assert (= $t@0@01 $Snap.unit))
; [eval] (exists k: Bool :: k || true)
(declare-const k@1@01 Bool)
(push) ; 3
; [eval] k || true
(push) ; 4
; [then-branch: 0 | k@1@01 | live]
; [else-branch: 0 | !(k@1@01) | live]
(push) ; 5
; [then-branch: 0 | k@1@01]
(assert k@1@01)
(pop) ; 5
(push) ; 5
; [else-branch: 0 | !(k@1@01)]
(assert (not k@1@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not k@1@01) k@1@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(pop) ; 2
(push) ; 2
; [eval] (exists k: Bool :: k || true)
(declare-const k@2@01 Bool)
(push) ; 3
; [eval] k || true
(push) ; 4
; [then-branch: 1 | k@2@01 | live]
; [else-branch: 1 | !(k@2@01) | live]
(push) ; 5
; [then-branch: 1 | k@2@01]
(assert k@2@01)
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(k@2@01)]
(assert (not k@2@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not k@2@01) k@2@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(pop) ; 2
(pop) ; 1