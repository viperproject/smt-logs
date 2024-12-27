(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 09:52:03
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
(declare-fun m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap) Int)
(declare-fun m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%limited ($Snap) Int)
(declare-const m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%stateless Bool)
(declare-fun m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap) Bool)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$ ($Snap $Ref Int Int) Int)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited ($Snap $Ref Int Int) Int)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%stateless ($Ref Int Int) Bool)
(declare-fun m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%precondition ($Snap $Ref Int Int) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun builtin$undef_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$undef_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$undef_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$undef_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$ ($Snap $Ref) Bool)
(declare-fun m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%limited ($Snap $Ref) Bool)
(declare-fun m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%stateless ($Ref) Bool)
(declare-fun m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_11$3$16836186685558598718%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_12$3$16836186685558598718%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$4$1589009702788246713%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_15$3$856908841841235720%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_16$3$16836186685558598718%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_17$3$16123126176350911560%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_18$3$936109105845141873%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_19$3$17660061404446368440%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_20$3$1747452362277107208%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_21$3$1886885960320301046%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_22$3$16836186685558598718%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_23$4$1860419104383651931%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_24$3$9005329699453506105%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_25$3$8233369117391950042%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_26$3$6831129558716023658%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_27$3$8084697069950319799%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_29$3$11933678243532117102%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_30$3$4920139583706826500%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_31$3$13448283034829184517%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_32$3$15809515461060994565%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_33$3$11933678243532117102%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_34$3$4920139583706826500%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_35$3$13448283034829184517%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_36$3$15809515461060994565%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_37$6$9382093347497428436%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_38$5$16262156183622235759%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_39$6$2570231456930421564%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_40$5$8151149684055769446%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_41$3$11933678243532117102%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_44$3$11957180999391598925%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_45$3$18068549781639004461%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_46$4$2316023683921474614%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_47$4$7438738628820119904%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_48$3$5169942411020240745%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_49$3$13177526864632184778%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_51$3$11921783312157906974%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_52$3$15203628194863643940%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_53$2$4061298814955297750%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_54$3$3845551369651406509%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_55$4$12478973570546726808%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_56$2$4061298814955297750%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_57$3$3155449875120012984%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_58$3$7682442910302967967%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_59$3$2360874258797543443%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_60$3$18314004443372132536%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_61$2$4061298814955297750%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_62$3$8554745105452251562%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_63$4$11738836714435574072%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_64$3$6302789819304097144%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_65$3$11937539310563724083%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_66$3$13333293174589074011%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_67$3$2467019396475800186%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_68$2$4061298814955297750%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_69$3$15436921638386154731%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_70$4$13742673918391663087%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_71$3$13802932288664565916%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_72$3$11933678243532117102%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_73$3$4920139583706826500%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_74$3$13448283034829184517%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_75$3$15809515461060994565%trigger ($Snap $Ref) Bool)
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun isize%trigger ($Snap $Ref) Bool)
(declare-fun m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$tuple2$i32$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$tuple2$i32$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_Some%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_Some%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$tuple2$i32$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun never%trigger ($Snap $Ref) Bool)
(declare-fun ref$bool%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_11$3$16836186685558598718%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_12$3$16836186685558598718%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$4$1589009702788246713%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_15$3$856908841841235720%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_16$3$16836186685558598718%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_17$3$16123126176350911560%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_18$3$936109105845141873%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_19$3$17660061404446368440%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_20$3$1747452362277107208%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_21$3$1886885960320301046%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_22$3$16836186685558598718%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_23$4$1860419104383651931%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_24$3$9005329699453506105%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_25$3$8233369117391950042%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_26$3$6831129558716023658%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_27$3$8084697069950319799%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_29$3$11933678243532117102%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_30$3$4920139583706826500%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_31$3$13448283034829184517%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_32$3$15809515461060994565%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_33$3$11933678243532117102%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_34$3$4920139583706826500%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_35$3$13448283034829184517%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_36$3$15809515461060994565%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_37$6$9382093347497428436%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_38$5$16262156183622235759%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_39$6$2570231456930421564%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_40$5$8151149684055769446%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_41$3$11933678243532117102%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_44$3$11957180999391598925%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_45$3$18068549781639004461%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_46$4$2316023683921474614%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_47$4$7438738628820119904%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_48$3$5169942411020240745%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_49$3$13177526864632184778%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_51$3$11921783312157906974%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_52$3$15203628194863643940%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_54$3$3845551369651406509%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_55$4$12478973570546726808%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_57$3$3155449875120012984%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_58$3$7682442910302967967%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_59$3$2360874258797543443%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_60$3$18314004443372132536%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_62$3$8554745105452251562%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_63$4$11738836714435574072%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_64$3$6302789819304097144%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_65$3$11937539310563724083%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_66$3$13333293174589074011%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_67$3$2467019396475800186%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_69$3$15436921638386154731%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_70$4$13742673918391663087%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_71$3$13802932288664565916%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_72$3$11933678243532117102%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_73$3$4920139583706826500%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_74$3$13448283034829184517%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_75$3$15809515461060994565%trigger ($Snap $Ref) Bool)
(declare-fun ref$i32%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$tuple2$i32$i32%trigger ($Snap $Ref) Bool)
(declare-fun ref$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$usize%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$i32$bool%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$i32$i32%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$usize$bool%trigger ($Snap $Ref) Bool)
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
(declare-const $t@18@00 $Snap)
(assert (= $t@18@00 ($Snap.combine ($Snap.first $t@18@00) ($Snap.second $t@18@00))))
(assert (= ($Snap.first $t@18@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@0@00))
(assert (= ($Snap.second $t@18@00) $Snap.unit))
; [eval] result < write
(assert (< result@0@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-190|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-191|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-210|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-211|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-212|)))
; ---------- FUNCTION m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$----------
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@19@00 $Snap)
(assert (= $t@19@00 $Snap.unit))
; [eval] result == 8
(assert (= result@1@00 8))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%limited s@$)
    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :pattern ((m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ s@$))
  :qid |quant-u-192|)))
(assert (forall ((s@$ $Snap)) (!
  (as m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%stateless  Bool)
  :pattern ((m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-193|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@1@00 (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) (=>
    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition s@$)
    (= result@1@00 8)))
  :pattern ((m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-213|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@1@00 (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%limited s@$))) true)
  :pattern ((m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%limited s@$))
  :qid |quant-u-214|)))
; ---------- FUNCTION m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@2@00 () $Ref)
(declare-fun result@3@00 () Int)
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
(declare-const $t@20@00 $Snap)
(assert (= $t@20@00 ($Snap.combine ($Snap.first $t@20@00) ($Snap.second $t@20@00))))
(assert (= ($Snap.first $t@20@00) $Snap.unit))
; [eval] result >= 0
(assert (>= result@3@00 0))
(assert (= ($Snap.second $t@20@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@3@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@2@00 $Ref)) (!
  (=
    (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@2@00)
    (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@2@00))
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@2@00))
  :qid |quant-u-194|)))
(assert (forall ((s@$ $Snap) (_pure_1@2@00 $Ref)) (!
  (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@2@00)
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@2@00))
  :qid |quant-u-195|)))
(assert (forall ((s@$ $Snap) (_pure_1@2@00 $Ref)) (!
  (let ((result@3@00 (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@2@00))) (=>
    (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@2@00)
    (and (>= result@3@00 0) (<= 0 result@3@00))))
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@2@00))
  :qid |quant-u-215|)))
(assert (forall ((s@$ $Snap) (_pure_1@2@00 $Ref)) (!
  (let ((result@3@00 (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@2@00))) true)
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@2@00))
  :qid |quant-u-216|)))
(assert (forall ((s@$ $Snap) (_pure_1@2@00 $Ref)) (!
  (let ((result@3@00 (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@2@00))) true)
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$3$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@2@00))
  :qid |quant-u-217|)))
; ---------- FUNCTION m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$----------
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
(declare-const $t@21@00 $Snap)
(assert (= $t@21@00 ($Snap.combine ($Snap.first $t@21@00) ($Snap.second $t@21@00))))
(assert (= ($Snap.first $t@21@00) $Snap.unit))
; [eval] result >= 0
(assert (>= result@5@00 0))
(assert (= ($Snap.second $t@21@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@5@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (=
    (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00)
    (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@4@00))
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@4@00))
  :qid |quant-u-196|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@4@00)
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))
  :qid |quant-u-197|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (let ((result@5@00 (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))) (=>
    (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@4@00)
    (and (>= result@5@00 0) (<= 0 result@5@00))))
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))
  :qid |quant-u-218|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (let ((result@5@00 (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))) true)
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))
  :qid |quant-u-219|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref)) (!
  (let ((result@5@00 (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))) true)
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@4@00))
  :qid |quant-u-220|)))
; ---------- FUNCTION m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$----------
(declare-fun _pure_1@6@00 () $Ref)
(declare-fun _pure_2@7@00 () Int)
(declare-fun _pure_3@8@00 () Int)
(declare-fun result@9@00 () Int)
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
; [eval] _pure_2 < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
; [eval] m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
(push) ; 2
(assert (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
  $Snap.unit
  $Snap.unit)))
(pop) ; 2
; Joined path conditions
(assert (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
  $Snap.unit
  $Snap.unit)))
(assert (<
  _pure_2@7@00
  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
    $Snap.unit
    $Snap.unit))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
; [eval] 0 <= _pure_3
(assert (<= 0 _pure_3@8@00))
(assert (= ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
; [eval] _pure_3 < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
; [eval] m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
(push) ; 2
(pop) ; 2
; Joined path conditions
(assert (<
  _pure_3@8@00
  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
    $Snap.unit
    $Snap.unit))))
