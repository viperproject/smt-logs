(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 09:52:45
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
(declare-sort Snap$__TYPARAM__$S$__ 0)
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
(declare-fun $SortWrappers.Snap$__TYPARAM__$S$__To$Snap (Snap$__TYPARAM__$S$__) $Snap)
(declare-fun $SortWrappers.$SnapToSnap$__TYPARAM__$S$__ ($Snap) Snap$__TYPARAM__$S$__)
(assert (forall ((x Snap$__TYPARAM__$S$__)) (!
    (= x ($SortWrappers.$SnapToSnap$__TYPARAM__$S$__($SortWrappers.Snap$__TYPARAM__$S$__To$Snap x)))
    :pattern (($SortWrappers.Snap$__TYPARAM__$S$__To$Snap x))
    :qid |$Snap.$SnapToSnap$__TYPARAM__$S$__To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Snap$__TYPARAM__$S$__To$Snap($SortWrappers.$SnapToSnap$__TYPARAM__$S$__ x)))
    :pattern (($SortWrappers.$SnapToSnap$__TYPARAM__$S$__ x))
    :qid |$Snap.Snap$__TYPARAM__$S$__To$SnapToSnap$__TYPARAM__$S$__|
    )))
; ////////// Symbols
(declare-fun cons$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__<Snap$__TYPARAM__$S$__> ($Ref) Snap$__TYPARAM__$S$__)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ ($Snap $Ref) Snap$__TYPARAM__$S$__)
(declare-fun snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%limited ($Snap $Ref) Snap$__TYPARAM__$S$__)
(declare-fun snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%stateless ($Ref) Bool)
(declare-fun snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition ($Snap $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap $Ref $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun __TYPARAM__$S$__%trigger ($Snap $Ref) Bool)
(declare-fun __TYPARAM__$__HS$__%trigger ($Snap $Ref) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun isize%trigger ($Snap $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$__TYPARAM__$S$__%trigger ($Snap $Ref) Bool)
(declare-fun ref$__TYPARAM__$__HS$__%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$isize$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$u64$m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap $Ref) Bool)
(declare-fun u64%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((_arg_1 $Ref) (_arg_2 $Ref)) (!
  (=>
    (=
      (cons$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__<Snap$__TYPARAM__$S$__> _arg_1)
      (cons$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__<Snap$__TYPARAM__$S$__> _arg_2))
    (= _arg_1 _arg_2))
  :pattern ((cons$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__<Snap$__TYPARAM__$S$__> _arg_1) (cons$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__<Snap$__TYPARAM__$S$__> _arg_2))
  :qid |prog.Snap$__TYPARAM__$S$__$injectivity|)))
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
  :qid |quant-u-409|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-410|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-425|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-426|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-427|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (=
    (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%limited s@$ _arg@1@00)
    (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ s@$ _arg@1@00))
  :pattern ((snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ s@$ _arg@1@00))
  :qid |quant-u-411|)))
(assert (forall ((s@$ $Snap) (_arg@1@00 $Ref)) (!
  (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%stateless _arg@1@00)
  :pattern ((snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%limited s@$ _arg@1@00))
  :qid |quant-u-412|)))
(assert (forall ((s@$ $Snap) (self@3@00 $Ref) (other@4@00 $Ref)) (!
  (=
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$%limited s@$ self@3@00 other@4@00)
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@3@00 other@4@00))
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@3@00 other@4@00))
  :qid |quant-u-413|)))
(assert (forall ((s@$ $Snap) (self@3@00 $Ref) (other@4@00 $Ref)) (!
  (isize$$memory_eq$$__$TY$__isize$isize$$bool$%stateless self@3@00 other@4@00)
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$%limited s@$ self@3@00 other@4@00))
  :qid |quant-u-414|)))
(assert (forall ((s@$ $Snap) (self@3@00 $Ref) (other@4@00 $Ref)) (!
  (=>
    (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition s@$ self@3@00 other@4@00)
    (=
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@3@00 other@4@00)
      (=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@3@00 other@4@00))
  :qid |quant-u-428|)))
(assert (forall ((s@$ $Snap) (self@3@00 $Ref) (other@4@00 $Ref)) (!
  true
  :pattern ((isize$$memory_eq$$__$TY$__isize$isize$$bool$ s@$ self@3@00 other@4@00))
  :qid |quant-u-429|)))
(assert (forall ((s@$ $Snap) (_left@6@00 $Ref) (_right@7@00 $Ref)) (!
  (=
    (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited s@$ _left@6@00 _right@7@00)
    (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@6@00 _right@7@00))
  :pattern ((equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@6@00 _right@7@00))
  :qid |quant-u-415|)))
(assert (forall ((s@$ $Snap) (_left@6@00 $Ref) (_right@7@00 $Ref)) (!
  (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%stateless _left@6@00 _right@7@00)
  :pattern ((equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited s@$ _left@6@00 _right@7@00))
  :qid |quant-u-416|)))
(assert (forall ((s@$ $Snap) (_left@6@00 $Ref) (_right@7@00 $Ref)) (!
  (=>
    (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition s@$ _left@6@00 _right@7@00)
    (=
      (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@6@00 _right@7@00)
      (=
        (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _left@6@00)
        (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _right@7@00))))
  :pattern ((equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@6@00 _right@7@00))
  :qid |quant-u-430|)))
(assert (forall ((s@$ $Snap) (_left@6@00 $Ref) (_right@7@00 $Ref)) (!
  (=>
    (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition s@$ _left@6@00 _right@7@00)
    (and
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _left@6@00)
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _right@7@00)))
  :pattern ((equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@6@00 _right@7@00))
  :qid |quant-u-431|)))
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (=
    (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited s@$ _left@9@00 _right@10@00)
    (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@9@00 _right@10@00))
  :pattern ((equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@9@00 _right@10@00))
  :qid |quant-u-417|)))
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%stateless _left@9@00 _right@10@00)
  :pattern ((equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited s@$ _left@9@00 _right@10@00))
  :qid |quant-u-418|)))
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (=>
    (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition s@$ _left@9@00 _right@10@00)
    (=
      (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@9@00 _right@10@00)
      (=
        (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))))
  :pattern ((equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@9@00 _right@10@00))
  :qid |quant-u-432|)))
(assert (forall ((s@$ $Snap) (_left@9@00 $Ref) (_right@10@00 $Ref)) (!
  (=>
    (equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition s@$ _left@9@00 _right@10@00)
    (and
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@9@00 _right@10@00))
  :qid |quant-u-433|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=
    (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited s@$ _left@12@00 _right@13@00)
    (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@12@00 _right@13@00))
  :pattern ((not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-419|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%stateless _left@12@00 _right@13@00)
  :pattern ((not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%limited s@$ _left@12@00 _right@13@00))
  :qid |quant-u-420|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition s@$ _left@12@00 _right@13@00)
    (=
      (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@12@00 _right@13@00)
      (not
        (=
          (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))))
  :pattern ((not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-434|)))
(assert (forall ((s@$ $Snap) (_left@12@00 $Ref) (_right@13@00 $Ref)) (!
  (=>
    (not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$%precondition s@$ _left@12@00 _right@13@00)
    (and
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((not_equals$__$TY$__ref$__TYPARAM__$S$__$ref$__TYPARAM__$S$__$$bool$ s@$ _left@12@00 _right@13@00))
  :qid |quant-u-435|)))
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (=
    (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited s@$ _left@15@00 _right@16@00)
    (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@15@00 _right@16@00))
  :pattern ((not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@15@00 _right@16@00))
  :qid |quant-u-421|)))
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%stateless _left@15@00 _right@16@00)
  :pattern ((not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%limited s@$ _left@15@00 _right@16@00))
  :qid |quant-u-422|)))
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (=>
    (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition s@$ _left@15@00 _right@16@00)
    (=
      (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@15@00 _right@16@00)
      (not
        (=
          (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _left@15@00)
          (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__ $Snap.unit _right@16@00)))))
  :pattern ((not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@15@00 _right@16@00))
  :qid |quant-u-436|)))
(assert (forall ((s@$ $Snap) (_left@15@00 $Ref) (_right@16@00 $Ref)) (!
  (=>
    (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition s@$ _left@15@00 _right@16@00)
    (and
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _left@15@00)
      (snap$__$TY$____TYPARAM__$S$__$Snap$__TYPARAM__$S$__%precondition $Snap.unit _right@16@00)))
  :pattern ((not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ s@$ _left@15@00 _right@16@00))
  :qid |quant-u-437|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (=
    (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%limited s@$ self@18@00 other@19@00)
    (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@18@00 other@19@00))
  :pattern ((m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@18@00 other@19@00))
  :qid |quant-u-423|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%stateless self@18@00 other@19@00)
  :pattern ((m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%limited s@$ self@18@00 other@19@00))
  :qid |quant-u-424|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (=>
    (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition s@$ self@18@00 other@19@00)
    (=
      (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@18@00 other@19@00)
      (and
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first s@$)))
          ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
        (and
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))))))
  :pattern ((m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@18@00 other@19@00))
  :pattern ((m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%stateless self@18@00 other@19@00) (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger ($Snap.first s@$) self@18@00))
  :qid |quant-u-438|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (=>
    (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition s@$ self@18@00 other@19@00)
    (and
      (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first s@$)))
        ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
      (=>
        (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first s@$)))
          ($Snap.first ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))
        (and
          (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
          (=>
            (isize$$memory_eq$$__$TY$__isize$isize$$bool$ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))))
            (isize$$memory_eq$$__$TY$__isize$isize$$bool$%precondition ($Snap.combine
              ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
              ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))))))
  :pattern ((m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ s@$ self@18@00 other@19@00))
  :qid |quant-u-439|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_348_cgmath_point$$main$opensqu$0$closesqu$ ----------
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
; ---------- m_348_cgmath_point$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$7$closesqu$$$assert_receiver_is_total_eq$opensqu$0$closesqu$ ----------
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
; var _old$pre$0: Ref
(declare-const _old$pre$0@12@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@13@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(assert (not (= _1@13@01 $Ref.null)))
; [eval] read$()
(push) ; 3
(assert (read$%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@15@01 $Snap)
(assert (= $t@15@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 $Snap.unit))
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
(declare-const ret@18@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@19@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label return
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@20@01 $Ref)
(assert (= _old$pre$0@20@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@01))))
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@01)) _old$pre$0@20@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(tuple0$(_0), write)
; [exec]
; label end_of_method
(pop) ; 2
(pop) ; 1
; ---------- m_348_cgmath_point$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$div$opensqu$0$closesqu$ ----------
(declare-const _0@21@01 $Ref)
(declare-const _0@22@01 $Ref)
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
(declare-const __t0@23@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@24@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@25@01 Bool)
; [exec]
; var __t3: Bool
(declare-const __t3@26@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@27@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@28@01 $Ref)
; [exec]
; var _3: Int
(declare-const _3@29@01 Int)
; [exec]
; var _4: Ref
(declare-const _4@30@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@31@01 $Ref)
; [exec]
; var _6: Ref
(declare-const _6@32@01 $Ref)
; [exec]
; var _7: Ref
(declare-const _7@33@01 $Ref)
; [exec]
; var _8: Ref
(declare-const _8@34@01 $Ref)
; [exec]
; var _9: Int
(declare-const _9@35@01 Int)
; [exec]
; var _10: Int
(declare-const _10@36@01 Int)
; [exec]
; var _11: Ref
(declare-const _11@37@01 $Ref)
; [exec]
; label start
; [exec]
; __t0 := false
; [exec]
; __t1 := false
; [exec]
; __t2 := false
; [exec]
; inhale acc(u64(_1), write) &&
;   acc(m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_(_2), write)
(declare-const $t@38@01 $Snap)
(assert (= $t@38@01 ($Snap.combine ($Snap.first $t@38@01) ($Snap.second $t@38@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 $Snap.unit))
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
; _6 := builtin$havoc_ref()
(declare-const ret@42@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.val_int, write)
(declare-const $t@43@01 Int)
(assert (not (= ret@42@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(u64(_1), write)
(assert (=
  ($Snap.first $t@38@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@38@01))
    ($Snap.second ($Snap.first $t@38@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@42@01 _1@27@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@27@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first $t@38@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@38@01)))
    ($Snap.second ($Snap.second ($Snap.first $t@38@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first $t@38@01))) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))))
(assert (= ($Snap.second ($Snap.second ($Snap.first $t@38@01))) $Snap.unit))
; [eval] self.val_int <= 18446744073709551615
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))
  18446744073709551615))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u64%trigger ($Snap.first $t@38@01) _1@27@01))
; [exec]
; _6.val_int := _1.val_int
(declare-const val_int@44@01 Int)
(assert (= val_int@44@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@27@01 ret@42@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _7 := _2
; [exec]
; label l1
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@45@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple2$u64$m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_(_5), write)
(declare-const $t@46@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(tuple2$u64$m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_(_5), write)
(assert (= $t@46@01 ($Snap.combine ($Snap.first $t@46@01) ($Snap.second $t@46@01))))
(assert (not (= ret@45@01 $Ref.null)))
(assert (=
  ($Snap.second $t@46@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@46@01))
    ($Snap.second ($Snap.second $t@46@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@46@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@46@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  _2@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@46@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (tuple2$u64$m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_%trigger $t@46@01 ret@45@01))
; [exec]
; _5.tuple_0 := _6
; [exec]
; label l2
; [exec]
; _5.tuple_1 := _7
; [exec]
; label l3
; [exec]
; _3 := builtin$havoc_int()
(declare-const ret@47@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _3 := _5.tuple_0.val_int
; [exec]
; label l4
; [exec]
; _4 := _5.tuple_1
; [exec]
; label l5
; [exec]
; _9 := builtin$havoc_int()
(declare-const ret@49@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _9 := _3
; [exec]
; label l6
; [exec]
; _10 := builtin$havoc_int()
(declare-const ret@51@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_(_4), write)
(assert (=
  ($Snap.second $t@38@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@38@01))
    ($Snap.second ($Snap.second $t@38@01)))))
(assert (not (= _2@28@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@46@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_348_cgmath_point$$Vector1$opensqu$0$closesqu$$_beg_$u64$_end_%trigger ($Snap.second $t@38@01) _2@28@01))
; [exec]
; unfold acc(u64(_4.f$x), write)
(assert (=
  ($Snap.second ($Snap.second $t@38@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@38@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@38@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@42@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@27@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@38@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@38@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@38@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@38@01))))
  $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@38@01))))
  $Snap.unit))
; [eval] self.val_int <= 18446744073709551615
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))
  18446744073709551615))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (u64%trigger ($Snap.second ($Snap.second $t@38@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01)))))
; [exec]
; _10 := _4.f$x.val_int
(declare-const _10@53@01 Int)
(assert (=
  _10@53@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))))
; [exec]
; label l7
; [exec]
; _11 := builtin$havoc_ref()
(declare-const ret@54@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_11.val_bool, write)
(declare-const $t@55@01 Bool)
(assert (not (= ret@54@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _11.val_bool := _10 == 0
; [eval] _10 == 0
(declare-const val_bool@56@01 Bool)
(assert (= val_bool@56@01 (= _10@53@01 0)))
; [exec]
; __t3 := _11.val_bool
; [exec]
; assert !__t3
; [eval] !__t3
(set-option :timeout 0)
(push) ; 3
(assert (not (not val_bool@56@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))) ret@42@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@42@01 _1@27@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))) _1@27@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))
    val_int@44@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@44@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@44@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))
    val_int@44@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= _1@27@01 ret@42@01))
    (not
      (=
        _1@27@01
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))))))
  (and
    (not (= ret@42@01 _1@27@01))
    (not
      (=
        ret@42@01
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))))))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01)))
        _1@27@01))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01)))
        ret@42@01)))))
; [eval] !__t3
(set-option :timeout 0)
(push) ; 3
(assert (not (not val_bool@56@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))) ret@42@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@42@01 _1@27@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))) _1@27@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))
    val_int@44@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@44@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@44@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))
    val_int@44@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= _1@27@01 ret@42@01))
    (not
      (=
        _1@27@01
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))))))
  (and
    (not (= ret@42@01 _1@27@01))
    (not
      (=
        ret@42@01
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))))))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01)))
        _1@27@01))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01)))
        ret@42@01)))))
; [eval] !__t3
(set-option :timeout 0)
(push) ; 3
(assert (not (not val_bool@56@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))) ret@42@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@42@01 _1@27@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))) _1@27@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))
    val_int@44@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@44@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@44@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@38@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@38@01))))
    val_int@44@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= _1@27@01 ret@42@01))
    (not
      (=
        _1@27@01
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))))))
  (and
    (not (= ret@42@01 _1@27@01))
    (not
      (=
        ret@42@01
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01))))))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01)))
        _1@27@01))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@38@01)))
        ret@42@01)))))
; [eval] !__t3
(set-option :timeout 0)
(push) ; 3
(assert (not (not val_bool@56@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- m_348_cgmath_point$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$8$closesqu$$$eq$opensqu$0$closesqu$ ----------
(declare-const _0@57@01 $Ref)
(declare-const _0@58@01 $Ref)
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
(declare-const __t0@59@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@60@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@61@01 Bool)
; [exec]
; var __t3: Bool
(declare-const __t3@62@01 Bool)
; [exec]
; var __t4: Bool
(declare-const __t4@63@01 Bool)
; [exec]
; var __t5: Bool
(declare-const __t5@64@01 Bool)
; [exec]
; var __t6: Bool
(declare-const __t6@65@01 Bool)
; [exec]
; var __t7: Bool
(declare-const __t7@66@01 Bool)
; [exec]
; var __t8: Bool
(declare-const __t8@67@01 Bool)
; [exec]
; var __t9: Bool
(declare-const __t9@68@01 Bool)
; [exec]
; var __t10: Bool
(declare-const __t10@69@01 Bool)
; [exec]
; var __t11: Bool
(declare-const __t11@70@01 Bool)
; [exec]
; var __t12: Bool
(declare-const __t12@71@01 Bool)
; [exec]
; var __t13: Bool
(declare-const __t13@72@01 Bool)
; [exec]
; var __t14: Bool
(declare-const __t14@73@01 Bool)
; [exec]
; var __t15: Bool
(declare-const __t15@74@01 Bool)
; [exec]
; var __t16: Bool
(declare-const __t16@75@01 Bool)
; [exec]
; var __t17: Bool
(declare-const __t17@76@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@77@01 $Ref)
; [exec]
; var _old$pre$1: Ref
(declare-const _old$pre$1@78@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@79@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@80@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@81@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@82@01 $Ref)
; [exec]
; var _6: Ref
(declare-const _6@83@01 $Ref)
; [exec]
; var _7: Ref
(declare-const _7@84@01 $Ref)
; [exec]
; var _9: Ref
(declare-const _9@85@01 $Ref)
; [exec]
; var _10: Ref
(declare-const _10@86@01 $Ref)
; [exec]
; var _11: Ref
(declare-const _11@87@01 $Ref)
; [exec]
; var _12: Ref
(declare-const _12@88@01 $Ref)
; [exec]
; var _13: Ref
(declare-const _13@89@01 $Ref)
; [exec]
; var _14: Ref
(declare-const _14@90@01 $Ref)
; [exec]
; var _15: Ref
(declare-const _15@91@01 $Ref)
; [exec]
; var _16: Ref
(declare-const _16@92@01 $Ref)
; [exec]
; var _17: Ref
(declare-const _17@93@01 $Ref)
; [exec]
; var _18: Ref
(declare-const _18@94@01 $Ref)
; [exec]
; var _19: Ref
(declare-const _19@95@01 $Ref)
; [exec]
; var _20: Ref
(declare-const _20@96@01 $Ref)
; [exec]
; var _21: Ref
(declare-const _21@97@01 $Ref)
; [exec]
; var _22: Ref
(declare-const _22@98@01 $Ref)
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
; __t5 := false
; [exec]
; __t6 := false
; [exec]
; __t7 := false
; [exec]
; __t8 := false
; [exec]
; __t9 := false
; [exec]
; __t10 := false
; [exec]
; __t11 := false
; [exec]
; __t12 := false
; [exec]
; __t13 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   (acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$()) &&
;   (acc(_2.val_ref, write) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())))
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 ($Snap.combine ($Snap.first $t@99@01) ($Snap.second $t@99@01))))
(assert (not (= _1@79@01 $Ref.null)))
(assert (=
  ($Snap.second $t@99@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@99@01))
    ($Snap.second ($Snap.second $t@99@01)))))
