(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:41:10
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
(declare-fun bar ($Snap Int) Bool)
(declare-fun bar%limited ($Snap Int) Bool)
(declare-fun bar%stateless (Int) Bool)
(declare-fun bar%precondition ($Snap Int) Bool)
(declare-fun bufferRight ($Snap $Ref) Int)
(declare-fun bufferRight%limited ($Snap $Ref) Int)
(declare-fun bufferRight%stateless ($Ref) Bool)
(declare-fun bufferRight%precondition ($Snap $Ref) Bool)
(declare-fun arrayAt ($Snap $Ref Int) Int)
(declare-fun arrayAt%limited ($Snap $Ref Int) Int)
(declare-fun arrayAt%stateless ($Ref Int) Bool)
(declare-fun arrayAt%precondition ($Snap $Ref Int) Bool)
(declare-fun inner ($Snap $Ref) Int)
(declare-fun inner%limited ($Snap $Ref) Int)
(declare-fun inner%stateless ($Ref) Bool)
(declare-fun inner%precondition ($Snap $Ref) Bool)
(declare-fun outer ($Snap $Ref Int) Bool)
(declare-fun outer%limited ($Snap $Ref Int) Bool)
(declare-fun outer%stateless ($Ref Int) Bool)
(declare-fun outer%precondition ($Snap $Ref Int) Bool)
(declare-fun foo ($Snap $Ref) Int)
(declare-fun foo%limited ($Snap $Ref) Int)
(declare-fun foo%stateless ($Ref) Bool)
(declare-fun foo%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap $Ref) Bool)
(declare-fun gapBuffer%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION bar----------
(declare-fun i@0@00 () Int)
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] 0 < i
(assert (< 0 i@0@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (i@0@00 Int)) (!
  (= (bar%limited s@$ i@0@00) (bar s@$ i@0@00))
  :pattern ((bar s@$ i@0@00))
  :qid |quant-u-24138|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int)) (!
  (bar%stateless i@0@00)
  :pattern ((bar%limited s@$ i@0@00))
  :qid |quant-u-24139|)))
; ---------- FUNCTION bufferRight----------
(declare-fun buffer@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (buffer@2@00 $Ref)) (!
  (= (bufferRight%limited s@$ buffer@2@00) (bufferRight s@$ buffer@2@00))
  :pattern ((bufferRight s@$ buffer@2@00))
  :qid |quant-u-24140|)))
(assert (forall ((s@$ $Snap) (buffer@2@00 $Ref)) (!
  (bufferRight%stateless buffer@2@00)
  :pattern ((bufferRight%limited s@$ buffer@2@00))
  :qid |quant-u-24141|)))
; ---------- FUNCTION arrayAt----------
(declare-fun buffer@4@00 () $Ref)
(declare-fun index@5@00 () Int)
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] (unfolding acc(gapBuffer(buffer), write) in index >= 0)
(push) ; 2
(assert (gapBuffer%trigger ($Snap.first s@$) buffer@4@00))
(assert (not (= buffer@4@00 $Ref.null)))
; [eval] index >= 0
(pop) ; 2
; Joined path conditions
(assert (and
  (gapBuffer%trigger ($Snap.first s@$) buffer@4@00)
  (not (= buffer@4@00 $Ref.null))))
(assert (>= index@5@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (buffer@4@00 $Ref) (index@5@00 Int)) (!
  (=
    (arrayAt%limited s@$ buffer@4@00 index@5@00)
    (arrayAt s@$ buffer@4@00 index@5@00))
  :pattern ((arrayAt s@$ buffer@4@00 index@5@00))
  :qid |quant-u-24142|)))
(assert (forall ((s@$ $Snap) (buffer@4@00 $Ref) (index@5@00 Int)) (!
  (arrayAt%stateless buffer@4@00 index@5@00)
  :pattern ((arrayAt%limited s@$ buffer@4@00 index@5@00))
  :qid |quant-u-24143|)))
; ---------- FUNCTION inner----------
(declare-fun x@7@00 () $Ref)
(declare-fun result@8@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@7@00 $Ref)) (!
  (= (inner%limited s@$ x@7@00) (inner s@$ x@7@00))
  :pattern ((inner s@$ x@7@00))
  :qid |quant-u-24144|)))
(assert (forall ((s@$ $Snap) (x@7@00 $Ref)) (!
  (inner%stateless x@7@00)
  :pattern ((inner%limited s@$ x@7@00))
  :qid |quant-u-24145|)))
; ---------- FUNCTION outer----------
(declare-fun x@9@00 () $Ref)
(declare-fun v@10@00 () Int)
(declare-fun result@11@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] (unfolding acc(P(x), write) in v == 0)
(push) ; 2
(assert (P%trigger ($Snap.first s@$) x@9@00))
(assert (not (= x@9@00 $Ref.null)))
; [eval] v == 0
(pop) ; 2
; Joined path conditions
(assert (and (P%trigger ($Snap.first s@$) x@9@00) (not (= x@9@00 $Ref.null))))
(assert (= v@10@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@9@00 $Ref) (v@10@00 Int)) (!
  (= (outer%limited s@$ x@9@00 v@10@00) (outer s@$ x@9@00 v@10@00))
  :pattern ((outer s@$ x@9@00 v@10@00))
  :qid |quant-u-24146|)))
(assert (forall ((s@$ $Snap) (x@9@00 $Ref) (v@10@00 Int)) (!
  (outer%stateless x@9@00 v@10@00)
  :pattern ((outer%limited s@$ x@9@00 v@10@00))
  :qid |quant-u-24147|)))
; ---------- FUNCTION foo----------
(declare-fun x@12@00 () $Ref)
(declare-fun result@13@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@12@00 $Ref)) (!
  (= (foo%limited s@$ x@12@00) (foo s@$ x@12@00))
  :pattern ((foo s@$ x@12@00))
  :qid |quant-u-24148|)))
(assert (forall ((s@$ $Snap) (x@12@00 $Ref)) (!
  (foo%stateless x@12@00)
  :pattern ((foo%limited s@$ x@12@00))
  :qid |quant-u-24149|)))
; ---------- P ----------
(declare-const x@14@00 $Ref)
(push) ; 1
(declare-const $t@15@00 Int)
(assert (not (= x@14@00 $Ref.null)))
(pop) ; 1
; ---------- gapBuffer ----------
(declare-const buffer@16@00 $Ref)
(push) ; 1
(declare-const $t@17@00 Int)
(assert (not (= buffer@16@00 $Ref.null)))
(pop) ; 1