(declare-const $t@22@00 $Snap)
(assert (= $t@22@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref) (_pure_2@7@00 Int) (_pure_3@8@00 Int)) (!
  (=
    (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00 _pure_3@8@00)
    (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00 _pure_3@8@00))
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$ s@$ _pure_1@6@00 _pure_2@7@00 _pure_3@8@00))
  :qid |quant-u-198|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref) (_pure_2@7@00 Int) (_pure_3@8@00 Int)) (!
  (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%stateless _pure_1@6@00 _pure_2@7@00 _pure_3@8@00)
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00 _pure_3@8@00))
  :qid |quant-u-199|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref) (_pure_2@7@00 Int) (_pure_3@8@00 Int)) (!
  (let ((result@9@00 (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00 _pure_3@8@00))) true)
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00 _pure_3@8@00))
  :qid |quant-u-221|)))
(assert (forall ((s@$ $Snap) (_pure_1@6@00 $Ref) (_pure_2@7@00 Int) (_pure_3@8@00 Int)) (!
  (let ((result@9@00 (m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00 _pure_3@8@00))) true)
  :pattern ((m_Knights_tour$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$5$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$$$int$%limited s@$ _pure_1@6@00 _pure_2@7@00 _pure_3@8@00))
  :qid |quant-u-222|)))
; ---------- FUNCTION builtin$unreach_bool__$TY$__$bool$----------
(declare-fun result@10@00 () Bool)
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
  :qid |quant-u-200|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-201|)))
; ---------- FUNCTION m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$----------
(declare-fun self@11@00 () $Ref)
(declare-fun result@12@00 () Int)
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
(declare-const $t@23@00 $Snap)
(assert (= $t@23@00 ($Snap.combine ($Snap.first $t@23@00) ($Snap.second $t@23@00))))
(assert (= ($Snap.first $t@23@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@12@00))
(assert (= ($Snap.second $t@23@00) $Snap.unit))
; [eval] result <= 1
(assert (<= result@12@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@11@00 $Ref)) (!
  (=
    (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@11@00)
    (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ s@$ self@11@00))
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ s@$ self@11@00))
  :qid |quant-u-202|)))
(assert (forall ((s@$ $Snap) (self@11@00 $Ref)) (!
  (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%stateless self@11@00)
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@11@00))
  :qid |quant-u-203|)))
(assert (forall ((s@$ $Snap) (self@11@00 $Ref)) (!
  (let ((result@12@00 (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@11@00))) (=>
    (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%precondition s@$ self@11@00)
    (and (<= 0 result@12@00) (<= result@12@00 1))))
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@11@00))
  :qid |quant-u-223|)))
(assert (forall ((s@$ $Snap) (self@11@00 $Ref)) (!
  (let ((result@12@00 (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@11@00))) true)
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@11@00))
  :qid |quant-u-224|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_(self), read$()) in self.discriminant)
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
(assert (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger s@$ self@11@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@11@00 $Ref.null))))
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
; [then-branch: 0 | First:(s@$) == 1 | live]
; [else-branch: 0 | First:(s@$) != 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | First:(s@$) == 1]
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
; [else-branch: 0 | First:(s@$) != 1]
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
(declare-fun joined_unfolding@24@00 ($Snap $Ref) Int)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)
  (=
    (joined_unfolding@24@00 s@$ self@11@00)
    ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
  (=
    (joined_unfolding@24@00 s@$ self@11@00)
    ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
; Joined path conditions
(assert (and
  (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger s@$ self@11@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@11@00 $Ref.null)))
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
  (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger s@$ self@11@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@11@00 $Ref.null)))
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
(assert (= result@12@00 (joined_unfolding@24@00 s@$ self@11@00)))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@12@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@12@00))
; [eval] result <= 1
(push) ; 2
(assert (not (<= result@12@00 1)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= result@12@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@11@00 $Ref)) (!
  (=>
    (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%precondition s@$ self@11@00)
    (=
      (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ s@$ self@11@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$))))
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ s@$ self@11@00))
  :qid |quant-u-225|)))
(assert (forall ((s@$ $Snap) (self@11@00 $Ref)) (!
  true
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ s@$ self@11@00))
  :qid |quant-u-226|)))
; ---------- FUNCTION builtin$undef_bool__$TY$__$bool$----------
(declare-fun result@13@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$undef_bool__$TY$__$bool$%limited s@$)
    (builtin$undef_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$undef_bool__$TY$__$bool$ s@$))
  :qid |quant-u-204|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$undef_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$undef_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-205|)))
; ---------- FUNCTION m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$----------
(declare-fun self@14@00 () $Ref)
(declare-fun result@15@00 () Int)
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
(declare-const $t@25@00 $Snap)
(assert (= $t@25@00 ($Snap.combine ($Snap.first $t@25@00) ($Snap.second $t@25@00))))
(assert (= ($Snap.first $t@25@00) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@15@00))
(assert (= ($Snap.second $t@25@00) $Snap.unit))
; [eval] result <= 1
(assert (<= result@15@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (=
    (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@14@00)
    (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ s@$ self@14@00))
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ s@$ self@14@00))
  :qid |quant-u-206|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%stateless self@14@00)
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@14@00))
  :qid |quant-u-207|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (let ((result@15@00 (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@14@00))) (=>
    (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%precondition s@$ self@14@00)
    (and (<= 0 result@15@00) (<= result@15@00 1))))
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@14@00))
  :qid |quant-u-227|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (let ((result@15@00 (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@14@00))) true)
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%limited s@$ self@14@00))
  :qid |quant-u-228|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (read$%precondition $Snap.unit))
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_(self), read$()) in self.discriminant)
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
(assert (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger s@$ self@14@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@14@00 $Ref.null))))
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
; [then-branch: 1 | First:(s@$) == 1 | live]
; [else-branch: 1 | First:(s@$) != 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | First:(s@$) == 1]
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
; [else-branch: 1 | First:(s@$) != 1]
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
(declare-fun joined_unfolding@26@00 ($Snap $Ref) Int)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1)
  (=
    (joined_unfolding@26@00 s@$ self@14@00)
    ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 1))
  (=
    (joined_unfolding@26@00 s@$ self@14@00)
    ($SortWrappers.$SnapToInt ($Snap.first s@$)))))
; Joined path conditions
(assert (and
  (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger s@$ self@14@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@14@00 $Ref.null)))
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
  (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger s@$ self@14@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= self@14@00 $Ref.null)))
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
(assert (= result@15@00 (joined_unfolding@26@00 s@$ self@14@00)))
; [eval] 0 <= result
(set-option :timeout 0)
(push) ; 2
(assert (not (<= 0 result@15@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 result@15@00))
; [eval] result <= 1
(push) ; 2
(assert (not (<= result@15@00 1)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= result@15@00 1))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (=>
    (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$%precondition s@$ self@14@00)
    (=
      (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ s@$ self@14@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$))))
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ s@$ self@14@00))
  :qid |quant-u-229|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  true
  :pattern ((m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$discriminant$$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_$$int$ s@$ self@14@00))
  :qid |quant-u-230|)))
; ---------- FUNCTION m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$----------
(declare-fun _pure_1@16@00 () $Ref)
(declare-fun result@17@00 () Bool)
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
(declare-const $t@27@00 $Snap)
(assert (= $t@27@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@16@00 $Ref)) (!
  (=
    (m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%limited s@$ _pure_1@16@00)
    (m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$ s@$ _pure_1@16@00))
  :pattern ((m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$ s@$ _pure_1@16@00))
  :qid |quant-u-208|)))
(assert (forall ((s@$ $Snap) (_pure_1@16@00 $Ref)) (!
  (m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%stateless _pure_1@16@00)
  :pattern ((m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%limited s@$ _pure_1@16@00))
  :qid |quant-u-209|)))
(assert (forall ((s@$ $Snap) (_pure_1@16@00 $Ref)) (!
  (let ((result@17@00 (m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%limited s@$ _pure_1@16@00))) true)
  :pattern ((m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%limited s@$ _pure_1@16@00))
  :qid |quant-u-231|)))
(assert (forall ((s@$ $Snap) (_pure_1@16@00 $Ref)) (!
  (let ((result@17@00 (m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%limited s@$ _pure_1@16@00))) true)
  :pattern ((m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%limited s@$ _pure_1@16@00))
  :qid |quant-u-232|)))
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
; [eval] (unfolding acc(m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_(_pure_1), read$()) in !(_pure_1.discriminant == 0) ==> (unfolding acc(m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_Some(_pure_1.enum_Some), read$()) in (unfolding acc(tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0), read$()) in (unfolding acc(m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0.tuple_1), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$y), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$x), read$()) in (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int ==> (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$())))))))))
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
(assert (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.first s@$) _pure_1@16@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@16@00 $Ref.null))))
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
; [eval] !(_pure_1.discriminant == 0) ==> (unfolding acc(m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_Some(_pure_1.enum_Some), read$()) in (unfolding acc(tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0), read$()) in (unfolding acc(m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0.tuple_1), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$y), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$x), read$()) in (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int ==> (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()))))))))
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
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | First:(First:(s@$)) != 0 | live]
; [else-branch: 3 | First:(First:(s@$)) == 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 3 | First:(First:(s@$)) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
; [eval] (unfolding acc(m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_Some(_pure_1.enum_Some), read$()) in (unfolding acc(tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0), read$()) in (unfolding acc(m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0.tuple_1), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$y), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$x), read$()) in (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int ==> (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()))))))))
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
(assert (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
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
; [eval] (unfolding acc(tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0), read$()) in (unfolding acc(m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0.tuple_1), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$y), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$x), read$()) in (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int ==> (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$())))))))
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
(assert (tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
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
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0.tuple_1), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$y), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$x), read$()) in (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int ==> (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()))))))
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
(assert (m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
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
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$y), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$x), read$()) in (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int ==> (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$())))))
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
(assert (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      $Ref.null))))
; [eval] (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$x), read$()) in (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int ==> (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()))))
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
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
; [eval] read$()
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
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
(assert (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (< $Perm.No (read$ $Snap.unit))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
      $Ref.null))))