; [eval] read$()
(push) ; 3
(assert (read$%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=
  ($Snap.second ($Snap.second $t@99@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@99@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@79@01 _2@80@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@80@01 $Ref.null)))
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 $Snap.unit))
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
; _4 := builtin$havoc_ref()
(declare-const ret@103@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_4.val_ref, write)
(declare-const $t@104@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@103@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@103@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@103@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _4.val_ref := _2.val_ref
(declare-const val_ref@105@01 $Ref)
(assert (=
  val_ref@105@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@103@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@103@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_4.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@106@01 $Snap)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  val_ref@105@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@107@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@107@01 ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@107@01 $t@106@01))))
(assert (<= $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
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
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_4.val_ref), read$())
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
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  val_ref@105@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb3
; [exec]
; __t1 := true
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@108@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_ref, write)
(declare-const $t@109@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@108@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@108@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@108@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@108@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (<= (read$ $Snap.unit) $Perm.Write))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
      $Ref.null))))
(assert (=
  ($Snap.second $t@107@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@107@01))
    ($Snap.second ($Snap.second $t@107@01)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@107@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@107@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger $t@107@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))))
; [exec]
; _5.val_ref := _2.val_ref.f$x
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@110@01 $Ref)
(assert (= val_ref@110@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@108@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@108@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@108@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_5.val_ref), read$())
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
(declare-const $t@111@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@110@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@112@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@112@01 ($Snap.first ($Snap.second $t@107@01))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@112@01 $t@111@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; _6 := builtin$havoc_ref()
(declare-const ret@113@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.val_ref, write)
(declare-const $t@114@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@113@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@113@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@113@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@113@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@113@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _6.val_ref := _2.val_ref.f$y
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@115@01 $Ref)
(assert (=
  val_ref@115@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@113@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@113@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@113@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@113@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_6.val_ref), read$())
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
(declare-const $t@116@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@115@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@117@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@117@01
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@117@01 $t@116@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l2
; [exec]
; _7 := builtin$havoc_ref()
(declare-const ret@118@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_7.val_ref, write)
(declare-const $t@119@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@118@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@118@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@118@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@118@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@118@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@118@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _7.val_ref := _2.val_ref.f$z
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@120@01 $Ref)
(assert (=
  val_ref@120@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@118@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@118@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@118@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@118@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@118@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_7.val_ref), read$())
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
(declare-const $t@121@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@120@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@120@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@120@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@122@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@122@01
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@122@01 $t@121@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; _9 := builtin$havoc_ref()
(declare-const ret@123@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_9.val_ref, write)
(declare-const $t@124@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@123@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _9.val_ref := _1.val_ref
(declare-const val_ref@125@01 $Ref)
(assert (= val_ref@125@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@123@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_9.val_ref), read$())
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
(declare-const $t@126@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01)) val_ref@125@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@127@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@127@01 ($Snap.first ($Snap.second $t@99@01))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@127@01 $t@126@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l4
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
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_9.val_ref), read$())
; [eval] read$()
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
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01)) val_ref@125@01)))
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
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
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
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb5
; [exec]
; __t2 := true
; [exec]
; _10 := builtin$havoc_ref()
(declare-const ret@128@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_10.val_ref, write)
(declare-const $t@129@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@128@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
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
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (= $t@127@01 ($Snap.combine ($Snap.first $t@127@01) ($Snap.second $t@127@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01)) $Ref.null))))
(assert (=
  ($Snap.second $t@127@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@127@01))
    ($Snap.second ($Snap.second $t@127@01)))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@127@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@127@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@127@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@127@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger $t@127@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))))
; [exec]
; _10.val_ref := _1.val_ref.f$x
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@130@01 $Ref)
(assert (= val_ref@130@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@128@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_10.val_ref), read$())
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
(declare-const $t@131@01 $Snap)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@130@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@130@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@130@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@132@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@132@01 ($Snap.first ($Snap.second $t@127@01))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@132@01 $t@131@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; _11 := builtin$havoc_ref()
(declare-const ret@133@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_11.val_ref, write)
(declare-const $t@134@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@133@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _11.val_ref := _1.val_ref.f$y
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@135@01 $Ref)
(assert (=
  val_ref@135@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_11.val_ref), read$())
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
(declare-const $t@136@01 $Snap)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@135@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@135@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@135@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@137@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@137@01
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@137@01 $t@136@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l6
; [exec]
; _12 := builtin$havoc_ref()
(declare-const ret@138@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_12.val_ref, write)
(declare-const $t@139@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@138@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _12.val_ref := _1.val_ref.f$z
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@140@01 $Ref)
(assert (=
  val_ref@140@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@138@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_12.val_ref), read$())
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
(declare-const $t@141@01 $Snap)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@140@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@140@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@140@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@142@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@142@01
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@142@01 $t@141@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l7
; [exec]
; _15 := builtin$havoc_ref()
(declare-const ret@143@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_15.val_ref, write)
(declare-const $t@144@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@143@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _15.val_ref := _10.val_ref
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_15.val_ref), read$())
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
(declare-const $t@145@01 $Snap)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@130@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@130@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@130@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@146@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@146@01 $t@132@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@146@01 $t@145@01))))
(assert (<= $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l8
; [exec]
; _16 := builtin$havoc_ref()
(declare-const ret@147@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_16.val_ref, write)
(declare-const $t@148@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@143@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@147@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _16.val_ref := _5.val_ref
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@143@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@147@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_16.val_ref), read$())
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
(declare-const $t@149@01 $Snap)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@110@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@150@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@150@01 $t@112@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@150@01 $t@149@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l9
; [exec]
; label l10
; [exec]
; _14 := builtin$havoc_ref()
(declare-const ret@151@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(bool(_14), write)
(declare-const $t@152@01 Bool)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(bool(_14), write)
(assert (not (= ret@151@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (bool%trigger ($SortWrappers.BoolTo$Snap $t@152@01) ret@151@01))
; [exec]
; inhale _14.val_bool ==
;   equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_15.val_ref, _16.val_ref)
(declare-const $t@153@01 $Snap)
(assert (= $t@153@01 $Snap.unit))
; [eval] _14.val_bool == equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_15.val_ref, _16.val_ref)
; [eval] equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_15.val_ref, _16.val_ref)
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
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@130@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@130@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@110@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
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
(assert (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@146@01
  $t@150@01) val_ref@130@01 val_ref@110@01))
(pop) ; 5
; Joined path conditions
(assert (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@146@01
  $t@150@01) val_ref@130@01 val_ref@110@01))
(assert (=
  $t@152@01
  (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ ($Snap.combine
    $t@146@01
    $t@150@01) val_ref@130@01 val_ref@110@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l11
; [eval] __t2 && __t2
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | False | live]
; [else-branch: 2 | True | live]
(push) ; 6
; [then-branch: 2 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 2 | True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | True | live]
; [else-branch: 3 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 3 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l9](_16.val_ref)), read$())
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
; [eval] old[l9](_16.val_ref)
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@110@01)))
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
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] __t2 && __t2
(push) ; 6
; [then-branch: 4 | False | live]
; [else-branch: 4 | True | live]
(push) ; 7
; [then-branch: 4 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 4 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | True | live]
; [else-branch: 5 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 5 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l8](_15.val_ref)), read$())
; [eval] read$()
(push) ; 7
(pop) ; 7
; Joined path conditions
; [eval] old[l8](_15.val_ref)
(push) ; 7
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@130@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] __t2 && (__t2 && __t2)
(push) ; 7
; [then-branch: 6 | False | live]
; [else-branch: 6 | True | live]
(push) ; 8
; [then-branch: 6 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 6 | True]
(push) ; 9
; [then-branch: 7 | False | live]
; [else-branch: 7 | True | live]
(push) ; 10
; [then-branch: 7 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 7 | True]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | True | live]
; [else-branch: 8 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 8 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_10.val_ref), read$())
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@130@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@130@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@130@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@130@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@130@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@130@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 8
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t2 && __t2)
(push) ; 8
; [then-branch: 9 | False | live]
; [else-branch: 9 | True | live]
(push) ; 9
; [then-branch: 9 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 9 | True]
(push) ; 10
; [then-branch: 10 | False | live]
; [else-branch: 10 | True | live]
(push) ; 11
; [then-branch: 10 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 10 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | True | live]
; [else-branch: 11 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 11 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_5.val_ref), read$())
; [eval] read$()
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@110@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@110@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb14
; [exec]
; __t3 := true
; [exec]
; __t14 := _14.val_bool
; [eval] !__t14
(push) ; 9
(set-option :timeout 10)
(assert (not $t@152@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not $t@152@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | !($t@152@01) | live]
; [else-branch: 12 | $t@152@01 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 12 | !($t@152@01)]
(assert (not $t@152@01))
; [exec]
; label l13
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | True | live]
; [else-branch: 13 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 13 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_11.val_ref), read$())
; [eval] read$()
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@135@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@135@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | True | live]
; [else-branch: 14 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 14 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_6.val_ref), read$())
; [eval] read$()
(push) ; 12
(pop) ; 12
; Joined path conditions
(push) ; 12
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@115@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb11
; [exec]
; __t7 := true
; [exec]
; _13 := builtin$havoc_ref()
(declare-const ret@154@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.val_bool, write)
(declare-const $t@155@01 Bool)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@154@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@154@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _13.val_bool := false
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@154@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb13
; [exec]
; __t8 := true
; [exec]
; __t16 := _13.val_bool
; [eval] !__t16
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | True | live]
; [else-branch: 15 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 15 | True]
; [exec]
; label l21
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | True | live]
; [else-branch: 16 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 16 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_12.val_ref), read$())
; [eval] read$()
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@140@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | True | live]
; [else-branch: 17 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 17 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_7.val_ref), read$())
; [eval] read$()
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@120@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb7
; [exec]
; __t12 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@156@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_bool, write)
(declare-const $t@157@01 Bool)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@154@01 ret@156@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@156@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@156@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_bool := false
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@154@01 ret@156@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@156@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb9
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@127@01)
  ($Snap.combine
    $t@146@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@127@01)))
      ($Snap.combine
        $t@137@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))
          $t@142@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@158@01 $Ref)
(assert (= _old$pre$0@158@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))))
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@107@01)
  ($Snap.combine
    $t@150@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
      ($Snap.combine
        $t@117@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
          $t@122@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))))
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01)))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@159@01 $Ref)
(assert (=
  _old$pre$1@159@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))))
; [exec]
; fold acc(bool(_0), write)
(assert (bool%trigger ($SortWrappers.BoolTo$Snap false) ret@156@01))
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$()) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$1), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  _old$pre$0@158@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01)) _old$pre$0@158@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  _old$pre$1@159@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(bool(_0), write)
; [exec]
; label end_of_method
(pop) ; 14
; [eval] !__t1
; [then-branch: 18 | False | dead]
; [else-branch: 18 | True | live]
(set-option :timeout 0)
(push) ; 14
; [else-branch: 18 | True]
(pop) ; 14
(pop) ; 13
; [eval] !__t2
; [then-branch: 19 | False | dead]
; [else-branch: 19 | True | live]
(push) ; 13
; [else-branch: 19 | True]
(pop) ; 13
(pop) ; 12
; [eval] !!__t16
; [eval] !__t16
; [then-branch: 20 | False | dead]
; [else-branch: 20 | True | live]
(push) ; 12
; [else-branch: 20 | True]
(pop) ; 12
(pop) ; 11
; [eval] !__t1
; [then-branch: 21 | False | dead]
; [else-branch: 21 | True | live]
(push) ; 11
; [else-branch: 21 | True]
(pop) ; 11
(pop) ; 10
; [eval] !__t2
; [then-branch: 22 | False | dead]
; [else-branch: 22 | True | live]
(push) ; 10
; [else-branch: 22 | True]
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 12 | $t@152@01]
(assert $t@152@01)
(pop) ; 9
; [eval] !!__t14
; [eval] !__t14
(push) ; 9
(set-option :timeout 10)
(assert (not (not $t@152@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not $t@152@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | $t@152@01 | live]
; [else-branch: 23 | !($t@152@01) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 23 | $t@152@01]
(assert $t@152@01)
; [exec]
; label l12
; [exec]
; label bb12
; [exec]
; __t4 := true
; [exec]
; _18 := builtin$havoc_ref()
(declare-const ret@160@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_18.val_ref, write)
(declare-const $t@161@01 $Ref)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@147@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@143@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@160@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _18.val_ref := _11.val_ref
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@147@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@143@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@160@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_18.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@162@01 $Snap)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@135@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@135@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@163@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@163@01 $t@137@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@163@01 $t@162@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l14
; [exec]
; _19 := builtin$havoc_ref()
(declare-const ret@164@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_19.val_ref, write)
(declare-const $t@165@01 $Ref)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@160@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@147@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@143@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@164@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _19.val_ref := _6.val_ref
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@160@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@147@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@143@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@164@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_19.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@166@01 $Snap)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@115@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@167@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@167@01 $t@117@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@167@01 $t@166@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l15
; [exec]
; label l16
; [exec]
; _17 := builtin$havoc_ref()
(declare-const ret@168@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(bool(_17), write)
(declare-const $t@169@01 Bool)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(bool(_17), write)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@168@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@168@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (bool%trigger ($SortWrappers.BoolTo$Snap $t@169@01) ret@168@01))
; [exec]
; inhale _17.val_bool ==
;   equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_18.val_ref, _19.val_ref)
(declare-const $t@170@01 $Snap)
(assert (= $t@170@01 $Snap.unit))
; [eval] _17.val_bool == equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_18.val_ref, _19.val_ref)
; [eval] equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_18.val_ref, _19.val_ref)
(set-option :timeout 0)
(push) ; 10
; [eval] read$()
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@135@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@135@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@115@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@163@01
  $t@167@01) val_ref@135@01 val_ref@115@01))
(pop) ; 10
; Joined path conditions
(assert (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@163@01
  $t@167@01) val_ref@135@01 val_ref@115@01))
(assert (=
  $t@169@01
  (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ ($Snap.combine
    $t@163@01
    $t@167@01) val_ref@135@01 val_ref@115@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l17
; [eval] __t4 && __t4
(set-option :timeout 0)
(push) ; 10
; [then-branch: 24 | False | live]
; [else-branch: 24 | True | live]
(push) ; 11
; [then-branch: 24 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 24 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | True | live]
; [else-branch: 25 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 25 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l15](_19.val_ref)), read$())
; [eval] read$()
(push) ; 11
(pop) ; 11
; Joined path conditions
; [eval] old[l15](_19.val_ref)
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@115@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] __t4 && __t4
(push) ; 11
; [then-branch: 26 | False | live]
; [else-branch: 26 | True | live]
(push) ; 12
; [then-branch: 26 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 26 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | True | live]
; [else-branch: 27 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 27 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l14](_18.val_ref)), read$())
; [eval] read$()
(push) ; 12
(pop) ; 12
; Joined path conditions
; [eval] old[l14](_18.val_ref)
(push) ; 12
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@135@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] __t2 && (__t4 && __t4)
(push) ; 12
; [then-branch: 28 | False | live]
; [else-branch: 28 | True | live]
(push) ; 13
; [then-branch: 28 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 28 | True]
(push) ; 14
; [then-branch: 29 | False | live]
; [else-branch: 29 | True | live]
(push) ; 15
; [then-branch: 29 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 29 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | True | live]
; [else-branch: 30 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 30 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_11.val_ref), read$())
; [eval] read$()
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@135@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@135@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@135@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@135@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@135@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@135@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t4 && __t4)
(push) ; 13
; [then-branch: 31 | False | live]
; [else-branch: 31 | True | live]
(push) ; 14
; [then-branch: 31 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 31 | True]
(push) ; 15
; [then-branch: 32 | False | live]
; [else-branch: 32 | True | live]
(push) ; 16
; [then-branch: 32 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 32 | True]
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | True | live]
; [else-branch: 33 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 33 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_6.val_ref), read$())
; [eval] read$()
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@115@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@115@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb15
; [exec]
; __t5 := true
; [exec]
; __t15 := _17.val_bool
; [eval] !__t15
(push) ; 14
(set-option :timeout 10)
(assert (not $t@169@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not $t@169@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | !($t@169@01) | live]
; [else-branch: 34 | $t@169@01 | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 34 | !($t@169@01)]
(assert (not $t@169@01))
; [exec]
; label l19
; [exec]
; label l28
; [exec]
; label bb11
; [exec]
; __t7 := true
; [exec]
; _13 := builtin$havoc_ref()
(declare-const ret@171@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.val_bool, write)
(declare-const $t@172@01 Bool)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@171@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@171@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@171@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _13.val_bool := false
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@171@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@171@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb13
; [exec]
; __t8 := true
; [exec]
; __t16 := _13.val_bool
; [eval] !__t16
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | True | live]
; [else-branch: 35 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 35 | True]
; [exec]
; label l21
(push) ; 16
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | True | live]
; [else-branch: 36 | False | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 36 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_12.val_ref), read$())
; [eval] read$()
(push) ; 17
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@140@01)))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | True | live]
; [else-branch: 37 | False | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 37 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_7.val_ref), read$())
; [eval] read$()
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@120@01)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb7
; [exec]
; __t12 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@173@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_bool, write)
(declare-const $t@174@01 Bool)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@171@01 ret@173@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@173@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@173@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@173@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_bool := false
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@171@01 ret@173@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@173@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@173@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb9
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@127@01)
  ($Snap.combine
    $t@146@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@127@01)))
      ($Snap.combine
        $t@163@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))
          $t@142@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@175@01 $Ref)
(assert (= _old$pre$0@175@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))))
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@107@01)
  ($Snap.combine
    $t@150@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
      ($Snap.combine
        $t@167@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
          $t@122@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))))
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01)))))))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@176@01 $Ref)
(assert (=
  _old$pre$1@176@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))))
