(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 20:05:33
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
(declare-fun fun04 ($Snap) Int)
(declare-fun fun04%limited ($Snap) Int)
(declare-const fun04%stateless Bool)
(declare-fun fun04%precondition ($Snap) Bool)
(declare-fun fun01 ($Snap) Int)
(declare-fun fun01%limited ($Snap) Int)
(declare-const fun01%stateless Bool)
(declare-fun fun01%precondition ($Snap) Bool)
(declare-fun fun11 ($Snap Int) Int)
(declare-fun fun11%limited ($Snap Int) Int)
(declare-fun fun11%stateless (Int) Bool)
(declare-fun fun11%precondition ($Snap Int) Bool)
(declare-fun fun07 ($Snap) Int)
(declare-fun fun07%limited ($Snap) Int)
(declare-const fun07%stateless Bool)
(declare-fun fun07%precondition ($Snap) Bool)
(declare-fun fun06 ($Snap) Int)
(declare-fun fun06%limited ($Snap) Int)
(declare-const fun06%stateless Bool)
(declare-fun fun06%precondition ($Snap) Bool)
(declare-fun fun03 ($Snap) Int)
(declare-fun fun03%limited ($Snap) Int)
(declare-const fun03%stateless Bool)
(declare-fun fun03%precondition ($Snap) Bool)
(declare-fun fun15 ($Snap Int) Int)
(declare-fun fun15%limited ($Snap Int) Int)
(declare-fun fun15%stateless (Int) Bool)
(declare-fun fun15%precondition ($Snap Int) Bool)
(declare-fun fun12 ($Snap Int) Int)
(declare-fun fun12%limited ($Snap Int) Int)
(declare-fun fun12%stateless (Int) Bool)
(declare-fun fun12%precondition ($Snap Int) Bool)
(declare-fun fun13 ($Snap Int) Int)
(declare-fun fun13%limited ($Snap Int) Int)
(declare-fun fun13%stateless (Int) Bool)
(declare-fun fun13%precondition ($Snap Int) Bool)
(declare-fun fun18 ($Snap Int) Int)
(declare-fun fun18%limited ($Snap Int) Int)
(declare-fun fun18%stateless (Int) Bool)
(declare-fun fun18%precondition ($Snap Int) Bool)
(declare-fun fun17 ($Snap Int) Int)
(declare-fun fun17%limited ($Snap Int) Int)
(declare-fun fun17%stateless (Int) Bool)
(declare-fun fun17%precondition ($Snap Int) Bool)
(declare-fun fun05 ($Snap) Int)
(declare-fun fun05%limited ($Snap) Int)
(declare-const fun05%stateless Bool)
(declare-fun fun05%precondition ($Snap) Bool)
(declare-fun fun02 ($Snap) Int)
(declare-fun fun02%limited ($Snap) Int)
(declare-const fun02%stateless Bool)
(declare-fun fun02%precondition ($Snap) Bool)
(declare-fun fun08 ($Snap) Int)
(declare-fun fun08%limited ($Snap) Int)
(declare-const fun08%stateless Bool)
(declare-fun fun08%precondition ($Snap) Bool)
(declare-fun fun16 ($Snap Int) Int)
(declare-fun fun16%limited ($Snap Int) Int)
(declare-fun fun16%stateless (Int) Bool)
(declare-fun fun16%precondition ($Snap Int) Bool)
(declare-fun fun14 ($Snap Int) Int)
(declare-fun fun14%limited ($Snap Int) Int)
(declare-fun fun14%stateless (Int) Bool)
(declare-fun fun14%precondition ($Snap Int) Bool)
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
; ---------- FUNCTION fun04----------
(declare-fun result@0@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@24@00 $Snap)
(assert (= $t@24@00 ($Snap.combine ($Snap.first $t@24@00) ($Snap.second $t@24@00))))
(assert (= ($Snap.first $t@24@00) $Snap.unit))
; [eval] result != 0
(assert (not (= result@0@00 0)))
(assert (= ($Snap.second $t@24@00) $Snap.unit))
; [eval] 1 \ result != 2
; [eval] 1 \ result
(assert (not (= (div 1 result@0@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (fun04%limited s@$) (fun04 s@$))
  :pattern ((fun04 s@$))
  :qid |quant-u-23223|)))
(assert (forall ((s@$ $Snap)) (!
  (as fun04%stateless  Bool)
  :pattern ((fun04%limited s@$))
  :qid |quant-u-23224|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (fun04%limited s@$))) (=>
    (fun04%precondition s@$)
    (and (not (= result@0@00 0)) (not (= (div 1 result@0@00) 2)))))
  :pattern ((fun04%limited s@$))
  :qid |quant-u-23255|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (fun04%limited s@$))) true)
  :pattern ((fun04%limited s@$))
  :qid |quant-u-23256|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (fun04%limited s@$))) true)
  :pattern ((fun04%limited s@$))
  :qid |quant-u-23257|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@0@00 1))