; [eval] (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int ==> (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$())))
; [eval] !(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int) ==> false
; [eval] !(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int)
; [eval] 0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (not
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | !(0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))) | live]
; [else-branch: 4 | 0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) | live]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 4 | !(0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))]
(assert (not
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
(pop) ; 12
(push) ; 12
; [else-branch: 4 | 0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))]
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  (not
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(push) ; 11
; [then-branch: 5 | !(!(0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))) ==> False) | live]
; [else-branch: 5 | !(0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))) ==> False | live]
(push) ; 12
; [then-branch: 5 | !(!(0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))) ==> False)]
(assert (not
  (=>
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
    false)))
(pop) ; 12
(push) ; 12
; [else-branch: 5 | !(0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))) ==> False]
(assert (=>
  (not
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  false))
; [eval] 0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int ==> (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()))
; [eval] 0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int
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
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | 0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) | live]
; [else-branch: 6 | !(0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))) | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 6 | 0 <= First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))]
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
; [eval] (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()))
; [eval] !(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false
; [eval] !(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$())
; [eval] _pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
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
; [eval] m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
(set-option :timeout 0)
(push) ; 15
(assert (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
  $Snap.unit
  $Snap.unit)))
(pop) ; 15
; Joined path conditions
(assert (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
  $Snap.unit
  $Snap.unit)))
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
    $Snap.unit
    $Snap.unit)))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
      $Snap.unit
      $Snap.unit))))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | !(First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _))) | live]
; [else-branch: 7 | First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _)) | live]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 7 | !(First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _)))]
(assert (not
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
      $Snap.unit
      $Snap.unit)))))
(pop) ; 16
(push) ; 16
; [else-branch: 7 | First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _))]
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
    $Snap.unit
    $Snap.unit))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
      $Snap.unit
      $Snap.unit)))
  (not
    (<
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
        $Snap.unit
        $Snap.unit))))))
(push) ; 15
; [then-branch: 8 | !(!(First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _))) ==> False) | live]
; [else-branch: 8 | !(First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _))) ==> False | live]
(push) ; 16
; [then-branch: 8 | !(!(First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _))) ==> False)]
(assert (not
  (=>
    (not
      (<
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
          $Snap.unit
          $Snap.unit))))
    false)))
(pop) ; 16
(push) ; 16
; [else-branch: 8 | !(First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _))) ==> False]
(assert (=>
  (not
    (<
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
        $Snap.unit
        $Snap.unit))))
  false))
; [eval] _pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$())
; [eval] _pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [eval] m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
(set-option :timeout 0)
(push) ; 17
(pop) ; 17
; Joined path conditions
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
      $Snap.unit
      $Snap.unit))))))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
    $Snap.unit
    $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _)) | live]
; [else-branch: 9 | !(First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _))) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 9 | First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))) < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$((_, _))]
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
    $Snap.unit
    $Snap.unit))))
; [eval] (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$())
; [eval] !(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false
; [eval] !(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int)
; [eval] 0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int
(push) ; 19
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (not
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | !(0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))) | live]
; [else-branch: 10 | 0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))) | live]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 10 | !(0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))))]
(assert (not
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(pop) ; 20
(push) ; 20
; [else-branch: 10 | 0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))]
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  (not
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
(push) ; 19
; [then-branch: 11 | !(!(0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))) ==> False) | live]
; [else-branch: 11 | !(0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))) ==> False | live]
(push) ; 20
; [then-branch: 11 | !(!(0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))) ==> False)]
(assert (not
  (=>
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
    false)))
(pop) ; 20
(push) ; 20
; [else-branch: 11 | !(0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))) ==> False]
(assert (=>
  (not
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  false))
; [eval] 0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
; [eval] 0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int
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
(push) ; 22
(set-option :timeout 10)
(assert (not (not
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | 0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$)))))))))))) | live]
; [else-branch: 12 | !(0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))) | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 12 | 0 <= Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(First:(s@$))))))))))))]
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
; [eval] _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
(push) ; 23
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [eval] m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()
(set-option :timeout 0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(assert (=>
  (=>
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
    false)
  (and
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
      false)
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))))
(assert (or
  (=>
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
    false)
  (not
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
      false))))
(pop) ; 18
(pop) ; 17
; Joined path conditions
(assert (=>
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
      $Snap.unit
      $Snap.unit)))
  (and
    (<
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
        $Snap.unit
        $Snap.unit)))
    (or
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
    (=>
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
        false)
      (and
        (=>
          (not
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
          false)
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
    (or
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
        false)
      (not
        (=>
          (not
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
          false))))))
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
    $Snap.unit
    $Snap.unit))))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  (=>
    (not
      (<
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
          $Snap.unit
          $Snap.unit))))
    false)
  (and
    (=>
      (not
        (<
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
            $Snap.unit
            $Snap.unit))))
      false)
    (=>
      (<
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
          $Snap.unit
          $Snap.unit)))
      (and
        (<
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
            $Snap.unit
            $Snap.unit)))
        (or
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
          (not
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
        (=>
          (=>
            (not
              (<=
                0
                ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
            false)
          (and
            (=>
              (not
                (<=
                  0
                  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
              false)
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
        (or
          (=>
            (not
              (<=
                0
                ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
            false)
          (not
            (=>
              (not
                (<=
                  0
                  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
              false)))))
    (<
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
        $Snap.unit
        $Snap.unit))))))
(assert (or
  (=>
    (not
      (<
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
          $Snap.unit
          $Snap.unit))))
    false)
  (not
    (=>
      (not
        (<
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
            $Snap.unit
            $Snap.unit))))
      false))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (<=
    0
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  (and
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
      $Snap.unit
      $Snap.unit))
    (or
      (<
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
          $Snap.unit
          $Snap.unit)))
      (not
        (<
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
            $Snap.unit
            $Snap.unit)))))
    (=>
      (=>
        (not
          (<
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
            (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
              $Snap.unit
              $Snap.unit))))
        false)
      (and
        (=>
          (not
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit))))
          false)
        (=>
          (<
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
            (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
              $Snap.unit
              $Snap.unit)))
          (and
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit)))
            (or
              (<=
                0
                ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
              (not
                (<=
                  0
                  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
            (=>
              (=>
                (not
                  (<=
                    0
                    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                false)
              (and
                (=>
                  (not
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                  false)
                (<=
                  0
                  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
            (or
              (=>
                (not
                  (<=
                    0
                    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                false)
              (not
                (=>
                  (not
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                  false)))))
        (<
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
            $Snap.unit
            $Snap.unit)))))
    (or
      (=>
        (not
          (<
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
            (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
              $Snap.unit
              $Snap.unit))))
        false)
      (not
        (=>
          (not
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit))))
          false))))))
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (=>
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
    false)
  (and
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (=>
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      (and
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
          $Snap.unit
          $Snap.unit))
        (or
          (<
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
            (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
              $Snap.unit
              $Snap.unit)))
          (not
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit)))))
        (=>
          (=>
            (not
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit))))
            false)
          (and
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (=>
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))
              (and
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit)))
                (or
                  (<=
                    0
                    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
                  (not
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                (=>
                  (=>
                    (not
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                    false)
                  (and
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                (or
                  (=>
                    (not
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                    false)
                  (not
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)))))
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit)))))
        (or
          (=>
            (not
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit))))
            false)
          (not
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)))))
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
(assert (or
  (=>
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
    false)
  (not
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false))))
(pop) ; 10
; Joined path conditions
(assert (and
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        $Ref.null)))
  (or
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (=>
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (and
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)
      (=>
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        (and
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
            $Snap.unit
            $Snap.unit))
          (or
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit)))
            (not
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))))
          (=>
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (and
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)
              (=>
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit)))
                (and
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit)))
                  (or
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
                    (not
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  (=>
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (and
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  (or
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (not
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)))))
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))))
          (or
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (not
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)))))
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (or
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (not
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)))))
(pop) ; 9
; Joined path conditions
(assert (and
  (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        $Ref.null)))
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        $Ref.null)))
  (or
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (=>
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (and
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)
      (=>
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        (and
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
            $Snap.unit
            $Snap.unit))
          (or
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit)))
            (not
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))))
          (=>
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (and
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)
              (=>
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit)))
                (and
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit)))
                  (or
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
                    (not
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  (=>
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (and
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  (or
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (not
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)))))
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))))
          (or
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (not
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)))))
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (or
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (not
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)))))
(pop) ; 8
; Joined path conditions
(assert (and
  (m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        $Ref.null)))
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        $Ref.null)))
  (or
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (=>
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (and
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)
      (=>
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        (and
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
            $Snap.unit
            $Snap.unit))
          (or
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit)))
            (not
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))))
          (=>
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (and
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)
              (=>
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit)))
                (and
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit)))
                  (or
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
                    (not
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  (=>
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (and
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  (or
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (not
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)))))
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))))
          (or
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (not
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)))))
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (or
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (not
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)))))
(pop) ; 7
; Joined path conditions
(assert (and
  (tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
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
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        $Ref.null)))
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        $Ref.null)))
  (or
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (=>
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (and
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)
      (=>
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        (and
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
            $Snap.unit
            $Snap.unit))
          (or
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit)))
            (not
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))))
          (=>
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (and
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)
              (=>
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit)))
                (and
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit)))
                  (or
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
                    (not
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  (=>
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (and
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  (or
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (not
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)))))
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))))
          (or
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (not
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)))))
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (or
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (not
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)))))
(pop) ; 6
; Joined path conditions
(assert (and
  (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
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
  (tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
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
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        $Ref.null)))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        $Ref.null)))
  (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        $Ref.null)))
  (or
    (<=
      0
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    (not
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (=>
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (and
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)
      (=>
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        (and
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
            $Snap.unit
            $Snap.unit))
          (or
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit)))
            (not
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))))
          (=>
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (and
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)
              (=>
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit)))
                (and
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit)))
                  (or
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
                    (not
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  (=>
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (and
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                  (or
                    (=>
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                      false)
                    (not
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)))))
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))))
          (or
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (not
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)))))
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
  (or
    (=>
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
      false)
    (not
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
  (and
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
    (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
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
    (tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
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
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    (m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
          $Ref.null)))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
    (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          $Ref.null)))
    (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
    (=>
      (< $Perm.No (read$ $Snap.unit))
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
          $Ref.null)))
    (or
      (<=
        0
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
      (not
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
    (=>
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)
      (and
        (=>
          (not
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
          false)
        (=>
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          (and
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
            (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
              $Snap.unit
              $Snap.unit))
            (or
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit)))))
            (=>
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)
              (and
                (=>
                  (not
                    (<
                      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                        $Snap.unit
                        $Snap.unit))))
                  false)
                (=>
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit)))
                  (and
                    (<
                      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                        $Snap.unit
                        $Snap.unit)))
                    (or
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
                      (not
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                    (=>
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)
                      (and
                        (=>
                          (not
                            (<=
                              0
                              ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                          false)
                        (<=
                          0
                          ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                    (or
                      (=>
                        (not
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                        false)
                      (not
                        (=>
                          (not
                            (<=
                              0
                              ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                          false)))))
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit)))))
            (or
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)
              (not
                (=>
                  (not
                    (<
                      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                        $Snap.unit
                        $Snap.unit))))
                  false)))))
        (<=
          0
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
    (or
      (=>
        (not
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        false)
      (not
        (=>
          (not
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
          false))))))
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(pop) ; 3
(push) ; 3
; [else-branch: 2 | First:(First:(s@$)) != 1]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))
  $Snap.unit))