; [exec]
; fold acc(bool(_0), write)
(assert (bool%trigger ($SortWrappers.BoolTo$Snap false) ret@173@01))
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$()) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$1), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  _old$pre$0@175@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01)) _old$pre$0@175@01)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  _old$pre$1@176@01)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(bool(_0), write)
; [exec]
; label end_of_method
(pop) ; 17
; [eval] !__t1
; [then-branch: 38 | False | dead]
; [else-branch: 38 | True | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 38 | True]
(pop) ; 17
(pop) ; 16
; [eval] !__t2
; [then-branch: 39 | False | dead]
; [else-branch: 39 | True | live]
(push) ; 16
; [else-branch: 39 | True]
(pop) ; 16
(pop) ; 15
; [eval] !!__t16
; [eval] !__t16
; [then-branch: 40 | False | dead]
; [else-branch: 40 | True | live]
(push) ; 15
; [else-branch: 40 | True]
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 34 | $t@169@01]
(assert $t@169@01)
(pop) ; 14
; [eval] !!__t15
; [eval] !__t15
(push) ; 14
(set-option :timeout 10)
(assert (not (not $t@169@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not $t@169@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | $t@169@01 | live]
; [else-branch: 41 | !($t@169@01) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 41 | $t@169@01]
(assert $t@169@01)
; [exec]
; label l18
; [exec]
; label bb10
; [exec]
; __t6 := true
; [exec]
; _13 := builtin$havoc_ref()
(declare-const ret@177@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.val_bool, write)
(declare-const $t@178@01 Bool)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@177@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@177@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@177@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _13.val_bool := true
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@177@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@177@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l29
; [exec]
; label bb13
; [exec]
; __t8 := true
; [exec]
; __t16 := _13.val_bool
; [eval] !__t16
; [then-branch: 42 | False | dead]
; [else-branch: 42 | True | live]
(set-option :timeout 0)
(push) ; 15
; [else-branch: 42 | True]
(pop) ; 15
; [eval] !!__t16
; [eval] !__t16
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | True | live]
; [else-branch: 43 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 43 | True]
; [exec]
; label l20
; [exec]
; label bb8
; [exec]
; __t9 := true
; [exec]
; _21 := builtin$havoc_ref()
(declare-const ret@179@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_21.val_ref, write)
(declare-const $t@180@01 $Ref)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@164@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@160@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@147@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@143@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@179@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _21.val_ref := _12.val_ref
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@164@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@160@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@147@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@143@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@179@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_21.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(declare-const $t@181@01 $Snap)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@140@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(declare-const $t@182@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@182@01 $t@142@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@182@01 $t@181@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l22
; [exec]
; _22 := builtin$havoc_ref()
(declare-const ret@183@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_22.val_ref, write)
(declare-const $t@184@01 $Ref)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@179@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@164@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@160@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@147@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@143@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@183@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _22.val_ref := _7.val_ref
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@179@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@164@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@160@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@147@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@143@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@138@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@133@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@128@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@123@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@118@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@113@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@108@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@103@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _2@80@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _1@79@01 ret@183@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_22.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(declare-const $t@185@01 $Snap)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@120@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@120@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(declare-const $t@186@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@186@01 $t@122@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@186@01 $t@185@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l23
; [exec]
; label l24
; [exec]
; _20 := builtin$havoc_ref()
(declare-const ret@187@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(bool(_20), write)
(declare-const $t@188@01 Bool)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(bool(_20), write)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@177@01 ret@187@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@187@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@187@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@187@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (bool%trigger ($SortWrappers.BoolTo$Snap $t@188@01) ret@187@01))
; [exec]
; inhale _20.val_bool ==
;   equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_21.val_ref, _22.val_ref)
(declare-const $t@189@01 $Snap)
(assert (= $t@189@01 $Snap.unit))
; [eval] _20.val_bool == equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_21.val_ref, _22.val_ref)
; [eval] equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_21.val_ref, _22.val_ref)
(set-option :timeout 0)
(push) ; 16
; [eval] read$()
(push) ; 17
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@140@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@140@01)))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 17
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@120@01)))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@182@01
  $t@186@01) val_ref@140@01 val_ref@120@01))
(pop) ; 16
; Joined path conditions
(assert (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@182@01
  $t@186@01) val_ref@140@01 val_ref@120@01))
(assert (=
  $t@188@01
  (equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ ($Snap.combine
    $t@182@01
    $t@186@01) val_ref@140@01 val_ref@120@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l25
; [eval] __t9 && __t9
(set-option :timeout 0)
(push) ; 16
; [then-branch: 44 | False | live]
; [else-branch: 44 | True | live]
(push) ; 17
; [then-branch: 44 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 44 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | True | live]
; [else-branch: 45 | False | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 45 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l23](_22.val_ref)), read$())
; [eval] read$()
(push) ; 17
(pop) ; 17
; Joined path conditions
; [eval] old[l23](_22.val_ref)
(push) ; 17
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@120@01)))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [eval] __t9 && __t9
(push) ; 17
; [then-branch: 46 | False | live]
; [else-branch: 46 | True | live]
(push) ; 18
; [then-branch: 46 | False]
(assert false)
(pop) ; 18
(push) ; 18
; [else-branch: 46 | True]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 47 | True | live]
; [else-branch: 47 | False | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 47 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l22](_21.val_ref)), read$())
; [eval] read$()
(push) ; 18
(pop) ; 18
; Joined path conditions
; [eval] old[l22](_21.val_ref)
(push) ; 18
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@140@01)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] __t2 && (__t9 && __t9)
(push) ; 18
; [then-branch: 48 | False | live]
; [else-branch: 48 | True | live]
(push) ; 19
; [then-branch: 48 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 48 | True]
(push) ; 20
; [then-branch: 49 | False | live]
; [else-branch: 49 | True | live]
(push) ; 21
; [then-branch: 49 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 49 | True]
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(push) ; 18
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 50 | True | live]
; [else-branch: 50 | False | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 50 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_12.val_ref), read$())
; [eval] read$()
(push) ; 19
(pop) ; 19
; Joined path conditions
(push) ; 19
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(push) ; 19
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@140@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@140@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@140@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@140@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@140@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01))))))
  val_ref@140@01)))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t9 && __t9)
(push) ; 19
; [then-branch: 51 | False | live]
; [else-branch: 51 | True | live]
(push) ; 20
; [then-branch: 51 | False]
(assert false)
(pop) ; 20
(push) ; 20
; [else-branch: 51 | True]
(push) ; 21
; [then-branch: 52 | False | live]
; [else-branch: 52 | True | live]
(push) ; 22
; [then-branch: 52 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 52 | True]
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | True | live]
; [else-branch: 53 | False | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 53 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_7.val_ref), read$())
; [eval] read$()
(push) ; 20
(pop) ; 20
; Joined path conditions
(push) ; 20
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(push) ; 20
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@127@01)) val_ref@120@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)) val_ref@120@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@127@01))))
  val_ref@120@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@107@01))))
  val_ref@120@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  val_ref@120@01)))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb16
; [exec]
; __t10 := true
; [exec]
; __t17 := _20.val_bool
; [eval] !__t17
(push) ; 20
(set-option :timeout 10)
(assert (not $t@188@01))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (not $t@188@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | !($t@188@01) | live]
; [else-branch: 54 | $t@188@01 | live]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 54 | !($t@188@01)]
(assert (not $t@188@01))
; [exec]
; label l27
; [exec]
; label l30
; [exec]
; label bb7
; [exec]
; __t12 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@190@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_bool, write)
(declare-const $t@191@01 Bool)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@187@01 ret@190@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@177@01 ret@190@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@190@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@190@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@190@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_bool := false
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@187@01 ret@190@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@177@01 ret@190@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@190@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@190@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb9
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@127@01)
  ($Snap.combine
    $t@146@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@127@01)))
      ($Snap.combine
        $t@163@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))
          $t@182@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@192@01 $Ref)
(assert (= _old$pre$0@192@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))))
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@107@01)
  ($Snap.combine
    $t@150@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
      ($Snap.combine
        $t@167@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
          $t@186@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))))
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01)))))))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@193@01 $Ref)
(assert (=
  _old$pre$1@193@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))))
; [exec]
; fold acc(bool(_0), write)
(assert (bool%trigger ($SortWrappers.BoolTo$Snap false) ret@190@01))
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$()) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$1), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  _old$pre$0@192@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01)) _old$pre$0@192@01)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  _old$pre$1@193@01)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(bool(_0), write)
; [exec]
; label end_of_method
(pop) ; 20
(set-option :timeout 0)
(push) ; 20
; [else-branch: 54 | $t@188@01]
(assert $t@188@01)
(pop) ; 20
; [eval] !!__t17
; [eval] !__t17
(push) ; 20
(set-option :timeout 10)
(assert (not (not $t@188@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not $t@188@01))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | $t@188@01 | live]
; [else-branch: 55 | !($t@188@01) | live]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 55 | $t@188@01]
(assert $t@188@01)
; [exec]
; label l26
; [exec]
; label bb6
; [exec]
; __t11 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@194@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_bool, write)
(declare-const $t@195@01 Bool)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@187@01 ret@194@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@177@01 ret@194@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@194@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@194@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@194@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_bool := true
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@187@01 ret@194@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@177@01 ret@194@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@168@01 ret@194@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@151@01 ret@194@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l31
; [exec]
; label bb9
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@127@01)
  ($Snap.combine
    $t@146@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@127@01)))
      ($Snap.combine
        $t@163@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@127@01)))))
          $t@182@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@196@01 $Ref)
(assert (= _old$pre$0@196@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))))
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@107@01)
  ($Snap.combine
    $t@150@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
      ($Snap.combine
        $t@167@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
          $t@186@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))))
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01)))))))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@197@01 $Ref)
(assert (=
  _old$pre$1@197@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))))
; [exec]
; fold acc(bool(_0), write)
(assert (bool%trigger ($SortWrappers.BoolTo$Snap true) ret@194@01))
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$()) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$1), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  _old$pre$0@196@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@01)) _old$pre$0@196@01)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@01))))
  _old$pre$1@197@01)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(bool(_0), write)
; [exec]
; label end_of_method
(pop) ; 20
(set-option :timeout 0)
(push) ; 20
; [else-branch: 55 | !($t@188@01)]
(assert (not $t@188@01))
(pop) ; 20
(pop) ; 19
; [eval] !(__t1 && (__t9 && __t9))
; [eval] __t1 && (__t9 && __t9)
(push) ; 19
; [then-branch: 56 | False | live]
; [else-branch: 56 | True | live]
(push) ; 20
; [then-branch: 56 | False]
(assert false)
(pop) ; 20
(push) ; 20
; [else-branch: 56 | True]
(push) ; 21
; [then-branch: 57 | False | live]
; [else-branch: 57 | True | live]
(push) ; 22
; [then-branch: 57 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 57 | True]
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
; [then-branch: 58 | False | dead]
; [else-branch: 58 | True | live]
(push) ; 19
; [else-branch: 58 | True]
(pop) ; 19
(pop) ; 18
; [eval] !(__t2 && (__t9 && __t9))
; [eval] __t2 && (__t9 && __t9)
(push) ; 18
; [then-branch: 59 | False | live]
; [else-branch: 59 | True | live]
(push) ; 19
; [then-branch: 59 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 59 | True]
(push) ; 20
; [then-branch: 60 | False | live]
; [else-branch: 60 | True | live]
(push) ; 21
; [then-branch: 60 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 60 | True]
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
; [then-branch: 61 | False | dead]
; [else-branch: 61 | True | live]
(push) ; 18
; [else-branch: 61 | True]
(pop) ; 18
(pop) ; 17
; [eval] !(__t9 && __t9)
; [eval] __t9 && __t9
(push) ; 17
; [then-branch: 62 | False | live]
; [else-branch: 62 | True | live]
(push) ; 18
; [then-branch: 62 | False]
(assert false)
(pop) ; 18
(push) ; 18
; [else-branch: 62 | True]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
; [then-branch: 63 | False | dead]
; [else-branch: 63 | True | live]
(push) ; 17
; [else-branch: 63 | True]
(pop) ; 17
(pop) ; 16
; [eval] !(__t9 && __t9)
; [eval] __t9 && __t9
(push) ; 16
; [then-branch: 64 | False | live]
; [else-branch: 64 | True | live]
(push) ; 17
; [then-branch: 64 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 64 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
; [then-branch: 65 | False | dead]
; [else-branch: 65 | True | live]
(push) ; 16
; [else-branch: 65 | True]
(pop) ; 16
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 41 | !($t@169@01)]
(assert (not $t@169@01))
(pop) ; 14
(pop) ; 13
; [eval] !(__t1 && (__t4 && __t4))
; [eval] __t1 && (__t4 && __t4)
(push) ; 13
; [then-branch: 66 | False | live]
; [else-branch: 66 | True | live]
(push) ; 14
; [then-branch: 66 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 66 | True]
(push) ; 15
; [then-branch: 67 | False | live]
; [else-branch: 67 | True | live]
(push) ; 16
; [then-branch: 67 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 67 | True]
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [then-branch: 68 | False | dead]
; [else-branch: 68 | True | live]
(push) ; 13
; [else-branch: 68 | True]
(pop) ; 13
(pop) ; 12
; [eval] !(__t2 && (__t4 && __t4))
; [eval] __t2 && (__t4 && __t4)
(push) ; 12
; [then-branch: 69 | False | live]
; [else-branch: 69 | True | live]
(push) ; 13
; [then-branch: 69 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 69 | True]
(push) ; 14
; [then-branch: 70 | False | live]
; [else-branch: 70 | True | live]
(push) ; 15
; [then-branch: 70 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 70 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
; [then-branch: 71 | False | dead]
; [else-branch: 71 | True | live]
(push) ; 12
; [else-branch: 71 | True]
(pop) ; 12
(pop) ; 11
; [eval] !(__t4 && __t4)
; [eval] __t4 && __t4
(push) ; 11
; [then-branch: 72 | False | live]
; [else-branch: 72 | True | live]
(push) ; 12
; [then-branch: 72 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 72 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
; [then-branch: 73 | False | dead]
; [else-branch: 73 | True | live]
(push) ; 11
; [else-branch: 73 | True]
(pop) ; 11
(pop) ; 10
; [eval] !(__t4 && __t4)
; [eval] __t4 && __t4
(push) ; 10
; [then-branch: 74 | False | live]
; [else-branch: 74 | True | live]
(push) ; 11
; [then-branch: 74 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 74 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
; [then-branch: 75 | False | dead]
; [else-branch: 75 | True | live]
(push) ; 10
; [else-branch: 75 | True]
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 23 | !($t@152@01)]
(assert (not $t@152@01))
(pop) ; 9
(pop) ; 8
; [eval] !(__t1 && (__t2 && __t2))
; [eval] __t1 && (__t2 && __t2)
(push) ; 8
; [then-branch: 76 | False | live]
; [else-branch: 76 | True | live]
(push) ; 9
; [then-branch: 76 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 76 | True]
(push) ; 10
; [then-branch: 77 | False | live]
; [else-branch: 77 | True | live]
(push) ; 11
; [then-branch: 77 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 77 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
; [then-branch: 78 | False | dead]
; [else-branch: 78 | True | live]
(push) ; 8
; [else-branch: 78 | True]
(pop) ; 8
(pop) ; 7
; [eval] !(__t2 && (__t2 && __t2))
; [eval] __t2 && (__t2 && __t2)
(push) ; 7
; [then-branch: 79 | False | live]
; [else-branch: 79 | True | live]
(push) ; 8
; [then-branch: 79 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 79 | True]
(push) ; 9
; [then-branch: 80 | False | live]
; [else-branch: 80 | True | live]
(push) ; 10
; [then-branch: 80 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 80 | True]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
; [then-branch: 81 | False | dead]
; [else-branch: 81 | True | live]
(push) ; 7
; [else-branch: 81 | True]
(pop) ; 7
(pop) ; 6
; [eval] !(__t2 && __t2)
; [eval] __t2 && __t2
(push) ; 6
; [then-branch: 82 | False | live]
; [else-branch: 82 | True | live]
(push) ; 7
; [then-branch: 82 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 82 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
; [then-branch: 83 | False | dead]
; [else-branch: 83 | True | live]
(push) ; 6
; [else-branch: 83 | True]
(pop) ; 6
(pop) ; 5
; [eval] !(__t2 && __t2)
; [eval] __t2 && __t2
(push) ; 5
; [then-branch: 84 | False | live]
; [else-branch: 84 | True | live]
(push) ; 6
; [then-branch: 84 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 84 | True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [then-branch: 85 | False | dead]
; [else-branch: 85 | True | live]
(push) ; 5
; [else-branch: 85 | True]
(pop) ; 5
(pop) ; 4
; [eval] !__t1
; [then-branch: 86 | False | dead]
; [else-branch: 86 | True | live]
(push) ; 4
; [else-branch: 86 | True]
(pop) ; 4
(pop) ; 3
; [eval] !__t0
; [then-branch: 87 | False | dead]
; [else-branch: 87 | True | live]
(push) ; 3
; [else-branch: 87 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m_348_cgmath_point$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$clone$opensqu$0$closesqu$ ----------
(declare-const _0@198@01 $Ref)
(declare-const _0@199@01 $Ref)
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
(declare-const __t0@200@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@201@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@202@01 Bool)
; [exec]
; var __t3: Bool
(declare-const __t3@203@01 Bool)
; [exec]
; var __t4: Bool
(declare-const __t4@204@01 Bool)
; [exec]
; var __t5: Bool
(declare-const __t5@205@01 Bool)
; [exec]
; var __t6: Bool
(declare-const __t6@206@01 Bool)
; [exec]
; var __t7: Bool
(declare-const __t7@207@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@208@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@209@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@210@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@211@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@212@01 $Ref)
; [exec]
; var _6: Ref
(declare-const _6@213@01 $Ref)
; [exec]
; var _7: Ref
(declare-const _7@214@01 $Ref)
; [exec]
; var _8: Ref
(declare-const _8@215@01 $Ref)
; [exec]
; var _9: Ref
(declare-const _9@216@01 $Ref)
; [exec]
; var _10: Ref
(declare-const _10@217@01 $Ref)
; [exec]
; var _11: Ref
(declare-const _11@218@01 $Ref)
; [exec]
; var _12: Ref
(declare-const _12@219@01 $Ref)
; [exec]
; var _13: Ref
(declare-const _13@220@01 $Ref)
; [exec]
; var _14: Ref
(declare-const _14@221@01 $Ref)
; [exec]
; var _15: Ref
(declare-const _15@222@01 $Ref)
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
; __t5 := false
; [exec]
; __t6 := false
; [exec]
; __t7 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
(declare-const $t@223@01 $Snap)
(assert (= $t@223@01 ($Snap.combine ($Snap.first $t@223@01) ($Snap.second $t@223@01))))
(assert (not (= _1@209@01 $Ref.null)))
; [eval] read$()
(push) ; 3
(assert (read$%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@224@01 $Snap)
(assert (= $t@224@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@226@01 $Snap)
(assert (= $t@226@01 $Snap.unit))
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
; _3 := builtin$havoc_ref()
(declare-const ret@227@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_ref, write)
(declare-const $t@228@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@227@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@227@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _3.val_ref := _1.val_ref
(declare-const val_ref@229@01 $Ref)
(assert (= val_ref@229@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@227@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_3.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@230@01 $Snap)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) val_ref@229@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@231@01 $Snap)
(assert (and
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@231@01 ($Snap.second $t@223@01)))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@231@01 $t@230@01))))
(assert (<= $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 88 | True | live]
; [else-branch: 88 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 88 | True]
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_3.val_ref), read$())
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
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) val_ref@229@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb3
; [exec]
; __t1 := true
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@232@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_4.val_ref, write)
(declare-const $t@233@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@232@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@232@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@232@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= $t@231@01 ($Snap.combine ($Snap.first $t@231@01) ($Snap.second $t@231@01))))
(assert (<= (read$ $Snap.unit) $Perm.Write))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) $Ref.null))))
(assert (=
  ($Snap.second $t@231@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@231@01))
    ($Snap.second ($Snap.second $t@231@01)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@231@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@231@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@231@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@231@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01)))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01)))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01)))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger $t@231@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01))))
