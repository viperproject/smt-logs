(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:39:01
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
(declare-fun fun1 ($Snap $Ref) Int)
(declare-fun fun1%limited ($Snap $Ref) Int)
(declare-fun fun1%stateless ($Ref) Bool)
(declare-fun fun1%precondition ($Snap $Ref) Bool)
(declare-fun fun2 ($Snap $Ref) Int)
(declare-fun fun2%limited ($Snap $Ref) Int)
(declare-fun fun2%stateless ($Ref) Bool)
(declare-fun fun2%precondition ($Snap $Ref) Bool)
(declare-fun fun3 ($Snap $Ref) Int)
(declare-fun fun3%limited ($Snap $Ref) Int)
(declare-fun fun3%stateless ($Ref) Bool)
(declare-fun fun3%precondition ($Snap $Ref) Bool)
(declare-fun sum ($Snap $Ref) Int)
(declare-fun sum%limited ($Snap $Ref) Int)
(declare-fun sum%stateless ($Ref) Bool)
(declare-fun sum%precondition ($Snap $Ref) Bool)
(declare-fun getf ($Snap $Ref) Int)
(declare-fun getf%limited ($Snap $Ref) Int)
(declare-fun getf%stateless ($Ref) Bool)
(declare-fun getf%precondition ($Snap $Ref) Bool)
(declare-fun add ($Snap $Ref $Ref) Int)
(declare-fun add%limited ($Snap $Ref $Ref) Int)
(declare-fun add%stateless ($Ref $Ref) Bool)
(declare-fun add%precondition ($Snap $Ref $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun F%trigger ($Snap $Ref) Bool)
(declare-fun G%trigger ($Snap $Ref) Bool)
(declare-fun pair%trigger ($Snap $Ref) Bool)
(declare-fun R%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION fun1----------
(declare-fun x@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (fun1%limited s@$ x@0@00) (fun1 s@$ x@0@00))
  :pattern ((fun1 s@$ x@0@00))
  :qid |quant-u-22033|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (fun1%stateless x@0@00)
  :pattern ((fun1%limited s@$ x@0@00))
  :qid |quant-u-22034|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(F(x), write) in x.f) + (unfolding acc(G(x), write) in x.g)
; [eval] (unfolding acc(F(x), write) in x.f)
(set-option :timeout 0)
(push) ; 2
(assert (F%trigger ($Snap.first s@$) x@0@00))
(assert (not (= x@0@00 $Ref.null)))
(pop) ; 2
; Joined path conditions
(assert (and (F%trigger ($Snap.first s@$) x@0@00) (not (= x@0@00 $Ref.null))))
; [eval] (unfolding acc(G(x), write) in x.g)
(push) ; 2
(assert (G%trigger ($Snap.second s@$) x@0@00))
(pop) ; 2
; Joined path conditions
(assert (G%trigger ($Snap.second s@$) x@0@00))
(assert (=
  result@1@00
  (+
    ($SortWrappers.$SnapToInt ($Snap.first s@$))
    ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (=>
    (fun1%precondition s@$ x@0@00)
    (=
      (fun1 s@$ x@0@00)
      (+
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((fun1 s@$ x@0@00))
  :qid |quant-u-22045|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  true
  :pattern ((fun1 s@$ x@0@00))
  :qid |quant-u-22046|)))
; ---------- FUNCTION fun2----------
(declare-fun x@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] x != null
(assert (not (= x@2@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (= (fun2%limited s@$ x@2@00) (fun2 s@$ x@2@00))
  :pattern ((fun2 s@$ x@2@00))
  :qid |quant-u-22035|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (fun2%stateless x@2@00)
  :pattern ((fun2%limited s@$ x@2@00))
  :qid |quant-u-22036|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (not (= x@2@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(F(x), write) in x.f)
(set-option :timeout 0)
(push) ; 2
(assert (F%trigger ($Snap.first s@$) x@2@00))
(pop) ; 2
; Joined path conditions
(assert (F%trigger ($Snap.first s@$) x@2@00))
(assert (= result@3@00 ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (=>
    (fun2%precondition s@$ x@2@00)
    (= (fun2 s@$ x@2@00) ($SortWrappers.$SnapToInt ($Snap.first s@$))))
  :pattern ((fun2 s@$ x@2@00))
  :qid |quant-u-22047|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  true
  :pattern ((fun2 s@$ x@2@00))
  :qid |quant-u-22048|)))
; ---------- FUNCTION fun3----------
(declare-fun y@4@00 () $Ref)
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@4@00 $Ref)) (!
  (= (fun3%limited s@$ y@4@00) (fun3 s@$ y@4@00))
  :pattern ((fun3 s@$ y@4@00))
  :qid |quant-u-22037|)))
(assert (forall ((s@$ $Snap) (y@4@00 $Ref)) (!
  (fun3%stateless y@4@00)
  :pattern ((fun3%limited s@$ y@4@00))
  :qid |quant-u-22038|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(R(y), write) in (y.n != null ? (unfolding acc(R(y.n), write) in 0) : 1))
(set-option :timeout 0)
(push) ; 2
(assert (R%trigger s@$ y@4@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= y@4@00 $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@4@00 ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (y.n != null ? (unfolding acc(R(y.n), write) in 0) : 1)
; [eval] y.n != null
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:(s@$) != Null | live]
; [else-branch: 0 | First:(s@$) == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 0 | First:(s@$) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)))
; [eval] (unfolding acc(R(y.n), write) in 0)
(push) ; 5
(assert (R%trigger ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(push) ; 6
(set-option :timeout 10)
(assert (not (= y@4@00 ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= y@4@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert (and
  (R%trigger ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))))
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 0 | First:(s@$) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
    (R%trigger ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    (=
      ($Snap.second s@$)
      ($Snap.combine
        ($Snap.first ($Snap.second s@$))
        ($Snap.second ($Snap.second s@$)))))))
; Joined path conditions
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))))
(pop) ; 2
; Joined path conditions
(assert (and
  (R%trigger s@$ y@4@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (not (= y@4@00 $Ref.null))
  (=>
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
    (and
      (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
      (R%trigger ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (=
        ($Snap.second s@$)
        ($Snap.combine
          ($Snap.first ($Snap.second s@$))
          ($Snap.second ($Snap.second s@$))))))
  (or
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)))))
(assert (=
  result@5@00
  (ite (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)) 0 1)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@4@00 $Ref)) (!
  (=>
    (fun3%precondition s@$ y@4@00)
    (=
      (fun3 s@$ y@4@00)
      (ite (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)) 0 1)))
  :pattern ((fun3 s@$ y@4@00))
  :qid |quant-u-22049|)))
