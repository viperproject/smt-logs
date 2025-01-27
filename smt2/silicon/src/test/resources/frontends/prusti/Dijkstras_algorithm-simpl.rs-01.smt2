(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 22:54:05
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
(declare-sort Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ 0)
(declare-sort $SnapshotMirrors$ 0)
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
(declare-fun $SortWrappers.Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_To$Snap (Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_) $Snap)
(declare-fun $SortWrappers.$SnapToSnap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap) Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_)
(assert (forall ((x Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_)) (!
    (= x ($SortWrappers.$SnapToSnap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_($SortWrappers.Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_To$Snap x)))
    :pattern (($SortWrappers.Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_To$Snap x))
    :qid |$Snap.$SnapToSnap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_To$Snap($SortWrappers.$SnapToSnap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ x)))
    :pattern (($SortWrappers.$SnapToSnap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ x))
    :qid |$Snap.Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_To$SnapToSnap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_|
    )))
(declare-fun $SortWrappers.$SnapshotMirrors$To$Snap ($SnapshotMirrors$) $Snap)
(declare-fun $SortWrappers.$SnapTo$SnapshotMirrors$ ($Snap) $SnapshotMirrors$)
(assert (forall ((x $SnapshotMirrors$)) (!
    (= x ($SortWrappers.$SnapTo$SnapshotMirrors$($SortWrappers.$SnapshotMirrors$To$Snap x)))
    :pattern (($SortWrappers.$SnapshotMirrors$To$Snap x))
    :qid |$Snap.$SnapTo$SnapshotMirrors$To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$SnapshotMirrors$To$Snap($SortWrappers.$SnapTo$SnapshotMirrors$ x)))
    :pattern (($SortWrappers.$SnapTo$SnapshotMirrors$ x))
    :qid |$Snap.$SnapshotMirrors$To$SnapTo$SnapshotMirrors$|
    )))
; ////////// Symbols
(declare-const cons$__$TY$__Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_<Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_> Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_)
(declare-fun mirror$m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$__$TY$__Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$<Int> (Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_) Int)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap $Ref) Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_)
(declare-fun snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%limited ($Snap $Ref) Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_)
(declare-fun snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%stateless ($Ref) Bool)
(declare-fun snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap $Ref) Bool)
(declare-fun equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_10$2$2109013088548461081%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_11$3$5463938439829385733%trigger ($Snap $Ref) Bool)
(declare-fun m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_11$3$5463938439829385733%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun usize%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert true)
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-334|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-335|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-350|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-351|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-352|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (=
    (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%limited s@$ _arg@1@00)
    (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@1@00))
  :pattern ((snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@1@00))
  :qid |quant-u-336|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%stateless _arg@1@00)
  :pattern ((snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%limited s@$ _arg@1@00))
  :qid |quant-u-337|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (=>
    (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition s@$ _arg@1@00)
    (=
      (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@1@00)
      (as cons$__$TY$__Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_<Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_>  Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_)))
  :pattern ((snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@1@00))
  :qid |quant-u-353|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  true
  :pattern ((snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ s@$ _arg@1@00))
  :qid |quant-u-354|)))
(assert (forall ((s@$ $Snap) (_left@3@00 $Ref) (_right@4@00 $Ref)) (!
  (=
    (equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@3@00 _right@4@00)
    (equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@3@00 _right@4@00))
  :pattern ((equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@3@00 _right@4@00))
  :qid |quant-u-338|)))
(assert (forall ((s@$ $Snap) (_left@3@00 $Ref) (_right@4@00 $Ref)) (!
  (equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@3@00 _right@4@00)
  :pattern ((equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@3@00 _right@4@00))
  :qid |quant-u-339|)))
(assert (forall ((s@$ $Snap) (_left@3@00 $Ref) (_right@4@00 $Ref)) (!
  (=>
    (equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@3@00 _right@4@00)
    (=
      (equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@3@00 _right@4@00)
      (=
        (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _left@3@00)
        (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second s@$) _right@4@00))))
  :pattern ((equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@3@00 _right@4@00))
  :qid |quant-u-355|)))