; [exec]
; _4.val_ref := _1.val_ref.f$x
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@234@01 $Ref)
(assert (= val_ref@234@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@232@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@232@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_4.val_ref), read$())
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
(declare-const $t@235@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@234@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@236@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@236@01 ($Snap.first ($Snap.second $t@231@01))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@236@01 $t@235@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@237@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_ref, write)
(declare-const $t@238@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@237@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@237@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@237@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@237@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _5.val_ref := _1.val_ref.f$y
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@239@01 $Ref)
(assert (=
  val_ref@239@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@237@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@237@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@237@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_5.val_ref), read$())
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
(declare-const $t@240@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@239@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@241@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@241@01
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@241@01 $t@240@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l2
; [exec]
; _6 := builtin$havoc_ref()
(declare-const ret@242@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.val_ref, write)
(declare-const $t@243@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@242@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@242@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@242@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@242@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@242@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _6.val_ref := _1.val_ref.f$z
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@244@01 $Ref)
(assert (=
  val_ref@244@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@242@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@242@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@242@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@242@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_6.val_ref), read$())
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
(declare-const $t@245@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@244@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@246@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@246@01
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01)))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@246@01 $t@245@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; _9 := builtin$havoc_ref()
(declare-const ret@247@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_9.val_ref, write)
(declare-const $t@248@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@247@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _9.val_ref := _4.val_ref
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@247@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_9.val_ref), read$())
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
(declare-const $t@249@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@234@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@250@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@250@01 $t@236@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@250@01 $t@249@01))))
(assert (<= $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l4
; [exec]
; _8 := builtin$havoc_ref()
(declare-const ret@251@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_8.val_ref, write)
(declare-const $t@252@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@247@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@251@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _8.val_ref := _9.val_ref
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@247@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@251@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_8.val_ref), read$())
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
(declare-const $t@253@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@234@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@254@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    (= $t@254@01 $t@250@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@254@01 $t@253@01))))
(assert (<=
  $Perm.No
  (+
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    (read$ $Snap.unit))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; label l6
; [exec]
; assert true
; [exec]
; exhale acc(_8.val_ref, write)
; [exec]
; _7 := builtin$havoc_ref()
(declare-const ret@255@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@256@01 $Snap)
(assert (= $t@256@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(__TYPARAM__$S$__(_7), write)
(declare-const $t@257@01 $Snap)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) ret@255@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  ret@255@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  ret@255@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@258@01 $Snap)
(assert (= $t@258@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@259@01 $Snap)
(assert (= $t@259@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l7
; [exec]
; label l8
; [eval] __t1 && __t1
(set-option :timeout 0)
(push) ; 4
; [then-branch: 89 | False | live]
; [else-branch: 89 | True | live]
(push) ; 5
; [then-branch: 89 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 89 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 90 | True | live]
; [else-branch: 90 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 90 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l5](_8.val_ref)), read$())
; [eval] read$()
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] old[l5](_8.val_ref)
(push) ; 5
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@255@01 val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@234@01)))
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
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
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
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 5
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t1 && __t1)
(push) ; 5
; [then-branch: 91 | False | live]
; [else-branch: 91 | True | live]
(push) ; 6
; [then-branch: 91 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 91 | True]
(push) ; 7
; [then-branch: 92 | False | live]
; [else-branch: 92 | True | live]
(push) ; 8
; [then-branch: 92 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 92 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 93 | True | live]
; [else-branch: 93 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 93 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_9.val_ref), read$())
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
(assert (not (= ret@255@01 val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@234@01)))
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
    (-
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (-
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t1 && (__t1 && __t1))
(push) ; 6
; [then-branch: 94 | False | live]
; [else-branch: 94 | True | live]
(push) ; 7
; [then-branch: 94 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 94 | True]
(push) ; 8
; [then-branch: 95 | False | live]
; [else-branch: 95 | True | live]
(push) ; 9
; [then-branch: 95 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 95 | True]
(push) ; 10
; [then-branch: 96 | False | live]
; [else-branch: 96 | True | live]
(push) ; 11
; [then-branch: 96 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 96 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 97 | True | live]
; [else-branch: 97 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 97 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_4.val_ref), read$())
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
(assert (not (= ret@255@01 val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@234@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@234@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (-
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 7
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb4
; [exec]
; __t2 := true
; [exec]
; _12 := builtin$havoc_ref()
(declare-const ret@260@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_12.val_ref, write)
(declare-const $t@261@01 $Ref)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@247@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@260@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _12.val_ref := _5.val_ref
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@247@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@260@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_12.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
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
(declare-const $t@262@01 $Snap)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@255@01 val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@239@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $t@263@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@263@01 $t@241@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@263@01 $t@262@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l9
; [exec]
; _11 := builtin$havoc_ref()
(declare-const ret@264@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_11.val_ref, write)
(declare-const $t@265@01 $Ref)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@260@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@247@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@264@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _11.val_ref := _12.val_ref
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@260@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@247@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@264@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_11.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
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
(declare-const $t@266@01 $Snap)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@239@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $t@267@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    (= $t@267@01 $t@263@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@267@01 $t@266@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l10
; [exec]
; label l11
; [exec]
; assert true
; [exec]
; exhale acc(_11.val_ref, write)
; [exec]
; _10 := builtin$havoc_ref()
(declare-const ret@268@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@269@01 $Snap)
(assert (= $t@269@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(__TYPARAM__$S$__(_10), write)
(declare-const $t@270@01 $Snap)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  ret@268@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@255@01 ret@268@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  ret@268@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) ret@268@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@271@01 $Snap)
(assert (= $t@271@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@272@01 $Snap)
(assert (= $t@272@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l12
; [exec]
; label l13
; [eval] __t2 && __t2
(set-option :timeout 0)
(push) ; 7
; [then-branch: 98 | False | live]
; [else-branch: 98 | True | live]
(push) ; 8
; [then-branch: 98 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 98 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 99 | True | live]
; [else-branch: 99 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 99 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l10](_11.val_ref)), read$())
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
; [eval] old[l10](_11.val_ref)
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ret@268@01 val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@239@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] __t2 && (__t2 && __t2)
(push) ; 8
; [then-branch: 100 | False | live]
; [else-branch: 100 | True | live]
(push) ; 9
; [then-branch: 100 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 100 | True]
(push) ; 10
; [then-branch: 101 | False | live]
; [else-branch: 101 | True | live]
(push) ; 11
; [then-branch: 101 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 101 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 102 | True | live]
; [else-branch: 102 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 102 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_12.val_ref), read$())
; [eval] read$()
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(set-option :timeout 10)
(assert (not (= ret@268@01 val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= ret@255@01 val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@239@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t2 && (__t2 && __t2))
(push) ; 9
; [then-branch: 103 | False | live]
; [else-branch: 103 | True | live]
(push) ; 10
; [then-branch: 103 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 103 | True]
(push) ; 11
; [then-branch: 104 | False | live]
; [else-branch: 104 | True | live]
(push) ; 12
; [then-branch: 104 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 104 | True]
(push) ; 13
; [then-branch: 105 | False | live]
; [else-branch: 105 | True | live]
(push) ; 14
; [then-branch: 105 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 105 | True]
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | True | live]
; [else-branch: 106 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 106 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_5.val_ref), read$())
; [eval] read$()
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@268@01 val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@255@01 val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@239@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@239@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb5
; [exec]
; __t3 := true
; [exec]
; _15 := builtin$havoc_ref()
(declare-const ret@273@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_15.val_ref, write)
(declare-const $t@274@01 $Ref)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@260@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@247@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@273@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _15.val_ref := _6.val_ref
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@260@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@247@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@273@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_15.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@275@01 $Snap)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@268@01 val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@255@01 val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@244@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@276@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@276@01 $t@246@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@276@01 $t@275@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l14
; [exec]
; _14 := builtin$havoc_ref()
(declare-const ret@277@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_14.val_ref, write)
(declare-const $t@278@01 $Ref)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@273@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@260@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@247@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@277@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _14.val_ref := _15.val_ref
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@273@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@260@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@247@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@242@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@237@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@232@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@227@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@209@01 ret@277@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_14.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@279@01 $Snap)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@244@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@280@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    (= $t@280@01 $t@276@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@280@01 $t@279@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l15
; [exec]
; label l16
; [exec]
; assert true
; [exec]
; exhale acc(_14.val_ref, write)
; [exec]
; _13 := builtin$havoc_ref()
(declare-const ret@281@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@282@01 $Snap)
(assert (= $t@282@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(__TYPARAM__$S$__(_13), write)
(declare-const $t@283@01 $Snap)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  ret@281@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@268@01 ret@281@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@255@01 ret@281@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) ret@281@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  ret@281@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@284@01 $Snap)
(assert (= $t@284@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@285@01 $Snap)
(assert (= $t@285@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l17
; [exec]
; label l18
; [eval] __t3 && __t3
(set-option :timeout 0)
(push) ; 10
; [then-branch: 107 | False | live]
; [else-branch: 107 | True | live]
(push) ; 11
; [then-branch: 107 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 107 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 108 | True | live]
; [else-branch: 108 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 108 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l15](_14.val_ref)), read$())
; [eval] read$()
(push) ; 11
(pop) ; 11
; Joined path conditions
; [eval] old[l15](_14.val_ref)
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (= ret@281@01 val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@244@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] __t3 && (__t3 && __t3)
(push) ; 11
; [then-branch: 109 | False | live]
; [else-branch: 109 | True | live]
(push) ; 12
; [then-branch: 109 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 109 | True]
(push) ; 13
; [then-branch: 110 | False | live]
; [else-branch: 110 | True | live]
(push) ; 14
; [then-branch: 110 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 110 | True]
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | True | live]
; [else-branch: 111 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 111 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_15.val_ref), read$())
; [eval] read$()
(push) ; 12
(pop) ; 12
; Joined path conditions
(push) ; 12
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ret@281@01 val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ret@268@01 val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ret@255@01 val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@244@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t3 && (__t3 && __t3))
(push) ; 12
; [then-branch: 112 | False | live]
; [else-branch: 112 | True | live]
(push) ; 13
; [then-branch: 112 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 112 | True]
(push) ; 14
; [then-branch: 113 | False | live]
; [else-branch: 113 | True | live]
(push) ; 15
; [then-branch: 113 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 113 | True]
(push) ; 16
; [then-branch: 114 | False | live]
; [else-branch: 114 | True | live]
(push) ; 17
; [then-branch: 114 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 114 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 115 | True | live]
; [else-branch: 115 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 115 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_6.val_ref), read$())
; [eval] read$()
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ret@281@01 val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ret@268@01 val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ret@255@01 val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01)) val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  val_ref@244@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  val_ref@244@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb9
; [exec]
; __t4 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@286@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_0), write)
(declare-const $t@287@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_0), write)
(assert (= $t@287@01 ($Snap.combine ($Snap.first $t@287@01) ($Snap.second $t@287@01))))
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) ret@286@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@286@01 $Ref.null)))
(assert (=
  ($Snap.second $t@287@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@287@01))
    ($Snap.second ($Snap.second $t@287@01)))))
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ret@281@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@287@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ret@268@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@287@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ret@255@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@287@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@287@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@287@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@287@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@287@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@287@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@287@01))))))
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) ret@286@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@287@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@287@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01)))))))
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@287@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@287@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ret@281@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@287@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ret@268@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@287@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ret@255@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@287@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@287@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@287@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@287@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01))))))))
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) ret@286@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@287@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01)))))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@287@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01)))))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ret@281@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01)))))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ret@268@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01)))))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ret@255@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01)))))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@231@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01)))))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@231@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01)))))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@287@01)))))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger $t@287@01 ret@286@01))
; [exec]
; _0.f$x := _7
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) ret@286@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l19
; [exec]
; _0.f$y := _10
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) ret@286@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l20
; [exec]
; _0.f$z := _13
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) ret@286@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l21
; [exec]
; label bb12
; [exec]
; __t5 := true
; [exec]
; label bb13
; [exec]
; __t6 := true
; [exec]
; label bb14
; [exec]
; __t7 := true
; [exec]
; label return
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@231@01)
  ($Snap.combine
    $t@254@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@231@01)))
      ($Snap.combine
        $t@267@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@231@01)))))
          $t@280@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@288@01 $Ref)
(assert (= _old$pre$0@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01))))
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_0), write)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap ret@255@01)
  ($Snap.combine
    $t@257@01
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap ret@268@01)
      ($Snap.combine
        $t@270@01
        ($Snap.combine ($SortWrappers.$RefTo$Snap ret@281@01) $t@283@01))))) ret@286@01))
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) ret@286@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ret@286@01 _old$pre$0@288@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@223@01)) _old$pre$0@288@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_0), write)
; [exec]
; label end_of_method
(pop) ; 12
; [eval] !(__t1 && (__t3 && (__t3 && __t3)))
; [eval] __t1 && (__t3 && (__t3 && __t3))
(set-option :timeout 0)
(push) ; 12
; [then-branch: 116 | False | live]
; [else-branch: 116 | True | live]
(push) ; 13
; [then-branch: 116 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 116 | True]
(push) ; 14
; [then-branch: 117 | False | live]
; [else-branch: 117 | True | live]
(push) ; 15
; [then-branch: 117 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 117 | True]
(push) ; 16
; [then-branch: 118 | False | live]
; [else-branch: 118 | True | live]
(push) ; 17
; [then-branch: 118 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 118 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
; [then-branch: 119 | False | dead]
; [else-branch: 119 | True | live]
(push) ; 12
; [else-branch: 119 | True]
(pop) ; 12
(pop) ; 11
; [eval] !(__t3 && (__t3 && __t3))
; [eval] __t3 && (__t3 && __t3)
(push) ; 11
; [then-branch: 120 | False | live]
; [else-branch: 120 | True | live]
(push) ; 12
; [then-branch: 120 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 120 | True]
(push) ; 13
; [then-branch: 121 | False | live]
; [else-branch: 121 | True | live]
(push) ; 14
; [then-branch: 121 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 121 | True]
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
; [then-branch: 122 | False | dead]
; [else-branch: 122 | True | live]
(push) ; 11
; [else-branch: 122 | True]
(pop) ; 11
(pop) ; 10
; [eval] !(__t3 && __t3)
; [eval] __t3 && __t3
(push) ; 10
; [then-branch: 123 | False | live]
; [else-branch: 123 | True | live]
(push) ; 11
; [then-branch: 123 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 123 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
; [then-branch: 124 | False | dead]
; [else-branch: 124 | True | live]
(push) ; 10
; [else-branch: 124 | True]
(pop) ; 10
(pop) ; 9
; [eval] !(__t1 && (__t2 && (__t2 && __t2)))
; [eval] __t1 && (__t2 && (__t2 && __t2))
(push) ; 9
; [then-branch: 125 | False | live]
; [else-branch: 125 | True | live]
(push) ; 10
; [then-branch: 125 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 125 | True]
(push) ; 11
; [then-branch: 126 | False | live]
; [else-branch: 126 | True | live]
(push) ; 12
; [then-branch: 126 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 126 | True]
(push) ; 13
; [then-branch: 127 | False | live]
; [else-branch: 127 | True | live]
(push) ; 14
; [then-branch: 127 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 127 | True]
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [then-branch: 128 | False | dead]
; [else-branch: 128 | True | live]
(push) ; 9
; [else-branch: 128 | True]
(pop) ; 9
(pop) ; 8
; [eval] !(__t2 && (__t2 && __t2))
; [eval] __t2 && (__t2 && __t2)
(push) ; 8
; [then-branch: 129 | False | live]
; [else-branch: 129 | True | live]
(push) ; 9
; [then-branch: 129 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 129 | True]
(push) ; 10
; [then-branch: 130 | False | live]
; [else-branch: 130 | True | live]
(push) ; 11
; [then-branch: 130 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 130 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
; [then-branch: 131 | False | dead]
; [else-branch: 131 | True | live]
(push) ; 8
; [else-branch: 131 | True]
(pop) ; 8
(pop) ; 7
; [eval] !(__t2 && __t2)
; [eval] __t2 && __t2
(push) ; 7
; [then-branch: 132 | False | live]
; [else-branch: 132 | True | live]
(push) ; 8
; [then-branch: 132 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 132 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
; [then-branch: 133 | False | dead]
; [else-branch: 133 | True | live]
(push) ; 7
; [else-branch: 133 | True]
(pop) ; 7
(pop) ; 6
; [eval] !(__t1 && (__t1 && (__t1 && __t1)))
; [eval] __t1 && (__t1 && (__t1 && __t1))
(push) ; 6
; [then-branch: 134 | False | live]
; [else-branch: 134 | True | live]
(push) ; 7
; [then-branch: 134 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 134 | True]
(push) ; 8
; [then-branch: 135 | False | live]
; [else-branch: 135 | True | live]
(push) ; 9
; [then-branch: 135 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 135 | True]
(push) ; 10
; [then-branch: 136 | False | live]
; [else-branch: 136 | True | live]
(push) ; 11
; [then-branch: 136 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 136 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
; [then-branch: 137 | False | dead]
; [else-branch: 137 | True | live]
(push) ; 6
; [else-branch: 137 | True]
(pop) ; 6
(pop) ; 5
; [eval] !(__t1 && (__t1 && __t1))
; [eval] __t1 && (__t1 && __t1)
(push) ; 5
; [then-branch: 138 | False | live]
; [else-branch: 138 | True | live]
(push) ; 6
; [then-branch: 138 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 138 | True]
(push) ; 7
; [then-branch: 139 | False | live]
; [else-branch: 139 | True | live]
(push) ; 8
; [then-branch: 139 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 139 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [then-branch: 140 | False | dead]
; [else-branch: 140 | True | live]
(push) ; 5
; [else-branch: 140 | True]
(pop) ; 5
(pop) ; 4
; [eval] !(__t1 && __t1)
; [eval] __t1 && __t1
(push) ; 4
; [then-branch: 141 | False | live]
; [else-branch: 141 | True | live]
(push) ; 5
; [then-branch: 141 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 141 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
; [then-branch: 142 | False | dead]
; [else-branch: 142 | True | live]
(push) ; 4
; [else-branch: 142 | True]
(pop) ; 4
(pop) ; 3
; [eval] !__t0
; [then-branch: 143 | False | dead]
; [else-branch: 143 | True | live]
(push) ; 3
; [else-branch: 143 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m_348_cgmath_point$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$8$closesqu$$$ne$opensqu$0$closesqu$ ----------
(declare-const _0@289@01 $Ref)
(declare-const _0@290@01 $Ref)
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
(declare-const __t0@291@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@292@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@293@01 Bool)
; [exec]
; var __t3: Bool
(declare-const __t3@294@01 Bool)
; [exec]
; var __t4: Bool
(declare-const __t4@295@01 Bool)
; [exec]
; var __t5: Bool
(declare-const __t5@296@01 Bool)
; [exec]
; var __t6: Bool
(declare-const __t6@297@01 Bool)
; [exec]
; var __t7: Bool
(declare-const __t7@298@01 Bool)
; [exec]
; var __t8: Bool
(declare-const __t8@299@01 Bool)
; [exec]
; var __t9: Bool
(declare-const __t9@300@01 Bool)
; [exec]
; var __t10: Bool
(declare-const __t10@301@01 Bool)
; [exec]
; var __t11: Bool
(declare-const __t11@302@01 Bool)
; [exec]
; var __t12: Bool
(declare-const __t12@303@01 Bool)
; [exec]
; var __t13: Bool
(declare-const __t13@304@01 Bool)
; [exec]
; var __t14: Bool
(declare-const __t14@305@01 Bool)
; [exec]
; var __t15: Bool
(declare-const __t15@306@01 Bool)
; [exec]
; var __t16: Bool
(declare-const __t16@307@01 Bool)
; [exec]
; var __t17: Bool
(declare-const __t17@308@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@309@01 $Ref)
; [exec]
; var _old$pre$1: Ref
(declare-const _old$pre$1@310@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@311@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@312@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@313@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@314@01 $Ref)
; [exec]
; var _6: Ref
(declare-const _6@315@01 $Ref)
; [exec]
; var _7: Ref
(declare-const _7@316@01 $Ref)
; [exec]
; var _9: Ref
(declare-const _9@317@01 $Ref)
; [exec]
; var _10: Ref
(declare-const _10@318@01 $Ref)
; [exec]
; var _11: Ref
(declare-const _11@319@01 $Ref)
; [exec]
; var _12: Ref
(declare-const _12@320@01 $Ref)
; [exec]
; var _13: Ref
(declare-const _13@321@01 $Ref)
; [exec]
; var _14: Ref
(declare-const _14@322@01 $Ref)
; [exec]
; var _15: Ref
(declare-const _15@323@01 $Ref)
; [exec]
; var _16: Ref
(declare-const _16@324@01 $Ref)
; [exec]
; var _17: Ref
(declare-const _17@325@01 $Ref)
; [exec]
; var _18: Ref
(declare-const _18@326@01 $Ref)
; [exec]
; var _19: Ref
(declare-const _19@327@01 $Ref)
; [exec]
; var _20: Ref
(declare-const _20@328@01 $Ref)
; [exec]
; var _21: Ref
(declare-const _21@329@01 $Ref)
; [exec]
; var _22: Ref
(declare-const _22@330@01 $Ref)
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
; __t5 := false
; [exec]
; __t6 := false
; [exec]
; __t7 := false
; [exec]
; __t8 := false
; [exec]
; __t9 := false
; [exec]
; __t10 := false
; [exec]
; __t11 := false
; [exec]
; __t12 := false
; [exec]
; __t13 := false
; [exec]
; inhale acc(_1.val_ref, write) &&
;   (acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$()) &&
;   (acc(_2.val_ref, write) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())))
(declare-const $t@331@01 $Snap)
(assert (= $t@331@01 ($Snap.combine ($Snap.first $t@331@01) ($Snap.second $t@331@01))))
(assert (not (= _1@311@01 $Ref.null)))
(assert (=
  ($Snap.second $t@331@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@331@01))
    ($Snap.second ($Snap.second $t@331@01)))))
; [eval] read$()
(push) ; 3
(assert (read$%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=
  ($Snap.second ($Snap.second $t@331@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@331@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@331@01))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@311@01 _2@312@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@312@01 $Ref.null)))
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@332@01 $Snap)
(assert (= $t@332@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@333@01 $Snap)
(assert (= $t@333@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@334@01 $Snap)
(assert (= $t@334@01 $Snap.unit))
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
; _4 := builtin$havoc_ref()
(declare-const ret@335@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_4.val_ref, write)
(declare-const $t@336@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@335@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@335@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@335@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _4.val_ref := _2.val_ref
(declare-const val_ref@337@01 $Ref)
(assert (=
  val_ref@337@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@335@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@335@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_4.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@338@01 $Snap)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  val_ref@337@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@339@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@339@01 ($Snap.second ($Snap.second ($Snap.second $t@331@01)))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@339@01 $t@338@01))))
(assert (<= $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 144 | True | live]
; [else-branch: 144 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 144 | True]
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_4.val_ref), read$())
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
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  val_ref@337@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb3
; [exec]
; __t1 := true
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@340@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_ref, write)
(declare-const $t@341@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@340@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@340@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@340@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@340@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= $t@339@01 ($Snap.combine ($Snap.first $t@339@01) ($Snap.second $t@339@01))))
(assert (<= (read$ $Snap.unit) $Perm.Write))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
      $Ref.null))))
