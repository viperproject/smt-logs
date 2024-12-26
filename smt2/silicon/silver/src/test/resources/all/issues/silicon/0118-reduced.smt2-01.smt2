(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:41:19
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
(declare-fun length ($Snap $Ref) Int)
(declare-fun length%limited ($Snap $Ref) Int)
(declare-fun length%stateless ($Ref) Bool)
(declare-fun length%precondition ($Snap $Ref) Bool)
(declare-fun list_len ($Snap) Int)
(declare-fun list_len%limited ($Snap) Int)
(declare-const list_len%stateless Bool)
(declare-fun list_len%precondition ($Snap) Bool)
(declare-fun get ($Snap $Ref Int) Int)
(declare-fun get%limited ($Snap $Ref Int) Int)
(declare-fun get%stateless ($Ref Int) Bool)
(declare-fun get%precondition ($Snap $Ref Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Node%trigger ($Snap $Ref) Bool)
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
  (= (length%limited s@$ this@0@00) (length s@$ this@0@00))
  :pattern ((length s@$ this@0@00))
  :qid |quant-u-25612|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (length%stateless this@0@00)
  :pattern ((length%limited s@$ this@0@00))
  :qid |quant-u-25613|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (=> (length%precondition s@$ this@0@00) (= (length s@$ this@0@00) 10))
  :pattern ((length s@$ this@0@00))
  :qid |quant-u-25618|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  true
  :pattern ((length s@$ this@0@00))
  :qid |quant-u-25619|)))
(assert (forall ((s@$ $Snap)) (!
  (= (list_len%limited s@$) (list_len s@$))
  :pattern ((list_len s@$))
  :qid |quant-u-25614|)))
(assert (forall ((s@$ $Snap)) (!
  (as list_len%stateless  Bool)
  :pattern ((list_len%limited s@$))
  :qid |quant-u-25615|)))
(assert (forall ((s@$ $Snap)) (!
  (=> (list_len%precondition s@$) (= (list_len s@$) 0))
  :pattern ((list_len s@$))
  :qid |quant-u-25620|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((list_len s@$))
  :qid |quant-u-25621|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (i@4@00 Int)) (!
  (= (get%limited s@$ this@3@00 i@4@00) (get s@$ this@3@00 i@4@00))
  :pattern ((get s@$ this@3@00 i@4@00))
  :qid |quant-u-25616|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (i@4@00 Int)) (!
  (get%stateless this@3@00 i@4@00)
  :pattern ((get%limited s@$ this@3@00 i@4@00))
  :qid |quant-u-25617|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (i@4@00 Int)) (!
  (=>
    (get%precondition s@$ this@3@00 i@4@00)
    (=
      (get s@$ this@3@00 i@4@00)
      (ite
        (= i@4@00 0)
        (- 0 1)
        (get%limited ($Snap.combine
          ($Snap.second ($Snap.first s@$))
          ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) (-
          i@4@00
          1)))))
  :pattern ((get s@$ this@3@00 i@4@00))
  :pattern ((get%stateless this@3@00 i@4@00) (Node%trigger ($Snap.first s@$) this@3@00))
  :qid |quant-u-25622|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (i@4@00 Int)) (!
  (=>
    (get%precondition s@$ this@3@00 i@4@00)
    (ite
      (= i@4@00 0)
      true
      (get%precondition ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) (-
        i@4@00
        1))))
  :pattern ((get s@$ this@3@00 i@4@00))
  :qid |quant-u-25623|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------