(assert (forall ((s@$ $Snap) (_left@3@00 $Ref) (_right@4@00 $Ref)) (!
  (=>
    (equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@3@00 _right@4@00)
    (and
      (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _left@3@00)
      (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second s@$) _right@4@00)))
  :pattern ((equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@3@00 _right@4@00))
  :qid |quant-u-356|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref)) (!
  (=
    (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@6@00)
    (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@6@00))
  :pattern ((m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@6@00))
  :qid |quant-u-340|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref)) (!
  (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@6@00)
  :pattern ((m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@6@00))
  :qid |quant-u-341|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref)) (!
  (let ((result@7@00 (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@6@00))) (=>
    (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@6@00)
    (and
      (<= 0 result@7@00)
      (=
        result@7@00
        (mirror$m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$__$TY$__Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$<Int> (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _pure_1@6@00))))))
  :pattern ((m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@6@00))
  :qid |quant-u-357|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref)) (!
  (let ((result@7@00 (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@6@00))) true)
  :pattern ((m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@6@00))
  :qid |quant-u-358|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref)) (!
  (let ((result@7@00 (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@6@00))) true)
  :pattern ((m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@6@00))
  :qid |quant-u-359|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref)) (!
  (let ((result@7@00 (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@6@00))) (=>
    (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@6@00)
    (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _pure_1@6@00)))
  :pattern ((m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@6@00))
  :qid |quant-u-360|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref)) (!
  (=>
    (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@6@00)
    (=
      (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@6@00)
      5))
  :pattern ((m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@6@00))
  :qid |quant-u-361|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref)) (!
  true
  :pattern ((m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@6@00))
  :qid |quant-u-362|)))
(assert (forall ((s@$ $Snap) (_left@8@00 $Ref) (_right@9@00 $Ref)) (!
  (=
    (equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@8@00 _right@9@00)
    (equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@8@00 _right@9@00))
  :pattern ((equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@8@00 _right@9@00))
  :qid |quant-u-342|)))
(assert (forall ((s@$ $Snap) (_left@8@00 $Ref) (_right@9@00 $Ref)) (!
  (equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@8@00 _right@9@00)
  :pattern ((equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@8@00 _right@9@00))
  :qid |quant-u-343|)))
(assert (forall ((s@$ $Snap) (_left@8@00 $Ref) (_right@9@00 $Ref)) (!
  (=>
    (equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@8@00 _right@9@00)
    (=
      (equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@8@00 _right@9@00)
      (=
        (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))))
  :pattern ((equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@8@00 _right@9@00))
  :qid |quant-u-363|)))
(assert (forall ((s@$ $Snap) (_left@8@00 $Ref) (_right@9@00 $Ref)) (!
  (=>
    (equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@8@00 _right@9@00)
    (and
      (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@8@00 _right@9@00))
  :qid |quant-u-364|)))
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_bool__$TY$__$bool$%limited s@$)
    (builtin$unreach_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$unreach_bool__$TY$__$bool$ s@$))
  :qid |quant-u-344|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-345|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=
    (not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@12@00 _right@13@00)
    (not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@12@00 _right@13@00))
  :pattern ((not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-346|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@12@00 _right@13@00)
  :pattern ((not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@12@00 _right@13@00))
  :qid |quant-u-347|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@12@00 _right@13@00)
    (=
      (not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@12@00 _right@13@00)
      (not
        (=
          (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))))
  :pattern ((not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-365|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@12@00 _right@13@00)
    (and
      (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((not_equals$__$TY$__ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$ref$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-366|)))
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (=
    (not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@15@00 _right@16@00)
    (not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@15@00 _right@16@00))
  :pattern ((not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@15@00 _right@16@00))
  :qid |quant-u-348|)))
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _left@15@00 _right@16@00)
  :pattern ((not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _left@15@00 _right@16@00))
  :qid |quant-u-349|)))
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@15@00 _right@16@00)
    (=
      (not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@15@00 _right@16@00)
      (not
        (=
          (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap.first s@$) _left@15@00)
          (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_ ($Snap.second s@$) _right@16@00)))))
  :pattern ((not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@15@00 _right@16@00))
  :qid |quant-u-367|)))
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _left@15@00 _right@16@00)
    (and
      (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.first s@$) _left@15@00)
      (snap$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$Snap$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_%precondition ($Snap.second s@$) _right@16@00)))
  :pattern ((not_equals$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _left@15@00 _right@16@00))
  :qid |quant-u-368|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_Dijkstras_algorithm_simpl$$main$opensqu$0$closesqu$ ----------