; [eval] 1 \ result != 2
; [eval] 1 \ result
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= result@0@00 0))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (not (= (div 1 result@0@00) 2))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (div 1 result@0@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=> (fun04%precondition s@$) (= (fun04 s@$) 1))
  :pattern ((fun04 s@$))
  :qid |quant-u-23258|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((fun04 s@$))
  :qid |quant-u-23259|)))
; ---------- FUNCTION fun01----------
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@25@00 $Snap)
(assert (= $t@25@00 ($Snap.combine ($Snap.first $t@25@00) ($Snap.second $t@25@00))))
(assert (= ($Snap.first $t@25@00) $Snap.unit))
; [eval] result != 0
(assert (not (= result@1@00 0)))
(assert (= ($Snap.second $t@25@00) $Snap.unit))
; [eval] 1 \ result != 2
; [eval] 1 \ result
(assert (not (= (div 1 result@1@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (fun01%limited s@$) (fun01 s@$))
  :pattern ((fun01 s@$))
  :qid |quant-u-23225|)))
(assert (forall ((s@$ $Snap)) (!
  (as fun01%stateless  Bool)
  :pattern ((fun01%limited s@$))
  :qid |quant-u-23226|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@1@00 (fun01%limited s@$))) (=>
    (fun01%precondition s@$)
    (and (not (= result@1@00 0)) (not (= (div 1 result@1@00) 2)))))
  :pattern ((fun01%limited s@$))
  :qid |quant-u-23260|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@1@00 (fun01%limited s@$))) true)
  :pattern ((fun01%limited s@$))
  :qid |quant-u-23261|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@1@00 (fun01%limited s@$))) true)
  :pattern ((fun01%limited s@$))
  :qid |quant-u-23262|)))
; ---------- FUNCTION fun11----------
(declare-fun x@2@00 () Int)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] x != 0
(assert (not (= x@2@00 0)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] 1 \ x != 2
; [eval] 1 \ x
(assert (not (= (div 1 x@2@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@2@00 Int)) (!
  (= (fun11%limited s@$ x@2@00) (fun11 s@$ x@2@00))
  :pattern ((fun11 s@$ x@2@00))
  :qid |quant-u-23227|)))
(assert (forall ((s@$ $Snap) (x@2@00 Int)) (!
  (fun11%stateless x@2@00)
  :pattern ((fun11%limited s@$ x@2@00))
  :qid |quant-u-23228|)))
; ---------- FUNCTION fun07----------
(declare-fun result@4@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@26@00 $Snap)
(assert (= $t@26@00 ($Snap.combine ($Snap.first $t@26@00) ($Snap.second $t@26@00))))
(assert (= ($Snap.first $t@26@00) $Snap.unit))
(assert (= ($Snap.second $t@26@00) $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (fun07%limited s@$) (fun07 s@$))
  :pattern ((fun07 s@$))
  :qid |quant-u-23229|)))
(assert (forall ((s@$ $Snap)) (!
  (as fun07%stateless  Bool)
  :pattern ((fun07%limited s@$))
  :qid |quant-u-23230|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@4@00 (fun07%limited s@$))) true)
  :pattern ((fun07%limited s@$))
  :qid |quant-u-23263|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@4@00 (fun07%limited s@$))) true)
  :pattern ((fun07%limited s@$))
  :qid |quant-u-23264|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@4@00 (fun07%limited s@$))) true)
  :pattern ((fun07%limited s@$))
  :qid |quant-u-23265|)))
; ---------- FUNCTION fun06----------
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@27@00 $Snap)
(assert (= $t@27@00 ($Snap.combine ($Snap.first $t@27@00) ($Snap.second $t@27@00))))
(assert (= ($Snap.first $t@27@00) $Snap.unit))
(assert (= ($Snap.second $t@27@00) $Snap.unit))
; [eval] 1 \ result != 2
; [eval] 1 \ result
(push) ; 2
(assert (not (not (= result@5@00 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- FUNCTION fun03----------
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@28@00 $Snap)
(assert (= $t@28@00 ($Snap.combine ($Snap.first $t@28@00) ($Snap.second $t@28@00))))
(assert (= ($Snap.first $t@28@00) $Snap.unit))
; [eval] result != 0
(assert (not (= result@6@00 0)))
(assert (= ($Snap.second $t@28@00) $Snap.unit))
; [eval] 1 \ result != 2
; [eval] 1 \ result
(assert (not (= (div 1 result@6@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (fun03%limited s@$) (fun03 s@$))
  :pattern ((fun03 s@$))
  :qid |quant-u-23233|)))
(assert (forall ((s@$ $Snap)) (!
  (as fun03%stateless  Bool)
  :pattern ((fun03%limited s@$))
  :qid |quant-u-23234|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@6@00 (fun03%limited s@$))) (=>
    (fun03%precondition s@$)
    (and (not (= result@6@00 0)) (not (= (div 1 result@6@00) 2)))))
  :pattern ((fun03%limited s@$))
  :qid |quant-u-23266|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@6@00 (fun03%limited s@$))) true)
  :pattern ((fun03%limited s@$))
  :qid |quant-u-23267|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@6@00 (fun03%limited s@$))) true)
  :pattern ((fun03%limited s@$))
  :qid |quant-u-23268|)))
