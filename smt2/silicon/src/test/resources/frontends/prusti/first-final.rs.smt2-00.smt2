(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-07 13:31:45
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
(declare-sort Set<$Ref> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<Bool> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<val_ref> 0)
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
(declare-fun $SortWrappers.Set<$Ref>To$Snap (Set<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Ref> ($Snap) Set<$Ref>)
(assert (forall ((x Set<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSet<$Ref>($SortWrappers.Set<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Set<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSet<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Ref>To$Snap($SortWrappers.$SnapToSet<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSet<$Ref> x))
    :qid |$Snap.Set<$Ref>To$SnapToSet<$Ref>|
    )))
(declare-fun $SortWrappers.Set<Int>To$Snap (Set<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Int> ($Snap) Set<Int>)
(assert (forall ((x Set<Int>)) (!
    (= x ($SortWrappers.$SnapToSet<Int>($SortWrappers.Set<Int>To$Snap x)))
    :pattern (($SortWrappers.Set<Int>To$Snap x))
    :qid |$Snap.$SnapToSet<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Int>To$Snap($SortWrappers.$SnapToSet<Int> x)))
    :pattern (($SortWrappers.$SnapToSet<Int> x))
    :qid |$Snap.Set<Int>To$SnapToSet<Int>|
    )))
(declare-fun $SortWrappers.Set<Bool>To$Snap (Set<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Bool> ($Snap) Set<Bool>)
(assert (forall ((x Set<Bool>)) (!
    (= x ($SortWrappers.$SnapToSet<Bool>($SortWrappers.Set<Bool>To$Snap x)))
    :pattern (($SortWrappers.Set<Bool>To$Snap x))
    :qid |$Snap.$SnapToSet<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Bool>To$Snap($SortWrappers.$SnapToSet<Bool> x)))
    :pattern (($SortWrappers.$SnapToSet<Bool> x))
    :qid |$Snap.Set<Bool>To$SnapToSet<Bool>|
    )))
(declare-fun $SortWrappers.Set<$Snap>To$Snap (Set<$Snap>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Snap> ($Snap) Set<$Snap>)
(assert (forall ((x Set<$Snap>)) (!
    (= x ($SortWrappers.$SnapToSet<$Snap>($SortWrappers.Set<$Snap>To$Snap x)))
    :pattern (($SortWrappers.Set<$Snap>To$Snap x))
    :qid |$Snap.$SnapToSet<$Snap>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Snap>To$Snap($SortWrappers.$SnapToSet<$Snap> x)))
    :pattern (($SortWrappers.$SnapToSet<$Snap> x))
    :qid |$Snap.Set<$Snap>To$SnapToSet<$Snap>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<val_ref>To$Snap ($FVF<val_ref>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<val_ref> ($Snap) $FVF<val_ref>)
(assert (forall ((x $FVF<val_ref>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<val_ref>($SortWrappers.$FVF<val_ref>To$Snap x)))
    :pattern (($SortWrappers.$FVF<val_ref>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<val_ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<val_ref>To$Snap($SortWrappers.$SnapTo$FVF<val_ref> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<val_ref> x))
    :qid |$Snap.$FVF<val_ref>To$SnapTo$FVF<val_ref>|
    )))
; ////////// Symbols
(declare-fun Set_card (Set<$Ref>) Int)
(declare-const Set_empty Set<$Ref>)
(declare-fun Set_in ($Ref Set<$Ref>) Bool)
(declare-fun Set_singleton ($Ref) Set<$Ref>)
(declare-fun Set_unionone (Set<$Ref> $Ref) Set<$Ref>)
(declare-fun Set_union (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_intersection (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_difference (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_subset (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_equal (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_skolem_diff (Set<$Ref> Set<$Ref>) $Ref)
(declare-fun Set_card (Set<Int>) Int)
(declare-const Set_empty Set<Int>)
(declare-fun Set_in (Int Set<Int>) Bool)
(declare-fun Set_singleton (Int) Set<Int>)
(declare-fun Set_unionone (Set<Int> Int) Set<Int>)
(declare-fun Set_union (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_intersection (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_difference (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_subset (Set<Int> Set<Int>) Bool)
(declare-fun Set_equal (Set<Int> Set<Int>) Bool)
(declare-fun Set_skolem_diff (Set<Int> Set<Int>) Int)
(declare-fun Set_card (Set<Bool>) Int)
(declare-const Set_empty Set<Bool>)
(declare-fun Set_in (Bool Set<Bool>) Bool)
(declare-fun Set_singleton (Bool) Set<Bool>)
(declare-fun Set_unionone (Set<Bool> Bool) Set<Bool>)
(declare-fun Set_union (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_intersection (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_difference (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_subset (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_equal (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_skolem_diff (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_card (Set<$Snap>) Int)
(declare-const Set_empty Set<$Snap>)
(declare-fun Set_in ($Snap Set<$Snap>) Bool)
(declare-fun Set_singleton ($Snap) Set<$Snap>)
(declare-fun Set_unionone (Set<$Snap> $Snap) Set<$Snap>)
(declare-fun Set_union (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_intersection (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_difference (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_subset (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_equal (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_skolem_diff (Set<$Snap> Set<$Snap>) $Snap)
; /field_value_functions_declarations.smt2 [val_ref: Ref]
(declare-fun $FVF.domain_val_ref ($FVF<val_ref>) Set<$Ref>)
(declare-fun $FVF.lookup_val_ref ($FVF<val_ref> $Ref) $Ref)
(declare-fun $FVF.after_val_ref ($FVF<val_ref> $FVF<val_ref>) Bool)
(declare-fun $FVF.loc_val_ref ($Ref $Ref) Bool)
(declare-fun $FVF.perm_val_ref ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val_ref $FVF<val_ref>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref) Bool)
(declare-fun builtin$unreach_int__$TY$__$int$ ($Snap) Int)
(declare-fun builtin$unreach_int__$TY$__$int$%limited ($Snap) Int)
(declare-const builtin$unreach_int__$TY$__$int$%stateless Bool)
(declare-fun builtin$unreach_int__$TY$__$int$%precondition ($Snap) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap $Ref Int) Int)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited ($Snap $Ref Int) Int)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless ($Ref Int) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap $Ref Int) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap $Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited ($Snap $Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless ($Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap $Ref) Bool)
(declare-fun builtin$undef_int__$TY$__$int$ ($Snap) Int)
(declare-fun builtin$undef_int__$TY$__$int$%limited ($Snap) Int)
(declare-const builtin$undef_int__$TY$__$int$%stateless Bool)
(declare-fun builtin$undef_int__$TY$__$int$%precondition ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap $Ref Int) Int)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited ($Snap $Ref Int) Int)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless ($Ref Int) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap $Ref Int) Bool)
(declare-fun m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun builtin$undef_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$undef_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$undef_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$undef_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$3$285504012641001254%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_14$3$15375066495536163397%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_15$3$2868002597210616443%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_16$3$9316913858590951640%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_17$4$532893136756078670%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_23$3$5372843592026537153%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_24$3$3010475301938644702%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_25$3$3868597211286645367%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_26$4$17874368375826697435%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_27$4$11880881688395209060%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_28$4$2464236529596893172%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_29$5$13550867090471520830%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_30$3$9316913858590951640%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_31$4$10198083371420618695%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_32$3$14146303487322046002%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_33$3$10819110499908836502%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_34$4$18248137411596842664%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_35$3$1800990638667843567%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_36$4$4559978894891083623%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_37$4$8424733456540362922%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_38$3$11417723233936340610%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_39$3$1132657330059599590%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_40$3$7625693188187510870%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_41$3$13640473792123223955%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_42$3$1451880131427103804%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_43$3$17900001731891322914%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_44$3$11711303054302998842%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_45$4$16397435947654686472%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_46$3$5039206468203838448%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_47$3$8565491267176139305%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_48$3$12939604231988721118%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_49$3$2385238782922955094%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_50$4$11829941760534454793%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_51$4$13939029741107599013%trigger ($Snap $Ref) Bool)
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun isize%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More%trigger ($Snap $Ref) Bool)
(declare-fun m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_Some%trigger ($Snap $Ref) Bool)
(declare-fun never%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$3$285504012641001254%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_14$3$15375066495536163397%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_15$3$2868002597210616443%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_16$3$9316913858590951640%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_17$4$532893136756078670%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_23$3$5372843592026537153%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_24$3$3010475301938644702%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_25$3$3868597211286645367%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_26$4$17874368375826697435%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_27$4$11880881688395209060%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_28$4$2464236529596893172%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_29$5$13550867090471520830%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_30$3$9316913858590951640%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_31$4$10198083371420618695%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_32$3$14146303487322046002%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_33$3$10819110499908836502%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_34$4$18248137411596842664%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_35$3$1800990638667843567%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_36$4$4559978894891083623%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_37$4$8424733456540362922%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_38$3$11417723233936340610%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_39$3$1132657330059599590%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_40$3$7625693188187510870%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_41$3$13640473792123223955%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_42$3$1451880131427103804%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_43$3$17900001731891322914%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_44$3$11711303054302998842%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_45$4$16397435947654686472%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_46$3$5039206468203838448%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_47$3$8565491267176139305%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_48$3$12939604231988721118%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_49$3$2385238782922955094%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_50$4$11829941760534454793%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_51$4$13939029741107599013%trigger ($Snap $Ref) Bool)
(declare-fun ref$i32%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$str%trigger ($Snap $Ref) Bool)
(declare-fun ref$tuple3$ref$str$u32$u32%trigger ($Snap $Ref) Bool)
(declare-fun ref$usize%trigger ($Snap $Ref) Bool)
(declare-fun str%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$usize$bool%trigger ($Snap $Ref) Bool)
(declare-fun tuple3$ref$str$u32$u32%trigger ($Snap $Ref) Bool)
(declare-fun u32%trigger ($Snap $Ref) Bool)
(declare-fun u8%trigger ($Snap $Ref) Bool)
(declare-fun usize%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Set<$Ref>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Ref)) (!
  (not (Set_in o (as Set_empty  Set<$Ref>)))
  :pattern ((Set_in o (as Set_empty  Set<$Ref>)))
  )))
(assert (forall ((s Set<$Ref>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Ref>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Ref))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Ref)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Ref) (o $Ref)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Ref)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (o $Ref)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Ref)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Int>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Int)) (!
  (not (Set_in o (as Set_empty  Set<Int>)))
  :pattern ((Set_in o (as Set_empty  Set<Int>)))
  )))
(assert (forall ((s Set<Int>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Int>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Int))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Int)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Int) (o Int)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Int)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Int>) (x Int) (o Int)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Int>) (x Int) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (Set_subset a b)
    (forall ((o Int)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Bool>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Bool)) (!
  (not (Set_in o (as Set_empty  Set<Bool>)))
  :pattern ((Set_in o (as Set_empty  Set<Bool>)))
  )))