(declare-const _0@0@01 $Ref)
(declare-const _0@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var __t0: Bool
(declare-const __t0@2@01 Bool)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale true
(declare-const $t@3@01 $Snap)
(assert (= $t@3@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label pre
; [exec]
; label bb0
; [exec]
; __t0 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@7@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@8@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label return
; [exec]
; assert true
; [exec]
; exhale acc(tuple0$(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$find_path$opensqu$0$closesqu$ ----------
(declare-const _0@9@01 $Ref)
(declare-const _0@10@01 $Ref)
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var __t0: Bool
(declare-const __t0@11@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@12@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@13@01 Bool)
; [exec]
; var __t3: Bool
(declare-const __t3@14@01 Bool)
; [exec]
; var __t4: Bool
(declare-const __t4@15@01 Bool)
; [exec]
; var __t5: Bool
(declare-const __t5@16@01 Bool)
; [exec]
; var __t6: Bool
(declare-const __t6@17@01 Bool)
; [exec]
; var _preserve$0: Ref
(declare-const _preserve$0@18@01 $Ref)
; [exec]
; var __t7: Bool
(declare-const __t7@19@01 Bool)
; [exec]
; var __t8: Bool
(declare-const __t8@20@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@21@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@22@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@23@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; __t3 := false
; [exec]
; __t4 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write)
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
(assert (not (= _1@22@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label pre
; [exec]
; label bb0
; [exec]
; __t0 := true
; [exec]
; label loop1_start
; [exec]
; label loop1_group1_bb1
; [exec]
; __t1 := true
; [exec]
; __t5 := true
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | True | live]
; [else-branch: 0 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | True]
; [exec]
; label l1
; [exec]
; label loop1_group2_bb3
; [exec]
; __t2 := true
; [exec]
; __t6 := false
; [exec]
; label loop1_inv_pre
; [exec]
; _preserve$0 := _1.val_ref
(declare-const _preserve$0@28@01 $Ref)
(assert (= _preserve$0@28@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@24@01))))
; [exec]
; assert (unfolding acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in
;     m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes)) >=
;   0
; [eval] (unfolding acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes)) >= 0
; [eval] (unfolding acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes))
(push) ; 4
(assert (m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second $t@24@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@24@01))))
(assert (=
  ($Snap.second $t@24@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@24@01))
    ($Snap.second ($Snap.second $t@24@01)))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@24@01)) $Ref.null)))
; [eval] m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes)
(push) ; 5
; [eval] read$()
(push) ; 6
(assert (read$%precondition $Snap.unit))
(pop) ; 6
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.second $t@24@01))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@24@01)))))
(pop) ; 5
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.second $t@24@01))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@24@01))))))
(pop) ; 4
; Joined path conditions
(assert (and
  (m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second $t@24@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@24@01)))
  (=
    ($Snap.second $t@24@01)
    ($Snap.combine
      ($Snap.first ($Snap.second $t@24@01))
      ($Snap.second ($Snap.second $t@24@01))))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@24@01)) $Ref.null))
  (read$%precondition $Snap.unit)
  (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.second $t@24@01))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@24@01))))))
(set-option :timeout 0)
(push) ; 4
(assert (not (>=
  (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.second ($Snap.second $t@24@01))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@24@01))))
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (>=
  (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.second ($Snap.second $t@24@01))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@24@01))))
  0))
; [exec]
; assert _preserve$0 == _1.val_ref
; [eval] _preserve$0 == _1.val_ref
; [exec]
; exhale acc(_1.val_ref, read$()) &&
;   acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), read$())
; [eval] read$()
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))))
(assert (<= (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.Write))
(assert (=>
  (< $Perm.No (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit))))
  (not (= _1@22@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (= (- (read$ $Snap.unit) ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.No)
  (< (- (read$ $Snap.unit) ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (= (- (read$ $Snap.unit) ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.No)
  (< (- (read$ $Snap.unit) ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; __t7 := builtin$havoc_bool()
(declare-const ret@29@01 Bool)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; __t8 := builtin$havoc_bool()
(declare-const ret@30@01 Bool)
; State saturation: after contract
(check-sat)
; unknown
; [exec]
; __t3 := builtin$havoc_bool()
(declare-const ret@31@01 Bool)
; State saturation: after contract
(check-sat)
; unknown
; [exec]
; __t2 := builtin$havoc_bool()
(declare-const ret@32@01 Bool)
; State saturation: after contract
(check-sat)
; unknown
; [exec]
; __t1 := builtin$havoc_bool()
(declare-const ret@33@01 Bool)
; State saturation: after contract
(check-sat)
; unknown
; [exec]
; _2 := builtin$havoc_ref()
(declare-const ret@34@01 $Ref)
; State saturation: after contract
(check-sat)
; unknown
; [exec]
; label loop1_inv_post
; [exec]
; inhale acc(_1.val_ref, read$()) &&
;   acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), read$())
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
; [eval] read$()
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@36@01 $Ref)
(assert (and
  (=>
    (< $Perm.No (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit))))
    (= $t@36@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@24@01))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@36@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@35@01))))))