; [eval] !(_pure_1.discriminant == 0) ==> (unfolding acc(m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_Some(_pure_1.enum_Some), read$()) in (unfolding acc(tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0), read$()) in (unfolding acc(m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_(_pure_1.enum_Some.f$0.tuple_1), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$y), read$()) in (unfolding acc(i32(_pure_1.enum_Some.f$0.tuple_1.f$x), read$()) in (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$x.val_int ==> (!(_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()) ==> false) && (_pure_1.enum_Some.f$0.tuple_1.f$x.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$() ==> (!(0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int) ==> false) && (0 <= _pure_1.enum_Some.f$0.tuple_1.f$y.val_int ==> _pure_1.enum_Some.f$0.tuple_1.f$y.val_int < m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$()))))))))
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
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | First:(First:(s@$)) != 0 | dead]
; [else-branch: 13 | First:(First:(s@$)) == 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 13 | First:(First:(s@$)) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@28@00 ($Snap $Ref) Bool)
(assert (=>
  (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1)
  (=
    (joined_unfolding@28@00 s@$ _pure_1@16@00)
    (=>
      (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
      (and
        (=>
          (not
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
          false)
        (=>
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          (and
            (=>
              (not
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit))))
              false)
            (=>
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))
              (and
                (=>
                  (not
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                  false)
                (=>
                  (<=
                    0
                    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit)))))))))))))
(assert (=>
  (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 1))
  (= (joined_unfolding@28@00 s@$ _pure_1@16@00) true)))
; Joined path conditions
(assert (and
  (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.first s@$) _pure_1@16@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@16@00 $Ref.null)))
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
        (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_Some%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
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
        (tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
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
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        (m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
              $Ref.null)))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        (i32%trigger ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
              $Ref.null)))
        (i32%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
        (=>
          (< $Perm.No (read$ $Snap.unit))
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))
              $Ref.null)))
        (or
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
          (not
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
        (=>
          (=>
            (not
              (<=
                0
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
            false)
          (and
            (=>
              (not
                (<=
                  0
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
              false)
            (=>
              (<=
                0
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
              (and
                (<=
                  0
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
                  $Snap.unit
                  $Snap.unit))
                (or
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit)))
                  (not
                    (<
                      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                        $Snap.unit
                        $Snap.unit)))))
                (=>
                  (=>
                    (not
                      (<
                        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                        (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                          $Snap.unit
                          $Snap.unit))))
                    false)
                  (and
                    (=>
                      (not
                        (<
                          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                            $Snap.unit
                            $Snap.unit))))
                      false)
                    (=>
                      (<
                        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                        (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                          $Snap.unit
                          $Snap.unit)))
                      (and
                        (<
                          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                            $Snap.unit
                            $Snap.unit)))
                        (or
                          (<=
                            0
                            ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
                          (not
                            (<=
                              0
                              ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                        (=>
                          (=>
                            (not
                              (<=
                                0
                                ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                            false)
                          (and
                            (=>
                              (not
                                (<=
                                  0
                                  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                              false)
                            (<=
                              0
                              ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
                        (or
                          (=>
                            (not
                              (<=
                                0
                                ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                            false)
                          (not
                            (=>
                              (not
                                (<=
                                  0
                                  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                              false)))))
                    (<
                      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                        $Snap.unit
                        $Snap.unit)))))
                (or
                  (=>
                    (not
                      (<
                        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                        (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                          $Snap.unit
                          $Snap.unit))))
                    false)
                  (not
                    (=>
                      (not
                        (<
                          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                            $Snap.unit
                            $Snap.unit))))
                      false)))))
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
        (or
          (=>
            (not
              (<=
                0
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
            false)
          (not
            (=>
              (not
                (<=
                  0
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
              false)))))
    (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0)))))
; Joined path conditions
(assert (and
  (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.first s@$) _pure_1@16@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (=> (< $Perm.No (read$ $Snap.unit)) (not (= _pure_1@16@00 $Ref.null)))
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
(assert (= result@17@00 (joined_unfolding@28@00 s@$ _pure_1@16@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@16@00 $Ref)) (!
  (=>
    (m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%precondition s@$ _pure_1@16@00)
    (=
      (m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$ s@$ _pure_1@16@00)
      (=>
        (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
        (and
          (=>
            (not
              (<=
                0
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
            false)
          (=>
            (<=
              0
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
            (and
              (=>
                (not
                  (<
                    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                    (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                      $Snap.unit
                      $Snap.unit))))
                false)
              (=>
                (<
                  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                  (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                    $Snap.unit
                    $Snap.unit)))
                (and
                  (=>
                    (not
                      (<=
                        0
                        ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                    false)
                  (=>
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
                    (<
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))
                      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                        $Snap.unit
                        $Snap.unit))))))))))))
  :pattern ((m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$ s@$ _pure_1@16@00))
  :pattern ((m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%stateless _pure_1@16@00) (m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap.first s@$) _pure_1@16@00))
  :qid |quant-u-233|)))
(assert (forall ((s@$ $Snap) (_pure_1@16@00 $Ref)) (!
  (=>
    (and
      (m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$%precondition s@$ _pure_1@16@00)
      (and
        (not (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))) 0))
        (and
          (=>
            (not
              (<=
                0
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))
            false)
          (<=
            0
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
    (and
      (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
        $Snap.unit
        $Snap.unit))
      (=>
        (=>
          (not
            (<
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
              (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                $Snap.unit
                $Snap.unit))))
          false)
        (and
          (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
            $Snap.unit
            $Snap.unit))
          (=>
            (and
              (<
                ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))
                (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$ ($Snap.combine
                  $Snap.unit
                  $Snap.unit)))
              (and
                (=>
                  (not
                    (<=
                      0
                      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))))))))))
                  false)
                (<=
                  0
                  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))))))))))))
            (m_Knights_tour$$size$opensqu$0$closesqu$__$TY$__$int$%precondition ($Snap.combine
              $Snap.unit
              $Snap.unit)))))))
  :pattern ((m_Knights_tour$$valid$opensqu$0$closesqu$__$TY$__m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_$$bool$ s@$ _pure_1@16@00))
  :qid |quant-u-234|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@29@00 Int)
