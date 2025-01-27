(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 02:59:34
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
(declare-sort GlobalKPermission 0)
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
(declare-fun $SortWrappers.GlobalKPermissionTo$Snap (GlobalKPermission) $Snap)
(declare-fun $SortWrappers.$SnapToGlobalKPermission ($Snap) GlobalKPermission)
(assert (forall ((x GlobalKPermission)) (!
    (= x ($SortWrappers.$SnapToGlobalKPermission($SortWrappers.GlobalKPermissionTo$Snap x)))
    :pattern (($SortWrappers.GlobalKPermissionTo$Snap x))
    :qid |$Snap.$SnapToGlobalKPermissionTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.GlobalKPermissionTo$Snap($SortWrappers.$SnapToGlobalKPermission x)))
    :pattern (($SortWrappers.$SnapToGlobalKPermission x))
    :qid |$Snap.GlobalKPermissionTo$SnapToGlobalKPermission|
    )))
; ////////// Symbols
(declare-const globalK$<Perm> $Perm)
; Declaring symbols related to program functions (from program analysis)
(declare-fun Triggersg$ ($Snap $Ref Int) Bool)
(declare-fun Triggersg$%limited ($Snap $Ref Int) Bool)
(declare-fun Triggersg$%stateless ($Ref Int) Bool)
(declare-fun Triggersg$%precondition ($Snap $Ref Int) Bool)
(declare-fun Triggersf$ ($Snap $Ref Int Int Int) Bool)
(declare-fun Triggersf$%limited ($Snap $Ref Int Int Int) Bool)
(declare-fun Triggersf$%stateless ($Ref Int Int Int) Bool)
(declare-fun Triggersf$%precondition ($Snap $Ref Int Int Int) Bool)
(declare-fun Triggersi$ ($Snap $Ref Int Bool) Bool)
(declare-fun Triggersi$%limited ($Snap $Ref Int Bool) Bool)
(declare-fun Triggersi$%stateless ($Ref Int Bool) Bool)
(declare-fun Triggersi$%precondition ($Snap $Ref Int Bool) Bool)
(declare-fun Triggersh$ ($Snap $Ref Int Int Int) Bool)
(declare-fun Triggersh$%limited ($Snap $Ref Int Int Int) Bool)
(declare-fun Triggersh$%stateless ($Ref Int Int Int) Bool)
(declare-fun Triggersh$%precondition ($Snap $Ref Int Int Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Triggers$MonitorInvariant%trigger ($Snap $Ref) Bool)
(declare-fun Triggersvalid$%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
(assert true)
; ////////// Axioms
(assert (and
  (> (as globalK$<Perm>  $Perm) $Perm.No)
  (> $Perm.Write (as globalK$<Perm>  $Perm))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION Triggersg$----------
(declare-fun this$_4@0@00 () $Ref)
(declare-fun x@1@00 () Int)
(declare-fun result@2@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this$_4 != null
(assert (not (= this$_4@0@00 $Ref.null)))
(declare-const $k@17@00 $Perm)
(assert ($Perm.isReadVar $k@17@00))
(assert (<= $Perm.No $k@17@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_4@0@00 $Ref) (x@1@00 Int)) (!
  (=
    (Triggersg$%limited s@$ this$_4@0@00 x@1@00)
    (Triggersg$ s@$ this$_4@0@00 x@1@00))
  :pattern ((Triggersg$ s@$ this$_4@0@00 x@1@00))
  :qid |quant-u-10801|)))
(assert (forall ((s@$ $Snap) (this$_4@0@00 $Ref) (x@1@00 Int)) (!
  (Triggersg$%stateless this$_4@0@00 x@1@00)
  :pattern ((Triggersg$%limited s@$ this$_4@0@00 x@1@00))
  :qid |quant-u-10802|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@17@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= this$_4@0@00 $Ref.null)))
(assert (<= $Perm.No $k@17@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(Triggersvalid$(this$_4), wildcard) in Triggersg$(this$_4.Triggersnext$, x))
(declare-const $k@18@00 $Perm)
(assert ($Perm.isReadVar $k@18@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@18@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@19@00 $Perm)
(assert ($Perm.isReadVar $k@19@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@19@00) (< $Perm.No $k@17@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Triggersvalid$%trigger ($Snap.second s@$) this$_4@0@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (<= $Perm.No $k@18@00))
(assert (=> (< $Perm.No $k@18@00) (not (= this$_4@0@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] this$_1.Triggersnext$ != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= this$_4@0@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] Triggersg$(this$_4.Triggersnext$, x)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
; [eval] this$_4 != null
(declare-const $k@20@00 $Perm)
(assert ($Perm.isReadVar $k@20@00))
(push) ; 4
(assert (not (=> (< $Perm.No $k@20@00) (< $Perm.No $k@18@00))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Triggersg$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@1@00))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@20@00))
(assert (Triggersg$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@1@00))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@19@00))
(assert ($Perm.isReadVar $k@20@00))
(assert (and
  (Triggersvalid$%trigger ($Snap.second s@$) this$_4@0@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@18@00)
  (=> (< $Perm.No $k@18@00) (not (= this$_4@0@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (Triggersg$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@1@00)))
(assert (=
  result@2@00
  (Triggersg$ ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@1@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_4@0@00 $Ref) (x@1@00 Int)) (!
  (and
    ($Perm.isReadVar $k@17@00)
    ($Perm.isReadVar $k@18@00)
    ($Perm.isReadVar $k@19@00)
    ($Perm.isReadVar $k@20@00)
    (=>
      (Triggersg$%precondition s@$ this$_4@0@00 x@1@00)
      (=
        (Triggersg$ s@$ this$_4@0@00 x@1@00)
        (Triggersg$%limited ($Snap.combine
          $Snap.unit
          ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@1@00))))
  :pattern ((Triggersg$ s@$ this$_4@0@00 x@1@00))
  :pattern ((Triggersg$%stateless this$_4@0@00 x@1@00) (Triggersvalid$%trigger ($Snap.second s@$) this$_4@0@00))
  :qid |quant-u-10809|)))
(assert (forall ((s@$ $Snap) (this$_4@0@00 $Ref) (x@1@00 Int)) (!
  (=>
    (Triggersg$%precondition s@$ this$_4@0@00 x@1@00)
    (Triggersg$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@1@00))
  :pattern ((Triggersg$ s@$ this$_4@0@00 x@1@00))
  :qid |quant-u-10810|)))
; ---------- FUNCTION Triggersf$----------
(declare-fun this$_2@3@00 () $Ref)
(declare-fun x@4@00 () Int)
(declare-fun y@5@00 () Int)
(declare-fun z@6@00 () Int)
(declare-fun result@7@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this$_2 != null
(assert (not (= this$_2@3@00 $Ref.null)))
(declare-const $k@21@00 $Perm)
(assert ($Perm.isReadVar $k@21@00))
(assert (<= $Perm.No $k@21@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_2@3@00 $Ref) (x@4@00 Int) (y@5@00 Int) (z@6@00 Int)) (!
  (=
    (Triggersf$%limited s@$ this$_2@3@00 x@4@00 y@5@00 z@6@00)
    (Triggersf$ s@$ this$_2@3@00 x@4@00 y@5@00 z@6@00))
  :pattern ((Triggersf$ s@$ this$_2@3@00 x@4@00 y@5@00 z@6@00))
  :qid |quant-u-10803|)))
(assert (forall ((s@$ $Snap) (this$_2@3@00 $Ref) (x@4@00 Int) (y@5@00 Int) (z@6@00 Int)) (!
  (Triggersf$%stateless this$_2@3@00 x@4@00 y@5@00 z@6@00)
  :pattern ((Triggersf$%limited s@$ this$_2@3@00 x@4@00 y@5@00 z@6@00))
  :qid |quant-u-10804|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@21@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= this$_2@3@00 $Ref.null)))
(assert (<= $Perm.No $k@21@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(Triggersvalid$(this$_2), wildcard) in Triggersf$(this$_2.Triggersnext$, x, y, z))
(declare-const $k@22@00 $Perm)
(assert ($Perm.isReadVar $k@22@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@22@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@23@00 $Perm)
(assert ($Perm.isReadVar $k@23@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@23@00) (< $Perm.No $k@21@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Triggersvalid$%trigger ($Snap.second s@$) this$_2@3@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (<= $Perm.No $k@22@00))
(assert (=> (< $Perm.No $k@22@00) (not (= this$_2@3@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] this$_1.Triggersnext$ != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= this$_2@3@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] Triggersf$(this$_2.Triggersnext$, x, y, z)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
; [eval] this$_2 != null
(declare-const $k@24@00 $Perm)
(assert ($Perm.isReadVar $k@24@00))
(push) ; 4
(assert (not (=> (< $Perm.No $k@24@00) (< $Perm.No $k@22@00))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@24@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Triggersf$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@4@00 y@5@00 z@6@00))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@24@00))
(assert (Triggersf$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@4@00 y@5@00 z@6@00))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@23@00))
(assert ($Perm.isReadVar $k@24@00))
(assert (and
  (Triggersvalid$%trigger ($Snap.second s@$) this$_2@3@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@22@00)
  (=> (< $Perm.No $k@22@00) (not (= this$_2@3@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (Triggersf$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@4@00 y@5@00 z@6@00)))
(assert (=
  result@7@00
  (Triggersf$ ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@4@00 y@5@00 z@6@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_2@3@00 $Ref) (x@4@00 Int) (y@5@00 Int) (z@6@00 Int)) (!
  (and
    ($Perm.isReadVar $k@21@00)
    ($Perm.isReadVar $k@22@00)
    ($Perm.isReadVar $k@23@00)
    ($Perm.isReadVar $k@24@00)
    (=>
      (Triggersf$%precondition s@$ this$_2@3@00 x@4@00 y@5@00 z@6@00)
      (=
        (Triggersf$ s@$ this$_2@3@00 x@4@00 y@5@00 z@6@00)
        (Triggersf$%limited ($Snap.combine
          $Snap.unit
          ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@4@00 y@5@00 z@6@00))))
  :pattern ((Triggersf$ s@$ this$_2@3@00 x@4@00 y@5@00 z@6@00))
  :pattern ((Triggersf$%stateless this$_2@3@00 x@4@00 y@5@00 z@6@00) (Triggersvalid$%trigger ($Snap.second s@$) this$_2@3@00))
  :qid |quant-u-10811|)))
(assert (forall ((s@$ $Snap) (this$_2@3@00 $Ref) (x@4@00 Int) (y@5@00 Int) (z@6@00 Int)) (!
  (=>
    (Triggersf$%precondition s@$ this$_2@3@00 x@4@00 y@5@00 z@6@00)
    (Triggersf$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@4@00 y@5@00 z@6@00))
  :pattern ((Triggersf$ s@$ this$_2@3@00 x@4@00 y@5@00 z@6@00))
  :qid |quant-u-10812|)))
; ---------- FUNCTION Triggersi$----------
(declare-fun this$_5@8@00 () $Ref)
(declare-fun x@9@00 () Int)
(declare-fun y@10@00 () Bool)
(declare-fun result@11@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this$_5 != null
(assert (not (= this$_5@8@00 $Ref.null)))
(declare-const $k@25@00 $Perm)
(assert ($Perm.isReadVar $k@25@00))
(assert (<= $Perm.No $k@25@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_5@8@00 $Ref) (x@9@00 Int) (y@10@00 Bool)) (!
  (=
    (Triggersi$%limited s@$ this$_5@8@00 x@9@00 y@10@00)
    (Triggersi$ s@$ this$_5@8@00 x@9@00 y@10@00))
  :pattern ((Triggersi$ s@$ this$_5@8@00 x@9@00 y@10@00))
  :qid |quant-u-10805|)))
(assert (forall ((s@$ $Snap) (this$_5@8@00 $Ref) (x@9@00 Int) (y@10@00 Bool)) (!
  (Triggersi$%stateless this$_5@8@00 x@9@00 y@10@00)
  :pattern ((Triggersi$%limited s@$ this$_5@8@00 x@9@00 y@10@00))
  :qid |quant-u-10806|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@25@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= this$_5@8@00 $Ref.null)))
(assert (<= $Perm.No $k@25@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(Triggersvalid$(this$_5), wildcard) in Triggersi$(this$_5.Triggersnext$, x, y))
(declare-const $k@26@00 $Perm)
(assert ($Perm.isReadVar $k@26@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@26@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@27@00 $Perm)
(assert ($Perm.isReadVar $k@27@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@27@00) (< $Perm.No $k@25@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@27@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Triggersvalid$%trigger ($Snap.second s@$) this$_5@8@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (<= $Perm.No $k@26@00))
(assert (=> (< $Perm.No $k@26@00) (not (= this$_5@8@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] this$_1.Triggersnext$ != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@26@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@26@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= this$_5@8@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] Triggersi$(this$_5.Triggersnext$, x, y)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@26@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
; [eval] this$_5 != null
(declare-const $k@28@00 $Perm)
(assert ($Perm.isReadVar $k@28@00))
(push) ; 4
(assert (not (=> (< $Perm.No $k@28@00) (< $Perm.No $k@26@00))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@28@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Triggersi$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@9@00 y@10@00))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@28@00))
(assert (Triggersi$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@9@00 y@10@00))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@27@00))
(assert ($Perm.isReadVar $k@28@00))
(assert (and
  (Triggersvalid$%trigger ($Snap.second s@$) this$_5@8@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@26@00)
  (=> (< $Perm.No $k@26@00) (not (= this$_5@8@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (Triggersi$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@9@00 y@10@00)))
(assert (=
  result@11@00
  (Triggersi$ ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@9@00 y@10@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_5@8@00 $Ref) (x@9@00 Int) (y@10@00 Bool)) (!
  (and
    ($Perm.isReadVar $k@25@00)
    ($Perm.isReadVar $k@26@00)
    ($Perm.isReadVar $k@27@00)
    ($Perm.isReadVar $k@28@00)
    (=>
      (Triggersi$%precondition s@$ this$_5@8@00 x@9@00 y@10@00)
      (=
        (Triggersi$ s@$ this$_5@8@00 x@9@00 y@10@00)
        (Triggersi$%limited ($Snap.combine
          $Snap.unit
          ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@9@00 y@10@00))))
  :pattern ((Triggersi$ s@$ this$_5@8@00 x@9@00 y@10@00))
  :pattern ((Triggersi$%stateless this$_5@8@00 x@9@00 y@10@00) (Triggersvalid$%trigger ($Snap.second s@$) this$_5@8@00))
  :qid |quant-u-10813|)))
(assert (forall ((s@$ $Snap) (this$_5@8@00 $Ref) (x@9@00 Int) (y@10@00 Bool)) (!
  (=>
    (Triggersi$%precondition s@$ this$_5@8@00 x@9@00 y@10@00)
    (Triggersi$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@9@00 y@10@00))
  :pattern ((Triggersi$ s@$ this$_5@8@00 x@9@00 y@10@00))
  :qid |quant-u-10814|)))
; ---------- FUNCTION Triggersh$----------
(declare-fun this$_3@12@00 () $Ref)
(declare-fun x@13@00 () Int)
(declare-fun y@14@00 () Int)
(declare-fun z@15@00 () Int)
(declare-fun result@16@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this$_3 != null
(assert (not (= this$_3@12@00 $Ref.null)))
(declare-const $k@29@00 $Perm)
(assert ($Perm.isReadVar $k@29@00))
(assert (<= $Perm.No $k@29@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_3@12@00 $Ref) (x@13@00 Int) (y@14@00 Int) (z@15@00 Int)) (!
  (=
    (Triggersh$%limited s@$ this$_3@12@00 x@13@00 y@14@00 z@15@00)
    (Triggersh$ s@$ this$_3@12@00 x@13@00 y@14@00 z@15@00))
  :pattern ((Triggersh$ s@$ this$_3@12@00 x@13@00 y@14@00 z@15@00))
  :qid |quant-u-10807|)))
(assert (forall ((s@$ $Snap) (this$_3@12@00 $Ref) (x@13@00 Int) (y@14@00 Int) (z@15@00 Int)) (!
  (Triggersh$%stateless this$_3@12@00 x@13@00 y@14@00 z@15@00)
  :pattern ((Triggersh$%limited s@$ this$_3@12@00 x@13@00 y@14@00 z@15@00))
  :qid |quant-u-10808|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@29@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= this$_3@12@00 $Ref.null)))
(assert (<= $Perm.No $k@29@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(Triggersvalid$(this$_3), wildcard) in Triggersh$(this$_3.Triggersnext$, x, y, z))
(declare-const $k@30@00 $Perm)
(assert ($Perm.isReadVar $k@30@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@30@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@31@00 $Perm)
(assert ($Perm.isReadVar $k@31@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@31@00) (< $Perm.No $k@29@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@31@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Triggersvalid$%trigger ($Snap.second s@$) this$_3@12@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (<= $Perm.No $k@30@00))
(assert (=> (< $Perm.No $k@30@00) (not (= this$_3@12@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] this$_1.Triggersnext$ != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@30@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@30@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= this$_3@12@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] Triggersh$(this$_3.Triggersnext$, x, y, z)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@30@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
; [eval] this$_3 != null
(declare-const $k@32@00 $Perm)
(assert ($Perm.isReadVar $k@32@00))
(push) ; 4
(assert (not (=> (< $Perm.No $k@32@00) (< $Perm.No $k@30@00))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@32@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Triggersh$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@13@00 y@14@00 z@15@00))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@32@00))
(assert (Triggersh$%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@13@00 y@14@00 z@15@00))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@31@00))
(assert ($Perm.isReadVar $k@32@00))
(assert (and
  (Triggersvalid$%trigger ($Snap.second s@$) this$_3@12@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@30@00)
  (=> (< $Perm.No $k@30@00) (not (= this$_3@12@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (Triggersh$%precondition ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@13@00 y@14@00 z@15@00)))
(assert (=
  result@16@00
  (Triggersh$ ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@13@00 y@14@00 z@15@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this$_3@12@00 $Ref) (x@13@00 Int) (y@14@00 Int) (z@15@00 Int)) (!
  (and
    ($Perm.isReadVar $k@29@00)
    ($Perm.isReadVar $k@30@00)
    ($Perm.isReadVar $k@31@00)
    ($Perm.isReadVar $k@32@00)
    (=>
      (Triggersh$%precondition s@$ this$_3@12@00 x@13@00 y@14@00 z@15@00)
      (=
        (Triggersh$ s@$ this$_3@12@00 x@13@00 y@14@00 z@15@00)
        (Triggersh$%limited ($Snap.combine
          $Snap.unit
          ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@13@00 y@14@00 z@15@00))))
  :pattern ((Triggersh$ s@$ this$_3@12@00 x@13@00 y@14@00 z@15@00))
  :pattern ((Triggersh$%stateless this$_3@12@00 x@13@00 y@14@00 z@15@00) (Triggersvalid$%trigger ($Snap.second s@$) this$_3@12@00))
  :qid |quant-u-10815|)))
(assert (forall ((s@$ $Snap) (this$_3@12@00 $Ref) (x@13@00 Int) (y@14@00 Int) (z@15@00 Int)) (!
  (=>
    (Triggersh$%precondition s@$ this$_3@12@00 x@13@00 y@14@00 z@15@00)
    (Triggersh$%precondition ($Snap.combine
      $Snap.unit
      ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) x@13@00 y@14@00 z@15@00))
  :pattern ((Triggersh$ s@$ this$_3@12@00 x@13@00 y@14@00 z@15@00))
  :qid |quant-u-10816|)))
; ---------- Triggers$MonitorInvariant ----------
(declare-const this$@33@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@34@00 $Snap)
(assert (= $t@34@00 $Snap.unit))
(pop) ; 1
; ---------- Triggersvalid$ ----------
(declare-const this$_1@35@00 $Ref)
(push) ; 1
(declare-const $t@36@00 $Snap)
(assert (= $t@36@00 ($Snap.combine ($Snap.first $t@36@00) ($Snap.second $t@36@00))))
(assert (not (= this$_1@35@00 $Ref.null)))
(assert (=
  ($Snap.second $t@36@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@36@00))
    ($Snap.second ($Snap.second $t@36@00)))))
(assert (= ($Snap.first ($Snap.second $t@36@00)) $Snap.unit))
; [eval] this$_1.Triggersnext$ != null
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@36@00)) $Ref.null)))
(pop) ; 1