(assert (=
  ($Snap.second $t@339@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@339@01))
    ($Snap.second ($Snap.second $t@339@01)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@339@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@339@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@339@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@339@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01)))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01)))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01)))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger $t@339@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))))
; [exec]
; _5.val_ref := _2.val_ref.f$x
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@342@01 $Ref)
(assert (= val_ref@342@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@340@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@340@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@340@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_5.val_ref), read$())
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
(declare-const $t@343@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@342@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@344@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@344@01 ($Snap.first ($Snap.second $t@339@01))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@344@01 $t@343@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; _6 := builtin$havoc_ref()
(declare-const ret@345@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.val_ref, write)
(declare-const $t@346@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@345@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@345@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@345@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@345@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@345@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _6.val_ref := _2.val_ref.f$y
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@347@01 $Ref)
(assert (=
  val_ref@347@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@345@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@345@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@345@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@345@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_6.val_ref), read$())
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
(declare-const $t@348@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@347@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@349@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@349@01
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@349@01 $t@348@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l2
; [exec]
; _7 := builtin$havoc_ref()
(declare-const ret@350@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_7.val_ref, write)
(declare-const $t@351@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@350@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _7.val_ref := _2.val_ref.f$z
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@352@01 $Ref)
(assert (=
  val_ref@352@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@350@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_7.val_ref), read$())
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
(declare-const $t@353@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@352@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@352@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@352@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@354@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@354@01
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01)))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@354@01 $t@353@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; _9 := builtin$havoc_ref()
(declare-const ret@355@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_9.val_ref, write)
(declare-const $t@356@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@355@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _9.val_ref := _1.val_ref
(declare-const val_ref@357@01 $Ref)
(assert (= val_ref@357@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@355@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_9.val_ref), read$())
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
(declare-const $t@358@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01)) val_ref@357@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@359@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@359@01 ($Snap.first ($Snap.second $t@331@01))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@359@01 $t@358@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l4
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 145 | True | live]
; [else-branch: 145 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 145 | True]
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_9.val_ref), read$())
; [eval] read$()
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
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01)) val_ref@357@01)))
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
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
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
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb5
; [exec]
; __t2 := true
; [exec]
; _10 := builtin$havoc_ref()
(declare-const ret@360@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_10.val_ref, write)
(declare-const $t@361@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@360@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
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
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (= $t@359@01 ($Snap.combine ($Snap.first $t@359@01) ($Snap.second $t@359@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01)) $Ref.null))))
(assert (=
  ($Snap.second $t@359@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@359@01))
    ($Snap.second ($Snap.second $t@359@01)))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@359@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@359@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@359@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@359@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger $t@359@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))))
; [exec]
; _10.val_ref := _1.val_ref.f$x
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@362@01 $Ref)
(assert (= val_ref@362@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@360@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_10.val_ref), read$())
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
(declare-const $t@363@01 $Snap)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@362@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@362@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@362@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@364@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@364@01 ($Snap.first ($Snap.second $t@359@01))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@364@01 $t@363@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; _11 := builtin$havoc_ref()
(declare-const ret@365@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_11.val_ref, write)
(declare-const $t@366@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@365@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _11.val_ref := _1.val_ref.f$y
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@367@01 $Ref)
(assert (=
  val_ref@367@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@365@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_11.val_ref), read$())
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
(declare-const $t@368@01 $Snap)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@367@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@367@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@367@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@369@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@369@01
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@369@01 $t@368@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l6
; [exec]
; _12 := builtin$havoc_ref()
(declare-const ret@370@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_12.val_ref, write)
(declare-const $t@371@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@370@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _12.val_ref := _1.val_ref.f$z
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@372@01 $Ref)
(assert (=
  val_ref@372@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@370@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_12.val_ref), read$())
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
(declare-const $t@373@01 $Snap)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@372@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@372@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@372@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@374@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@374@01
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@374@01 $t@373@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l7
; [exec]
; _15 := builtin$havoc_ref()
(declare-const ret@375@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_15.val_ref, write)
(declare-const $t@376@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@375@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _15.val_ref := _10.val_ref
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@375@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_15.val_ref), read$())
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
(declare-const $t@377@01 $Snap)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@362@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@362@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@362@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@378@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@378@01 $t@364@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@378@01 $t@377@01))))
(assert (<= $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l8
; [exec]
; _16 := builtin$havoc_ref()
(declare-const ret@379@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_16.val_ref, write)
(declare-const $t@380@01 $Ref)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@375@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@379@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _16.val_ref := _5.val_ref
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@375@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@379@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_16.val_ref), read$())
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
(declare-const $t@381@01 $Snap)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@342@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@382@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@382@01 $t@344@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@382@01 $t@381@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l9
; [exec]
; label l10
; [exec]
; _14 := builtin$havoc_ref()
(declare-const ret@383@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(bool(_14), write)
(declare-const $t@384@01 Bool)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(bool(_14), write)
(assert (not (= ret@383@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (bool%trigger ($SortWrappers.BoolTo$Snap $t@384@01) ret@383@01))
; [exec]
; inhale _14.val_bool ==
;   not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_15.val_ref, _16.val_ref)
(declare-const $t@385@01 $Snap)
(assert (= $t@385@01 $Snap.unit))
; [eval] _14.val_bool == not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_15.val_ref, _16.val_ref)
; [eval] not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_15.val_ref, _16.val_ref)
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
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@362@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@362@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
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
; [eval] read$()
(set-option :timeout 0)
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
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@342@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
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
(assert (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@378@01
  $t@382@01) val_ref@362@01 val_ref@342@01))
(pop) ; 5
; Joined path conditions
(assert (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@378@01
  $t@382@01) val_ref@362@01 val_ref@342@01))
(assert (=
  $t@384@01
  (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ ($Snap.combine
    $t@378@01
    $t@382@01) val_ref@362@01 val_ref@342@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l11
; [eval] __t2 && __t2
(set-option :timeout 0)
(push) ; 5
; [then-branch: 146 | False | live]
; [else-branch: 146 | True | live]
(push) ; 6
; [then-branch: 146 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 146 | True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 147 | True | live]
; [else-branch: 147 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 147 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l9](_16.val_ref)), read$())
; [eval] read$()
(push) ; 6
(pop) ; 6
; Joined path conditions
; [eval] old[l9](_16.val_ref)
(push) ; 6
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@342@01)))
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
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] __t2 && __t2
(push) ; 6
; [then-branch: 148 | False | live]
; [else-branch: 148 | True | live]
(push) ; 7
; [then-branch: 148 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 148 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 149 | True | live]
; [else-branch: 149 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 149 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l8](_15.val_ref)), read$())
; [eval] read$()
(push) ; 7
(pop) ; 7
; Joined path conditions
; [eval] old[l8](_15.val_ref)
(push) ; 7
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@362@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] __t2 && (__t2 && __t2)
(push) ; 7
; [then-branch: 150 | False | live]
; [else-branch: 150 | True | live]
(push) ; 8
; [then-branch: 150 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 150 | True]
(push) ; 9
; [then-branch: 151 | False | live]
; [else-branch: 151 | True | live]
(push) ; 10
; [then-branch: 151 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 151 | True]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 152 | True | live]
; [else-branch: 152 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 152 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_10.val_ref), read$())
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@362@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@362@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@362@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@362@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@362@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@362@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 8
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t2 && __t2)
(push) ; 8
; [then-branch: 153 | False | live]
; [else-branch: 153 | True | live]
(push) ; 9
; [then-branch: 153 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 153 | True]
(push) ; 10
; [then-branch: 154 | False | live]
; [else-branch: 154 | True | live]
(push) ; 11
; [then-branch: 154 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 154 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 155 | True | live]
; [else-branch: 155 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 155 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_5.val_ref), read$())
; [eval] read$()
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@342@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@342@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb14
; [exec]
; __t3 := true
; [exec]
; __t14 := _14.val_bool
; [eval] !__t14
(push) ; 9
(set-option :timeout 10)
(assert (not $t@384@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not $t@384@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 156 | !($t@384@01) | live]
; [else-branch: 156 | $t@384@01 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 156 | !($t@384@01)]
(assert (not $t@384@01))
; [exec]
; label l13
; [exec]
; label bb12
; [exec]
; __t4 := true
; [exec]
; _18 := builtin$havoc_ref()
(declare-const ret@386@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_18.val_ref, write)
(declare-const $t@387@01 $Ref)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@379@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@375@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@386@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _18.val_ref := _11.val_ref
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@379@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@375@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@386@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_18.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@388@01 $Snap)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@367@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@367@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@389@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@389@01 $t@369@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@389@01 $t@388@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l14
; [exec]
; _19 := builtin$havoc_ref()
(declare-const ret@390@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_19.val_ref, write)
(declare-const $t@391@01 $Ref)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@386@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@379@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@375@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@390@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _19.val_ref := _6.val_ref
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@386@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@379@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@375@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@390@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_19.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@392@01 $Snap)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@347@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@393@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@393@01 $t@349@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@393@01 $t@392@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l15
; [exec]
; label l16
; [exec]
; _17 := builtin$havoc_ref()
(declare-const ret@394@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(bool(_17), write)
(declare-const $t@395@01 Bool)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(bool(_17), write)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@394@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@394@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (bool%trigger ($SortWrappers.BoolTo$Snap $t@395@01) ret@394@01))
; [exec]
; inhale _17.val_bool ==
;   not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_18.val_ref, _19.val_ref)
(declare-const $t@396@01 $Snap)
(assert (= $t@396@01 $Snap.unit))
; [eval] _17.val_bool == not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_18.val_ref, _19.val_ref)
; [eval] not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_18.val_ref, _19.val_ref)
(set-option :timeout 0)
(push) ; 10
; [eval] read$()
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@367@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@367@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@347@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@389@01
  $t@393@01) val_ref@367@01 val_ref@347@01))
(pop) ; 10
; Joined path conditions
(assert (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@389@01
  $t@393@01) val_ref@367@01 val_ref@347@01))
(assert (=
  $t@395@01
  (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ ($Snap.combine
    $t@389@01
    $t@393@01) val_ref@367@01 val_ref@347@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l17
; [eval] __t4 && __t4
(set-option :timeout 0)
(push) ; 10
; [then-branch: 157 | False | live]
; [else-branch: 157 | True | live]
(push) ; 11
; [then-branch: 157 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 157 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 158 | True | live]
; [else-branch: 158 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 158 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l15](_19.val_ref)), read$())
; [eval] read$()
(push) ; 11
(pop) ; 11
; Joined path conditions
; [eval] old[l15](_19.val_ref)
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@347@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] __t4 && __t4
(push) ; 11
; [then-branch: 159 | False | live]
; [else-branch: 159 | True | live]
(push) ; 12
; [then-branch: 159 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 159 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 160 | True | live]
; [else-branch: 160 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 160 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l14](_18.val_ref)), read$())
; [eval] read$()
(push) ; 12
(pop) ; 12
; Joined path conditions
; [eval] old[l14](_18.val_ref)
(push) ; 12
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@367@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] __t2 && (__t4 && __t4)
(push) ; 12
; [then-branch: 161 | False | live]
; [else-branch: 161 | True | live]
(push) ; 13
; [then-branch: 161 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 161 | True]
(push) ; 14
; [then-branch: 162 | False | live]
; [else-branch: 162 | True | live]
(push) ; 15
; [then-branch: 162 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 162 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 163 | True | live]
; [else-branch: 163 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 163 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_11.val_ref), read$())
; [eval] read$()
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@367@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@367@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@367@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@367@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@367@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@367@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t4 && __t4)
(push) ; 13
; [then-branch: 164 | False | live]
; [else-branch: 164 | True | live]
(push) ; 14
; [then-branch: 164 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 164 | True]
(push) ; 15
; [then-branch: 165 | False | live]
; [else-branch: 165 | True | live]
(push) ; 16
; [then-branch: 165 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 165 | True]
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 166 | True | live]
; [else-branch: 166 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 166 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_6.val_ref), read$())
; [eval] read$()
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@347@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb15
; [exec]
; __t5 := true
; [exec]
; __t15 := _17.val_bool
; [eval] !__t15
(push) ; 14
(set-option :timeout 10)
(assert (not $t@395@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not $t@395@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 167 | !($t@395@01) | live]
; [else-branch: 167 | $t@395@01 | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 167 | !($t@395@01)]
(assert (not $t@395@01))
; [exec]
; label l19
; [exec]
; label bb11
; [exec]
; __t7 := true
; [exec]
; _13 := builtin$havoc_ref()
(declare-const ret@397@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.val_bool, write)
(declare-const $t@398@01 Bool)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@397@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@397@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@397@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _13.val_bool := false
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@397@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@397@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l29
; [exec]
; label bb13
; [exec]
; __t8 := true
; [exec]
; __t16 := _13.val_bool
; [eval] !__t16
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 168 | True | live]
; [else-branch: 168 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 168 | True]
; [exec]
; label l21
; [exec]
; label bb8
; [exec]
; __t9 := true
; [exec]
; _21 := builtin$havoc_ref()
(declare-const ret@399@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_21.val_ref, write)
(declare-const $t@400@01 $Ref)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@390@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@386@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@379@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@375@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@399@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _21.val_ref := _12.val_ref
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@390@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@386@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@379@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@375@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@399@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_21.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(declare-const $t@401@01 $Snap)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@372@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(declare-const $t@402@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@402@01 $t@374@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@402@01 $t@401@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l22
; [exec]
; _22 := builtin$havoc_ref()
(declare-const ret@403@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_22.val_ref, write)
(declare-const $t@404@01 $Ref)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@399@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@390@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@386@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@379@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@375@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@403@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _22.val_ref := _7.val_ref
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@399@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@390@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@386@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@379@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@375@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@370@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@365@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@360@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@355@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@350@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@345@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@340@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@335@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _2@312@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= _1@311@01 ret@403@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_22.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(declare-const $t@405@01 $Snap)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@352@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@352@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(declare-const $t@406@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@406@01 $t@354@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@406@01 $t@405@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l23
; [exec]
; label l24
; [exec]
; _20 := builtin$havoc_ref()
(declare-const ret@407@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(bool(_20), write)
(declare-const $t@408@01 Bool)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(bool(_20), write)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@397@01 ret@407@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@407@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@407@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@407@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (bool%trigger ($SortWrappers.BoolTo$Snap $t@408@01) ret@407@01))
; [exec]
; inhale _20.val_bool ==
;   not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_21.val_ref, _22.val_ref)
(declare-const $t@409@01 $Snap)
(assert (= $t@409@01 $Snap.unit))
; [eval] _20.val_bool == not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_21.val_ref, _22.val_ref)
; [eval] not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$(_21.val_ref, _22.val_ref)
(set-option :timeout 0)
(push) ; 16
; [eval] read$()
(push) ; 17
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@372@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@372@01)))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 17
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@352@01)))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(assert (not (=>
  (< $Perm.No (read$ $Snap.unit))
  (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@402@01
  $t@406@01) val_ref@372@01 val_ref@352@01))
(pop) ; 16
; Joined path conditions
(assert (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$%precondition ($Snap.combine
  $t@402@01
  $t@406@01) val_ref@372@01 val_ref@352@01))
(assert (=
  $t@408@01
  (not_equals$__$TY$____TYPARAM__$S$__$__TYPARAM__$S$__$$bool$ ($Snap.combine
    $t@402@01
    $t@406@01) val_ref@372@01 val_ref@352@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l25
; [eval] __t9 && __t9
(set-option :timeout 0)
(push) ; 16
; [then-branch: 169 | False | live]
; [else-branch: 169 | True | live]
(push) ; 17
; [then-branch: 169 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 169 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 170 | True | live]
; [else-branch: 170 | False | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 170 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l23](_22.val_ref)), read$())
; [eval] read$()
(push) ; 17
(pop) ; 17
; Joined path conditions
; [eval] old[l23](_22.val_ref)
(push) ; 17
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@352@01)))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [eval] __t9 && __t9
(push) ; 17
; [then-branch: 171 | False | live]
; [else-branch: 171 | True | live]
(push) ; 18
; [then-branch: 171 | False]
(assert false)
(pop) ; 18
(push) ; 18
; [else-branch: 171 | True]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 172 | True | live]
; [else-branch: 172 | False | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 172 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l22](_21.val_ref)), read$())
; [eval] read$()
(push) ; 18
(pop) ; 18
; Joined path conditions
; [eval] old[l22](_21.val_ref)
(push) ; 18
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@372@01)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    ($Perm.min
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] __t2 && (__t9 && __t9)
(push) ; 18
; [then-branch: 173 | False | live]
; [else-branch: 173 | True | live]
(push) ; 19
; [then-branch: 173 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 173 | True]
(push) ; 20
; [then-branch: 174 | False | live]
; [else-branch: 174 | True | live]
(push) ; 21
; [then-branch: 174 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 174 | True]
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(push) ; 18
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | True | live]
; [else-branch: 175 | False | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 175 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_12.val_ref), read$())
; [eval] read$()
(push) ; 19
(pop) ; 19
; Joined path conditions
(push) ; 19
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(push) ; 19
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@372@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@372@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@372@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@372@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@372@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@372@01)))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t9 && __t9)
(push) ; 19
; [then-branch: 176 | False | live]
; [else-branch: 176 | True | live]
(push) ; 20
; [then-branch: 176 | False]
(assert false)
(pop) ; 20
(push) ; 20
; [else-branch: 176 | True]
(push) ; 21
; [then-branch: 177 | False | live]
; [else-branch: 177 | True | live]
(push) ; 22
; [then-branch: 177 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 177 | True]
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 178 | True | live]
; [else-branch: 178 | False | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 178 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_7.val_ref), read$())
; [eval] read$()
(push) ; 20
(pop) ; 20
; Joined path conditions
(push) ; 20
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(push) ; 20
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@359@01)) val_ref@352@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@339@01)) val_ref@352@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@352@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@352@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@352@01)))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      ($Perm.min
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb16
; [exec]
; __t10 := true
; [exec]
; __t17 := _20.val_bool
; [eval] !__t17
(push) ; 20
(set-option :timeout 10)
(assert (not $t@408@01))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (not $t@408@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 179 | !($t@408@01) | live]
; [else-branch: 179 | $t@408@01 | live]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 179 | !($t@408@01)]
(assert (not $t@408@01))
; [exec]
; label l27
; [exec]
; label bb7
; [exec]
; __t12 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@410@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_bool, write)
(declare-const $t@411@01 Bool)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@407@01 ret@410@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@397@01 ret@410@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@410@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@410@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@410@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_bool := false
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@407@01 ret@410@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@397@01 ret@410@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@410@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@410@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l31
; [exec]
; label bb9
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@359@01)
  ($Snap.combine
    $t@378@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@359@01)))
      ($Snap.combine
        $t@389@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))
          $t@402@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@412@01 $Ref)
