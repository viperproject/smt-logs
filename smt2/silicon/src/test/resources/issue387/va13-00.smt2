(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:35:53
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
(declare-fun contains ($Snap $Ref) Bool)
(declare-fun contains%limited ($Snap $Ref) Bool)
(declare-fun contains%stateless ($Ref) Bool)
(declare-fun contains%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun BoxList%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION contains----------
(declare-fun x@0@00 () $Ref)
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (contains%limited s@$ x@0@00) (contains s@$ x@0@00))
  :pattern ((contains s@$ x@0@00))
  :qid |quant-u-5081|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (contains%stateless x@0@00)
  :pattern ((contains%limited s@$ x@0@00))
  :qid |quant-u-5082|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(BoxList(x), write) in x.discriminant == 0) && (unfolding acc(BoxList(x), write) in contains(x.next))
; [eval] (unfolding acc(BoxList(x), write) in x.discriminant == 0)
(set-option :timeout 0)
(push) ; 2
(assert (BoxList%trigger s@$ x@0@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@0@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@0@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] x.discriminant == 0
(pop) ; 2
; Joined path conditions
(assert (and
  (BoxList%trigger s@$ x@0@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (not (= x@0@00 $Ref.null))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))))
(set-option :timeout 0)
(push) ; 2
; [then-branch: 0 | First:(s@$) != 0 | live]
; [else-branch: 0 | First:(s@$) == 0 | live]
(push) ; 3
; [then-branch: 0 | First:(s@$) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | First:(s@$) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
; [eval] (unfolding acc(BoxList(x), write) in contains(x.next))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@0@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] contains(x.next)
(set-option :timeout 0)
(push) ; 5
(assert (contains%precondition ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 5
; Joined path conditions
(assert (contains%precondition ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 4
; Joined path conditions
(assert (contains%precondition ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)
  (and
    (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)
    (contains%precondition ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))))
(assert (or
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))))
(assert (=
  result@1@00
  (and
    (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)
    (contains ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (=>
    (contains%precondition s@$ x@0@00)
    (=
      (contains s@$ x@0@00)
      (and
        (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)
        (contains%limited ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))))
  :pattern ((contains s@$ x@0@00))
  :pattern ((contains%stateless x@0@00) (BoxList%trigger s@$ x@0@00))
  :qid |quant-u-5083|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (=>
    (and
      (contains%precondition s@$ x@0@00)
      (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
    (contains%precondition ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
  :pattern ((contains s@$ x@0@00))
  :qid |quant-u-5084|)))
; ---------- BoxList ----------
(declare-const self@2@00 $Ref)
(push) ; 1
(declare-const $t@3@00 $Snap)
(assert (= $t@3@00 ($Snap.combine ($Snap.first $t@3@00) ($Snap.second $t@3@00))))
(assert (not (= self@2@00 $Ref.null)))
(assert (=
  ($Snap.second $t@3@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@3@00))
    ($Snap.second ($Snap.second $t@3@00)))))
(pop) ; 1
