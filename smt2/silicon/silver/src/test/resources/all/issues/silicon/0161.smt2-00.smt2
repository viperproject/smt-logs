(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:40:17
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
(declare-fun body ($Snap $Ref) Int)
(declare-fun body%limited ($Snap $Ref) Int)
(declare-fun body%stateless ($Ref) Bool)
(declare-fun body%precondition ($Snap $Ref) Bool)
(declare-fun pre ($Snap $Ref) Int)
(declare-fun pre%limited ($Snap $Ref) Int)
(declare-fun pre%stateless ($Ref) Bool)
(declare-fun pre%precondition ($Snap $Ref) Bool)
(declare-fun pre2Abstract ($Snap $Ref) Int)
(declare-fun pre2Abstract%limited ($Snap $Ref) Int)
(declare-fun pre2Abstract%stateless ($Ref) Bool)
(declare-fun pre2Abstract%precondition ($Snap $Ref) Bool)
(declare-fun pre1 ($Snap $Ref) Int)
(declare-fun pre1%limited ($Snap $Ref) Int)
(declare-fun pre1%stateless ($Ref) Bool)
(declare-fun pre1%precondition ($Snap $Ref) Bool)
(declare-fun post1Abstract ($Snap $Ref) Int)
(declare-fun post1Abstract%limited ($Snap $Ref) Int)
(declare-fun post1Abstract%stateless ($Ref) Bool)
(declare-fun post1Abstract%precondition ($Snap $Ref) Bool)
(declare-fun pre3Abstract ($Snap $Ref) Int)
(declare-fun pre3Abstract%limited ($Snap $Ref) Int)
(declare-fun pre3Abstract%stateless ($Ref) Bool)
(declare-fun pre3Abstract%precondition ($Snap $Ref) Bool)
(declare-fun pre1Abstract ($Snap $Ref) Int)
(declare-fun pre1Abstract%limited ($Snap $Ref) Int)
(declare-fun pre1Abstract%stateless ($Ref) Bool)
(declare-fun pre1Abstract%precondition ($Snap $Ref) Bool)
(declare-fun post2Abstract ($Snap $Ref) Int)
(declare-fun post2Abstract%limited ($Snap $Ref) Int)
(declare-fun post2Abstract%stateless ($Ref) Bool)
(declare-fun post2Abstract%precondition ($Snap $Ref) Bool)
(declare-fun pre2 ($Snap $Ref) Int)
(declare-fun pre2%limited ($Snap $Ref) Int)
(declare-fun pre2%stateless ($Ref) Bool)
(declare-fun pre2%precondition ($Snap $Ref) Bool)
(declare-fun pre3 ($Snap $Ref) Int)
(declare-fun pre3%limited ($Snap $Ref) Int)
(declare-fun pre3%stateless ($Ref) Bool)
(declare-fun pre3%precondition ($Snap $Ref) Bool)
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
; ---------- FUNCTION body----------
(declare-fun this@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] this != null
(assert (not (= this@0@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (= (body%limited s@$ this@0@00) (body s@$ this@0@00))
  :pattern ((body s@$ this@0@00))
  :qid |quant-u-24359|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (body%stateless this@0@00)
  :pattern ((body%limited s@$ this@0@00))
  :qid |quant-u-24360|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (not (= this@0@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION pre----------
(declare-fun this@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@2@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] this.x == 0
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION pre2Abstract----------
(declare-fun this@4@00 () $Ref)
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@4@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] this.x == 0
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION pre1----------
(declare-fun this@6@00 () $Ref)
(declare-fun result@7@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@6@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] this.x == 0
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION post1Abstract----------
(declare-fun this@8@00 () $Ref)
(declare-fun result@9@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] this != null
(assert (not (= this@8@00 $Ref.null)))
(declare-const $t@20@00 $Snap)
(assert (= $t@20@00 $Snap.unit))
; [eval] this.x == 0
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION pre3Abstract----------
(declare-fun this@10@00 () $Ref)
(declare-fun result@11@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@10@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] this.x == 0
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION pre1Abstract----------
(declare-fun this@12@00 () $Ref)
(declare-fun result@13@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@12@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] this.x == 0
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION post2Abstract----------
(declare-fun this@14@00 () $Ref)
(declare-fun result@15@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] this != null
(assert (not (= this@14@00 $Ref.null)))
(declare-const $t@21@00 $Snap)
(assert (= $t@21@00 ($Snap.combine ($Snap.first $t@21@00) ($Snap.second $t@21@00))))
(assert (= ($Snap.first $t@21@00) $Snap.unit))
; [eval] this != null
(assert (= ($Snap.second $t@21@00) $Snap.unit))
; [eval] this.x == 0
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION pre2----------
(declare-fun this@16@00 () $Ref)
(declare-fun result@17@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@16@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] this.x == 0
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION pre3----------
(declare-fun this@18@00 () $Ref)
(declare-fun result@19@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@18@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] this.x == 0
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1