; ---------- bool ----------
(declare-const self@30@00 $Ref)
(push) ; 1
(declare-const $t@31@00 Bool)
(assert (not (= self@30@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_11$3$16836186685558598718 ----------
(declare-const self@32@00 $Ref)
; ---------- closure$0_1_12$3$16836186685558598718 ----------
(declare-const self@33@00 $Ref)
; ---------- closure$0_1_13$4$1589009702788246713 ----------
(declare-const self@34@00 $Ref)
; ---------- closure$0_1_15$3$856908841841235720 ----------
(declare-const self@35@00 $Ref)
; ---------- closure$0_1_16$3$16836186685558598718 ----------
(declare-const self@36@00 $Ref)
; ---------- closure$0_1_17$3$16123126176350911560 ----------
(declare-const self@37@00 $Ref)
; ---------- closure$0_1_18$3$936109105845141873 ----------
(declare-const self@38@00 $Ref)
; ---------- closure$0_1_19$3$17660061404446368440 ----------
(declare-const self@39@00 $Ref)
; ---------- closure$0_1_20$3$1747452362277107208 ----------
(declare-const self@40@00 $Ref)
; ---------- closure$0_1_21$3$1886885960320301046 ----------
(declare-const self@41@00 $Ref)
; ---------- closure$0_1_22$3$16836186685558598718 ----------
(declare-const self@42@00 $Ref)
; ---------- closure$0_1_23$4$1860419104383651931 ----------
(declare-const self@43@00 $Ref)
; ---------- closure$0_1_24$3$9005329699453506105 ----------
(declare-const self@44@00 $Ref)
; ---------- closure$0_1_25$3$8233369117391950042 ----------
(declare-const self@45@00 $Ref)
; ---------- closure$0_1_26$3$6831129558716023658 ----------
(declare-const self@46@00 $Ref)
; ---------- closure$0_1_27$3$8084697069950319799 ----------
(declare-const self@47@00 $Ref)
; ---------- closure$0_1_29$3$11933678243532117102 ----------
(declare-const self@48@00 $Ref)
; ---------- closure$0_1_30$3$4920139583706826500 ----------
(declare-const self@49@00 $Ref)
; ---------- closure$0_1_31$3$13448283034829184517 ----------
(declare-const self@50@00 $Ref)
; ---------- closure$0_1_32$3$15809515461060994565 ----------
(declare-const self@51@00 $Ref)
; ---------- closure$0_1_33$3$11933678243532117102 ----------
(declare-const self@52@00 $Ref)
; ---------- closure$0_1_34$3$4920139583706826500 ----------
(declare-const self@53@00 $Ref)
; ---------- closure$0_1_35$3$13448283034829184517 ----------
(declare-const self@54@00 $Ref)
; ---------- closure$0_1_36$3$15809515461060994565 ----------
(declare-const self@55@00 $Ref)
; ---------- closure$0_1_37$6$9382093347497428436 ----------
(declare-const self@56@00 $Ref)
; ---------- closure$0_1_38$5$16262156183622235759 ----------
(declare-const self@57@00 $Ref)
; ---------- closure$0_1_39$6$2570231456930421564 ----------
(declare-const self@58@00 $Ref)
; ---------- closure$0_1_40$5$8151149684055769446 ----------
(declare-const self@59@00 $Ref)
; ---------- closure$0_1_41$3$11933678243532117102 ----------
(declare-const self@60@00 $Ref)
; ---------- closure$0_1_44$3$11957180999391598925 ----------
(declare-const self@61@00 $Ref)
; ---------- closure$0_1_45$3$18068549781639004461 ----------
(declare-const self@62@00 $Ref)
; ---------- closure$0_1_46$4$2316023683921474614 ----------
(declare-const self@63@00 $Ref)
; ---------- closure$0_1_47$4$7438738628820119904 ----------
(declare-const self@64@00 $Ref)
; ---------- closure$0_1_48$3$5169942411020240745 ----------
(declare-const self@65@00 $Ref)
; ---------- closure$0_1_49$3$13177526864632184778 ----------
(declare-const self@66@00 $Ref)
; ---------- closure$0_1_51$3$11921783312157906974 ----------
(declare-const self@67@00 $Ref)
; ---------- closure$0_1_52$3$15203628194863643940 ----------
(declare-const self@68@00 $Ref)
; ---------- closure$0_1_53$2$4061298814955297750 ----------
(declare-const self@69@00 $Ref)
; ---------- closure$0_1_54$3$3845551369651406509 ----------
(declare-const self@70@00 $Ref)
; ---------- closure$0_1_55$4$12478973570546726808 ----------
(declare-const self@71@00 $Ref)
; ---------- closure$0_1_56$2$4061298814955297750 ----------
(declare-const self@72@00 $Ref)
; ---------- closure$0_1_57$3$3155449875120012984 ----------
(declare-const self@73@00 $Ref)
; ---------- closure$0_1_58$3$7682442910302967967 ----------
(declare-const self@74@00 $Ref)
; ---------- closure$0_1_59$3$2360874258797543443 ----------
(declare-const self@75@00 $Ref)
; ---------- closure$0_1_60$3$18314004443372132536 ----------
(declare-const self@76@00 $Ref)
; ---------- closure$0_1_61$2$4061298814955297750 ----------
(declare-const self@77@00 $Ref)
; ---------- closure$0_1_62$3$8554745105452251562 ----------
(declare-const self@78@00 $Ref)
; ---------- closure$0_1_63$4$11738836714435574072 ----------
(declare-const self@79@00 $Ref)
; ---------- closure$0_1_64$3$6302789819304097144 ----------
(declare-const self@80@00 $Ref)
; ---------- closure$0_1_65$3$11937539310563724083 ----------
(declare-const self@81@00 $Ref)
; ---------- closure$0_1_66$3$13333293174589074011 ----------
(declare-const self@82@00 $Ref)
; ---------- closure$0_1_67$3$2467019396475800186 ----------
(declare-const self@83@00 $Ref)
; ---------- closure$0_1_68$2$4061298814955297750 ----------
(declare-const self@84@00 $Ref)
; ---------- closure$0_1_69$3$15436921638386154731 ----------
(declare-const self@85@00 $Ref)
; ---------- closure$0_1_70$4$13742673918391663087 ----------
(declare-const self@86@00 $Ref)
; ---------- closure$0_1_71$3$13802932288664565916 ----------
(declare-const self@87@00 $Ref)
; ---------- closure$0_1_72$3$11933678243532117102 ----------
(declare-const self@88@00 $Ref)
; ---------- closure$0_1_73$3$4920139583706826500 ----------
(declare-const self@89@00 $Ref)
; ---------- closure$0_1_74$3$13448283034829184517 ----------
(declare-const self@90@00 $Ref)
; ---------- closure$0_1_75$3$15809515461060994565 ----------
(declare-const self@91@00 $Ref)
; ---------- i32 ----------
(declare-const self@92@00 $Ref)
(push) ; 1
(declare-const $t@93@00 Int)
(assert (not (= self@92@00 $Ref.null)))
(pop) ; 1
; ---------- isize ----------
(declare-const self@94@00 $Ref)
(push) ; 1
(declare-const $t@95@00 Int)
(assert (not (= self@94@00 $Ref.null)))
(pop) ; 1
; ---------- m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@96@00 $Ref)
(push) ; 1
(declare-const $t@97@00 $Snap)
(assert (= $t@97@00 ($Snap.combine ($Snap.first $t@97@00) ($Snap.second $t@97@00))))
(assert (not (= self@96@00 $Ref.null)))
(pop) ; 1
; ---------- m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@98@00 $Ref)
(push) ; 1
(declare-const $t@99@00 $Snap)
(assert (= $t@99@00 ($Snap.combine ($Snap.first $t@99@00) ($Snap.second $t@99@00))))
(assert (not (= self@98@00 $Ref.null)))
(assert (=
  ($Snap.second $t@99@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@99@00))
    ($Snap.second ($Snap.second $t@99@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@99@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@99@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@99@00))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@99@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@99@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@100@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@101@00 $Snap)
(assert (= $t@101@00 ($Snap.combine ($Snap.first $t@101@00) ($Snap.second $t@101@00))))
(assert (not (= self@100@00 $Ref.null)))
(pop) ; 1
; ---------- m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@102@00 $Ref)
(push) ; 1
(declare-const $t@103@00 $Snap)
(assert (= $t@103@00 ($Snap.combine ($Snap.first $t@103@00) ($Snap.second $t@103@00))))
(assert (not (= self@102@00 $Ref.null)))
(pop) ; 1
; ---------- m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@104@00 $Ref)
(push) ; 1
(declare-const $t@105@00 $Snap)
(assert (= $t@105@00 ($Snap.combine ($Snap.first $t@105@00) ($Snap.second $t@105@00))))
(assert (not (= self@104@00 $Ref.null)))
(pop) ; 1
; ---------- m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@106@00 $Ref)
(push) ; 1
(declare-const $t@107@00 $Snap)
(assert (= $t@107@00 $Snap.unit))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@108@00 $Ref)
(push) ; 1
(declare-const $t@109@00 $Snap)
(assert (= $t@109@00 ($Snap.combine ($Snap.first $t@109@00) ($Snap.second $t@109@00))))
(assert (not (= self@108@00 $Ref.null)))
(assert (=
  ($Snap.second $t@109@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@109@00))
    ($Snap.second ($Snap.second $t@109@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@109@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@109@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@109@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@109@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@109@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@00))))))))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@110@00 $Ref)
(push) ; 1
(declare-const $t@111@00 $Snap)
(assert (= $t@111@00 ($Snap.combine ($Snap.first $t@111@00) ($Snap.second $t@111@00))))
(assert (not (= self@110@00 $Ref.null)))
(assert (=
  ($Snap.second $t@111@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@111@00))
    ($Snap.second ($Snap.second $t@111@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@111@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@111@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@111@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@111@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@111@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@00))))))))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$tuple2$i32$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@112@00 $Ref)
(push) ; 1
(declare-const $t@113@00 $Snap)
(assert (= $t@113@00 ($Snap.combine ($Snap.first $t@113@00) ($Snap.second $t@113@00))))
(assert (not (= self@112@00 $Ref.null)))
(assert (=
  ($Snap.second $t@113@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@113@00))
    ($Snap.second ($Snap.second $t@113@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@113@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@113@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@113@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@113@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@113@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@113@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@113@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@113@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@113@00))))))))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@114@00 $Ref)
(push) ; 1
(declare-const $t@115@00 $Snap)
(assert (= $t@115@00 ($Snap.combine ($Snap.first $t@115@00) ($Snap.second $t@115@00))))
(assert (not (= self@114@00 $Ref.null)))
(assert (=
  ($Snap.second $t@115@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@115@00))
    ($Snap.second ($Snap.second $t@115@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@115@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@115@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@115@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@115@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@115@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@00))))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@116@00 $Ref)
