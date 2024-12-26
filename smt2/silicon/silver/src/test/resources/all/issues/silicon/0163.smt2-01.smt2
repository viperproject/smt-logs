(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:41:33
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
(declare-fun otherRef ($Snap) $Ref)
(declare-fun otherRef%limited ($Snap) $Ref)
(declare-const otherRef%stateless Bool)
(declare-fun otherRef%precondition ($Snap) Bool)
(declare-fun helper ($Snap $Ref) Int)
(declare-fun helper%limited ($Snap $Ref) Int)
(declare-fun helper%stateless ($Ref) Bool)
(declare-fun helper%precondition ($Snap $Ref) Bool)
(declare-fun postInhale ($Snap $Ref) $Ref)
(declare-fun postInhale%limited ($Snap $Ref) $Ref)
(declare-fun postInhale%stateless ($Ref) Bool)
(declare-fun postInhale%precondition ($Snap $Ref) Bool)
(declare-fun onlyWorksWithInhale ($Snap Int) Int)
(declare-fun onlyWorksWithInhale%limited ($Snap Int) Int)
(declare-fun onlyWorksWithInhale%stateless (Int) Bool)
(declare-fun onlyWorksWithInhale%precondition ($Snap Int) Bool)
(declare-fun onlyWorksWithInhale2 ($Snap Int) Int)
(declare-fun onlyWorksWithInhale2%limited ($Snap Int) Int)
(declare-fun onlyWorksWithInhale2%stateless (Int) Bool)
(declare-fun onlyWorksWithInhale2%precondition ($Snap Int) Bool)
(declare-fun main ($Snap $Ref) $Ref)
(declare-fun main%limited ($Snap $Ref) $Ref)
(declare-fun main%stateless ($Ref) Bool)
(declare-fun main%precondition ($Snap $Ref) Bool)
(declare-fun inhaleTrue ($Snap $Ref) Int)
(declare-fun inhaleTrue%limited ($Snap $Ref) Int)
(declare-fun inhaleTrue%stateless ($Ref) Bool)
(declare-fun inhaleTrue%precondition ($Snap $Ref) Bool)
(declare-fun onlyWorksWithPreExhale ($Snap Int) Int)
(declare-fun onlyWorksWithPreExhale%limited ($Snap Int) Int)
(declare-fun onlyWorksWithPreExhale%stateless (Int) Bool)
(declare-fun onlyWorksWithPreExhale%precondition ($Snap Int) Bool)
(declare-fun onlyWorksWithPreExhale2 ($Snap Int) Int)
(declare-fun onlyWorksWithPreExhale2%limited ($Snap Int) Int)
(declare-fun onlyWorksWithPreExhale2%stateless (Int) Bool)
(declare-fun onlyWorksWithPreExhale2%precondition ($Snap Int) Bool)
(declare-fun main2 ($Snap Int) Int)
(declare-fun main2%limited ($Snap Int) Int)
(declare-fun main2%stateless (Int) Bool)
(declare-fun main2%precondition ($Snap Int) Bool)
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
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(assert (forall ((s@$ $Snap)) (!
  (= (otherRef%limited s@$) (otherRef s@$))
  :pattern ((otherRef s@$))
  :qid |quant-u-25909|)))
(assert (forall ((s@$ $Snap)) (!
  (as otherRef%stateless  Bool)
  :pattern ((otherRef%limited s@$))
  :qid |quant-u-25910|)))
(assert (forall ((s@$ $Snap) (r@1@00 $Ref)) (!
  (= (helper%limited s@$ r@1@00) (helper s@$ r@1@00))
  :pattern ((helper s@$ r@1@00))
  :qid |quant-u-25911|)))
(assert (forall ((s@$ $Snap) (r@1@00 $Ref)) (!
  (helper%stateless r@1@00)
  :pattern ((helper%limited s@$ r@1@00))
  :qid |quant-u-25912|)))
(assert (forall ((s@$ $Snap) (r@3@00 $Ref)) (!
  (= (postInhale%limited s@$ r@3@00) (postInhale s@$ r@3@00))
  :pattern ((postInhale s@$ r@3@00))
  :qid |quant-u-25913|)))
(assert (forall ((s@$ $Snap) (r@3@00 $Ref)) (!
  (postInhale%stateless r@3@00)
  :pattern ((postInhale%limited s@$ r@3@00))
  :qid |quant-u-25914|)))
(assert (forall ((s@$ $Snap) (r@3@00 $Ref)) (!
  (let ((result@4@00 (postInhale%limited s@$ r@3@00))) (=>
    (postInhale%precondition s@$ r@3@00)
    (= (helper $Snap.unit result@4@00) 2)))
  :pattern ((postInhale%limited s@$ r@3@00))
  :qid |quant-u-25929|)))
(assert (forall ((s@$ $Snap) (r@3@00 $Ref)) (!
  (let ((result@4@00 (postInhale%limited s@$ r@3@00))) (=>
    (postInhale%precondition s@$ r@3@00)
    (helper%precondition $Snap.unit result@4@00)))
  :pattern ((postInhale%limited s@$ r@3@00))
  :qid |quant-u-25930|)))
(assert (forall ((s@$ $Snap) (r@3@00 $Ref)) (!
  (=>
    (postInhale%precondition s@$ r@3@00)
    (= (postInhale s@$ r@3@00) (otherRef $Snap.unit)))
  :pattern ((postInhale s@$ r@3@00))
  :qid |quant-u-25931|)))
(assert (forall ((s@$ $Snap) (r@3@00 $Ref)) (!
  (=> (postInhale%precondition s@$ r@3@00) (otherRef%precondition $Snap.unit))
  :pattern ((postInhale s@$ r@3@00))
  :qid |quant-u-25932|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int)) (!
  (= (onlyWorksWithInhale%limited s@$ i@5@00) (onlyWorksWithInhale s@$ i@5@00))
  :pattern ((onlyWorksWithInhale s@$ i@5@00))
  :qid |quant-u-25915|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int)) (!
  (onlyWorksWithInhale%stateless i@5@00)
  :pattern ((onlyWorksWithInhale%limited s@$ i@5@00))
  :qid |quant-u-25916|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int)) (!
  (let ((result@6@00 (onlyWorksWithInhale%limited s@$ i@5@00))) (=>
    (onlyWorksWithInhale%precondition s@$ i@5@00)
    (> result@6@00 17)))
  :pattern ((onlyWorksWithInhale%limited s@$ i@5@00))
  :qid |quant-u-25933|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int)) (!
  (let ((result@6@00 (onlyWorksWithInhale%limited s@$ i@5@00))) true)
  :pattern ((onlyWorksWithInhale%limited s@$ i@5@00))
  :qid |quant-u-25934|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int)) (!
  (=>
    (onlyWorksWithInhale%precondition s@$ i@5@00)
    (= (onlyWorksWithInhale s@$ i@5@00) i@5@00))
  :pattern ((onlyWorksWithInhale s@$ i@5@00))
  :qid |quant-u-25935|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int)) (!
  true
  :pattern ((onlyWorksWithInhale s@$ i@5@00))
  :qid |quant-u-25936|)))