(assert (forall ((s Set<Bool>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Bool>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Bool))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Bool)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Bool) (o Bool)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Bool)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (o Bool)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (Set_subset a b)
    (forall ((o Bool)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Snap)) (!
  (not (Set_in o (as Set_empty  Set<$Snap>)))
  :pattern ((Set_in o (as Set_empty  Set<$Snap>)))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Snap>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Snap))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Snap)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Snap) (o $Snap)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Snap)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (o $Snap)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Snap)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
; /field_value_functions_axioms.smt2 [val_ref: Ref]
(assert (forall ((vs $FVF<val_ref>) (ws $FVF<val_ref>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_val_ref vs) ($FVF.domain_val_ref ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_val_ref vs))
            (= ($FVF.lookup_val_ref vs x) ($FVF.lookup_val_ref ws x)))
          :pattern (($FVF.lookup_val_ref vs x) ($FVF.lookup_val_ref ws x))
          :qid |qp.$FVF<val_ref>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<val_ref>To$Snap vs)
              ($SortWrappers.$FVF<val_ref>To$Snap ws)
              )
    :qid |qp.$FVF<val_ref>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_val_ref pm r))
    :pattern (($FVF.perm_val_ref pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_val_ref f r) true)
    :pattern (($FVF.loc_val_ref f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION read$----------
(declare-fun result@0@00 () $Perm)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@27@00 $Snap)
(assert (= $t@27@00 ($Snap.combine ($Snap.first $t@27@00) ($Snap.second $t@27@00))))
(assert (= ($Snap.first $t@27@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@0@00))
(assert (= ($Snap.second $t@27@00) $Snap.unit))
; [eval] result < write
(assert (< result@0@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-277|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-278|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-307|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-308|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-309|)))
; ---------- FUNCTION m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$----------
(declare-fun _pure_1@1@00 () $Ref)
(declare-fun result@2@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@28@00 $Snap)
(assert (= $t@28@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (=
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@1@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@1@00))
  :qid |quant-u-279|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _pure_1@1@00)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00))
  :qid |quant-u-280|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00))
  :qid |quant-u-310|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@1@00))
  :qid |quant-u-311|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in _pure_1.discriminant == 0)
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@1@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@1@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] 0 <= self.discriminant
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
; [eval] self.discriminant == 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:(First:(s@$)) == 1 | live]
; [else-branch: 0 | First:(First:(s@$)) != 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | First:(First:(s@$)) == 1]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] _pure_1.discriminant == 0
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 0 | First:(First:(s@$)) != 1]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  $Snap.unit))
; [eval] _pure_1.discriminant == 0
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@29@00 ($Snap $Ref) Bool)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    (joined_unfolding@29@00 s@$ _pure_1@1@00)
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
  (=
    (joined_unfolding@29@00 s@$ _pure_1@1@00)
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
; Joined path conditions
(assert (and
  (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@1@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@1@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
; Joined path conditions
(assert (and
  (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@1@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@1@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      $Snap.unit))))
(assert (or
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)))
(assert (= result@2@00 (joined_unfolding@29@00 s@$ _pure_1@1@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _pure_1@1@00)
    (=
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@1@00)
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@1@00))
  :qid |quant-u-312|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  true
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@1@00))
  :qid |quant-u-313|)))
; ---------- FUNCTION builtin$unreach_int__$TY$__$int$----------
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_int__$TY$__$int$%limited s@$)
    (builtin$unreach_int__$TY$__$int$ s@$))
  :pattern ((builtin$unreach_int__$TY$__$int$ s@$))
  :qid |quant-u-281|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_int__$TY$__$int$%stateless  Bool)
  :pattern ((builtin$unreach_int__$TY$__$int$%limited s@$))
  :qid |quant-u-282|)))
; ---------- FUNCTION m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@4@00 () $Ref)
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@30@00 $Snap)
(assert (= $t@30@00 ($Snap.combine ($Snap.first $t@30@00) ($Snap.second $t@30@00))))
(assert (= ($Snap.first $t@30@00) $Snap.unit))
; [eval] !m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$(_pure_1) ==> result > 0
; [eval] !m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$(_pure_1)
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$(_pure_1)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@4@00))
(pop) ; 2
; Joined path conditions
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@4@00))
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@4@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@4@00))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | !(m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$((First:(s@$), _), _pure_1@4@00)) | live]
; [else-branch: 1 | m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$((First:(s@$), _), _pure_1@4@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | !(m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$((First:(s@$), _), _pure_1@4@00))]
(assert (not
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@4@00)))
; [eval] result > 0
(pop) ; 3
(push) ; 3
; [else-branch: 1 | m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$((First:(s@$), _), _pure_1@4@00)]
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@4@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@4@00)
  (not
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@4@00))))
(assert (=>
  (not
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@4@00))
  (> result@5@00 0)))
(assert (=
  ($Snap.second $t@30@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@30@00))
    ($Snap.second ($Snap.second $t@30@00)))))
(assert (= ($Snap.first ($Snap.second $t@30@00)) $Snap.unit))
; [eval] result >= 0
(assert (>= result@5@00 0))
(assert (= ($Snap.second ($Snap.second $t@30@00)) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@5@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (=
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@4@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@4@00))
  :qid |quant-u-283|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@4@00)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))
  :qid |quant-u-284|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (let ((result@5@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))) (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@4@00)
    (and
      (and
        (=>
          (not
            (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
              ($Snap.first s@$)
              $Snap.unit) _pure_1@4@00))
          (> result@5@00 0))
        (>= result@5@00 0))
      (<= 0 result@5@00))))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))
  :qid |quant-u-314|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (let ((result@5@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))) (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@4@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@4@00)))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))
  :qid |quant-u-315|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (let ((result@5@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))
  :qid |quant-u-316|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in (_pure_1.discriminant == 0 ? 0 : (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More(_pure_1.enum_More), read$()) in (unfolding acc(m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_(_pure_1.enum_More.f$0), read$()) in (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in 1 + m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1.enum_More.f$0.val_ref.f$next))))))
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@4@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@4@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] 0 <= self.discriminant
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
; [eval] self.discriminant == 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:(First:(s@$)) == 1 | live]
; [else-branch: 2 | First:(First:(s@$)) != 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | First:(First:(s@$)) == 1]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (_pure_1.discriminant == 0 ? 0 : (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More(_pure_1.enum_More), read$()) in (unfolding acc(m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_(_pure_1.enum_More.f$0), read$()) in (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in 1 + m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1.enum_More.f$0.val_ref.f$next)))))
; [eval] _pure_1.discriminant == 0
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
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | First:(First:(s@$)) == 0 | dead]
; [else-branch: 3 | First:(First:(s@$)) != 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 3 | First:(First:(s@$)) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
; [eval] (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More(_pure_1.enum_More), read$()) in (unfolding acc(m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_(_pure_1.enum_More.f$0), read$()) in (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in 1 + m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1.enum_More.f$0.val_ref.f$next))))
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [eval] read$()
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      $Ref.null))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_(_pure_1.enum_More.f$0), read$()) in (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in 1 + m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1.enum_More.f$0.val_ref.f$next)))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      $Ref.null))))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in 1 + m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1.enum_More.f$0.val_ref.f$next))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [eval] read$()
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  _pure_1@4@00
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] 1 + m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1.enum_More.f$0.val_ref.f$next)
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1.enum_More.f$0.val_ref.f$next)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
(pop) ; 9
; Joined path conditions
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
(pop) ; 8
; Joined path conditions
(assert (and
  (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(pop) ; 7
; Joined path conditions
(assert (and
  (m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        $Ref.null)))
  (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(pop) ; 6
; Joined path conditions
(assert (and
  (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
        $Ref.null)))
  (m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        $Ref.null)))
  (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
    (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
          $Ref.null)))
    (m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          $Ref.null)))
    (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
          $Ref.null)))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 2 | First:(First:(s@$)) != 1]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  $Snap.unit))