(push) ; 1
(declare-const $t@117@00 $Snap)
(assert (= $t@117@00 ($Snap.combine ($Snap.first $t@117@00) ($Snap.second $t@117@00))))
(assert (not (= self@116@00 $Ref.null)))
(assert (=
  ($Snap.second $t@117@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@117@00))
    ($Snap.second ($Snap.second $t@117@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@117@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@117@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@117@00))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_$_end_ ----------
(declare-const self@118@00 $Ref)
(push) ; 1
(declare-const $t@119@00 $Snap)
(assert (= $t@119@00 ($Snap.combine ($Snap.first $t@119@00) ($Snap.second $t@119@00))))
(assert (not (= self@118@00 $Ref.null)))
(assert (=
  ($Snap.second $t@119@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@119@00))
    ($Snap.second ($Snap.second $t@119@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@119@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@119@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@119@00))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$tuple2$i32$i32$_end_ ----------
(declare-const self@120@00 $Ref)
(push) ; 1
(declare-const $t@121@00 $Snap)
(assert (= $t@121@00 ($Snap.combine ($Snap.first $t@121@00) ($Snap.second $t@121@00))))
(assert (not (= self@120@00 $Ref.null)))
(assert (=
  ($Snap.second $t@121@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@121@00))
    ($Snap.second ($Snap.second $t@121@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@121@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@121@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@121@00))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@122@00 $Ref)
(push) ; 1
(declare-const $t@123@00 $Snap)
(assert (= $t@123@00 ($Snap.combine ($Snap.first $t@123@00) ($Snap.second $t@123@00))))
(assert (not (= self@122@00 $Ref.null)))
(assert (=
  ($Snap.second $t@123@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@123@00))
    ($Snap.second ($Snap.second $t@123@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@123@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@123@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@123@00))))))
(pop) ; 1
; ---------- m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@124@00 $Ref)
(push) ; 1
(declare-const $t@125@00 $Snap)
(assert (= $t@125@00 ($Snap.combine ($Snap.first $t@125@00) ($Snap.second $t@125@00))))
(assert (not (= self@124@00 $Ref.null)))
(assert (=
  ($Snap.second $t@125@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@125@00))
    ($Snap.second ($Snap.second $t@125@00)))))
(assert (= ($Snap.first ($Snap.second $t@125@00)) $Snap.unit))
; [eval] 0 <= self.discriminant
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@125@00))))
(assert (=
  ($Snap.second ($Snap.second $t@125@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@125@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@125@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@125@00))) $Snap.unit))
; [eval] self.discriminant <= 1
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@125@00)) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@125@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@125@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@00)))))))
; [eval] self.discriminant == 1
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@125@00)) 1))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@125@00)) 1)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | First:($t@125@00) == 1 | live]
; [else-branch: 14 | First:($t@125@00) != 1 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 14 | First:($t@125@00) == 1]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@125@00)) 1))
(pop) ; 2
(push) ; 2
; [else-branch: 14 | First:($t@125@00) != 1]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@125@00)) 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@00))))
  $Snap.unit))
(pop) ; 2
(pop) ; 1
; ---------- m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_Some ----------
(declare-const self@126@00 $Ref)
(push) ; 1
(declare-const $t@127@00 $Snap)
(assert (= $t@127@00 ($Snap.combine ($Snap.first $t@127@00) ($Snap.second $t@127@00))))
(assert (not (= self@126@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@128@00 $Ref)
(push) ; 1
(declare-const $t@129@00 $Snap)
(assert (= $t@129@00 ($Snap.combine ($Snap.first $t@129@00) ($Snap.second $t@129@00))))
(assert (not (= self@128@00 $Ref.null)))
(assert (=
  ($Snap.second $t@129@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@129@00))
    ($Snap.second ($Snap.second $t@129@00)))))
(assert (= ($Snap.first ($Snap.second $t@129@00)) $Snap.unit))
; [eval] 0 <= self.discriminant
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@129@00))))
(assert (=
  ($Snap.second ($Snap.second $t@129@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@129@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@129@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@129@00))) $Snap.unit))
; [eval] self.discriminant <= 1
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@129@00)) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@129@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@129@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@129@00)))))))
; [eval] self.discriminant == 1
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@129@00)) 1))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@129@00)) 1)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | First:($t@129@00) == 1 | live]
; [else-branch: 15 | First:($t@129@00) != 1 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 15 | First:($t@129@00) == 1]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@129@00)) 1))
(pop) ; 2
(push) ; 2
; [else-branch: 15 | First:($t@129@00) != 1]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@129@00)) 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@129@00))))
  $Snap.unit))