(assert (forall ((s@$ $Snap) (i@7@00 Int)) (!
  (= (onlyWorksWithInhale2%limited s@$ i@7@00) (onlyWorksWithInhale2 s@$ i@7@00))
  :pattern ((onlyWorksWithInhale2 s@$ i@7@00))
  :qid |quant-u-25917|)))
(assert (forall ((s@$ $Snap) (i@7@00 Int)) (!
  (onlyWorksWithInhale2%stateless i@7@00)
  :pattern ((onlyWorksWithInhale2%limited s@$ i@7@00))
  :qid |quant-u-25918|)))
(assert (forall ((s@$ $Snap) (i@7@00 Int)) (!
  (let ((result@8@00 (onlyWorksWithInhale2%limited s@$ i@7@00))) (=>
    (onlyWorksWithInhale2%precondition s@$ i@7@00)
    (> result@8@00 17)))
  :pattern ((onlyWorksWithInhale2%limited s@$ i@7@00))
  :qid |quant-u-25937|)))
(assert (forall ((s@$ $Snap) (i@7@00 Int)) (!
  (let ((result@8@00 (onlyWorksWithInhale2%limited s@$ i@7@00))) true)
  :pattern ((onlyWorksWithInhale2%limited s@$ i@7@00))
  :qid |quant-u-25938|)))
(assert (forall ((s@$ $Snap) (r2@9@00 $Ref)) (!
  (= (main%limited s@$ r2@9@00) (main s@$ r2@9@00))
  :pattern ((main s@$ r2@9@00))
  :qid |quant-u-25919|)))
(assert (forall ((s@$ $Snap) (r2@9@00 $Ref)) (!
  (main%stateless r2@9@00)
  :pattern ((main%limited s@$ r2@9@00))
  :qid |quant-u-25920|)))
(assert (forall ((s@$ $Snap) (r2@9@00 $Ref)) (!
  (let ((result@10@00 (main%limited s@$ r2@9@00))) (=>
    (main%precondition s@$ r2@9@00)
    (= (helper $Snap.unit result@10@00) 2)))
  :pattern ((main%limited s@$ r2@9@00))
  :qid |quant-u-25939|)))
(assert (forall ((s@$ $Snap) (r2@9@00 $Ref)) (!
  (let ((result@10@00 (main%limited s@$ r2@9@00))) (=>
    (main%precondition s@$ r2@9@00)
    (helper%precondition $Snap.unit result@10@00)))
  :pattern ((main%limited s@$ r2@9@00))
  :qid |quant-u-25940|)))
(assert (forall ((s@$ $Snap) (r2@9@00 $Ref)) (!
  (=>
    (main%precondition s@$ r2@9@00)
    (= (main s@$ r2@9@00) (postInhale $Snap.unit r2@9@00)))
  :pattern ((main s@$ r2@9@00))
  :qid |quant-u-25941|)))