(assert (= _old$pre$0@412@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))))
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@339@01)
  ($Snap.combine
    $t@382@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@339@01)))
      ($Snap.combine
        $t@393@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01)))))
          $t@406@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))))
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01)))))))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@413@01 $Ref)
(assert (=
  _old$pre$1@413@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))))
; [exec]
; fold acc(bool(_0), write)
(assert (bool%trigger ($SortWrappers.BoolTo$Snap false) ret@410@01))
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$()) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$1), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  _old$pre$0@412@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01)) _old$pre$0@412@01)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  _old$pre$1@413@01)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(bool(_0), write)
; [exec]
; label end_of_method
(pop) ; 20
(set-option :timeout 0)
(push) ; 20
; [else-branch: 179 | $t@408@01]
(assert $t@408@01)
(pop) ; 20
; [eval] !!__t17
; [eval] !__t17
(push) ; 20
(set-option :timeout 10)
(assert (not (not $t@408@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not $t@408@01))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 180 | $t@408@01 | live]
; [else-branch: 180 | !($t@408@01) | live]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 180 | $t@408@01]
(assert $t@408@01)
; [exec]
; label l26
; [exec]
; label l30
; [exec]
; label bb6
; [exec]
; __t11 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@414@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_bool, write)
(declare-const $t@415@01 Bool)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@407@01 ret@414@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@397@01 ret@414@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@414@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@414@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@414@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_bool := true
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@407@01 ret@414@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@397@01 ret@414@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@414@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@414@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb9
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@359@01)
  ($Snap.combine
    $t@378@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@359@01)))
      ($Snap.combine
        $t@389@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))
          $t@402@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@416@01 $Ref)
(assert (= _old$pre$0@416@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))))
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@339@01)
  ($Snap.combine
    $t@382@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@339@01)))
      ($Snap.combine
        $t@393@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01)))))
          $t@406@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))))
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01)))))))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@417@01 $Ref)
(assert (=
  _old$pre$1@417@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))))
; [exec]
; fold acc(bool(_0), write)
(assert (bool%trigger ($SortWrappers.BoolTo$Snap true) ret@414@01))
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$()) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$1), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  _old$pre$0@416@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01)) _old$pre$0@416@01)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  _old$pre$1@417@01)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(bool(_0), write)
; [exec]
; label end_of_method
(pop) ; 20
(set-option :timeout 0)
(push) ; 20
; [else-branch: 180 | !($t@408@01)]
(assert (not $t@408@01))
(pop) ; 20
(pop) ; 19
; [eval] !(__t1 && (__t9 && __t9))
; [eval] __t1 && (__t9 && __t9)
(push) ; 19
; [then-branch: 181 | False | live]
; [else-branch: 181 | True | live]
(push) ; 20
; [then-branch: 181 | False]
(assert false)
(pop) ; 20
(push) ; 20
; [else-branch: 181 | True]
(push) ; 21
; [then-branch: 182 | False | live]
; [else-branch: 182 | True | live]
(push) ; 22
; [then-branch: 182 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 182 | True]
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
; [then-branch: 183 | False | dead]
; [else-branch: 183 | True | live]
(push) ; 19
; [else-branch: 183 | True]
(pop) ; 19
(pop) ; 18
; [eval] !(__t2 && (__t9 && __t9))
; [eval] __t2 && (__t9 && __t9)
(push) ; 18
; [then-branch: 184 | False | live]
; [else-branch: 184 | True | live]
(push) ; 19
; [then-branch: 184 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 184 | True]
(push) ; 20
; [then-branch: 185 | False | live]
; [else-branch: 185 | True | live]
(push) ; 21
; [then-branch: 185 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 185 | True]
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
; [then-branch: 186 | False | dead]
; [else-branch: 186 | True | live]
(push) ; 18
; [else-branch: 186 | True]
(pop) ; 18
(pop) ; 17
; [eval] !(__t9 && __t9)
; [eval] __t9 && __t9
(push) ; 17
; [then-branch: 187 | False | live]
; [else-branch: 187 | True | live]
(push) ; 18
; [then-branch: 187 | False]
(assert false)
(pop) ; 18
(push) ; 18
; [else-branch: 187 | True]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
; [then-branch: 188 | False | dead]
; [else-branch: 188 | True | live]
(push) ; 17
; [else-branch: 188 | True]
(pop) ; 17
(pop) ; 16
; [eval] !(__t9 && __t9)
; [eval] __t9 && __t9
(push) ; 16
; [then-branch: 189 | False | live]
; [else-branch: 189 | True | live]
(push) ; 17
; [then-branch: 189 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 189 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
; [then-branch: 190 | False | dead]
; [else-branch: 190 | True | live]
(push) ; 16
; [else-branch: 190 | True]
(pop) ; 16
(pop) ; 15
; [eval] !!__t16
; [eval] !__t16
; [then-branch: 191 | False | dead]
; [else-branch: 191 | True | live]
(push) ; 15
; [else-branch: 191 | True]
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 167 | $t@395@01]
(assert $t@395@01)
(pop) ; 14
; [eval] !!__t15
; [eval] !__t15
(push) ; 14
(set-option :timeout 10)
(assert (not (not $t@395@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not $t@395@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 192 | $t@395@01 | live]
; [else-branch: 192 | !($t@395@01) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 192 | $t@395@01]
(assert $t@395@01)
; [exec]
; label l18
; [exec]
; label l28
; [exec]
; label bb10
; [exec]
; __t6 := true
; [exec]
; _13 := builtin$havoc_ref()
(declare-const ret@418@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.val_bool, write)
(declare-const $t@419@01 Bool)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@418@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@418@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@418@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _13.val_bool := true
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@418@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@418@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb13
; [exec]
; __t8 := true
; [exec]
; __t16 := _13.val_bool
; [eval] !__t16
; [then-branch: 193 | False | dead]
; [else-branch: 193 | True | live]
(set-option :timeout 0)
(push) ; 15
; [else-branch: 193 | True]
(pop) ; 15
; [eval] !!__t16
; [eval] !__t16
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 194 | True | live]
; [else-branch: 194 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 194 | True]
; [exec]
; label l20
(push) ; 16
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 195 | True | live]
; [else-branch: 195 | False | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 195 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_12.val_ref), read$())
; [eval] read$()
(push) ; 17
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@372@01)))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 196 | True | live]
; [else-branch: 196 | False | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 196 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_7.val_ref), read$())
; [eval] read$()
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@352@01)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb6
; [exec]
; __t11 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@420@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_bool, write)
(declare-const $t@421@01 Bool)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@418@01 ret@420@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@420@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@420@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@420@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_bool := true
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@418@01 ret@420@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@394@01 ret@420@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@420@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb9
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@359@01)
  ($Snap.combine
    $t@378@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@359@01)))
      ($Snap.combine
        $t@389@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))
          $t@374@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@422@01 $Ref)
(assert (= _old$pre$0@422@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))))
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@339@01)
  ($Snap.combine
    $t@382@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@339@01)))
      ($Snap.combine
        $t@393@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01)))))
          $t@354@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))))
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01)))))))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@423@01 $Ref)
(assert (=
  _old$pre$1@423@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))))
; [exec]
; fold acc(bool(_0), write)
(assert (bool%trigger ($SortWrappers.BoolTo$Snap true) ret@420@01))
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$()) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$1), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  _old$pre$0@422@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01)) _old$pre$0@422@01)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  _old$pre$1@423@01)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(bool(_0), write)
; [exec]
; label end_of_method
(pop) ; 17
; [eval] !__t1
; [then-branch: 197 | False | dead]
; [else-branch: 197 | True | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 197 | True]
(pop) ; 17
(pop) ; 16
; [eval] !__t2
; [then-branch: 198 | False | dead]
; [else-branch: 198 | True | live]
(push) ; 16
; [else-branch: 198 | True]
(pop) ; 16
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 192 | !($t@395@01)]
(assert (not $t@395@01))
(pop) ; 14
(pop) ; 13
; [eval] !(__t1 && (__t4 && __t4))
; [eval] __t1 && (__t4 && __t4)
(push) ; 13
; [then-branch: 199 | False | live]
; [else-branch: 199 | True | live]
(push) ; 14
; [then-branch: 199 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 199 | True]
(push) ; 15
; [then-branch: 200 | False | live]
; [else-branch: 200 | True | live]
(push) ; 16
; [then-branch: 200 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 200 | True]
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [then-branch: 201 | False | dead]
; [else-branch: 201 | True | live]
(push) ; 13
; [else-branch: 201 | True]
(pop) ; 13
(pop) ; 12
; [eval] !(__t2 && (__t4 && __t4))
; [eval] __t2 && (__t4 && __t4)
(push) ; 12
; [then-branch: 202 | False | live]
; [else-branch: 202 | True | live]
(push) ; 13
; [then-branch: 202 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 202 | True]
(push) ; 14
; [then-branch: 203 | False | live]
; [else-branch: 203 | True | live]
(push) ; 15
; [then-branch: 203 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 203 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
; [then-branch: 204 | False | dead]
; [else-branch: 204 | True | live]
(push) ; 12
; [else-branch: 204 | True]
(pop) ; 12
(pop) ; 11
; [eval] !(__t4 && __t4)
; [eval] __t4 && __t4
(push) ; 11
; [then-branch: 205 | False | live]
; [else-branch: 205 | True | live]
(push) ; 12
; [then-branch: 205 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 205 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
; [then-branch: 206 | False | dead]
; [else-branch: 206 | True | live]
(push) ; 11
; [else-branch: 206 | True]
(pop) ; 11
(pop) ; 10
; [eval] !(__t4 && __t4)
; [eval] __t4 && __t4
(push) ; 10
; [then-branch: 207 | False | live]
; [else-branch: 207 | True | live]
(push) ; 11
; [then-branch: 207 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 207 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
; [then-branch: 208 | False | dead]
; [else-branch: 208 | True | live]
(push) ; 10
; [else-branch: 208 | True]
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 156 | $t@384@01]
(assert $t@384@01)
(pop) ; 9
; [eval] !!__t14
; [eval] !__t14
(push) ; 9
(set-option :timeout 10)
(assert (not (not $t@384@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not $t@384@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 209 | $t@384@01 | live]
; [else-branch: 209 | !($t@384@01) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 209 | $t@384@01]
(assert $t@384@01)
; [exec]
; label l12
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 210 | True | live]
; [else-branch: 210 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 210 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_11.val_ref), read$())
; [eval] read$()
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@367@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@359@01))))
  val_ref@367@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 211 | True | live]
; [else-branch: 211 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 211 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_6.val_ref), read$())
; [eval] read$()
(push) ; 12
(pop) ; 12
; Joined path conditions
(push) ; 12
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@347@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@339@01))))
  val_ref@347@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb10
; [exec]
; __t6 := true
; [exec]
; _13 := builtin$havoc_ref()
(declare-const ret@424@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.val_bool, write)
(declare-const $t@425@01 Bool)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@424@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@424@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _13.val_bool := true
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@424@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb13
; [exec]
; __t8 := true
; [exec]
; __t16 := _13.val_bool
; [eval] !__t16
; [then-branch: 212 | False | dead]
; [else-branch: 212 | True | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 212 | True]
(pop) ; 12
; [eval] !!__t16
; [eval] !__t16
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 213 | True | live]
; [else-branch: 213 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 213 | True]
; [exec]
; label l20
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 214 | True | live]
; [else-branch: 214 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 214 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_12.val_ref), read$())
; [eval] read$()
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01))))))
  val_ref@372@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 215 | True | live]
; [else-branch: 215 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 215 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_7.val_ref), read$())
; [eval] read$()
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
  val_ref@352@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb6
; [exec]
; __t11 := true
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@426@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_0.val_bool, write)
(declare-const $t@427@01 Bool)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@424@01 ret@426@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@426@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@426@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _0.val_bool := true
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@424@01 ret@426@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ret@383@01 ret@426@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb9
; [exec]
; __t13 := true
; [exec]
; label return
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@359@01)
  ($Snap.combine
    $t@378@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@359@01)))
      ($Snap.combine
        $t@369@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@359@01)))))
          $t@374@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@428@01 $Ref)
(assert (= _old$pre$0@428@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))))
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_2.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        ($Perm.min
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          ($Perm.min
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            ($Perm.min
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              ($Perm.min
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@339@01)
  ($Snap.combine
    $t@382@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@339@01)))
      ($Snap.combine
        $t@349@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@339@01)))))
          $t@354@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))))
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01)))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@429@01 $Ref)
(assert (=
  _old$pre$1@429@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))))
; [exec]
; fold acc(bool(_0), write)
(assert (bool%trigger ($SortWrappers.BoolTo$Snap true) ret@426@01))
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$()) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$1), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  _old$pre$0@428@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@331@01)) _old$pre$0@428@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 15
(pop) ; 15
; Joined path conditions
(push) ; 15
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@331@01))))
  _old$pre$1@429@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(bool(_0), write)