; [eval] (_pure_1.discriminant == 0 ? 0 : (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More(_pure_1.enum_More), read$()) in (unfolding acc(m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_(_pure_1.enum_More.f$0), read$()) in (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in 1 + m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1.enum_More.f$0.val_ref.f$next)))))
; [eval] _pure_1.discriminant == 0
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
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | First:(First:(s@$)) == 0 | live]
; [else-branch: 4 | First:(First:(s@$)) != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 4 | First:(First:(s@$)) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@31@00 ($Snap $Ref) Int)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    (joined_unfolding@31@00 s@$ _pure_1@4@00)
    (+
      1
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
  (= (joined_unfolding@31@00 s@$ _pure_1@4@00) 0)))
; Joined path conditions
(assert (and
  (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@4@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@4@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (and
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
    (=>
      (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
      (and
        (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
        (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
              $Ref.null)))
        (m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              $Ref.null)))
        (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
              $Ref.null)))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
          $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))))
; Joined path conditions
(assert (and
  (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@4@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@4@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      $Snap.unit)
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(assert (or
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)))
(assert (= result@5@00 (joined_unfolding@31@00 s@$ _pure_1@4@00)))
; [eval] !m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$(_pure_1) ==> result > 0
; [eval] !m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$(_pure_1)
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$(_pure_1)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@4@00))
(pop) ; 2
; Joined path conditions
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@4@00))
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@4@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@4@00))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | !(m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$((First:(s@$), _), _pure_1@4@00)) | live]
; [else-branch: 5 | m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$((First:(s@$), _), _pure_1@4@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | !(m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$((First:(s@$), _), _pure_1@4@00))]
(assert (not
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@4@00)))
; [eval] result > 0
(pop) ; 3
(push) ; 3
; [else-branch: 5 | m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$((First:(s@$), _), _pure_1@4@00)]
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@4@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@4@00)
  (not
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@4@00))))
(push) ; 2
(assert (not (=>
  (not
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@4@00))
  (> result@5@00 0))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$is_empty$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
      ($Snap.first s@$)
      $Snap.unit) _pure_1@4@00))
  (> result@5@00 0)))
; [eval] result >= 0
(push) ; 2
(assert (not (>= result@5@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (>= result@5@00 0))
; [eval] 0 <= result
(push) ; 2
(assert (not (<= 0 result@5@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@5@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@4@00)
    (=
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@4@00)
      (ite
        (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
        0
        (+
          1
          (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap.combine
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
            $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@4@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@4@00) (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@4@00))
  :qid |quant-u-317|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@4@00)
    (ite
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
      true
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@4@00))
  :qid |quant-u-318|)))
; ---------- FUNCTION m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$----------
(declare-fun _pure_1@6@00 () $Ref)
(declare-fun _pure_2@7@00 () Int)
(declare-fun result@8@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (<= 0 _pure_2@7@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] _pure_2 < m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@6@00))
(pop) ; 2
; Joined path conditions
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@6@00))
(assert (<
  _pure_2@7@00
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@6@00)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] 0 <= _pure_2
(declare-const $t@32@00 $Snap)
(assert (= $t@32@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref) (_pure_2@7@00 Int)) (!
  (=
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-285|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref) (_pure_2@7@00 Int)) (!
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless _pure_1@6@00 _pure_2@7@00)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-286|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref) (_pure_2@7@00 Int)) (!
  (let ((result@8@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-319|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref) (_pure_2@7@00 Int)) (!
  (let ((result@8@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-320|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
(assert (<= 0 _pure_2@7@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@6@00))
(assert (<
  _pure_2@7@00
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@6@00)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in (_pure_1.discriminant == 0 ? builtin$unreach_int__$TY$__$int$() : (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More(_pure_1.enum_More), read$()) in (unfolding acc(m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_(_pure_1.enum_More.f$0), read$()) in (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in (unfolding acc(i32(_pure_1.enum_More.f$0.val_ref.f$elem), read$()) in (_pure_2 != 0 ? m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1.enum_More.f$0.val_ref.f$next, _pure_2 - 1) : _pure_1.enum_More.f$0.val_ref.f$elem.val_int)))))))
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@6@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@6@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] 0 <= self.discriminant
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
; [eval] self.discriminant == 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | First:(First:(s@$)) == 1 | live]
; [else-branch: 6 | First:(First:(s@$)) != 1 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 6 | First:(First:(s@$)) == 1]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (_pure_1.discriminant == 0 ? builtin$unreach_int__$TY$__$int$() : (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More(_pure_1.enum_More), read$()) in (unfolding acc(m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_(_pure_1.enum_More.f$0), read$()) in (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in (unfolding acc(i32(_pure_1.enum_More.f$0.val_ref.f$elem), read$()) in (_pure_2 != 0 ? m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1.enum_More.f$0.val_ref.f$next, _pure_2 - 1) : _pure_1.enum_More.f$0.val_ref.f$elem.val_int))))))
; [eval] _pure_1.discriminant == 0
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
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | First:(First:(s@$)) == 0 | dead]
; [else-branch: 7 | First:(First:(s@$)) != 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 7 | First:(First:(s@$)) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
; [eval] (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More(_pure_1.enum_More), read$()) in (unfolding acc(m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_(_pure_1.enum_More.f$0), read$()) in (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in (unfolding acc(i32(_pure_1.enum_More.f$0.val_ref.f$elem), read$()) in (_pure_2 != 0 ? m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1.enum_More.f$0.val_ref.f$next, _pure_2 - 1) : _pure_1.enum_More.f$0.val_ref.f$elem.val_int)))))
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [eval] read$()
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      $Ref.null))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_(_pure_1.enum_More.f$0), read$()) in (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in (unfolding acc(i32(_pure_1.enum_More.f$0.val_ref.f$elem), read$()) in (_pure_2 != 0 ? m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1.enum_More.f$0.val_ref.f$next, _pure_2 - 1) : _pure_1.enum_More.f$0.val_ref.f$elem.val_int))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      $Ref.null))))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_More.f$0.val_ref), read$()) in (unfolding acc(i32(_pure_1.enum_More.f$0.val_ref.f$elem), read$()) in (_pure_2 != 0 ? m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1.enum_More.f$0.val_ref.f$next, _pure_2 - 1) : _pure_1.enum_More.f$0.val_ref.f$elem.val_int)))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [eval] read$()
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  _pure_1@6@00
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(i32(_pure_1.enum_More.f$0.val_ref.f$elem), read$()) in (_pure_2 != 0 ? m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1.enum_More.f$0.val_ref.f$next, _pure_2 - 1) : _pure_1.enum_More.f$0.val_ref.f$elem.val_int))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
; [eval] read$()
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      $Ref.null))))
; [eval] (_pure_2 != 0 ? m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1.enum_More.f$0.val_ref.f$next, _pure_2 - 1) : _pure_1.enum_More.f$0.val_ref.f$elem.val_int)
; [eval] _pure_2 != 0
(set-option :timeout 0)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (= _pure_2@7@00 0)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= _pure_2@7@00 0))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | _pure_2@7@00 != 0 | live]
; [else-branch: 8 | _pure_2@7@00 == 0 | live]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 8 | _pure_2@7@00 != 0]
(assert (not (= _pure_2@7@00 0)))
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1.enum_More.f$0.val_ref.f$next, _pure_2 - 1)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] _pure_2 - 1
(set-option :timeout 0)
(push) ; 12
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] 0 <= _pure_2
(set-option :timeout 0)
(push) ; 13
(assert (not (<= 0 (- _pure_2@7@00 1))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- _pure_2@7@00 1)))
; [eval] _pure_2 < m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(push) ; 13
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
(pop) ; 13
; Joined path conditions
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
(set-option :timeout 0)
(push) ; 13
(assert (not (<
  (- _pure_2@7@00 1)
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (<
  (- _pure_2@7@00 1)
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
; [eval] 0 <= _pure_2
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
  _pure_2@7@00
  1)))
(pop) ; 12
; Joined path conditions
(assert (and
  (<= 0 (- _pure_2@7@00 1))
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (<
    (- _pure_2@7@00 1)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
    _pure_2@7@00
    1))))
(pop) ; 11
(push) ; 11
; [else-branch: 8 | _pure_2@7@00 == 0]
(assert (= _pure_2@7@00 0))
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (not (= _pure_2@7@00 0))
  (and
    (not (= _pure_2@7@00 0))
    (<= 0 (- _pure_2@7@00 1))
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    (<
      (- _pure_2@7@00 1)
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
      _pure_2@7@00
      1)))))
; Joined path conditions
(assert (or (= _pure_2@7@00 0) (not (= _pure_2@7@00 0))))
(pop) ; 9
; Joined path conditions
(assert (and
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        $Ref.null)))
  (=>
    (not (= _pure_2@7@00 0))
    (and
      (not (= _pure_2@7@00 0))
      (<= 0 (- _pure_2@7@00 1))
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      (<
        (- _pure_2@7@00 1)
        (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
          $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
        _pure_2@7@00
        1))))
  (or (= _pure_2@7@00 0) (not (= _pure_2@7@00 0)))))