(assert (forall ((s@$ $Snap) (r2@9@00 $Ref)) (!
  (=>
    (main%precondition s@$ r2@9@00)
    (postInhale%precondition $Snap.unit r2@9@00))
  :pattern ((main s@$ r2@9@00))
  :qid |quant-u-25942|)))
(assert (forall ((s@$ $Snap) (this@11@00 $Ref)) (!
  (= (inhaleTrue%limited s@$ this@11@00) (inhaleTrue s@$ this@11@00))
  :pattern ((inhaleTrue s@$ this@11@00))
  :qid |quant-u-25921|)))
(assert (forall ((s@$ $Snap) (this@11@00 $Ref)) (!
  (inhaleTrue%stateless this@11@00)
  :pattern ((inhaleTrue%limited s@$ this@11@00))
  :qid |quant-u-25922|)))
(assert (forall ((s@$ $Snap) (this@11@00 $Ref)) (!
  (=> (inhaleTrue%precondition s@$ this@11@00) (= (inhaleTrue s@$ this@11@00) 0))
  :pattern ((inhaleTrue s@$ this@11@00))
  :qid |quant-u-25943|)))
(assert (forall ((s@$ $Snap) (this@11@00 $Ref)) (!
  true
  :pattern ((inhaleTrue s@$ this@11@00))
  :qid |quant-u-25944|)))
(assert (forall ((s@$ $Snap) (i2@13@00 Int)) (!
  (=
    (onlyWorksWithPreExhale%limited s@$ i2@13@00)
    (onlyWorksWithPreExhale s@$ i2@13@00))
  :pattern ((onlyWorksWithPreExhale s@$ i2@13@00))
  :qid |quant-u-25923|)))
(assert (forall ((s@$ $Snap) (i2@13@00 Int)) (!
  (onlyWorksWithPreExhale%stateless i2@13@00)
  :pattern ((onlyWorksWithPreExhale%limited s@$ i2@13@00))
  :qid |quant-u-25924|)))
(assert (forall ((s@$ $Snap) (i2@13@00 Int)) (!
  (=>
    (onlyWorksWithPreExhale%precondition s@$ i2@13@00)
    (=
      (onlyWorksWithPreExhale s@$ i2@13@00)
      (onlyWorksWithInhale $Snap.unit i2@13@00)))
  :pattern ((onlyWorksWithPreExhale s@$ i2@13@00))
  :qid |quant-u-25945|)))
(assert (forall ((s@$ $Snap) (i2@13@00 Int)) (!
  (=>
    (onlyWorksWithPreExhale%precondition s@$ i2@13@00)
    (onlyWorksWithInhale%precondition $Snap.unit i2@13@00))
  :pattern ((onlyWorksWithPreExhale s@$ i2@13@00))
  :qid |quant-u-25946|)))
(assert (forall ((s@$ $Snap) (i2@15@00 Int)) (!
  (=
    (onlyWorksWithPreExhale2%limited s@$ i2@15@00)
    (onlyWorksWithPreExhale2 s@$ i2@15@00))
  :pattern ((onlyWorksWithPreExhale2 s@$ i2@15@00))
  :qid |quant-u-25925|)))
(assert (forall ((s@$ $Snap) (i2@15@00 Int)) (!
  (onlyWorksWithPreExhale2%stateless i2@15@00)
  :pattern ((onlyWorksWithPreExhale2%limited s@$ i2@15@00))
  :qid |quant-u-25926|)))
(assert (forall ((s@$ $Snap) (i3@17@00 Int)) (!
  (= (main2%limited s@$ i3@17@00) (main2 s@$ i3@17@00))
  :pattern ((main2 s@$ i3@17@00))
  :qid |quant-u-25927|)))
(assert (forall ((s@$ $Snap) (i3@17@00 Int)) (!
  (main2%stateless i3@17@00)
  :pattern ((main2%limited s@$ i3@17@00))
  :qid |quant-u-25928|)))
(assert (forall ((s@$ $Snap) (i3@17@00 Int)) (!
  (let ((result@18@00 (main2%limited s@$ i3@17@00))) (=>
    (main2%precondition s@$ i3@17@00)
    (> result@18@00 17)))
  :pattern ((main2%limited s@$ i3@17@00))
  :qid |quant-u-25947|)))
(assert (forall ((s@$ $Snap) (i3@17@00 Int)) (!
  (let ((result@18@00 (main2%limited s@$ i3@17@00))) true)
  :pattern ((main2%limited s@$ i3@17@00))
  :qid |quant-u-25948|)))
(assert (forall ((s@$ $Snap) (i3@17@00 Int)) (!
  (=>
    (main2%precondition s@$ i3@17@00)
    (= (main2 s@$ i3@17@00) (onlyWorksWithInhale $Snap.unit i3@17@00)))
  :pattern ((main2 s@$ i3@17@00))
  :qid |quant-u-25949|)))
(assert (forall ((s@$ $Snap) (i3@17@00 Int)) (!
  (=>
    (main2%precondition s@$ i3@17@00)
    (onlyWorksWithInhale%precondition $Snap.unit i3@17@00))
  :pattern ((main2 s@$ i3@17@00))
  :qid |quant-u-25950|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