(pop) ; 2
(pop) ; 1
; ---------- m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_Some ----------
(declare-const self@130@00 $Ref)
(push) ; 1
(declare-const $t@131@00 $Snap)
(assert (= $t@131@00 ($Snap.combine ($Snap.first $t@131@00) ($Snap.second $t@131@00))))
(assert (not (= self@130@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@132@00 $Ref)
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_$_end_ ----------
(declare-const self@133@00 $Ref)
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$tuple2$i32$i32$_end_ ----------
(declare-const self@134@00 $Ref)
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@135@00 $Ref)
; ---------- never ----------
(declare-const self@136@00 $Ref)
; ---------- ref$bool ----------
(declare-const self@137@00 $Ref)
(push) ; 1
(declare-const $t@138@00 $Snap)
(assert (= $t@138@00 ($Snap.combine ($Snap.first $t@138@00) ($Snap.second $t@138@00))))
(assert (not (= self@137@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_11$3$16836186685558598718 ----------
(declare-const self@139@00 $Ref)
(push) ; 1
(declare-const $t@140@00 $Snap)
(assert (= $t@140@00 ($Snap.combine ($Snap.first $t@140@00) ($Snap.second $t@140@00))))
(assert (not (= self@139@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_12$3$16836186685558598718 ----------
(declare-const self@141@00 $Ref)
(push) ; 1
(declare-const $t@142@00 $Snap)
(assert (= $t@142@00 ($Snap.combine ($Snap.first $t@142@00) ($Snap.second $t@142@00))))
(assert (not (= self@141@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_13$4$1589009702788246713 ----------
(declare-const self@143@00 $Ref)
(push) ; 1
(declare-const $t@144@00 $Snap)
(assert (= $t@144@00 ($Snap.combine ($Snap.first $t@144@00) ($Snap.second $t@144@00))))
(assert (not (= self@143@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_15$3$856908841841235720 ----------
(declare-const self@145@00 $Ref)
(push) ; 1
(declare-const $t@146@00 $Snap)
(assert (= $t@146@00 ($Snap.combine ($Snap.first $t@146@00) ($Snap.second $t@146@00))))
(assert (not (= self@145@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_16$3$16836186685558598718 ----------
(declare-const self@147@00 $Ref)
(push) ; 1
(declare-const $t@148@00 $Snap)
(assert (= $t@148@00 ($Snap.combine ($Snap.first $t@148@00) ($Snap.second $t@148@00))))
(assert (not (= self@147@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_17$3$16123126176350911560 ----------
(declare-const self@149@00 $Ref)
(push) ; 1
(declare-const $t@150@00 $Snap)
(assert (= $t@150@00 ($Snap.combine ($Snap.first $t@150@00) ($Snap.second $t@150@00))))
(assert (not (= self@149@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_18$3$936109105845141873 ----------
(declare-const self@151@00 $Ref)
(push) ; 1
(declare-const $t@152@00 $Snap)
(assert (= $t@152@00 ($Snap.combine ($Snap.first $t@152@00) ($Snap.second $t@152@00))))
(assert (not (= self@151@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_19$3$17660061404446368440 ----------
(declare-const self@153@00 $Ref)
(push) ; 1
(declare-const $t@154@00 $Snap)
(assert (= $t@154@00 ($Snap.combine ($Snap.first $t@154@00) ($Snap.second $t@154@00))))
(assert (not (= self@153@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_20$3$1747452362277107208 ----------
(declare-const self@155@00 $Ref)
(push) ; 1
(declare-const $t@156@00 $Snap)
(assert (= $t@156@00 ($Snap.combine ($Snap.first $t@156@00) ($Snap.second $t@156@00))))
(assert (not (= self@155@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_21$3$1886885960320301046 ----------
(declare-const self@157@00 $Ref)
(push) ; 1
(declare-const $t@158@00 $Snap)
(assert (= $t@158@00 ($Snap.combine ($Snap.first $t@158@00) ($Snap.second $t@158@00))))
(assert (not (= self@157@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_22$3$16836186685558598718 ----------
(declare-const self@159@00 $Ref)
(push) ; 1
(declare-const $t@160@00 $Snap)
(assert (= $t@160@00 ($Snap.combine ($Snap.first $t@160@00) ($Snap.second $t@160@00))))
(assert (not (= self@159@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_23$4$1860419104383651931 ----------
(declare-const self@161@00 $Ref)
(push) ; 1
(declare-const $t@162@00 $Snap)
(assert (= $t@162@00 ($Snap.combine ($Snap.first $t@162@00) ($Snap.second $t@162@00))))
(assert (not (= self@161@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_24$3$9005329699453506105 ----------
(declare-const self@163@00 $Ref)
(push) ; 1
(declare-const $t@164@00 $Snap)
(assert (= $t@164@00 ($Snap.combine ($Snap.first $t@164@00) ($Snap.second $t@164@00))))
(assert (not (= self@163@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_25$3$8233369117391950042 ----------
(declare-const self@165@00 $Ref)
(push) ; 1
(declare-const $t@166@00 $Snap)
(assert (= $t@166@00 ($Snap.combine ($Snap.first $t@166@00) ($Snap.second $t@166@00))))
(assert (not (= self@165@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_26$3$6831129558716023658 ----------
(declare-const self@167@00 $Ref)
(push) ; 1
(declare-const $t@168@00 $Snap)
(assert (= $t@168@00 ($Snap.combine ($Snap.first $t@168@00) ($Snap.second $t@168@00))))
(assert (not (= self@167@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_27$3$8084697069950319799 ----------
(declare-const self@169@00 $Ref)
(push) ; 1
(declare-const $t@170@00 $Snap)
(assert (= $t@170@00 ($Snap.combine ($Snap.first $t@170@00) ($Snap.second $t@170@00))))
(assert (not (= self@169@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_29$3$11933678243532117102 ----------
(declare-const self@171@00 $Ref)
(push) ; 1
(declare-const $t@172@00 $Snap)
(assert (= $t@172@00 ($Snap.combine ($Snap.first $t@172@00) ($Snap.second $t@172@00))))
(assert (not (= self@171@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_30$3$4920139583706826500 ----------
(declare-const self@173@00 $Ref)
(push) ; 1
(declare-const $t@174@00 $Snap)
(assert (= $t@174@00 ($Snap.combine ($Snap.first $t@174@00) ($Snap.second $t@174@00))))
(assert (not (= self@173@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_31$3$13448283034829184517 ----------
(declare-const self@175@00 $Ref)
(push) ; 1
(declare-const $t@176@00 $Snap)
(assert (= $t@176@00 ($Snap.combine ($Snap.first $t@176@00) ($Snap.second $t@176@00))))
(assert (not (= self@175@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_32$3$15809515461060994565 ----------
(declare-const self@177@00 $Ref)
(push) ; 1
(declare-const $t@178@00 $Snap)
(assert (= $t@178@00 ($Snap.combine ($Snap.first $t@178@00) ($Snap.second $t@178@00))))
(assert (not (= self@177@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_33$3$11933678243532117102 ----------
(declare-const self@179@00 $Ref)
(push) ; 1
(declare-const $t@180@00 $Snap)
(assert (= $t@180@00 ($Snap.combine ($Snap.first $t@180@00) ($Snap.second $t@180@00))))
(assert (not (= self@179@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_34$3$4920139583706826500 ----------
(declare-const self@181@00 $Ref)
(push) ; 1
(declare-const $t@182@00 $Snap)
(assert (= $t@182@00 ($Snap.combine ($Snap.first $t@182@00) ($Snap.second $t@182@00))))
(assert (not (= self@181@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_35$3$13448283034829184517 ----------
(declare-const self@183@00 $Ref)
(push) ; 1
(declare-const $t@184@00 $Snap)
(assert (= $t@184@00 ($Snap.combine ($Snap.first $t@184@00) ($Snap.second $t@184@00))))
(assert (not (= self@183@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_36$3$15809515461060994565 ----------
(declare-const self@185@00 $Ref)
(push) ; 1
(declare-const $t@186@00 $Snap)
(assert (= $t@186@00 ($Snap.combine ($Snap.first $t@186@00) ($Snap.second $t@186@00))))
(assert (not (= self@185@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_37$6$9382093347497428436 ----------
(declare-const self@187@00 $Ref)
(push) ; 1
(declare-const $t@188@00 $Snap)
(assert (= $t@188@00 ($Snap.combine ($Snap.first $t@188@00) ($Snap.second $t@188@00))))
(assert (not (= self@187@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_38$5$16262156183622235759 ----------
(declare-const self@189@00 $Ref)
(push) ; 1
(declare-const $t@190@00 $Snap)
(assert (= $t@190@00 ($Snap.combine ($Snap.first $t@190@00) ($Snap.second $t@190@00))))
(assert (not (= self@189@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_39$6$2570231456930421564 ----------
(declare-const self@191@00 $Ref)
(push) ; 1
(declare-const $t@192@00 $Snap)
(assert (= $t@192@00 ($Snap.combine ($Snap.first $t@192@00) ($Snap.second $t@192@00))))
(assert (not (= self@191@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_40$5$8151149684055769446 ----------
(declare-const self@193@00 $Ref)
(push) ; 1
(declare-const $t@194@00 $Snap)
(assert (= $t@194@00 ($Snap.combine ($Snap.first $t@194@00) ($Snap.second $t@194@00))))
(assert (not (= self@193@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_41$3$11933678243532117102 ----------
(declare-const self@195@00 $Ref)
(push) ; 1
(declare-const $t@196@00 $Snap)
(assert (= $t@196@00 ($Snap.combine ($Snap.first $t@196@00) ($Snap.second $t@196@00))))
(assert (not (= self@195@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_44$3$11957180999391598925 ----------
(declare-const self@197@00 $Ref)
(push) ; 1
(declare-const $t@198@00 $Snap)
(assert (= $t@198@00 ($Snap.combine ($Snap.first $t@198@00) ($Snap.second $t@198@00))))
(assert (not (= self@197@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_45$3$18068549781639004461 ----------
(declare-const self@199@00 $Ref)
(push) ; 1
(declare-const $t@200@00 $Snap)
(assert (= $t@200@00 ($Snap.combine ($Snap.first $t@200@00) ($Snap.second $t@200@00))))
(assert (not (= self@199@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_46$4$2316023683921474614 ----------
(declare-const self@201@00 $Ref)
(push) ; 1
(declare-const $t@202@00 $Snap)
(assert (= $t@202@00 ($Snap.combine ($Snap.first $t@202@00) ($Snap.second $t@202@00))))
(assert (not (= self@201@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_47$4$7438738628820119904 ----------
(declare-const self@203@00 $Ref)
(push) ; 1
(declare-const $t@204@00 $Snap)
(assert (= $t@204@00 ($Snap.combine ($Snap.first $t@204@00) ($Snap.second $t@204@00))))
(assert (not (= self@203@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_48$3$5169942411020240745 ----------
(declare-const self@205@00 $Ref)
(push) ; 1
(declare-const $t@206@00 $Snap)
(assert (= $t@206@00 ($Snap.combine ($Snap.first $t@206@00) ($Snap.second $t@206@00))))
(assert (not (= self@205@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_49$3$13177526864632184778 ----------
(declare-const self@207@00 $Ref)
(push) ; 1
(declare-const $t@208@00 $Snap)
(assert (= $t@208@00 ($Snap.combine ($Snap.first $t@208@00) ($Snap.second $t@208@00))))
(assert (not (= self@207@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_51$3$11921783312157906974 ----------
(declare-const self@209@00 $Ref)
(push) ; 1
(declare-const $t@210@00 $Snap)
(assert (= $t@210@00 ($Snap.combine ($Snap.first $t@210@00) ($Snap.second $t@210@00))))
(assert (not (= self@209@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_52$3$15203628194863643940 ----------
(declare-const self@211@00 $Ref)
(push) ; 1
(declare-const $t@212@00 $Snap)
(assert (= $t@212@00 ($Snap.combine ($Snap.first $t@212@00) ($Snap.second $t@212@00))))
(assert (not (= self@211@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_54$3$3845551369651406509 ----------
(declare-const self@213@00 $Ref)
(push) ; 1
(declare-const $t@214@00 $Snap)
(assert (= $t@214@00 ($Snap.combine ($Snap.first $t@214@00) ($Snap.second $t@214@00))))
(assert (not (= self@213@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_55$4$12478973570546726808 ----------
(declare-const self@215@00 $Ref)
(push) ; 1
(declare-const $t@216@00 $Snap)
(assert (= $t@216@00 ($Snap.combine ($Snap.first $t@216@00) ($Snap.second $t@216@00))))
(assert (not (= self@215@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_57$3$3155449875120012984 ----------
(declare-const self@217@00 $Ref)
(push) ; 1
(declare-const $t@218@00 $Snap)
(assert (= $t@218@00 ($Snap.combine ($Snap.first $t@218@00) ($Snap.second $t@218@00))))
(assert (not (= self@217@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_58$3$7682442910302967967 ----------
(declare-const self@219@00 $Ref)
(push) ; 1
(declare-const $t@220@00 $Snap)
(assert (= $t@220@00 ($Snap.combine ($Snap.first $t@220@00) ($Snap.second $t@220@00))))
(assert (not (= self@219@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_59$3$2360874258797543443 ----------
(declare-const self@221@00 $Ref)
(push) ; 1
(declare-const $t@222@00 $Snap)
(assert (= $t@222@00 ($Snap.combine ($Snap.first $t@222@00) ($Snap.second $t@222@00))))
(assert (not (= self@221@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_60$3$18314004443372132536 ----------
(declare-const self@223@00 $Ref)
(push) ; 1
(declare-const $t@224@00 $Snap)
(assert (= $t@224@00 ($Snap.combine ($Snap.first $t@224@00) ($Snap.second $t@224@00))))
(assert (not (= self@223@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_62$3$8554745105452251562 ----------
(declare-const self@225@00 $Ref)
(push) ; 1
(declare-const $t@226@00 $Snap)
(assert (= $t@226@00 ($Snap.combine ($Snap.first $t@226@00) ($Snap.second $t@226@00))))
(assert (not (= self@225@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_63$4$11738836714435574072 ----------
(declare-const self@227@00 $Ref)
(push) ; 1
(declare-const $t@228@00 $Snap)
(assert (= $t@228@00 ($Snap.combine ($Snap.first $t@228@00) ($Snap.second $t@228@00))))
(assert (not (= self@227@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_64$3$6302789819304097144 ----------
(declare-const self@229@00 $Ref)
(push) ; 1
(declare-const $t@230@00 $Snap)
(assert (= $t@230@00 ($Snap.combine ($Snap.first $t@230@00) ($Snap.second $t@230@00))))
(assert (not (= self@229@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_65$3$11937539310563724083 ----------
(declare-const self@231@00 $Ref)
(push) ; 1
(declare-const $t@232@00 $Snap)
(assert (= $t@232@00 ($Snap.combine ($Snap.first $t@232@00) ($Snap.second $t@232@00))))
(assert (not (= self@231@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_66$3$13333293174589074011 ----------
(declare-const self@233@00 $Ref)
(push) ; 1
(declare-const $t@234@00 $Snap)
(assert (= $t@234@00 ($Snap.combine ($Snap.first $t@234@00) ($Snap.second $t@234@00))))
(assert (not (= self@233@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_67$3$2467019396475800186 ----------
(declare-const self@235@00 $Ref)
(push) ; 1
(declare-const $t@236@00 $Snap)
(assert (= $t@236@00 ($Snap.combine ($Snap.first $t@236@00) ($Snap.second $t@236@00))))
(assert (not (= self@235@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_69$3$15436921638386154731 ----------
(declare-const self@237@00 $Ref)
(push) ; 1
(declare-const $t@238@00 $Snap)
(assert (= $t@238@00 ($Snap.combine ($Snap.first $t@238@00) ($Snap.second $t@238@00))))
(assert (not (= self@237@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_70$4$13742673918391663087 ----------
(declare-const self@239@00 $Ref)
(push) ; 1
(declare-const $t@240@00 $Snap)
(assert (= $t@240@00 ($Snap.combine ($Snap.first $t@240@00) ($Snap.second $t@240@00))))
(assert (not (= self@239@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_71$3$13802932288664565916 ----------
(declare-const self@241@00 $Ref)
(push) ; 1
(declare-const $t@242@00 $Snap)
(assert (= $t@242@00 ($Snap.combine ($Snap.first $t@242@00) ($Snap.second $t@242@00))))
(assert (not (= self@241@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_72$3$11933678243532117102 ----------
(declare-const self@243@00 $Ref)
(push) ; 1
(declare-const $t@244@00 $Snap)
(assert (= $t@244@00 ($Snap.combine ($Snap.first $t@244@00) ($Snap.second $t@244@00))))
(assert (not (= self@243@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_73$3$4920139583706826500 ----------
(declare-const self@245@00 $Ref)
(push) ; 1
(declare-const $t@246@00 $Snap)
(assert (= $t@246@00 ($Snap.combine ($Snap.first $t@246@00) ($Snap.second $t@246@00))))
(assert (not (= self@245@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_74$3$13448283034829184517 ----------
(declare-const self@247@00 $Ref)
(push) ; 1
(declare-const $t@248@00 $Snap)
(assert (= $t@248@00 ($Snap.combine ($Snap.first $t@248@00) ($Snap.second $t@248@00))))
(assert (not (= self@247@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_75$3$15809515461060994565 ----------
(declare-const self@249@00 $Ref)
(push) ; 1
(declare-const $t@250@00 $Snap)
(assert (= $t@250@00 ($Snap.combine ($Snap.first $t@250@00) ($Snap.second $t@250@00))))
(assert (not (= self@249@00 $Ref.null)))
(pop) ; 1
; ---------- ref$i32 ----------
(declare-const self@251@00 $Ref)
(push) ; 1
(declare-const $t@252@00 $Snap)
(assert (= $t@252@00 ($Snap.combine ($Snap.first $t@252@00) ($Snap.second $t@252@00))))
(assert (not (= self@251@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@253@00 $Ref)
(push) ; 1
(declare-const $t@254@00 $Snap)
(assert (= $t@254@00 ($Snap.combine ($Snap.first $t@254@00) ($Snap.second $t@254@00))))
(assert (not (= self@253@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@255@00 $Ref)
(push) ; 1
(declare-const $t@256@00 $Snap)
(assert (= $t@256@00 ($Snap.combine ($Snap.first $t@256@00) ($Snap.second $t@256@00))))
(assert (not (= self@255@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@257@00 $Ref)
(push) ; 1
(declare-const $t@258@00 $Snap)
(assert (= $t@258@00 ($Snap.combine ($Snap.first $t@258@00) ($Snap.second $t@258@00))))
(assert (not (= self@257@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@259@00 $Ref)
(push) ; 1
(declare-const $t@260@00 $Snap)
(assert (= $t@260@00 ($Snap.combine ($Snap.first $t@260@00) ($Snap.second $t@260@00))))
(assert (not (= self@259@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@261@00 $Ref)
(push) ; 1
(declare-const $t@262@00 $Snap)
(assert (= $t@262@00 ($Snap.combine ($Snap.first $t@262@00) ($Snap.second $t@262@00))))
(assert (not (= self@261@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$m_Knights_tour$$Board$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@263@00 $Ref)
(push) ; 1
(declare-const $t@264@00 $Snap)
(assert (= $t@264@00 ($Snap.combine ($Snap.first $t@264@00) ($Snap.second $t@264@00))))
(assert (not (= self@263@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@265@00 $Ref)
(push) ; 1
(declare-const $t@266@00 $Snap)
(assert (= $t@266@00 ($Snap.combine ($Snap.first $t@266@00) ($Snap.second $t@266@00))))
(assert (not (= self@265@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@267@00 $Ref)
(push) ; 1
(declare-const $t@268@00 $Snap)
(assert (= $t@268@00 ($Snap.combine ($Snap.first $t@268@00) ($Snap.second $t@268@00))))
(assert (not (= self@267@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_Knights_tour$$VecCandidates$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@269@00 $Ref)
(push) ; 1
(declare-const $t@270@00 $Snap)
(assert (= $t@270@00 ($Snap.combine ($Snap.first $t@270@00) ($Snap.second $t@270@00))))
(assert (not (= self@269@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_Knights_tour$$VecVecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@271@00 $Ref)
(push) ; 1
(declare-const $t@272@00 $Snap)
(assert (= $t@272@00 ($Snap.combine ($Snap.first $t@272@00) ($Snap.second $t@272@00))))
(assert (not (= self@271@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_Knights_tour$$VecWrapperI32I32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@273@00 $Ref)
(push) ; 1
(declare-const $t@274@00 $Snap)
(assert (= $t@274@00 ($Snap.combine ($Snap.first $t@274@00) ($Snap.second $t@274@00))))
(assert (not (= self@273@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_core$$option$opensqu$0$closesqu$$$Option$opensqu$0$closesqu$$_beg_$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@275@00 $Ref)
(push) ; 1
(declare-const $t@276@00 $Snap)
(assert (= $t@276@00 ($Snap.combine ($Snap.first $t@276@00) ($Snap.second $t@276@00))))
(assert (not (= self@275@00 $Ref.null)))
(pop) ; 1
; ---------- ref$tuple2$i32$i32 ----------
(declare-const self@277@00 $Ref)
(push) ; 1
(declare-const $t@278@00 $Snap)
(assert (= $t@278@00 ($Snap.combine ($Snap.first $t@278@00) ($Snap.second $t@278@00))))
(assert (not (= self@277@00 $Ref.null)))
(pop) ; 1
; ---------- ref$tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@279@00 $Ref)
(push) ; 1
(declare-const $t@280@00 $Snap)
(assert (= $t@280@00 ($Snap.combine ($Snap.first $t@280@00) ($Snap.second $t@280@00))))
(assert (not (= self@279@00 $Ref.null)))
(pop) ; 1
; ---------- ref$usize ----------
(declare-const self@281@00 $Ref)
(push) ; 1
(declare-const $t@282@00 $Snap)
(assert (= $t@282@00 ($Snap.combine ($Snap.first $t@282@00) ($Snap.second $t@282@00))))
(assert (not (= self@281@00 $Ref.null)))
(pop) ; 1
; ---------- tuple0$ ----------
(declare-const self@283@00 $Ref)
(push) ; 1
(declare-const $t@284@00 $Snap)
(assert (= $t@284@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$i32$bool ----------
(declare-const self@285@00 $Ref)
(push) ; 1
(declare-const $t@286@00 $Snap)
(assert (= $t@286@00 ($Snap.combine ($Snap.first $t@286@00) ($Snap.second $t@286@00))))
(assert (not (= self@285@00 $Ref.null)))
(assert (=
  ($Snap.second $t@286@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@286@00))
    ($Snap.second ($Snap.second $t@286@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@286@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@286@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@286@00))))))
(pop) ; 1
; ---------- tuple2$i32$i32 ----------
(declare-const self@287@00 $Ref)
(push) ; 1
(declare-const $t@288@00 $Snap)
(assert (= $t@288@00 ($Snap.combine ($Snap.first $t@288@00) ($Snap.second $t@288@00))))
(assert (not (= self@287@00 $Ref.null)))
(assert (=
  ($Snap.second $t@288@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@288@00))
    ($Snap.second ($Snap.second $t@288@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@288@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@288@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@288@00))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@288@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@288@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- tuple2$i32$m_Knights_tour$$Point$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@289@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@290@00 $Snap)
(assert (= $t@290@00 ($Snap.combine ($Snap.first $t@290@00) ($Snap.second $t@290@00))))
(assert (not (= self@289@00 $Ref.null)))
(assert (=
  ($Snap.second $t@290@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@290@00))
    ($Snap.second ($Snap.second $t@290@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@290@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@290@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@290@00))))))
(pop) ; 1
; ---------- tuple2$usize$bool ----------
(declare-const self@291@00 $Ref)
(push) ; 1
(declare-const $t@292@00 $Snap)
(assert (= $t@292@00 ($Snap.combine ($Snap.first $t@292@00) ($Snap.second $t@292@00))))
(assert (not (= self@291@00 $Ref.null)))
(assert (=
  ($Snap.second $t@292@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@292@00))
    ($Snap.second ($Snap.second $t@292@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@292@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@292@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@292@00))))))
(pop) ; 1
; ---------- u8 ----------
(declare-const self@293@00 $Ref)
(push) ; 1
(declare-const $t@294@00 $Snap)
(assert (= $t@294@00 ($Snap.combine ($Snap.first $t@294@00) ($Snap.second $t@294@00))))
(assert (not (= self@293@00 $Ref.null)))
(assert (= ($Snap.second $t@294@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@294@00))))
(pop) ; 1
; ---------- usize ----------
(declare-const self@295@00 $Ref)
(push) ; 1
(declare-const $t@296@00 $Snap)
(assert (= $t@296@00 ($Snap.combine ($Snap.first $t@296@00) ($Snap.second $t@296@00))))
(assert (not (= self@295@00 $Ref.null)))
(assert (= ($Snap.second $t@296@00) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@296@00))))
(pop) ; 1