(pop) ; 8
; Joined path conditions
(assert (and
  (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        $Ref.null)))
  (=>
    (not (= _pure_2@7@00 0))
    (and
      (not (= _pure_2@7@00 0))
      (<= 0 (- _pure_2@7@00 1))
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      (<
        (- _pure_2@7@00 1)
        (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
          $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
        _pure_2@7@00
        1))))
  (or (= _pure_2@7@00 0) (not (= _pure_2@7@00 0)))))
(pop) ; 7
; Joined path conditions
(assert (and
  (m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        $Ref.null)))
  (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        $Ref.null)))
  (=>
    (not (= _pure_2@7@00 0))
    (and
      (not (= _pure_2@7@00 0))
      (<= 0 (- _pure_2@7@00 1))
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      (<
        (- _pure_2@7@00 1)
        (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
          $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
        _pure_2@7@00
        1))))
  (or (= _pure_2@7@00 0) (not (= _pure_2@7@00 0)))))
(pop) ; 6
; Joined path conditions
(assert (and
  (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
        $Ref.null)))
  (m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        $Ref.null)))
  (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        $Ref.null)))
  (=>
    (not (= _pure_2@7@00 0))
    (and
      (not (= _pure_2@7@00 0))
      (<= 0 (- _pure_2@7@00 1))
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      (<
        (- _pure_2@7@00 1)
        (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
          $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
        _pure_2@7@00
        1))))
  (or (= _pure_2@7@00 0) (not (= _pure_2@7@00 0)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
    (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
          $Ref.null)))
    (m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          $Ref.null)))
    (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
          $Ref.null)))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
          $Ref.null)))
    (=>
      (not (= _pure_2@7@00 0))
      (and
        (not (= _pure_2@7@00 0))
        (<= 0 (- _pure_2@7@00 1))
        (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
          $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        (<
          (- _pure_2@7@00 1)
          (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
            $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
          _pure_2@7@00
          1))))
    (or (= _pure_2@7@00 0) (not (= _pure_2@7@00 0))))))
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (and
  (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@6@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@6@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (and
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
    (=>
      (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
      (and
        (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
        (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
              $Ref.null)))
        (m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              $Ref.null)))
        (m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
              $Ref.null)))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
              $Ref.null)))
        (=>
          (not (= _pure_2@7@00 0))
          (and
            (not (= _pure_2@7@00 0))
            (<= 0 (- _pure_2@7@00 1))
            (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
              ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
              $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
            (<
              (- _pure_2@7@00 1)
              (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
                ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
                $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
            (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
              ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
              _pure_2@7@00
              1))))
        (or (= _pure_2@7@00 0) (not (= _pure_2@7@00 0)))))
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))))
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(assert (=
  result@8@00
  (ite
    (not (= _pure_2@7@00 0))
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
      _pure_2@7@00
      1))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
(pop) ; 1
(declare-const $unresolved@33@00 $Snap)
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref) (_pure_2@7@00 Int)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition s@$ _pure_1@6@00 _pure_2@7@00)
    (=
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00)
      (ite
        (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
        (builtin$unreach_int__$TY$__$int$ $unresolved@33@00)
        (ite
          (not (= _pure_2@7@00 0))
          (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited ($Snap.combine
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
            _pure_2@7@00
            1))
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless _pure_1@6@00 _pure_2@7@00) (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@6@00))
  :qid |quant-u-321|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref) (_pure_2@7@00 Int)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition s@$ _pure_1@6@00 _pure_2@7@00)
    (ite
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
      (builtin$unreach_int__$TY$__$int$%precondition $unresolved@33@00)
      (ite
        (not (= _pure_2@7@00 0))
        (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) (-
          _pure_2@7@00
          1))
        true)))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00))
  :qid |quant-u-322|)))
; ---------- FUNCTION m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@9@00 () $Ref)
(declare-fun result@10@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@34@00 $Snap)
(assert (= $t@34@00 ($Snap.combine ($Snap.first $t@34@00) ($Snap.second $t@34@00))))
(assert (= ($Snap.first $t@34@00) $Snap.unit))
(assert (= ($Snap.second $t@34@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@10@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref)) (!
  (=
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@9@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@9@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@9@00))
  :qid |quant-u-287|)))
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref)) (!
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@9@00)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@9@00))
  :qid |quant-u-288|)))
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref)) (!
  (let ((result@10@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@9@00))) (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@9@00)
    (<= 0 result@10@00)))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@9@00))
  :qid |quant-u-323|)))
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref)) (!
  (let ((result@10@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@9@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@9@00))
  :qid |quant-u-324|)))
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref)) (!
  (let ((result@10@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@9@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@9@00))
  :qid |quant-u-325|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1.f$head))
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@9@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@9@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1.f$head)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
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
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))))
(pop) ; 3
; Joined path conditions
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@9@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@9@00 $Ref.null)))
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))))))
(assert (=
  result@10@00
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))))))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@10@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@10@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@9@00)
    (=
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@9@00)
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))))))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@9@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@9@00) (m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@9@00))
  :qid |quant-u-326|)))
(assert (forall ((s@$ $Snap) (_pure_1@9@00 $Ref)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@9@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@9@00))
  :qid |quant-u-327|)))
; ---------- FUNCTION m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$----------
(declare-fun _pure_1@11@00 () $Ref)
(declare-fun result@12@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@35@00 $Snap)
(assert (= $t@35@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (=
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@11@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@11@00))
  :qid |quant-u-289|)))
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _pure_1@11@00)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00))
  :qid |quant-u-290|)))
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (let ((result@12@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00))
  :qid |quant-u-328|)))
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (let ((result@12@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@11@00))
  :qid |quant-u-329|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in _pure_1.discriminant == 0)
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@11@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@11@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] 0 <= self.discriminant
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
; [eval] self.discriminant == 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | First:(First:(s@$)) == 0 | live]
; [else-branch: 9 | First:(First:(s@$)) != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 9 | First:(First:(s@$)) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] _pure_1.discriminant == 0
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 9 | First:(First:(s@$)) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  $Snap.unit))
; [eval] _pure_1.discriminant == 0
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@36@00 ($Snap $Ref) Bool)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
  (=
    (joined_unfolding@36@00 s@$ _pure_1@11@00)
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (=
    (joined_unfolding@36@00 s@$ _pure_1@11@00)
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
; Joined path conditions
(assert (and
  (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@11@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@11@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
; Joined path conditions
(assert (and
  (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@11@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@11@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      $Snap.unit))))
(assert (or
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(assert (= result@12@00 (joined_unfolding@36@00 s@$ _pure_1@11@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _pure_1@11@00)
    (=
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@11@00)
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@11@00))
  :qid |quant-u-330|)))
(assert (forall ((s@$ $Snap) (_pure_1@11@00 $Ref)) (!
  true
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@11@00))
  :qid |quant-u-331|)))
; ---------- FUNCTION m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$----------
(declare-fun _pure_1@13@00 () $Ref)
(declare-fun result@14@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@37@00 $Snap)
(assert (= $t@37@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref)) (!
  (=
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@13@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@13@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@13@00))
  :qid |quant-u-291|)))
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref)) (!
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%stateless _pure_1@13@00)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@13@00))
  :qid |quant-u-292|)))
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref)) (!
  (let ((result@14@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@13@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@13@00))
  :qid |quant-u-332|)))
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref)) (!
  (let ((result@14@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@13@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%limited s@$ _pure_1@13@00))
  :qid |quant-u-333|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in !(_pure_1.discriminant == 0))
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@13@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@13@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] 0 <= self.discriminant
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
; [eval] self.discriminant == 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | First:(First:(s@$)) == 0 | live]
; [else-branch: 10 | First:(First:(s@$)) != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 10 | First:(First:(s@$)) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] !(_pure_1.discriminant == 0)
; [eval] _pure_1.discriminant == 0
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 10 | First:(First:(s@$)) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  $Snap.unit))
; [eval] !(_pure_1.discriminant == 0)
; [eval] _pure_1.discriminant == 0
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@38@00 ($Snap $Ref) Bool)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
  (=
    (joined_unfolding@38@00 s@$ _pure_1@13@00)
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (=
    (joined_unfolding@38@00 s@$ _pure_1@13@00)
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))))
; Joined path conditions
(assert (and
  (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@13@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@13@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
; Joined path conditions
(assert (and
  (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@13@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@13@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      $Snap.unit))))
(assert (or
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(assert (= result@14@00 (joined_unfolding@38@00 s@$ _pure_1@13@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition s@$ _pure_1@13@00)
    (=
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@13@00)
      (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@13@00))
  :qid |quant-u-334|)))
(assert (forall ((s@$ $Snap) (_pure_1@13@00 $Ref)) (!
  true
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_none$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ s@$ _pure_1@13@00))
  :qid |quant-u-335|)))
; ---------- FUNCTION builtin$undef_int__$TY$__$int$----------
(declare-fun result@15@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$undef_int__$TY$__$int$%limited s@$)
    (builtin$undef_int__$TY$__$int$ s@$))
  :pattern ((builtin$undef_int__$TY$__$int$ s@$))
  :qid |quant-u-293|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$undef_int__$TY$__$int$%stateless  Bool)
  :pattern ((builtin$undef_int__$TY$__$int$%limited s@$))
  :qid |quant-u-294|)))
; ---------- FUNCTION builtin$unreach_bool__$TY$__$bool$----------
(declare-fun result@16@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_bool__$TY$__$bool$%limited s@$)
    (builtin$unreach_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$unreach_bool__$TY$__$bool$ s@$))
  :qid |quant-u-295|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-296|)))