; [exec]
; label end_of_method
(pop) ; 14
; [eval] !__t1
; [then-branch: 216 | False | dead]
; [else-branch: 216 | True | live]
(set-option :timeout 0)
(push) ; 14
; [else-branch: 216 | True]
(pop) ; 14
(pop) ; 13
; [eval] !__t2
; [then-branch: 217 | False | dead]
; [else-branch: 217 | True | live]
(push) ; 13
; [else-branch: 217 | True]
(pop) ; 13
(pop) ; 12
(pop) ; 11
; [eval] !__t1
; [then-branch: 218 | False | dead]
; [else-branch: 218 | True | live]
(push) ; 11
; [else-branch: 218 | True]
(pop) ; 11
(pop) ; 10
; [eval] !__t2
; [then-branch: 219 | False | dead]
; [else-branch: 219 | True | live]
(push) ; 10
; [else-branch: 219 | True]
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 209 | !($t@384@01)]
(assert (not $t@384@01))
(pop) ; 9
(pop) ; 8
; [eval] !(__t1 && (__t2 && __t2))
; [eval] __t1 && (__t2 && __t2)
(push) ; 8
; [then-branch: 220 | False | live]
; [else-branch: 220 | True | live]
(push) ; 9
; [then-branch: 220 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 220 | True]
(push) ; 10
; [then-branch: 221 | False | live]
; [else-branch: 221 | True | live]
(push) ; 11
; [then-branch: 221 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 221 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
; [then-branch: 222 | False | dead]
; [else-branch: 222 | True | live]
(push) ; 8
; [else-branch: 222 | True]
(pop) ; 8
(pop) ; 7
; [eval] !(__t2 && (__t2 && __t2))
; [eval] __t2 && (__t2 && __t2)
(push) ; 7
; [then-branch: 223 | False | live]
; [else-branch: 223 | True | live]
(push) ; 8
; [then-branch: 223 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 223 | True]
(push) ; 9
; [then-branch: 224 | False | live]
; [else-branch: 224 | True | live]
(push) ; 10
; [then-branch: 224 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 224 | True]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
; [then-branch: 225 | False | dead]
; [else-branch: 225 | True | live]
(push) ; 7
; [else-branch: 225 | True]
(pop) ; 7
(pop) ; 6
; [eval] !(__t2 && __t2)
; [eval] __t2 && __t2
(push) ; 6
; [then-branch: 226 | False | live]
; [else-branch: 226 | True | live]
(push) ; 7
; [then-branch: 226 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 226 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
; [then-branch: 227 | False | dead]
; [else-branch: 227 | True | live]
(push) ; 6
; [else-branch: 227 | True]
(pop) ; 6
(pop) ; 5
; [eval] !(__t2 && __t2)
; [eval] __t2 && __t2
(push) ; 5
; [then-branch: 228 | False | live]
; [else-branch: 228 | True | live]
(push) ; 6
; [then-branch: 228 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 228 | True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [then-branch: 229 | False | dead]
; [else-branch: 229 | True | live]
(push) ; 5
; [else-branch: 229 | True]
(pop) ; 5
(pop) ; 4
; [eval] !__t1
; [then-branch: 230 | False | dead]
; [else-branch: 230 | True | live]
(push) ; 4
; [else-branch: 230 | True]
(pop) ; 4
(pop) ; 3
; [eval] !__t0
; [then-branch: 231 | False | dead]
; [else-branch: 231 | True | live]
(push) ; 3
; [else-branch: 231 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m_348_cgmath_point$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$div$opensqu$0$closesqu$ ----------
(declare-const _0@430@01 $Ref)
(declare-const _0@431@01 $Ref)
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
(declare-const __t0@432@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@433@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@434@01 Bool)
; [exec]
; var __t3: Bool
(declare-const __t3@435@01 Bool)
; [exec]
; var __t4: Bool
(declare-const __t4@436@01 Bool)
; [exec]
; var __t5: Bool
(declare-const __t5@437@01 Bool)
; [exec]
; var __t6: Bool
(declare-const __t6@438@01 Bool)
; [exec]
; var __t7: Bool
(declare-const __t7@439@01 Bool)
; [exec]
; var __t8: Bool
(declare-const __t8@440@01 Bool)
; [exec]
; var __t9: Bool
(declare-const __t9@441@01 Bool)
; [exec]
; var __t10: Bool
(declare-const __t10@442@01 Bool)
; [exec]
; var __t11: Bool
(declare-const __t11@443@01 Bool)
; [exec]
; var __t12: Bool
(declare-const __t12@444@01 Bool)
; [exec]
; var __t13: Bool
(declare-const __t13@445@01 Bool)
; [exec]
; var _1: Ref
(declare-const _1@446@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@447@01 $Ref)
; [exec]
; var _3: Int
(declare-const _3@448@01 Int)
; [exec]
; var _4: Ref
(declare-const _4@449@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@450@01 $Ref)
; [exec]
; var _6: Ref
(declare-const _6@451@01 $Ref)
; [exec]
; var _7: Ref
(declare-const _7@452@01 $Ref)
; [exec]
; var _8: Ref
(declare-const _8@453@01 $Ref)
; [exec]
; var _9: Int
(declare-const _9@454@01 Int)
; [exec]
; var _10: Int
(declare-const _10@455@01 Int)
; [exec]
; var _11: Ref
(declare-const _11@456@01 $Ref)
; [exec]
; var _12: Ref
(declare-const _12@457@01 $Ref)
; [exec]
; var _13: Ref
(declare-const _13@458@01 $Ref)
; [exec]
; var _14: Ref
(declare-const _14@459@01 $Ref)
; [exec]
; var _15: Ref
(declare-const _15@460@01 $Ref)
; [exec]
; var _16: Int
(declare-const _16@461@01 Int)
; [exec]
; var _17: Int
(declare-const _17@462@01 Int)
; [exec]
; var _18: Ref
(declare-const _18@463@01 $Ref)
; [exec]
; var _19: Ref
(declare-const _19@464@01 $Ref)
; [exec]
; var _20: Ref
(declare-const _20@465@01 $Ref)
; [exec]
; var _21: Ref
(declare-const _21@466@01 $Ref)
; [exec]
; var _22: Ref
(declare-const _22@467@01 $Ref)
; [exec]
; var _23: Int
(declare-const _23@468@01 Int)
; [exec]
; var _24: Int
(declare-const _24@469@01 Int)
; [exec]
; var _25: Ref
(declare-const _25@470@01 $Ref)
; [exec]
; var _26: Ref
(declare-const _26@471@01 $Ref)
; [exec]
; var _27: Ref
(declare-const _27@472@01 $Ref)
; [exec]
; var _28: Ref
(declare-const _28@473@01 $Ref)
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
; __t5 := false
; [exec]
; __t6 := false
; [exec]
; __t7 := false
; [exec]
; inhale acc(isize(_1), write) &&
;   acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_(_2), write)
(declare-const $t@474@01 $Snap)
(assert (= $t@474@01 ($Snap.combine ($Snap.first $t@474@01) ($Snap.second $t@474@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@475@01 $Snap)
(assert (= $t@475@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@476@01 $Snap)
(assert (= $t@476@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@477@01 $Snap)
(assert (= $t@477@01 $Snap.unit))
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
; _6 := builtin$havoc_ref()
(declare-const ret@478@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.val_int, write)
(declare-const $t@479@01 Int)
(assert (not (= ret@478@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(isize(_1), write)
(assert (=
  ($Snap.first $t@474@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@474@01))
    ($Snap.second ($Snap.first $t@474@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@478@01 _1@446@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _1@446@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first $t@474@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@474@01)))
    ($Snap.second ($Snap.second ($Snap.first $t@474@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first $t@474@01))) $Snap.unit))
; [eval] -9223372036854775808 <= self.val_int
; [eval] -9223372036854775808
(assert (<=
  (- 0 9223372036854775808)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))))
(assert (= ($Snap.second ($Snap.second ($Snap.first $t@474@01))) $Snap.unit))
; [eval] self.val_int <= 9223372036854775807
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))
  9223372036854775807))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (isize%trigger ($Snap.first $t@474@01) _1@446@01))
; [exec]
; _6.val_int := _1.val_int
(declare-const val_int@480@01 Int)
(assert (=
  val_int@480@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@446@01 ret@478@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l0
; [exec]
; _7 := builtin$havoc_ref()
(declare-const ret@481@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_(_7), write)
(declare-const $t@482@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@447@01 ret@481@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$(_2,
;   _7)
(declare-const $t@483@01 $Snap)
(assert (= $t@483@01 $Snap.unit))
; [eval] m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$(_2, _7)
(set-option :timeout 0)
(push) ; 3
; [eval] read$()
(push) ; 4
(assert (read$%precondition $Snap.unit))
(pop) ; 4
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 4
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap.combine
  ($Snap.second $t@474@01)
  $t@482@01) _2@447@01 ret@481@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (read$%precondition $Snap.unit)
  (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap.combine
    ($Snap.second $t@474@01)
    $t@482@01) _2@447@01 ret@481@01)))
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ ($Snap.combine
  ($Snap.second $t@474@01)
  $t@482@01) _2@447@01 ret@481@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@484@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple2$isize$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_(_5), write)
(declare-const $t@485@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(tuple2$isize$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_(_5), write)
(assert (= $t@485@01 ($Snap.combine ($Snap.first $t@485@01) ($Snap.second $t@485@01))))
(assert (not (= ret@484@01 $Ref.null)))
(assert (=
  ($Snap.second $t@485@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@485@01))
    ($Snap.second ($Snap.second $t@485@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@485@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@485@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@485@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ret@481@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@485@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  _2@447@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@485@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (tuple2$isize$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger $t@485@01 ret@484@01))
; [exec]
; _5.tuple_0 := _6
; [exec]
; label l2
; [exec]
; _5.tuple_1 := _7
; [exec]
; label l3
; [exec]
; _3 := builtin$havoc_int()
(declare-const ret@486@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@487@01 $Snap)
(assert (= $t@487@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _3 := _5.tuple_0.val_int
; [exec]
; label l4
; [exec]
; _4 := builtin$havoc_ref()
(declare-const ret@488@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_(_4), write)
(declare-const $t@489@01 $Snap)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@485@01))))
  ret@488@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@481@01 ret@488@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@447@01 ret@488@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$(_5.tuple_1,
;   _4)
(declare-const $t@490@01 $Snap)
(assert (= $t@490@01 $Snap.unit))
; [eval] m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$(_5.tuple_1, _4)
(set-option :timeout 0)
(push) ; 3
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap.combine
  $t@482@01
  $t@489@01) ret@481@01 ret@488@01))
(pop) ; 3
; Joined path conditions
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$%precondition ($Snap.combine
  $t@482@01
  $t@489@01) ret@481@01 ret@488@01))
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$memory_eq$$__$TY$__m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_$$bool$ ($Snap.combine
  $t@482@01
  $t@489@01) ret@481@01 ret@488@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; _9 := builtin$havoc_int()
(declare-const ret@491@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@492@01 $Snap)
(assert (= $t@492@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _9 := _3
; [exec]
; label l6
; [exec]
; _10 := builtin$havoc_int()
(declare-const ret@493@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@494@01 $Snap)
(assert (= $t@494@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_(_4), write)
(assert (= $t@489@01 ($Snap.combine ($Snap.first $t@489@01) ($Snap.second $t@489@01))))
(assert (not (= ret@488@01 $Ref.null)))
(assert (=
  ($Snap.second $t@489@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@489@01))
    ($Snap.second ($Snap.second $t@489@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@485@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@489@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@489@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@489@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@489@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@485@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@489@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@489@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@485@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$isize$_end_%trigger $t@489@01 ret@488@01))
; [exec]
; unfold acc(isize(_4.f$x), write)
(assert (=
  ($Snap.first ($Snap.second $t@489@01))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second $t@489@01)))
    ($Snap.second ($Snap.first ($Snap.second $t@489@01))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@478@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@446@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second $t@489@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@489@01))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@489@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@489@01))))
  $Snap.unit))
; [eval] -9223372036854775808 <= self.val_int
; [eval] -9223372036854775808
(assert (<=
  (- 0 9223372036854775808)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@489@01))))
  $Snap.unit))
; [eval] self.val_int <= 9223372036854775807
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))
  9223372036854775807))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (isize%trigger ($Snap.first ($Snap.second $t@489@01)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01))))
; [exec]
; _10 := _4.f$x.val_int
(declare-const _10@495@01 Int)
(assert (=
  _10@495@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))))
; [exec]
; label l7
; [exec]
; _11 := builtin$havoc_ref()
(declare-const ret@496@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_11.val_bool, write)
(declare-const $t@497@01 Bool)
(assert (not (= ret@496@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _11.val_bool := _10 == 0
; [eval] _10 == 0
(declare-const val_bool@498@01 Bool)
(assert (= val_bool@498@01 (= _10@495@01 0)))
; [exec]
; __t8 := _11.val_bool
; [exec]
; assert !__t8
; [eval] !__t8
(set-option :timeout 0)
(push) ; 3
(assert (not (not val_bool@498@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@489@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@489@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@485@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@485@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@485@01))))
  ret@481@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) ret@478@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@478@01 _1@446@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) _1@446@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@481@01 _2@447@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@485@01))))
  _2@447@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($Snap.second $t@474@01) $t@482@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second $t@474@01)
    ($Snap.second ($Snap.second ($Snap.second $t@485@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@482@01 ($Snap.second $t@474@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@482@01 ($Snap.second ($Snap.second ($Snap.second $t@485@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second $t@485@01)))
    ($Snap.second $t@474@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($Snap.second ($Snap.second ($Snap.second $t@485@01))) $t@482@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second $t@485@01))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second $t@485@01))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))
    ($Snap.first ($Snap.second $t@485@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))
    ($Snap.first ($Snap.second $t@485@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))
    val_int@480@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@480@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@480@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))
    val_int@480@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= _1@446@01 ret@478@01))
    (not (= _1@446@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)))))
  (and
    (not (= ret@478@01 _1@446@01))
    (not (= ret@478@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)))))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) _1@446@01))
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) ret@478@01)))))
; [eval] !__t8
(set-option :timeout 0)
(push) ; 3
(assert (not (not val_bool@498@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@489@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@489@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@485@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@485@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@485@01))))
  ret@481@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) ret@478@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@478@01 _1@446@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) _1@446@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@481@01 _2@447@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@485@01))))
  _2@447@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($Snap.second $t@474@01) $t@482@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second $t@474@01)
    ($Snap.second ($Snap.second ($Snap.second $t@485@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@482@01 ($Snap.second $t@474@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@482@01 ($Snap.second ($Snap.second ($Snap.second $t@485@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second $t@485@01)))
    ($Snap.second $t@474@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($Snap.second ($Snap.second ($Snap.second $t@485@01))) $t@482@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second $t@485@01))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second $t@485@01))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))
    ($Snap.first ($Snap.second $t@485@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))
    ($Snap.first ($Snap.second $t@485@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))
    val_int@480@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@480@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@480@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))
    val_int@480@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= _1@446@01 ret@478@01))
    (not (= _1@446@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)))))
  (and
    (not (= ret@478@01 _1@446@01))
    (not (= ret@478@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)))))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) _1@446@01))
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) ret@478@01)))))
; [eval] !__t8
(set-option :timeout 0)
(push) ; 3
(assert (not (not val_bool@498@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@489@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@489@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@485@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@485@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@485@01))))
  ret@481@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) ret@478@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@478@01 _1@446@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) _1@446@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ret@481@01 _2@447@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@485@01))))
  _2@447@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($Snap.second $t@474@01) $t@482@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second $t@474@01)
    ($Snap.second ($Snap.second ($Snap.second $t@485@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@482@01 ($Snap.second $t@474@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $t@482@01 ($Snap.second ($Snap.second ($Snap.second $t@485@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second $t@485@01)))
    ($Snap.second $t@474@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($Snap.second ($Snap.second ($Snap.second $t@485@01))) $t@482@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second $t@485@01))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second $t@485@01))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))
    ($Snap.first ($Snap.second $t@485@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))
    ($Snap.first ($Snap.second $t@485@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@489@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))
    val_int@480@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@480@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    val_int@480@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@474@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second $t@489@01))))
    val_int@480@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= _1@446@01 ret@478@01))
    (not (= _1@446@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)))))
  (and
    (not (= ret@478@01 _1@446@01))
    (not (= ret@478@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)))))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) _1@446@01))
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@489@01)) ret@478@01)))))
; [eval] !__t8
(set-option :timeout 0)
(push) ; 3
(assert (not (not val_bool@498@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- m_348_cgmath_point$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$4$closesqu$$$hash$opensqu$0$closesqu$ ----------
(declare-const _0@499@01 $Ref)
(declare-const _0@500@01 $Ref)
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
(declare-const __t0@501@01 Bool)
; [exec]
; var __t1: Bool
(declare-const __t1@502@01 Bool)
; [exec]
; var __t2: Bool
(declare-const __t2@503@01 Bool)
; [exec]
; var __t3: Bool
(declare-const __t3@504@01 Bool)
; [exec]
; var __t4: Bool
(declare-const __t4@505@01 Bool)
; [exec]
; var _old$pre$0: Ref
(declare-const _old$pre$0@506@01 $Ref)
; [exec]
; var _old$pre$1: Ref
(declare-const _old$pre$1@507@01 $Ref)
; [exec]
; var _1: Ref
(declare-const _1@508@01 $Ref)
; [exec]
; var _2: Ref
(declare-const _2@509@01 $Ref)
; [exec]
; var _4: Ref
(declare-const _4@510@01 $Ref)
; [exec]
; var _5: Ref
(declare-const _5@511@01 $Ref)
; [exec]
; var _6: Ref
(declare-const _6@512@01 $Ref)
; [exec]
; var _7: Ref
(declare-const _7@513@01 $Ref)
; [exec]
; var _8: Ref
(declare-const _8@514@01 $Ref)
; [exec]
; var _9: Ref
(declare-const _9@515@01 $Ref)
; [exec]
; var _10: Ref
(declare-const _10@516@01 $Ref)
; [exec]
; var _11: Ref
(declare-const _11@517@01 $Ref)
; [exec]
; var _12: Ref
(declare-const _12@518@01 $Ref)
; [exec]
; var _13: Ref
(declare-const _13@519@01 $Ref)
; [exec]
; var _14: Ref
(declare-const _14@520@01 $Ref)
; [exec]
; var _15: Ref
(declare-const _15@521@01 $Ref)
; [exec]
; var _16: Ref
(declare-const _16@522@01 $Ref)
; [exec]
; var _17: Ref
(declare-const _17@523@01 $Ref)
; [exec]
; var _18: Ref
(declare-const _18@524@01 $Ref)
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
;   (acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$()) &&
;   (acc(_2.val_ref, write) && acc(__TYPARAM__$__HS$__(_2.val_ref), write)))
(declare-const $t@525@01 $Snap)
(assert (= $t@525@01 ($Snap.combine ($Snap.first $t@525@01) ($Snap.second $t@525@01))))
(assert (not (= _1@508@01 $Ref.null)))
(assert (=
  ($Snap.second $t@525@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@525@01))
    ($Snap.second ($Snap.second $t@525@01)))))
; [eval] read$()
(push) ; 3
(assert (read$%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=
  ($Snap.second ($Snap.second $t@525@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@525@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@525@01))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@508@01 _2@509@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _2@509@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@526@01 $Snap)
(assert (= $t@526@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@527@01 $Snap)
(assert (= $t@527@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@528@01 $Snap)
(assert (= $t@528@01 $Snap.unit))
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
; _4 := builtin$havoc_ref()
(declare-const ret@529@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_4.val_ref, write)
(declare-const $t@530@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@529@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@529@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@529@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _4.val_ref := _1.val_ref
(declare-const val_ref@531@01 $Ref)
(assert (= val_ref@531@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@525@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@529@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@529@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_4.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@532@01 $Snap)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@525@01)) val_ref@531@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@533@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@533@01 ($Snap.first ($Snap.second $t@525@01))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@533@01 $t@532@01))))
(assert (<= $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 232 | True | live]
; [else-branch: 232 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 232 | True]
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_4.val_ref), read$())
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
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@525@01)) val_ref@531@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+ (read$ $Snap.unit) (read$ $Snap.unit))
    ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb3
; [exec]
; __t1 := true
; [exec]
; _5 := builtin$havoc_ref()
(declare-const ret@534@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_5.val_ref, write)
(declare-const $t@535@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@534@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@534@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@534@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@534@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+ (read$ $Snap.unit) (read$ $Snap.unit))
      ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+ (read$ $Snap.unit) (read$ $Snap.unit))
        ($Perm.min (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+ (read$ $Snap.unit) (read$ $Snap.unit))
          ($Perm.min
            (+ (read$ $Snap.unit) (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= $t@533@01 ($Snap.combine ($Snap.first $t@533@01) ($Snap.second $t@533@01))))
(assert (<= (read$ $Snap.unit) $Perm.Write))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@525@01)) $Ref.null))))
(assert (=
  ($Snap.second $t@533@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@533@01))
    ($Snap.second ($Snap.second $t@533@01)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@533@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@533@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@533@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@533@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01)))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01)))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01)))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger $t@533@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@525@01))))
; [exec]
; _5.val_ref := _1.val_ref.f$x
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@536@01 $Ref)
(assert (= val_ref@536@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@534@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@534@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@534@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_5.val_ref), read$())
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
(declare-const $t@537@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@536@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@536@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@536@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@538@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@538@01 ($Snap.first ($Snap.second $t@533@01))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@538@01 $t@537@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l1
; [exec]
; _6 := builtin$havoc_ref()
(declare-const ret@539@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_6.val_ref, write)
(declare-const $t@540@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@539@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@539@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@539@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@539@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@539@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _6.val_ref := _1.val_ref.f$y
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@541@01 $Ref)
(assert (=
  val_ref@541@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@539@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@539@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@539@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@539@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_6.val_ref), read$())
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
(declare-const $t@542@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@541@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@541@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@541@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@543@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@543@01
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@543@01 $t@542@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l2
; [exec]
; _7 := builtin$havoc_ref()
(declare-const ret@544@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_7.val_ref, write)
(declare-const $t@545@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@544@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@544@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@544@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@544@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@544@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@544@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _7.val_ref := _1.val_ref.f$z
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const val_ref@546@01 $Ref)
(assert (=
  val_ref@546@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@544@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@544@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@544@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@544@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@544@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_7.val_ref), read$())
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
(declare-const $t@547@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@546@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@546@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@546@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@548@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (=
      $t@548@01
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01)))))))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@548@01 $t@547@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l3
; [exec]
; _10 := builtin$havoc_ref()
(declare-const ret@549@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_10.val_ref, write)
(declare-const $t@550@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@549@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _10.val_ref := _5.val_ref
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@549@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_10.val_ref), read$())
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
(declare-const $t@551@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@536@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@536@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@536@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@552@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@552@01 $t@538@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@552@01 $t@551@01))))
(assert (<= $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l4
; [exec]
; _9 := builtin$havoc_ref()
(declare-const ret@553@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_9.val_ref, write)
(declare-const $t@554@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@553@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _9.val_ref := _10.val_ref
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@553@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_9.val_ref), read$())
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
(declare-const $t@555@01 $Snap)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@536@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@556@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    (= $t@556@01 $t@552@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@556@01 $t@555@01))))
(assert (<=
  $Perm.No
  (+
    (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
    (read$ $Snap.unit))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l5
; [exec]
; _11 := builtin$havoc_ref()
(declare-const ret@557@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_11.val_ref, write)
(declare-const $t@558@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@553@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@557@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _11.val_ref := _2.val_ref
(declare-const val_ref@559@01 $Ref)
(assert (=
  val_ref@559@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@525@01))))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@553@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@557@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l6
; [exec]
; label l7
; [exec]
; assert true
; [exec]
; exhale acc(_9.val_ref, write) &&
;   (acc(_11.val_ref, write) && acc(__TYPARAM__$__HS$__(_11.val_ref), write))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@525@01))))
  val_ref@559@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; _8 := builtin$havoc_ref()