(assert (<=
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit))))
(assert (<=
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  (not (= _1@22@01 $Ref.null))))
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@24@01)) $t@36@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@37@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit))))
    (= $t@37@01 ($Snap.second $t@24@01)))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@37@01 ($Snap.second $t@35@01)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _preserve$0 == _1.val_ref
(declare-const $t@38@01 $Snap)
(assert (= $t@38@01 $Snap.unit))
; [eval] _preserve$0 == _1.val_ref
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= _preserve$0@28@01 $t@36@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in
;     m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes) >=
;     0)
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; [eval] (unfolding acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes) >= 0)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@24@01)) $t@36@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
        (read$ $Snap.unit))
      $Perm.Write))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (or
  (=
    (-
      $Perm.Write
      ($Perm.min
        (+
          (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
          (read$ $Snap.unit))
        $Perm.Write))
    $Perm.No)
  (<
    (-
      $Perm.Write
      ($Perm.min
        (+
          (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
          (read$ $Snap.unit))
        $Perm.Write))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_%trigger $t@37@01 $t@36@01))
(assert (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01))))
(assert (not (= $t@36@01 $Ref.null)))
; [eval] m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes) >= 0
; [eval] m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second $t@37@01)
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@37@01))))
(pop) ; 5
; Joined path conditions
(assert (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second $t@37@01)
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@37@01))))
(pop) ; 4
; Joined path conditions
(assert (and
  (m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_%trigger $t@37@01 $t@36@01)
  (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01)))
  (not (= $t@36@01 $Ref.null))
  (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.second $t@37@01)
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@37@01)))))
(assert (>=
  (m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.second $t@37@01)
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@37@01)))
  0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label loop1_group3_bb5
; [exec]
; __t3 := true
; [exec]
; _2 := builtin$havoc_ref()
(declare-const ret@40@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_2), write)
(declare-const $t@41@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label loop1_group4_bb1
; [exec]
; __t1 := true
; [exec]
; __t7 := true
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | True | live]
; [else-branch: 1 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | True]
; [exec]
; label l3
; [exec]
; label loop1_group5_bb3
; [exec]
; __t2 := true
; [exec]
; __t8 := false
; [exec]
; label loop1_end_body
; [exec]
; assert (unfolding acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in
;     m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes)) >=
;   0
; [eval] (unfolding acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes)) >= 0
; [eval] (unfolding acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), write) in m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes))
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@24@01)) $t@36@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
        (read$ $Snap.unit))
      $Perm.Write))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      $Perm.Write
      ($Perm.min
        (+
          (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
          (read$ $Snap.unit))
        $Perm.Write))
    $Perm.No)
  (<
    (-
      $Perm.Write
      ($Perm.min
        (+
          (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
          (read$ $Snap.unit))
        $Perm.Write))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] m_Dijkstras_algorithm_simpl$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$0$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Dijkstras_algorithm_simpl$$VecWrapperNode$opensqu$0$closesqu$$_beg_$_end_$$int$(_1.val_ref.f$nodes)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [eval] read$()
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
; [exec]
; assert _preserve$0 == _1.val_ref
; [eval] _preserve$0 == _1.val_ref
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(_1.val_ref, read$()) &&
;   acc(m_Dijkstras_algorithm_simpl$$Grid$opensqu$0$closesqu$$_beg_$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))))
(assert (<=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (-
      (+
        (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
          (read$ $Snap.unit))
        (read$ $Snap.unit))))
  (not (= _1@22@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 5
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@24@01)) $t@36@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale false
(pop) ; 4
; [eval] !__t7
; [then-branch: 2 | False | dead]
; [else-branch: 2 | True | live]
(push) ; 4
; [else-branch: 2 | True]
(pop) ; 4
(pop) ; 3
; [eval] !__t5
; [then-branch: 3 | False | dead]
; [else-branch: 3 | True | live]
(push) ; 3
; [else-branch: 3 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_ref ----------
(declare-const ret@42@01 $Ref)
(declare-const ret@43@01 $Ref)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_bool ----------
(declare-const ret@44@01 Bool)
(declare-const ret@45@01 Bool)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_int ----------
(declare-const ret@46@01 Int)
(declare-const ret@47@01 Int)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