; ---------- FUNCTION m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$----------
(declare-fun _pure_1@17@00 () $Ref)
(declare-fun _pure_2@18@00 () Int)
(declare-fun result@19@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (<= 0 _pure_2@18@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] _pure_2 < m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@17@00))
(pop) ; 2
; Joined path conditions
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@17@00))
(assert (<
  _pure_2@18@00
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@17@00)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] 0 <= _pure_2
(declare-const $t@39@00 $Snap)
(assert (= $t@39@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@17@00 $Ref) (_pure_2@18@00 Int)) (!
  (=
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@17@00 _pure_2@18@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@17@00 _pure_2@18@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@17@00 _pure_2@18@00))
  :qid |quant-u-297|)))
(assert (forall ((s@$ $Snap) (_pure_1@17@00 $Ref) (_pure_2@18@00 Int)) (!
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless _pure_1@17@00 _pure_2@18@00)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@17@00 _pure_2@18@00))
  :qid |quant-u-298|)))
(assert (forall ((s@$ $Snap) (_pure_1@17@00 $Ref) (_pure_2@18@00 Int)) (!
  (let ((result@19@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@17@00 _pure_2@18@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@17@00 _pure_2@18@00))
  :qid |quant-u-336|)))
(assert (forall ((s@$ $Snap) (_pure_1@17@00 $Ref) (_pure_2@18@00 Int)) (!
  (let ((result@19@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@17@00 _pure_2@18@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@17@00 _pure_2@18@00))
  :qid |quant-u-337|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
(assert (<= 0 _pure_2@18@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@17@00))
(assert (<
  _pure_2@18@00
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@17@00)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1.f$head, _pure_2))
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@17@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@17@00 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$(_pure_1.f$head, _pure_2)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
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
; [eval] 0 <= _pure_2
; [eval] _pure_2 < m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(set-option :timeout 0)
(push) ; 4
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))))
(pop) ; 4
; Joined path conditions
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))))
(set-option :timeout 0)
(push) ; 4
(assert (not (<
  _pure_2@18@00
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<
  _pure_2@18@00
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))))))
; [eval] 0 <= _pure_2
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) _pure_2@18@00))
(pop) ; 3
; Joined path conditions
(assert (and
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))))
  (<
    _pure_2@18@00
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))))
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) _pure_2@18@00)))
(pop) ; 2
; Joined path conditions
(assert (and
  (m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@17@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@17@00 $Ref.null)))
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))))
  (<
    _pure_2@18@00
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      $Snap.unit) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$)))))
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) _pure_2@18@00)))
(assert (=
  result@19@00
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) _pure_2@18@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@17@00 $Ref) (_pure_2@18@00 Int)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition s@$ _pure_1@17@00 _pure_2@18@00)
    (=
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@17@00 _pure_2@18@00)
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap.combine
        ($Snap.second ($Snap.first s@$))
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) _pure_2@18@00)))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@17@00 _pure_2@18@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless _pure_1@17@00 _pure_2@18@00) (m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@17@00))
  :qid |quant-u-338|)))
(assert (forall ((s@$ $Snap) (_pure_1@17@00 $Ref) (_pure_2@18@00 Int)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition s@$ _pure_1@17@00 _pure_2@18@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap.combine
      ($Snap.second ($Snap.first s@$))
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first s@$))) _pure_2@18@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@17@00 _pure_2@18@00))
  :qid |quant-u-339|)))
; ---------- FUNCTION m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun self@20@00 () $Ref)
(declare-fun result@21@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(declare-const $t@40@00 $Snap)
(assert (= $t@40@00 ($Snap.combine ($Snap.first $t@40@00) ($Snap.second $t@40@00))))
(assert (= ($Snap.first $t@40@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@21@00))
(assert (= ($Snap.second $t@40@00) $Snap.unit))
; [eval] result <= 1
(assert (<= result@21@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@20@00 $Ref)) (!
  (=
    (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@20@00)
    (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@20@00))
  :pattern ((m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@20@00))
  :qid |quant-u-299|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref)) (!
  (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless self@20@00)
  :pattern ((m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@20@00))
  :qid |quant-u-300|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref)) (!
  (let ((result@21@00 (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@20@00))) (=>
    (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ self@20@00)
    (and (<= 0 result@21@00) (<= result@21@00 1))))
  :pattern ((m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@20@00))
  :qid |quant-u-340|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref)) (!
  (let ((result@21@00 (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@20@00))) true)
  :pattern ((m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@20@00))
  :qid |quant-u-341|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_(self), read$()) in self.discriminant)
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@20@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@20@00 $Ref.null))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= self.discriminant
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
; [eval] self.discriminant == 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | First:(s@$) == 1 | live]
; [else-branch: 11 | First:(s@$) != 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 11 | First:(s@$) == 1]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 11 | First:(s@$) != 1]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)))
(assert (= ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@41@00 ($Snap $Ref) Int)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)
  (=
    (joined_unfolding@41@00 s@$ self@20@00)
    ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
  (=
    (joined_unfolding@41@00 s@$ self@20@00)
    ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
; Joined path conditions
(assert (and
  (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@20@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@20@00 $Ref.null)))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (= ($Snap.first ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
; Joined path conditions
(assert (and
  (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@20@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@20@00 $Ref.null)))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (= ($Snap.first ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))
      $Snap.unit))))
(assert (or
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)))
(assert (= result@21@00 (joined_unfolding@41@00 s@$ self@20@00)))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@21@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@21@00))
; [eval] result <= 1
(push) ; 2
(assert (not (<= result@21@00 1)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= result@21@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@20@00 $Ref)) (!
  (=>
    (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ self@20@00)
    (=
      (m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@20@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$))))
  :pattern ((m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@20@00))
  :qid |quant-u-342|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref)) (!
  true
  :pattern ((m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@20@00))
  :qid |quant-u-343|)))
; ---------- FUNCTION builtin$undef_bool__$TY$__$bool$----------
(declare-fun result@22@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$undef_bool__$TY$__$bool$%limited s@$)
    (builtin$undef_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$undef_bool__$TY$__$bool$ s@$))
  :qid |quant-u-301|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$undef_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$undef_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-302|)))
; ---------- FUNCTION m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun self@23@00 () $Ref)
(declare-fun result@24@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(declare-const $t@42@00 $Snap)
(assert (= $t@42@00 ($Snap.combine ($Snap.first $t@42@00) ($Snap.second $t@42@00))))
(assert (= ($Snap.first $t@42@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@24@00))
(assert (= ($Snap.second $t@42@00) $Snap.unit))
; [eval] result <= 1
(assert (<= result@24@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@23@00 $Ref)) (!
  (=
    (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@23@00)
    (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@23@00))
  :pattern ((m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@23@00))
  :qid |quant-u-303|)))
(assert (forall ((s@$ $Snap) (self@23@00 $Ref)) (!
  (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless self@23@00)
  :pattern ((m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@23@00))
  :qid |quant-u-304|)))
(assert (forall ((s@$ $Snap) (self@23@00 $Ref)) (!
  (let ((result@24@00 (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@23@00))) (=>
    (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ self@23@00)
    (and (<= 0 result@24@00) (<= result@24@00 1))))
  :pattern ((m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@23@00))
  :qid |quant-u-344|)))
(assert (forall ((s@$ $Snap) (self@23@00 $Ref)) (!
  (let ((result@24@00 (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@23@00))) true)
  :pattern ((m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ self@23@00))
  :qid |quant-u-345|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_(self), read$()) in self.discriminant)
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@23@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@23@00 $Ref.null))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= self.discriminant
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
; [eval] self.discriminant == 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | First:(s@$) == 0 | live]
; [else-branch: 12 | First:(s@$) != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 12 | First:(s@$) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 12 | First:(s@$) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)))
(assert (= ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@43@00 ($Snap $Ref) Int)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)
  (=
    (joined_unfolding@43@00 s@$ self@23@00)
    ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
  (=
    (joined_unfolding@43@00 s@$ self@23@00)
    ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
; Joined path conditions
(assert (and
  (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@23@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@23@00 $Ref.null)))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (= ($Snap.first ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
; Joined path conditions
(assert (and
  (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger s@$ self@23@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@23@00 $Ref.null)))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (= ($Snap.first ($Snap.second s@$)) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first s@$)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))
      $Snap.unit))))
(assert (or
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)))
(assert (= result@24@00 (joined_unfolding@43@00 s@$ self@23@00)))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@24@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@24@00))
; [eval] result <= 1
(push) ; 2
(assert (not (<= result@24@00 1)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= result@24@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@23@00 $Ref)) (!
  (=>
    (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ self@23@00)
    (=
      (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@23@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$))))
  :pattern ((m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@23@00))
  :qid |quant-u-346|)))
(assert (forall ((s@$ $Snap) (self@23@00 $Ref)) (!
  true
  :pattern ((m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$discriminant$$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ self@23@00))
  :qid |quant-u-347|)))
; ---------- FUNCTION m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@25@00 () $Ref)
(declare-fun result@26@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$(_pure_1)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@25@00))
(pop) ; 2
; Joined path conditions
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@25@00))
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@25@00))
(declare-const $t@44@00 $Snap)
(assert (= $t@44@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@25@00 $Ref)) (!
  (=
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@25@00)
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@25@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@25@00))
  :qid |quant-u-305|)))