; ---------- FUNCTION fun15----------
(declare-fun x@7@00 () Int)
(declare-fun result@8@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] 1 \ x != 2
; [eval] 1 \ x
(push) ; 2
(assert (not (not (= x@7@00 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- FUNCTION fun12----------
(declare-fun x@9@00 () Int)
(declare-fun result@10@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] x != 0
(assert (not (= x@9@00 0)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] 1 \ x != 2
; [eval] 1 \ x
(assert (not (= (div 1 x@9@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@9@00 Int)) (!
  (= (fun12%limited s@$ x@9@00) (fun12 s@$ x@9@00))
  :pattern ((fun12 s@$ x@9@00))
  :qid |quant-u-23237|)))
(assert (forall ((s@$ $Snap) (x@9@00 Int)) (!
  (fun12%stateless x@9@00)
  :pattern ((fun12%limited s@$ x@9@00))
  :qid |quant-u-23238|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= x@9@00 0)))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (not (= (div 1 x@9@00) 2)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@10@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@9@00 Int)) (!
  (=> (fun12%precondition s@$ x@9@00) (= (fun12 s@$ x@9@00) 1))
  :pattern ((fun12 s@$ x@9@00))
  :qid |quant-u-23269|)))
(assert (forall ((s@$ $Snap) (x@9@00 Int)) (!
  true
  :pattern ((fun12 s@$ x@9@00))
  :qid |quant-u-23270|)))
; ---------- FUNCTION fun13----------
(declare-fun x@11@00 () Int)
(declare-fun result@12@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] x != 0
(assert (not (= x@11@00 0)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] 1 \ x != 2
; [eval] 1 \ x
(assert (not (= (div 1 x@11@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@11@00 Int)) (!
  (= (fun13%limited s@$ x@11@00) (fun13 s@$ x@11@00))
  :pattern ((fun13 s@$ x@11@00))
  :qid |quant-u-23239|)))
(assert (forall ((s@$ $Snap) (x@11@00 Int)) (!
  (fun13%stateless x@11@00)
  :pattern ((fun13%limited s@$ x@11@00))
  :qid |quant-u-23240|)))
; ---------- FUNCTION fun18----------
(declare-fun x@13@00 () Int)
(declare-fun result@14@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (= ($Snap.second s@$) $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@13@00 Int)) (!
  (= (fun18%limited s@$ x@13@00) (fun18 s@$ x@13@00))
  :pattern ((fun18 s@$ x@13@00))
  :qid |quant-u-23241|)))
(assert (forall ((s@$ $Snap) (x@13@00 Int)) (!
  (fun18%stateless x@13@00)
  :pattern ((fun18%limited s@$ x@13@00))
  :qid |quant-u-23242|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@14@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@13@00 Int)) (!
  (=> (fun18%precondition s@$ x@13@00) (= (fun18 s@$ x@13@00) 1))
  :pattern ((fun18 s@$ x@13@00))
  :qid |quant-u-23271|)))
(assert (forall ((s@$ $Snap) (x@13@00 Int)) (!
  true
  :pattern ((fun18 s@$ x@13@00))
  :qid |quant-u-23272|)))
; ---------- FUNCTION fun17----------
(declare-fun x@15@00 () Int)
(declare-fun result@16@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (= ($Snap.second s@$) $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@15@00 Int)) (!
  (= (fun17%limited s@$ x@15@00) (fun17 s@$ x@15@00))
  :pattern ((fun17 s@$ x@15@00))
  :qid |quant-u-23243|)))
(assert (forall ((s@$ $Snap) (x@15@00 Int)) (!
  (fun17%stateless x@15@00)
  :pattern ((fun17%limited s@$ x@15@00))
  :qid |quant-u-23244|)))