(assert (forall ((s@$ $Snap) (y@4@00 $Ref)) (!
  true
  :pattern ((fun3 s@$ y@4@00))
  :qid |quant-u-22050|)))
; ---------- FUNCTION sum----------
(declare-fun x@6@00 () $Ref)
(declare-fun result@7@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@6@00 $Ref)) (!
  (= (sum%limited s@$ x@6@00) (sum s@$ x@6@00))
  :pattern ((sum s@$ x@6@00))
  :qid |quant-u-22039|)))
(assert (forall ((s@$ $Snap) (x@6@00 $Ref)) (!
  (sum%stateless x@6@00)
  :pattern ((sum%limited s@$ x@6@00))
  :qid |quant-u-22040|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(pair(x), write) in x.f + x.g)
(set-option :timeout 0)
(push) ; 2
(assert (pair%trigger s@$ x@6@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@6@00 $Ref.null)))
; [eval] x.f + x.g
(pop) ; 2
; Joined path conditions
(assert (and
  (pair%trigger s@$ x@6@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (not (= x@6@00 $Ref.null))))
(assert (=
  result@7@00
  (+
    ($SortWrappers.$SnapToInt ($Snap.first s@$))
    ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@6@00 $Ref)) (!
  (=>
    (sum%precondition s@$ x@6@00)
    (=
      (sum s@$ x@6@00)
      (+
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((sum s@$ x@6@00))
  :qid |quant-u-22051|)))
(assert (forall ((s@$ $Snap) (x@6@00 $Ref)) (!
  true
  :pattern ((sum s@$ x@6@00))
  :qid |quant-u-22052|)))
; ---------- FUNCTION getf----------
(declare-fun z@8@00 () $Ref)
(declare-fun result@9@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (z@8@00 $Ref)) (!
  (= (getf%limited s@$ z@8@00) (getf s@$ z@8@00))
  :pattern ((getf s@$ z@8@00))
  :qid |quant-u-22041|)))
(assert (forall ((s@$ $Snap) (z@8@00 $Ref)) (!
  (getf%stateless z@8@00)
  :pattern ((getf%limited s@$ z@8@00))
  :qid |quant-u-22042|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(pair(z), write) in z.f)
(set-option :timeout 0)
(push) ; 2
(assert (pair%trigger s@$ z@8@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= z@8@00 $Ref.null)))
(pop) ; 2
; Joined path conditions
(assert (and
  (pair%trigger s@$ z@8@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (not (= z@8@00 $Ref.null))))
(assert (= result@9@00 ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (z@8@00 $Ref)) (!
  (=>
    (getf%precondition s@$ z@8@00)
    (= (getf s@$ z@8@00) ($SortWrappers.$SnapToInt ($Snap.first s@$))))
  :pattern ((getf s@$ z@8@00))
  :qid |quant-u-22053|)))
(assert (forall ((s@$ $Snap) (z@8@00 $Ref)) (!
  true
  :pattern ((getf s@$ z@8@00))
  :qid |quant-u-22054|)))
; ---------- FUNCTION add----------
(declare-fun x@10@00 () $Ref)
(declare-fun y@11@00 () $Ref)
(declare-fun result@12@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= x@10@00 y@11@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (y@11@00 $Ref)) (!
  (= (add%limited s@$ x@10@00 y@11@00) (add s@$ x@10@00 y@11@00))
  :pattern ((add s@$ x@10@00 y@11@00))
  :qid |quant-u-22043|)))
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (y@11@00 $Ref)) (!
  (add%stateless x@10@00 y@11@00)
  :pattern ((add%limited s@$ x@10@00 y@11@00))
  :qid |quant-u-22044|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(pair(x), 1 / 3) in x.f + (unfolding acc(pair(y), 1 / 3) in y.f) + x.g)