(assert (forall ((s@$ $Snap) (_pure_1@25@00 $Ref)) (!
  (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@25@00)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@25@00))
  :qid |quant-u-306|)))
(assert (forall ((s@$ $Snap) (_pure_1@25@00 $Ref)) (!
  (let ((result@26@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@25@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@25@00))
  :qid |quant-u-348|)))
(assert (forall ((s@$ $Snap) (_pure_1@25@00 $Ref)) (!
  (let ((result@26@00 (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@25@00))) true)
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@25@00))
  :qid |quant-u-349|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@25@00))
(assert (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$is_some$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$bool$ ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@25@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_(_pure_1), read$()) in (_pure_1.discriminant == 0 ? (unfolding acc(m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_Some(_pure_1.enum_Some), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0), read$()) in _pure_1.enum_Some.f$0.val_int)) : builtin$unreach_int__$TY$__$int$()))
; [eval] read$()
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
; [eval] read$()
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@25@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@25@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] 0 <= self.discriminant
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit))
; [eval] self.discriminant <= 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
; [eval] self.discriminant == 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | First:(First:(s@$)) == 0 | live]
; [else-branch: 13 | First:(First:(s@$)) != 0 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 13 | First:(First:(s@$)) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (_pure_1.discriminant == 0 ? (unfolding acc(m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_Some(_pure_1.enum_Some), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0), read$()) in _pure_1.enum_Some.f$0.val_int)) : builtin$unreach_int__$TY$__$int$())
; [eval] _pure_1.discriminant == 0
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
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | First:(First:(s@$)) == 0 | live]
; [else-branch: 14 | First:(First:(s@$)) != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 14 | First:(First:(s@$)) == 0]
; [eval] (unfolding acc(m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_Some(_pure_1.enum_Some), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0), read$()) in _pure_1.enum_Some.f$0.val_int))
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
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [eval] read$()
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      $Ref.null))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(i32(_pure_1.enum_Some.f$0), read$()) in _pure_1.enum_Some.f$0.val_int)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      $Ref.null))))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
; Joined path conditions
(assert (and
  (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        $Ref.null)))))
(pop) ; 6
; Joined path conditions
(assert (and
  (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
        $Ref.null)))
  (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
  (and
    (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
          $Ref.null)))
    (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          $Ref.null))))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (and
  (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@25@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@25@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))
  (= ($Snap.first ($Snap.second ($Snap.first s@$))) $Snap.unit)
  (<= 0 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))
  (=
    ($Snap.second ($Snap.second ($Snap.first s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
  (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
  (<= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
  (and
    (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
    (=>
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
      (and
        (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
              $Ref.null)))
        (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
              $Ref.null))))))))
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(assert (=
  result@26@00
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
(pop) ; 1
(declare-const $unresolved@45@00 $Snap)
(assert (forall ((s@$ $Snap) (_pure_1@25@00 $Ref)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@25@00)
    (=
      (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@25@00)
      (ite
        (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
        (builtin$unreach_int__$TY$__$int$ $unresolved@45@00))))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@25@00))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@25@00) (m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.first s@$) _pure_1@25@00))
  :qid |quant-u-350|)))
(assert (forall ((s@$ $Snap) (_pure_1@25@00 $Ref)) (!
  (=>
    (m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@25@00)
    (ite
      (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)
      true
      (builtin$unreach_int__$TY$__$int$%precondition $unresolved@45@00)))
  :pattern ((m_first_final$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$peek$opensqu$0$closesqu$__$TY$__m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@25@00))
  :qid |quant-u-351|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@46@00 Int)
; ---------- bool ----------
(declare-const self@47@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@48@00 Bool)
(assert (not (= self@47@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_13$3$285504012641001254 ----------
(declare-const self@49@00 $Ref)
; ---------- closure$0_1_14$3$15375066495536163397 ----------
(declare-const self@50@00 $Ref)
; ---------- closure$0_1_15$3$2868002597210616443 ----------
(declare-const self@51@00 $Ref)
; ---------- closure$0_1_16$3$9316913858590951640 ----------
(declare-const self@52@00 $Ref)
; ---------- closure$0_1_17$4$532893136756078670 ----------
(declare-const self@53@00 $Ref)
; ---------- closure$0_1_23$3$5372843592026537153 ----------
(declare-const self@54@00 $Ref)
; ---------- closure$0_1_24$3$3010475301938644702 ----------
(declare-const self@55@00 $Ref)
; ---------- closure$0_1_25$3$3868597211286645367 ----------
(declare-const self@56@00 $Ref)
; ---------- closure$0_1_26$4$17874368375826697435 ----------
(declare-const self@57@00 $Ref)
; ---------- closure$0_1_27$4$11880881688395209060 ----------
(declare-const self@58@00 $Ref)
; ---------- closure$0_1_28$4$2464236529596893172 ----------
(declare-const self@59@00 $Ref)
; ---------- closure$0_1_29$5$13550867090471520830 ----------
(declare-const self@60@00 $Ref)
; ---------- closure$0_1_30$3$9316913858590951640 ----------
(declare-const self@61@00 $Ref)
; ---------- closure$0_1_31$4$10198083371420618695 ----------
(declare-const self@62@00 $Ref)
; ---------- closure$0_1_32$3$14146303487322046002 ----------
(declare-const self@63@00 $Ref)
; ---------- closure$0_1_33$3$10819110499908836502 ----------
(declare-const self@64@00 $Ref)
; ---------- closure$0_1_34$4$18248137411596842664 ----------
(declare-const self@65@00 $Ref)
; ---------- closure$0_1_35$3$1800990638667843567 ----------
(declare-const self@66@00 $Ref)
; ---------- closure$0_1_36$4$4559978894891083623 ----------
(declare-const self@67@00 $Ref)
; ---------- closure$0_1_37$4$8424733456540362922 ----------
(declare-const self@68@00 $Ref)
; ---------- closure$0_1_38$3$11417723233936340610 ----------
(declare-const self@69@00 $Ref)
; ---------- closure$0_1_39$3$1132657330059599590 ----------
(declare-const self@70@00 $Ref)
; ---------- closure$0_1_40$3$7625693188187510870 ----------
(declare-const self@71@00 $Ref)
; ---------- closure$0_1_41$3$13640473792123223955 ----------
(declare-const self@72@00 $Ref)
; ---------- closure$0_1_42$3$1451880131427103804 ----------
(declare-const self@73@00 $Ref)
; ---------- closure$0_1_43$3$17900001731891322914 ----------
(declare-const self@74@00 $Ref)
; ---------- closure$0_1_44$3$11711303054302998842 ----------
(declare-const self@75@00 $Ref)
; ---------- closure$0_1_45$4$16397435947654686472 ----------
(declare-const self@76@00 $Ref)
; ---------- closure$0_1_46$3$5039206468203838448 ----------
(declare-const self@77@00 $Ref)
; ---------- closure$0_1_47$3$8565491267176139305 ----------
(declare-const self@78@00 $Ref)
; ---------- closure$0_1_48$3$12939604231988721118 ----------
(declare-const self@79@00 $Ref)
; ---------- closure$0_1_49$3$2385238782922955094 ----------
(declare-const self@80@00 $Ref)
; ---------- closure$0_1_50$4$11829941760534454793 ----------
(declare-const self@81@00 $Ref)
; ---------- closure$0_1_51$4$13939029741107599013 ----------
(declare-const self@82@00 $Ref)
; ---------- i32 ----------
(declare-const self@83@00 $Ref)
(push) ; 1
(declare-const $t@84@00 Int)
(assert (not (= self@83@00 $Ref.null)))
(pop) ; 1
; ---------- isize ----------
(declare-const self@85@00 $Ref)
(push) ; 1
(declare-const $t@86@00 Int)
(assert (not (= self@85@00 $Ref.null)))
(pop) ; 1
; ---------- m_alloc$$boxed$opensqu$0$closesqu$$$Box$opensqu$0$closesqu$$_beg_$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@87@00 $Ref)
(push) ; 1
(declare-const $t@88@00 $Snap)
(assert (= $t@88@00 ($Snap.combine ($Snap.first $t@88@00) ($Snap.second $t@88@00))))
(assert (not (= self@87@00 $Ref.null)))
(pop) ; 1
; ---------- m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@89@00 $Ref)
(push) ; 1
(declare-const $t@90@00 $Snap)
(assert (= $t@90@00 ($Snap.combine ($Snap.first $t@90@00) ($Snap.second $t@90@00))))
(assert (not (= self@89@00 $Ref.null)))
(assert (=
  ($Snap.second $t@90@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@90@00))
    ($Snap.second ($Snap.second $t@90@00)))))
(assert (= ($Snap.first ($Snap.second $t@90@00)) $Snap.unit))
; [eval] 0 <= self.discriminant
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@90@00))))
(assert (=
  ($Snap.second ($Snap.second $t@90@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@90@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@90@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@90@00))) $Snap.unit))
; [eval] self.discriminant <= 1
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@90@00)) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@90@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@90@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@00)))))))
; [eval] self.discriminant == 1
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@90@00)) 1))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@90@00)) 1)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | First:($t@90@00) == 1 | live]
; [else-branch: 15 | First:($t@90@00) != 1 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 15 | First:($t@90@00) == 1]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@90@00)) 1))
(pop) ; 2
(push) ; 2
; [else-branch: 15 | First:($t@90@00) != 1]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@90@00)) 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@00))))
  $Snap.unit))