; ---------- FUNCTION fun05----------
(declare-fun result@17@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@29@00 $Snap)
(assert (= $t@29@00 ($Snap.combine ($Snap.first $t@29@00) ($Snap.second $t@29@00))))
(assert (= ($Snap.first $t@29@00) $Snap.unit))
(assert (= ($Snap.second $t@29@00) $Snap.unit))
; [eval] 1 \ result != 2
; [eval] 1 \ result
(push) ; 2
(assert (not (not (= result@17@00 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- FUNCTION fun02----------
(declare-fun result@18@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@30@00 $Snap)
(assert (= $t@30@00 ($Snap.combine ($Snap.first $t@30@00) ($Snap.second $t@30@00))))
(assert (= ($Snap.first $t@30@00) $Snap.unit))
; [eval] result != 0
(assert (not (= result@18@00 0)))
(assert (= ($Snap.second $t@30@00) $Snap.unit))
; [eval] 1 \ result != 2
; [eval] 1 \ result
(assert (not (= (div 1 result@18@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (fun02%limited s@$) (fun02 s@$))
  :pattern ((fun02 s@$))
  :qid |quant-u-23247|)))
(assert (forall ((s@$ $Snap)) (!
  (as fun02%stateless  Bool)
  :pattern ((fun02%limited s@$))
  :qid |quant-u-23248|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@18@00 (fun02%limited s@$))) (=>
    (fun02%precondition s@$)
    (and (not (= result@18@00 0)) (not (= (div 1 result@18@00) 2)))))
  :pattern ((fun02%limited s@$))
  :qid |quant-u-23273|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@18@00 (fun02%limited s@$))) true)
  :pattern ((fun02%limited s@$))
  :qid |quant-u-23274|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@18@00 (fun02%limited s@$))) true)
  :pattern ((fun02%limited s@$))
  :qid |quant-u-23275|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@18@00 1))
; [eval] result != 0
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= result@18@00 0))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= result@18@00 0)))
; [eval] 1 \ result != 2
; [eval] 1 \ result
(push) ; 2
(assert (not (not (= (div 1 result@18@00) 2))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (div 1 result@18@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=> (fun02%precondition s@$) (= (fun02 s@$) 1))
  :pattern ((fun02 s@$))
  :qid |quant-u-23276|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((fun02 s@$))
  :qid |quant-u-23277|)))
; ---------- FUNCTION fun08----------
(declare-fun result@19@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@31@00 $Snap)
(assert (= $t@31@00 ($Snap.combine ($Snap.first $t@31@00) ($Snap.second $t@31@00))))
(assert (= ($Snap.first $t@31@00) $Snap.unit))
(assert (= ($Snap.second $t@31@00) $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (fun08%limited s@$) (fun08 s@$))
  :pattern ((fun08 s@$))
  :qid |quant-u-23249|)))
(assert (forall ((s@$ $Snap)) (!
  (as fun08%stateless  Bool)
  :pattern ((fun08%limited s@$))
  :qid |quant-u-23250|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@19@00 (fun08%limited s@$))) true)
  :pattern ((fun08%limited s@$))
  :qid |quant-u-23278|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@19@00 (fun08%limited s@$))) true)
  :pattern ((fun08%limited s@$))
  :qid |quant-u-23279|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@19@00 (fun08%limited s@$))) true)
  :pattern ((fun08%limited s@$))
  :qid |quant-u-23280|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@19@00 1))
; [eval] result != 0
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= result@19@00 0))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= result@19@00 0)))
; [eval] 1 \ result != 2
; [eval] 1 \ result
(push) ; 2
(assert (not (not (= (div 1 result@19@00) 2))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (div 1 result@19@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=> (fun08%precondition s@$) (= (fun08 s@$) 1))
  :pattern ((fun08 s@$))
  :qid |quant-u-23281|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((fun08 s@$))
  :qid |quant-u-23282|)))
; ---------- FUNCTION fun16----------
(declare-fun x@20@00 () Int)
(declare-fun result@21@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] 1 \ x != 2
; [eval] 1 \ x
(push) ; 2
(assert (not (not (= x@20@00 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- FUNCTION fun14----------
(declare-fun x@22@00 () Int)
(declare-fun result@23@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] x != 0
(assert (not (= x@22@00 0)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] 1 \ x != 2
; [eval] 1 \ x
(assert (not (= (div 1 x@22@00) 2)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@22@00 Int)) (!
  (= (fun14%limited s@$ x@22@00) (fun14 s@$ x@22@00))
  :pattern ((fun14 s@$ x@22@00))
  :qid |quant-u-23253|)))
(assert (forall ((s@$ $Snap) (x@22@00 Int)) (!
  (fun14%stateless x@22@00)
  :pattern ((fun14%limited s@$ x@22@00))
  :qid |quant-u-23254|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= x@22@00 0)))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (not (= (div 1 x@22@00) 2)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@23@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@22@00 Int)) (!
  (=> (fun14%precondition s@$ x@22@00) (= (fun14 s@$ x@22@00) 1))
  :pattern ((fun14 s@$ x@22@00))
  :qid |quant-u-23283|)))
(assert (forall ((s@$ $Snap) (x@22@00 Int)) (!
  true
  :pattern ((fun14 s@$ x@22@00))
  :qid |quant-u-23284|)))