(set-option :timeout 0)
(push) ; 2
(assert (pair%trigger ($Snap.first s@$) x@10@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (not (= x@10@00 $Ref.null)))
; [eval] x.f + (unfolding acc(pair(y), 1 / 3) in y.f) + x.g
; [eval] x.f + (unfolding acc(pair(y), 1 / 3) in y.f)
; [eval] (unfolding acc(pair(y), 1 / 3) in y.f)
(push) ; 3
(assert (pair%trigger ($Snap.second s@$) y@11@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(push) ; 4
(set-option :timeout 10)
(assert (not (= x@10@00 y@11@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@11@00 $Ref.null)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= x@10@00 y@11@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert (and
  (pair%trigger ($Snap.second s@$) y@11@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (not (= y@11@00 $Ref.null))))
(pop) ; 2
; Joined path conditions
(assert (and
  (pair%trigger ($Snap.first s@$) x@10@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (not (= x@10@00 $Ref.null))
  (pair%trigger ($Snap.second s@$) y@11@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (not (= y@11@00 $Ref.null))))
(assert (=
  result@12@00
  (+
    (+
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (y@11@00 $Ref)) (!
  (=>
    (add%precondition s@$ x@10@00 y@11@00)
    (=
      (add s@$ x@10@00 y@11@00)
      (+
        (+
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first s@$))))))
  :pattern ((add s@$ x@10@00 y@11@00))
  :qid |quant-u-22055|)))
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (y@11@00 $Ref)) (!
  true
  :pattern ((add s@$ x@10@00 y@11@00))
  :qid |quant-u-22056|)))
; ---------- F ----------
(declare-const x@13@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@14@00 Int)
(assert (not (= x@13@00 $Ref.null)))
(pop) ; 1
; ---------- G ----------
(declare-const x@15@00 $Ref)
(push) ; 1
(declare-const $t@16@00 Int)
(assert (not (= x@15@00 $Ref.null)))
(pop) ; 1
; ---------- pair ----------
(declare-const x@17@00 $Ref)
(push) ; 1
(declare-const $t@18@00 $Snap)
(assert (= $t@18@00 ($Snap.combine ($Snap.first $t@18@00) ($Snap.second $t@18@00))))
(assert (not (= x@17@00 $Ref.null)))
(pop) ; 1
; ---------- R ----------
(declare-const x@19@00 $Ref)
(push) ; 1
(declare-const $t@20@00 $Snap)
(assert (= $t@20@00 ($Snap.combine ($Snap.first $t@20@00) ($Snap.second $t@20@00))))
(assert (not (= x@19@00 $Ref.null)))
(pop) ; 1