(pop) ; 2
(pop) ; 1
; ---------- m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_More ----------
(declare-const self@91@00 $Ref)
(push) ; 1
(declare-const $t@92@00 $Snap)
(assert (= $t@92@00 ($Snap.combine ($Snap.first $t@92@00) ($Snap.second $t@92@00))))
(assert (not (= self@91@00 $Ref.null)))
(pop) ; 1
; ---------- m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@93@00 $Ref)
(push) ; 1
(declare-const $t@94@00 $Snap)
(assert (= $t@94@00 ($Snap.combine ($Snap.first $t@94@00) ($Snap.second $t@94@00))))
(assert (not (= self@93@00 $Ref.null)))
(pop) ; 1
; ---------- m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@95@00 $Ref)
(push) ; 1
(declare-const $t@96@00 $Snap)
(assert (= $t@96@00 ($Snap.combine ($Snap.first $t@96@00) ($Snap.second $t@96@00))))
(assert (not (= self@95@00 $Ref.null)))
(assert (=
  ($Snap.second $t@96@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@96@00))
    ($Snap.second ($Snap.second $t@96@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@96@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@96@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@96@00))))))
(pop) ; 1
; ---------- m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@97@00 $Ref)
(push) ; 1
(declare-const $t@98@00 $Snap)
(assert (= $t@98@00 ($Snap.combine ($Snap.first $t@98@00) ($Snap.second $t@98@00))))
(assert (not (= self@97@00 $Ref.null)))
(assert (=
  ($Snap.second $t@98@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@98@00))
    ($Snap.second ($Snap.second $t@98@00)))))
(assert (= ($Snap.first ($Snap.second $t@98@00)) $Snap.unit))
; [eval] 0 <= self.discriminant
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@98@00))))
(assert (=
  ($Snap.second ($Snap.second $t@98@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@98@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@98@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@98@00))) $Snap.unit))
; [eval] self.discriminant <= 1
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@98@00)) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@98@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@98@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@00)))))))
; [eval] self.discriminant == 0
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@98@00)) 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@98@00)) 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | First:($t@98@00) == 0 | live]
; [else-branch: 16 | First:($t@98@00) != 0 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 16 | First:($t@98@00) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@98@00)) 0))
(pop) ; 2
(push) ; 2
; [else-branch: 16 | First:($t@98@00) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@98@00)) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@00))))
  $Snap.unit))