(declare-const ret@560@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(__TYPARAM__$__HS$__(old[l7](_11.val_ref)), write)
; [eval] old[l7](_11.val_ref)
(declare-const $t@561@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_8), write)
(declare-const $t@562@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@563@01 $Snap)
(assert (= $t@563@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@564@01 $Snap)
(assert (= $t@564@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l8
; [exec]
; label l9
; [eval] __t1 && __t1
(set-option :timeout 0)
(push) ; 4
; [then-branch: 233 | False | live]
; [else-branch: 233 | True | live]
(push) ; 5
; [then-branch: 233 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 233 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 234 | True | live]
; [else-branch: 234 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 234 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l5](_9.val_ref)), read$())
; [eval] read$()
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] old[l5](_9.val_ref)
(push) ; 5
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@536@01)))
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
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
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
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 5
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t1 && __t1)
(push) ; 5
; [then-branch: 235 | False | live]
; [else-branch: 235 | True | live]
(push) ; 6
; [then-branch: 235 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 235 | True]
(push) ; 7
; [then-branch: 236 | False | live]
; [else-branch: 236 | True | live]
(push) ; 8
; [then-branch: 236 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 236 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 237 | True | live]
; [else-branch: 237 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 237 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_10.val_ref), read$())
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
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@536@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@536@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@536@01)))
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
    (-
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (-
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 6
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t1 && (__t1 && __t1))
(push) ; 6
; [then-branch: 238 | False | live]
; [else-branch: 238 | True | live]
(push) ; 7
; [then-branch: 238 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 238 | True]
(push) ; 8
; [then-branch: 239 | False | live]
; [else-branch: 239 | True | live]
(push) ; 9
; [then-branch: 239 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 239 | True]
(push) ; 10
; [then-branch: 240 | False | live]
; [else-branch: 240 | True | live]
(push) ; 11
; [then-branch: 240 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 240 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 241 | True | live]
; [else-branch: 241 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 241 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_5.val_ref), read$())
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
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@536@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@536@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@536@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (-
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))))
(set-option :timeout 0)
(push) ; 7
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb4
; [exec]
; __t2 := true
; [exec]
; _14 := builtin$havoc_ref()
(declare-const ret@565@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_14.val_ref, write)
(declare-const $t@566@01 $Ref)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@565@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _14.val_ref := _6.val_ref
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@565@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_14.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
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
(declare-const $t@567@01 $Snap)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@541@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@541@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $t@568@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@568@01 $t@543@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@568@01 $t@567@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l10
; [exec]
; _13 := builtin$havoc_ref()
(declare-const ret@569@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_13.val_ref, write)
(declare-const $t@570@01 $Ref)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@565@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@569@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _13.val_ref := _14.val_ref
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@565@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@569@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_13.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
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
(declare-const $t@571@01 $Snap)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@541@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $t@572@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    (= $t@572@01 $t@568@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@572@01 $t@571@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l11
; [exec]
; _15 := builtin$havoc_ref()
(declare-const ret@573@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_15.val_ref, write)
(declare-const $t@574@01 $Ref)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@569@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@565@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@573@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _15.val_ref := _2.val_ref
(declare-const val_ref@575@01 $Ref)
(assert (=
  val_ref@575@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@525@01))))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@569@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@565@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@573@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l12
; [exec]
; label l13
; [exec]
; assert true
; [exec]
; exhale acc(_13.val_ref, write) &&
;   (acc(_15.val_ref, write) && acc(__TYPARAM__$__HS$__(_15.val_ref), write))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= val_ref@559@01 val_ref@575@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; _12 := builtin$havoc_ref()
(declare-const ret@576@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(__TYPARAM__$__HS$__(old[l13](_15.val_ref)), write)
; [eval] old[l13](_15.val_ref)
(declare-const $t@577@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_12), write)
(declare-const $t@578@01 $Snap)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ret@560@01 ret@576@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@579@01 $Snap)
(assert (= $t@579@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@580@01 $Snap)
(assert (= $t@580@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l14
; [exec]
; label l15
; [eval] __t2 && __t2
(set-option :timeout 0)
(push) ; 7
; [then-branch: 242 | False | live]
; [else-branch: 242 | True | live]
(push) ; 8
; [then-branch: 242 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 242 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 243 | True | live]
; [else-branch: 243 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 243 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l11](_13.val_ref)), read$())
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
; [eval] old[l11](_13.val_ref)
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@541@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] __t2 && (__t2 && __t2)
(push) ; 8
; [then-branch: 244 | False | live]
; [else-branch: 244 | True | live]
(push) ; 9
; [then-branch: 244 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 244 | True]
(push) ; 10
; [then-branch: 245 | False | live]
; [else-branch: 245 | True | live]
(push) ; 11
; [then-branch: 245 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 245 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 246 | True | live]
; [else-branch: 246 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 246 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_14.val_ref), read$())
; [eval] read$()
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@541@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@541@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@541@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t2 && (__t2 && __t2))
(push) ; 9
; [then-branch: 247 | False | live]
; [else-branch: 247 | True | live]
(push) ; 10
; [then-branch: 247 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 247 | True]
(push) ; 11
; [then-branch: 248 | False | live]
; [else-branch: 248 | True | live]
(push) ; 12
; [then-branch: 248 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 248 | True]
(push) ; 13
; [then-branch: 249 | False | live]
; [else-branch: 249 | True | live]
(push) ; 14
; [then-branch: 249 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 249 | True]
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 250 | True | live]
; [else-branch: 250 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 250 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_6.val_ref), read$())
; [eval] read$()
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@541@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@541@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@541@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb5
; [exec]
; __t3 := true
; [exec]
; _17 := builtin$havoc_ref()
(declare-const ret@581@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_17.val_ref, write)
(declare-const $t@582@01 $Ref)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@565@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@581@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _17.val_ref := _7.val_ref
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@565@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@581@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_17.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@583@01 $Snap)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@546@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@584@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (read$ $Snap.unit) (read$ $Snap.unit)))
    (= $t@584@01 $t@548@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@584@01 $t@583@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l16
; [exec]
; _16 := builtin$havoc_ref()
(declare-const ret@585@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_16.val_ref, write)
(declare-const $t@586@01 $Ref)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@581@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@565@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@585@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _16.val_ref := _17.val_ref
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@581@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@565@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@585@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(__TYPARAM__$S$__(_16.val_ref), read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@587@01 $Snap)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@546@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $t@588@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit)))
    (= $t@588@01 $t@584@01))
  (=> (< $Perm.No (read$ $Snap.unit)) (= $t@588@01 $t@587@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label l17
; [exec]
; _18 := builtin$havoc_ref()
(declare-const ret@589@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(_18.val_ref, write)
(declare-const $t@590@01 $Ref)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@585@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@581@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@565@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= ret@589@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _18.val_ref := _2.val_ref
(declare-const val_ref@591@01 $Ref)
(assert (=
  val_ref@591@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@525@01))))))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@585@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@581@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@565@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@549@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@544@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@539@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@534@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@529@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _2@509@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= _1@508@01 ret@589@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; label l18
; [exec]
; label l19
; [exec]
; assert true
; [exec]
; exhale acc(_16.val_ref, write) &&
;   (acc(_18.val_ref, write) && acc(__TYPARAM__$__HS$__(_18.val_ref), write))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= val_ref@575@01 val_ref@591@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; _0 := builtin$havoc_ref()
(declare-const ret@592@01 $Ref)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale acc(__TYPARAM__$__HS$__(old[l19](_18.val_ref)), write)
; [eval] old[l19](_18.val_ref)
(declare-const $t@593@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(tuple0$(_0), write)
(declare-const $t@594@01 $Snap)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@576@01 ret@592@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ret@560@01 ret@592@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@595@01 $Snap)
(assert (= $t@595@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@596@01 $Snap)
(assert (= $t@596@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label l20
; [exec]
; label l21
; [eval] __t3 && __t3
(set-option :timeout 0)
(push) ; 10
; [then-branch: 251 | False | live]
; [else-branch: 251 | True | live]
(push) ; 11
; [then-branch: 251 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 251 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 252 | True | live]
; [else-branch: 252 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 252 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(old[l17](_16.val_ref)), read$())
; [eval] read$()
(push) ; 11
(pop) ; 11
; Joined path conditions
; [eval] old[l17](_16.val_ref)
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@546@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
      (read$ $Snap.unit))
    ($Perm.min
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] __t3 && (__t3 && __t3)
(push) ; 11
; [then-branch: 253 | False | live]
; [else-branch: 253 | True | live]
(push) ; 12
; [then-branch: 253 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 253 | True]
(push) ; 13
; [then-branch: 254 | False | live]
; [else-branch: 254 | True | live]
(push) ; 14
; [then-branch: 254 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 254 | True]
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 255 | True | live]
; [else-branch: 255 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 255 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_17.val_ref), read$())
; [eval] read$()
(push) ; 12
(pop) ; 12
; Joined path conditions
(push) ; 12
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@546@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@546@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@546@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (+
        (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
        (read$ $Snap.unit))
      ($Perm.min
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] __t1 && (__t3 && (__t3 && __t3))
(push) ; 12
; [then-branch: 256 | False | live]
; [else-branch: 256 | True | live]
(push) ; 13
; [then-branch: 256 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 256 | True]
(push) ; 14
; [then-branch: 257 | False | live]
; [else-branch: 257 | True | live]
(push) ; 15
; [then-branch: 257 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 257 | True]
(push) ; 16
; [then-branch: 258 | False | live]
; [else-branch: 258 | True | live]
(push) ; 17
; [then-branch: 258 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 258 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 259 | True | live]
; [else-branch: 259 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 259 | True]
; [exec]
; exhale acc(__TYPARAM__$S$__(_7.val_ref), read$())
; [eval] read$()
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@533@01)) val_ref@546@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@533@01))))
  val_ref@546@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01))))))
  val_ref@546@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (+
          (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
          (read$ $Snap.unit))
        ($Perm.min
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [exec]
; label bb6
; [exec]
; __t4 := true
; [exec]
; label return
; [exec]
; fold acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_1.val_ref), read$())
; [eval] read$()
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (-
    (-
      (-
        (-
          (+
            (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
            (read$ $Snap.unit))
          ($Perm.min
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      ($Perm.min
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    ($Perm.min
      (-
        (-
          (-
            (+
              (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
              (read$ $Snap.unit))
            ($Perm.min
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        ($Perm.min
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(assert (not (or
  (=
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No)
  (<
    (-
      (read$ $Snap.unit)
      ($Perm.min
        (-
          (-
            (-
              (+
                (+ (+ (read$ $Snap.unit) (read$ $Snap.unit)) (read$ $Snap.unit))
                (read$ $Snap.unit))
              ($Perm.min
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                (read$ $Snap.unit)))
            ($Perm.min
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              (read$ $Snap.unit)))
          ($Perm.min
            (-
              (-
                (+
                  (+
                    (+ (read$ $Snap.unit) (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit))
                ($Perm.min
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  (read$ $Snap.unit)))
              ($Perm.min
                (-
                  (+
                    (+
                      (+ (read$ $Snap.unit) (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit))
                  ($Perm.min
                    (+
                      (+
                        (+ (read$ $Snap.unit) (read$ $Snap.unit))
                        (read$ $Snap.unit))
                      (read$ $Snap.unit))
                    (read$ $Snap.unit)))
                (read$ $Snap.unit)))
            (read$ $Snap.unit)))
        (read$ $Snap.unit)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_%trigger ($Snap.combine
  ($Snap.first $t@533@01)
  ($Snap.combine
    $t@556@01
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@533@01)))
      ($Snap.combine
        $t@572@01
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@533@01)))))
          $t@588@01))))) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@525@01))))
; [exec]
; _old$pre$0 := _1.val_ref
(declare-const _old$pre$0@597@01 $Ref)
(assert (= _old$pre$0@597@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@525@01))))
; [exec]
; _old$pre$1 := _2.val_ref
(declare-const _old$pre$1@598@01 $Ref)
(assert (=
  _old$pre$1@598@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@525@01))))))
; [exec]
; assert true
; [exec]
; exhale acc(m_348_cgmath_point$$Point3$opensqu$0$closesqu$$_beg_$__TYPARAM__$S$__$_end_(_old$pre$0), read$()) &&
;   acc(__TYPARAM__$__HS$__(_old$pre$1), write)
; [eval] read$()
(set-option :timeout 0)
(push) ; 13
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@525@01)) _old$pre$0@597@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= val_ref@591@01 _old$pre$1@598@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [exec]
; exhale acc(tuple0$(_0), write)
; [exec]
; label end_of_method
(pop) ; 12
; [eval] !(__t1 && (__t3 && (__t3 && __t3)))
; [eval] __t1 && (__t3 && (__t3 && __t3))
(set-option :timeout 0)
(push) ; 12
; [then-branch: 260 | False | live]
; [else-branch: 260 | True | live]
(push) ; 13
; [then-branch: 260 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 260 | True]
(push) ; 14
; [then-branch: 261 | False | live]
; [else-branch: 261 | True | live]
(push) ; 15
; [then-branch: 261 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 261 | True]
(push) ; 16
; [then-branch: 262 | False | live]
; [else-branch: 262 | True | live]
(push) ; 17
; [then-branch: 262 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 262 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
; [then-branch: 263 | False | dead]
; [else-branch: 263 | True | live]
(push) ; 12
; [else-branch: 263 | True]
(pop) ; 12
(pop) ; 11
; [eval] !(__t3 && (__t3 && __t3))
; [eval] __t3 && (__t3 && __t3)
(push) ; 11
; [then-branch: 264 | False | live]
; [else-branch: 264 | True | live]
(push) ; 12
; [then-branch: 264 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 264 | True]
(push) ; 13
; [then-branch: 265 | False | live]
; [else-branch: 265 | True | live]
(push) ; 14
; [then-branch: 265 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 265 | True]
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
; [then-branch: 266 | False | dead]
; [else-branch: 266 | True | live]
(push) ; 11
; [else-branch: 266 | True]
(pop) ; 11
(pop) ; 10
; [eval] !(__t3 && __t3)
; [eval] __t3 && __t3
(push) ; 10
; [then-branch: 267 | False | live]
; [else-branch: 267 | True | live]
(push) ; 11
; [then-branch: 267 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 267 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
; [then-branch: 268 | False | dead]
; [else-branch: 268 | True | live]
(push) ; 10
; [else-branch: 268 | True]
(pop) ; 10
(pop) ; 9
; [eval] !(__t1 && (__t2 && (__t2 && __t2)))
; [eval] __t1 && (__t2 && (__t2 && __t2))
(push) ; 9
; [then-branch: 269 | False | live]
; [else-branch: 269 | True | live]
(push) ; 10
; [then-branch: 269 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 269 | True]
(push) ; 11
; [then-branch: 270 | False | live]
; [else-branch: 270 | True | live]
(push) ; 12
; [then-branch: 270 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 270 | True]
(push) ; 13
; [then-branch: 271 | False | live]
; [else-branch: 271 | True | live]
(push) ; 14
; [then-branch: 271 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 271 | True]
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [then-branch: 272 | False | dead]
; [else-branch: 272 | True | live]
(push) ; 9
; [else-branch: 272 | True]
(pop) ; 9
(pop) ; 8
; [eval] !(__t2 && (__t2 && __t2))
; [eval] __t2 && (__t2 && __t2)
(push) ; 8
; [then-branch: 273 | False | live]
; [else-branch: 273 | True | live]
(push) ; 9
; [then-branch: 273 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 273 | True]
(push) ; 10
; [then-branch: 274 | False | live]
; [else-branch: 274 | True | live]
(push) ; 11
; [then-branch: 274 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 274 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
; [then-branch: 275 | False | dead]
; [else-branch: 275 | True | live]
(push) ; 8
; [else-branch: 275 | True]
(pop) ; 8
(pop) ; 7
; [eval] !(__t2 && __t2)
; [eval] __t2 && __t2
(push) ; 7
; [then-branch: 276 | False | live]
; [else-branch: 276 | True | live]
(push) ; 8
; [then-branch: 276 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 276 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
; [then-branch: 277 | False | dead]
; [else-branch: 277 | True | live]
(push) ; 7
; [else-branch: 277 | True]
(pop) ; 7
(pop) ; 6
; [eval] !(__t1 && (__t1 && (__t1 && __t1)))
; [eval] __t1 && (__t1 && (__t1 && __t1))
(push) ; 6
; [then-branch: 278 | False | live]
; [else-branch: 278 | True | live]
(push) ; 7
; [then-branch: 278 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 278 | True]
(push) ; 8
; [then-branch: 279 | False | live]
; [else-branch: 279 | True | live]
(push) ; 9
; [then-branch: 279 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 279 | True]
(push) ; 10
; [then-branch: 280 | False | live]
; [else-branch: 280 | True | live]
(push) ; 11
; [then-branch: 280 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 280 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
; [then-branch: 281 | False | dead]
; [else-branch: 281 | True | live]
(push) ; 6
; [else-branch: 281 | True]
(pop) ; 6
(pop) ; 5
; [eval] !(__t1 && (__t1 && __t1))
; [eval] __t1 && (__t1 && __t1)
(push) ; 5
; [then-branch: 282 | False | live]
; [else-branch: 282 | True | live]
(push) ; 6
; [then-branch: 282 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 282 | True]
(push) ; 7
; [then-branch: 283 | False | live]
; [else-branch: 283 | True | live]
(push) ; 8
; [then-branch: 283 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 283 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [then-branch: 284 | False | dead]
; [else-branch: 284 | True | live]
(push) ; 5
; [else-branch: 284 | True]
(pop) ; 5
(pop) ; 4
; [eval] !(__t1 && __t1)
; [eval] __t1 && __t1
(push) ; 4
; [then-branch: 285 | False | live]
; [else-branch: 285 | True | live]
(push) ; 5
; [then-branch: 285 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 285 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
; [then-branch: 286 | False | dead]
; [else-branch: 286 | True | live]
(push) ; 4
; [else-branch: 286 | True]
(pop) ; 4
(pop) ; 3
; [eval] !__t0
; [then-branch: 287 | False | dead]
; [else-branch: 287 | True | live]
(push) ; 3
; [else-branch: 287 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- builtin$havoc_int ----------
(declare-const ret@599@01 Int)
(declare-const ret@600@01 Int)
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
; ---------- builtin$havoc_ref ----------
(declare-const ret@601@01 $Ref)
(declare-const ret@602@01 $Ref)
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
(declare-const ret@603@01 Bool)
(declare-const ret@604@01 Bool)
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
