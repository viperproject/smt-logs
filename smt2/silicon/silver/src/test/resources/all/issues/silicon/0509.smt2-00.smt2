(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:00:05
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
(declare-fun len ($Snap $Ref) Int)
(declare-fun len%limited ($Snap $Ref) Int)
(declare-fun len%stateless ($Ref) Bool)
(declare-fun len%precondition ($Snap $Ref) Bool)
(declare-fun lookup ($Snap $Ref Int) Int)
(declare-fun lookup%limited ($Snap $Ref Int) Int)
(declare-fun lookup%stateless ($Ref Int) Bool)
(declare-fun lookup%precondition ($Snap $Ref Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun VecI32%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION len----------
(declare-fun x@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@1@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (len%limited s@$ x@0@00) (len s@$ x@0@00))
  :pattern ((len s@$ x@0@00))
  :qid |quant-u-24078|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (len%stateless x@0@00)
  :pattern ((len%limited s@$ x@0@00))
  :qid |quant-u-24079|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (let ((result@1@00 (len%limited s@$ x@0@00))) (=>
    (len%precondition s@$ x@0@00)
    (>= result@1@00 0)))
  :pattern ((len%limited s@$ x@0@00))
  :qid |quant-u-24082|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (let ((result@1@00 (len%limited s@$ x@0@00))) true)
  :pattern ((len%limited s@$ x@0@00))
  :qid |quant-u-24083|)))
; ---------- FUNCTION lookup----------
(declare-fun self@2@00 () $Ref)
(declare-fun index@3@00 () Int)
(declare-fun result@4@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= index
(assert (<= 0 index@3@00))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] index < len(self)
; [eval] len(self)
(push) ; 2
(assert (len%precondition ($Snap.first s@$) self@2@00))
(pop) ; 2
; Joined path conditions
(assert (len%precondition ($Snap.first s@$) self@2@00))
(assert (< index@3@00 (len ($Snap.first s@$) self@2@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@2@00 $Ref) (index@3@00 Int)) (!
  (= (lookup%limited s@$ self@2@00 index@3@00) (lookup s@$ self@2@00 index@3@00))
  :pattern ((lookup s@$ self@2@00 index@3@00))
  :qid |quant-u-24080|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref) (index@3@00 Int)) (!
  (lookup%stateless self@2@00 index@3@00)
  :pattern ((lookup%limited s@$ self@2@00 index@3@00))
  :qid |quant-u-24081|)))
; ---------- VecI32 ----------
(declare-const x@6@00 $Ref)