(pop) ; 2
(pop) ; 1
; ---------- m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_Some ----------
(declare-const self@99@00 $Ref)
(push) ; 1
(declare-const $t@100@00 $Snap)
(assert (= $t@100@00 ($Snap.combine ($Snap.first $t@100@00) ($Snap.second $t@100@00))))
(assert (not (= self@99@00 $Ref.null)))
(pop) ; 1
; ---------- never ----------
(declare-const self@101@00 $Ref)
; ---------- ref$closure$0_1_13$3$285504012641001254 ----------
(declare-const self@102@00 $Ref)
(push) ; 1
(declare-const $t@103@00 $Snap)
(assert (= $t@103@00 ($Snap.combine ($Snap.first $t@103@00) ($Snap.second $t@103@00))))
(assert (not (= self@102@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_14$3$15375066495536163397 ----------
(declare-const self@104@00 $Ref)
(push) ; 1
(declare-const $t@105@00 $Snap)
(assert (= $t@105@00 ($Snap.combine ($Snap.first $t@105@00) ($Snap.second $t@105@00))))
(assert (not (= self@104@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_15$3$2868002597210616443 ----------
(declare-const self@106@00 $Ref)
(push) ; 1
(declare-const $t@107@00 $Snap)
(assert (= $t@107@00 ($Snap.combine ($Snap.first $t@107@00) ($Snap.second $t@107@00))))
(assert (not (= self@106@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_16$3$9316913858590951640 ----------
(declare-const self@108@00 $Ref)
(push) ; 1
(declare-const $t@109@00 $Snap)
(assert (= $t@109@00 ($Snap.combine ($Snap.first $t@109@00) ($Snap.second $t@109@00))))
(assert (not (= self@108@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_17$4$532893136756078670 ----------
(declare-const self@110@00 $Ref)
(push) ; 1
(declare-const $t@111@00 $Snap)
(assert (= $t@111@00 ($Snap.combine ($Snap.first $t@111@00) ($Snap.second $t@111@00))))
(assert (not (= self@110@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_23$3$5372843592026537153 ----------
(declare-const self@112@00 $Ref)
(push) ; 1
(declare-const $t@113@00 $Snap)
(assert (= $t@113@00 ($Snap.combine ($Snap.first $t@113@00) ($Snap.second $t@113@00))))
(assert (not (= self@112@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_24$3$3010475301938644702 ----------
(declare-const self@114@00 $Ref)
(push) ; 1
(declare-const $t@115@00 $Snap)
(assert (= $t@115@00 ($Snap.combine ($Snap.first $t@115@00) ($Snap.second $t@115@00))))
(assert (not (= self@114@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_25$3$3868597211286645367 ----------
(declare-const self@116@00 $Ref)
(push) ; 1
(declare-const $t@117@00 $Snap)
(assert (= $t@117@00 ($Snap.combine ($Snap.first $t@117@00) ($Snap.second $t@117@00))))
(assert (not (= self@116@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_26$4$17874368375826697435 ----------
(declare-const self@118@00 $Ref)
(push) ; 1
(declare-const $t@119@00 $Snap)
(assert (= $t@119@00 ($Snap.combine ($Snap.first $t@119@00) ($Snap.second $t@119@00))))
(assert (not (= self@118@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_27$4$11880881688395209060 ----------
(declare-const self@120@00 $Ref)
(push) ; 1
(declare-const $t@121@00 $Snap)
(assert (= $t@121@00 ($Snap.combine ($Snap.first $t@121@00) ($Snap.second $t@121@00))))
(assert (not (= self@120@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_28$4$2464236529596893172 ----------
(declare-const self@122@00 $Ref)
(push) ; 1
(declare-const $t@123@00 $Snap)
(assert (= $t@123@00 ($Snap.combine ($Snap.first $t@123@00) ($Snap.second $t@123@00))))
(assert (not (= self@122@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_29$5$13550867090471520830 ----------
(declare-const self@124@00 $Ref)
(push) ; 1
(declare-const $t@125@00 $Snap)
(assert (= $t@125@00 ($Snap.combine ($Snap.first $t@125@00) ($Snap.second $t@125@00))))
(assert (not (= self@124@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_30$3$9316913858590951640 ----------
(declare-const self@126@00 $Ref)
(push) ; 1
(declare-const $t@127@00 $Snap)
(assert (= $t@127@00 ($Snap.combine ($Snap.first $t@127@00) ($Snap.second $t@127@00))))
(assert (not (= self@126@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_31$4$10198083371420618695 ----------
(declare-const self@128@00 $Ref)
(push) ; 1
(declare-const $t@129@00 $Snap)
(assert (= $t@129@00 ($Snap.combine ($Snap.first $t@129@00) ($Snap.second $t@129@00))))
(assert (not (= self@128@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_32$3$14146303487322046002 ----------
(declare-const self@130@00 $Ref)
(push) ; 1
(declare-const $t@131@00 $Snap)
(assert (= $t@131@00 ($Snap.combine ($Snap.first $t@131@00) ($Snap.second $t@131@00))))
(assert (not (= self@130@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_33$3$10819110499908836502 ----------
(declare-const self@132@00 $Ref)
(push) ; 1
(declare-const $t@133@00 $Snap)
(assert (= $t@133@00 ($Snap.combine ($Snap.first $t@133@00) ($Snap.second $t@133@00))))
(assert (not (= self@132@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_34$4$18248137411596842664 ----------
(declare-const self@134@00 $Ref)
(push) ; 1
(declare-const $t@135@00 $Snap)
(assert (= $t@135@00 ($Snap.combine ($Snap.first $t@135@00) ($Snap.second $t@135@00))))
(assert (not (= self@134@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_35$3$1800990638667843567 ----------
(declare-const self@136@00 $Ref)
(push) ; 1
(declare-const $t@137@00 $Snap)
(assert (= $t@137@00 ($Snap.combine ($Snap.first $t@137@00) ($Snap.second $t@137@00))))
(assert (not (= self@136@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_36$4$4559978894891083623 ----------
(declare-const self@138@00 $Ref)
(push) ; 1
(declare-const $t@139@00 $Snap)
(assert (= $t@139@00 ($Snap.combine ($Snap.first $t@139@00) ($Snap.second $t@139@00))))
(assert (not (= self@138@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_37$4$8424733456540362922 ----------
(declare-const self@140@00 $Ref)
(push) ; 1
(declare-const $t@141@00 $Snap)
(assert (= $t@141@00 ($Snap.combine ($Snap.first $t@141@00) ($Snap.second $t@141@00))))
(assert (not (= self@140@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_38$3$11417723233936340610 ----------
(declare-const self@142@00 $Ref)
(push) ; 1
(declare-const $t@143@00 $Snap)
(assert (= $t@143@00 ($Snap.combine ($Snap.first $t@143@00) ($Snap.second $t@143@00))))
(assert (not (= self@142@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_39$3$1132657330059599590 ----------
(declare-const self@144@00 $Ref)
(push) ; 1
(declare-const $t@145@00 $Snap)
(assert (= $t@145@00 ($Snap.combine ($Snap.first $t@145@00) ($Snap.second $t@145@00))))
(assert (not (= self@144@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_40$3$7625693188187510870 ----------
(declare-const self@146@00 $Ref)
(push) ; 1
(declare-const $t@147@00 $Snap)
(assert (= $t@147@00 ($Snap.combine ($Snap.first $t@147@00) ($Snap.second $t@147@00))))
(assert (not (= self@146@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_41$3$13640473792123223955 ----------
(declare-const self@148@00 $Ref)
(push) ; 1
(declare-const $t@149@00 $Snap)
(assert (= $t@149@00 ($Snap.combine ($Snap.first $t@149@00) ($Snap.second $t@149@00))))
(assert (not (= self@148@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_42$3$1451880131427103804 ----------
(declare-const self@150@00 $Ref)
(push) ; 1
(declare-const $t@151@00 $Snap)
(assert (= $t@151@00 ($Snap.combine ($Snap.first $t@151@00) ($Snap.second $t@151@00))))
(assert (not (= self@150@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_43$3$17900001731891322914 ----------
(declare-const self@152@00 $Ref)
(push) ; 1
(declare-const $t@153@00 $Snap)
(assert (= $t@153@00 ($Snap.combine ($Snap.first $t@153@00) ($Snap.second $t@153@00))))
(assert (not (= self@152@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_44$3$11711303054302998842 ----------
(declare-const self@154@00 $Ref)
(push) ; 1
(declare-const $t@155@00 $Snap)
(assert (= $t@155@00 ($Snap.combine ($Snap.first $t@155@00) ($Snap.second $t@155@00))))
(assert (not (= self@154@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_45$4$16397435947654686472 ----------
(declare-const self@156@00 $Ref)
(push) ; 1
(declare-const $t@157@00 $Snap)
(assert (= $t@157@00 ($Snap.combine ($Snap.first $t@157@00) ($Snap.second $t@157@00))))
(assert (not (= self@156@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_46$3$5039206468203838448 ----------
(declare-const self@158@00 $Ref)
(push) ; 1
(declare-const $t@159@00 $Snap)
(assert (= $t@159@00 ($Snap.combine ($Snap.first $t@159@00) ($Snap.second $t@159@00))))
(assert (not (= self@158@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_47$3$8565491267176139305 ----------
(declare-const self@160@00 $Ref)
(push) ; 1
(declare-const $t@161@00 $Snap)
(assert (= $t@161@00 ($Snap.combine ($Snap.first $t@161@00) ($Snap.second $t@161@00))))
(assert (not (= self@160@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_48$3$12939604231988721118 ----------
(declare-const self@162@00 $Ref)
(push) ; 1
(declare-const $t@163@00 $Snap)
(assert (= $t@163@00 ($Snap.combine ($Snap.first $t@163@00) ($Snap.second $t@163@00))))
(assert (not (= self@162@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_49$3$2385238782922955094 ----------
(declare-const self@164@00 $Ref)
(push) ; 1
(declare-const $t@165@00 $Snap)
(assert (= $t@165@00 ($Snap.combine ($Snap.first $t@165@00) ($Snap.second $t@165@00))))
(assert (not (= self@164@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_50$4$11829941760534454793 ----------
(declare-const self@166@00 $Ref)
(push) ; 1
(declare-const $t@167@00 $Snap)
(assert (= $t@167@00 ($Snap.combine ($Snap.first $t@167@00) ($Snap.second $t@167@00))))
(assert (not (= self@166@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_51$4$13939029741107599013 ----------
(declare-const self@168@00 $Ref)
(push) ; 1
(declare-const $t@169@00 $Snap)
(assert (= $t@169@00 ($Snap.combine ($Snap.first $t@169@00) ($Snap.second $t@169@00))))
(assert (not (= self@168@00 $Ref.null)))
(pop) ; 1
; ---------- ref$i32 ----------
(declare-const self@170@00 $Ref)
(push) ; 1
(declare-const $t@171@00 $Snap)
(assert (= $t@171@00 ($Snap.combine ($Snap.first $t@171@00) ($Snap.second $t@171@00))))
(assert (not (= self@170@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@172@00 $Ref)
(push) ; 1
(declare-const $t@173@00 $Snap)
(assert (= $t@173@00 ($Snap.combine ($Snap.first $t@173@00) ($Snap.second $t@173@00))))
(assert (not (= self@172@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@174@00 $Ref)
(push) ; 1
(declare-const $t@175@00 $Snap)
(assert (= $t@175@00 ($Snap.combine ($Snap.first $t@175@00) ($Snap.second $t@175@00))))
(assert (not (= self@174@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_first_final$$Node$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@176@00 $Ref)
(push) ; 1
(declare-const $t@177@00 $Snap)
(assert (= $t@177@00 ($Snap.combine ($Snap.first $t@177@00) ($Snap.second $t@177@00))))
(assert (not (= self@176@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@178@00 $Ref)
(push) ; 1
(declare-const $t@179@00 $Snap)
(assert (= $t@179@00 ($Snap.combine ($Snap.first $t@179@00) ($Snap.second $t@179@00))))
(assert (not (= self@178@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_first_final$$Link$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@180@00 $Ref)
(push) ; 1
(declare-const $t@181@00 $Snap)
(assert (= $t@181@00 ($Snap.combine ($Snap.first $t@181@00) ($Snap.second $t@181@00))))
(assert (not (= self@180@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_first_final$$List$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@182@00 $Ref)
(push) ; 1
(declare-const $t@183@00 $Snap)
(assert (= $t@183@00 ($Snap.combine ($Snap.first $t@183@00) ($Snap.second $t@183@00))))
(assert (not (= self@182@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_first_final$$TrustedOption$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@184@00 $Ref)
(push) ; 1
(declare-const $t@185@00 $Snap)
(assert (= $t@185@00 ($Snap.combine ($Snap.first $t@185@00) ($Snap.second $t@185@00))))
(assert (not (= self@184@00 $Ref.null)))
(pop) ; 1
; ---------- ref$str ----------
(declare-const self@186@00 $Ref)
(push) ; 1
(declare-const $t@187@00 $Snap)
(assert (= $t@187@00 ($Snap.combine ($Snap.first $t@187@00) ($Snap.second $t@187@00))))
(assert (not (= self@186@00 $Ref.null)))
(pop) ; 1
; ---------- ref$tuple3$ref$str$u32$u32 ----------
(declare-const self@188@00 $Ref)
(push) ; 1
(declare-const $t@189@00 $Snap)
(assert (= $t@189@00 ($Snap.combine ($Snap.first $t@189@00) ($Snap.second $t@189@00))))
(assert (not (= self@188@00 $Ref.null)))
(pop) ; 1
; ---------- ref$usize ----------
(declare-const self@190@00 $Ref)
(push) ; 1
(declare-const $t@191@00 $Snap)
(assert (= $t@191@00 ($Snap.combine ($Snap.first $t@191@00) ($Snap.second $t@191@00))))
(assert (not (= self@190@00 $Ref.null)))
(pop) ; 1
; ---------- str ----------
(declare-const self@192@00 $Ref)
; ---------- tuple0$ ----------
(declare-const self@193@00 $Ref)
(push) ; 1
(declare-const $t@194@00 $Snap)
(assert (= $t@194@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$usize$bool ----------
(declare-const self@195@00 $Ref)
(push) ; 1
(declare-const $t@196@00 $Snap)
(assert (= $t@196@00 ($Snap.combine ($Snap.first $t@196@00) ($Snap.second $t@196@00))))
(assert (not (= self@195@00 $Ref.null)))
(assert (=
  ($Snap.second $t@196@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@196@00))
    ($Snap.second ($Snap.second $t@196@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@196@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@196@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@196@00))))))
(pop) ; 1
; ---------- tuple3$ref$str$u32$u32 ----------
(declare-const self@197@00 $Ref)
(push) ; 1
(declare-const $t@198@00 $Snap)
(assert (= $t@198@00 ($Snap.combine ($Snap.first $t@198@00) ($Snap.second $t@198@00))))
(assert (not (= self@197@00 $Ref.null)))
(assert (=
  ($Snap.second $t@198@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@198@00))
    ($Snap.second ($Snap.second $t@198@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@198@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@198@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@198@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@198@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@00))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@198@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- u32 ----------
(declare-const self@199@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@200@00 $Snap)
(assert (= $t@200@00 ($Snap.combine ($Snap.first $t@200@00) ($Snap.second $t@200@00))))
(assert (not (= self@199@00 $Ref.null)))
(assert (= ($Snap.second $t@200@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@200@00))))
(pop) ; 1
; ---------- u8 ----------
(declare-const self@201@00 $Ref)
(push) ; 1
(declare-const $t@202@00 $Snap)
(assert (= $t@202@00 ($Snap.combine ($Snap.first $t@202@00) ($Snap.second $t@202@00))))
(assert (not (= self@201@00 $Ref.null)))
(assert (= ($Snap.second $t@202@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@202@00))))
(pop) ; 1
; ---------- usize ----------
(declare-const self@203@00 $Ref)
(push) ; 1
(declare-const $t@204@00 $Snap)
(assert (= $t@204@00 ($Snap.combine ($Snap.first $t@204@00) ($Snap.second $t@204@00))))
(assert (not (= self@203@00 $Ref.null)))
(assert (= ($Snap.second $t@204@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@204@00))))
(pop) ; 1
