// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0816.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0816-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
// Dependencies:
//   Boogie , located at /home/runner/.dotnet/tools/boogie.
//   Z3 4.12.1 - 64 bit, located at /opt/hostedtoolcache/z3/4.12.1/x64/z3-4.12.1-x64-glibc-2.35/bin/z3.
// 

// ==================================================
// Preamble of State module.
// ==================================================

function  state(Heap: HeapType, Mask: MaskType): bool;
axiom state(dummyHeap, ZeroMask);

// ==================================================
// Preamble of Heap module.
// ==================================================

type Ref;
var Heap: HeapType;
const null: Ref;
type Field A B;
type NormalField;
const dummyHeap: HeapType;
type HeapType = <A, B> [Ref, Field A B]B;
const unique $allocated: Field NormalField bool;
axiom (forall o_14: Ref, f_22: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_14, f_22] }
  Heap[o_14, $allocated] ==> Heap[Heap[o_14, f_22], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref, f_23: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, f_23] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_15, f_23) ==> Heap[o_15, f_23] == ExhaleHeap[o_15, f_23]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_15, $allocated] ==> ExhaleHeap[o_15, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_14: Ref, f_24: (Field A B), v: B ::
  { Heap[o_14, f_24:=v] }
  succHeap(Heap, Heap[o_14, f_24:=v])
);
// IdenticalOnKnownLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
);
// Successor Heaps are Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType ::
  { succHeap(Heap0, Heap1) }
  succHeap(Heap0, Heap1) ==> succHeapTrans(Heap0, Heap1)
);
// Transitivity of Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType, Heap2: HeapType ::
  { succHeapTrans(Heap0, Heap1), succHeap(Heap1, Heap2) }
  succHeapTrans(Heap0, Heap1) && succHeap(Heap1, Heap2) ==> succHeapTrans(Heap0, Heap2)
);

// ==================================================
// Preamble of Permission module.
// ==================================================

type Perm = real;
type MaskType = <A, B> [Ref, Field A B]Perm;
var Mask: MaskType;
const ZeroMask: MaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroMask[o_2, f_4] }
  ZeroMask[o_2, f_4] == NoPerm
);
type PMaskType = <A, B> [Ref, Field A B]bool;
const ZeroPMask: PMaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroPMask[o_2, f_4] }
  !ZeroPMask[o_2, f_4]
);
function  PredicateMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
function  WandMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
const NoPerm: Perm;
axiom NoPerm == 0.000000000;
const FullPerm: Perm;
axiom FullPerm == 1.000000000;
function  Perm(a: real, b: real): Perm;
const AssumePermUpperBound: bool;
function  GoodMask(Mask: MaskType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask) }
  state(Heap, Mask) ==> GoodMask(Mask)
);
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { GoodMask(Mask), Mask[o_2, f_4] }
  GoodMask(Mask) ==> Mask[o_2, f_4] >= NoPerm && (((GoodMask(Mask) && AssumePermUpperBound) && !IsPredicateField(f_4)) && !IsWandField(f_4) ==> Mask[o_2, f_4] <= FullPerm)
);
function  HasDirectPerm<A, B>(Mask: MaskType, o_2: Ref, f_4: (Field A B)): bool;
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { HasDirectPerm(Mask, o_2, f_4) }
  HasDirectPerm(Mask, o_2, f_4) <==> Mask[o_2, f_4] > NoPerm
);
function  sumMask(ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType): bool;
axiom (forall <A, B> ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType, o_2: Ref, f_4: (Field A B) ::
  { sumMask(ResultMask, SummandMask1, SummandMask2), ResultMask[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask1[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask2[o_2, f_4] }
  sumMask(ResultMask, SummandMask1, SummandMask2) ==> ResultMask[o_2, f_4] == SummandMask1[o_2, f_4] + SummandMask2[o_2, f_4]
);
// ==================================================
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(key_1: Ref): bool;
function  neverTriggered2(key_4: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 2: keydict___item__inv
// - height 1: keydict___item__
// - height 0: keydict___contains__
const AssumeFunctionsAbove: int;
// Declarations for function framing
type FrameType;
const EmptyFrame: FrameType;
function  FrameFragment<T>(t: T): FrameType;
function  ConditionalFrame(p: Perm, f_6: FrameType): FrameType;
function  dummyFunction<T>(t: T): bool;
function  CombineFrames(a_1: FrameType, b_1: FrameType): FrameType;
// ==================================================
// Definition of conditional frame fragments
// ==================================================

axiom (forall p: Perm, f_6: FrameType ::
  { ConditionalFrame(p, f_6) }
  ConditionalFrame(p, f_6) == (if p > 0.000000000 then f_6 else EmptyFrame)
);
// Function for recording enclosure of one predicate instance in another
function  InsidePredicate<A, B>(p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType): bool;
// Transitivity of InsidePredicate
axiom (forall <A, B, C> p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType, r: (Field C FrameType), u: FrameType ::
  { InsidePredicate(p, v_1, q, w), InsidePredicate(q, w, r, u) }
  InsidePredicate(p, v_1, q, w) && InsidePredicate(q, w, r, u) ==> InsidePredicate(p, v_1, r, u)
);
// Knowledge that two identical instances of the same predicate cannot be inside each other
axiom (forall <A> p: (Field A FrameType), v_1: FrameType, w: FrameType ::
  { InsidePredicate(p, v_1, p, w) }
  !InsidePredicate(p, v_1, p, w)
);

// ==================================================
// Translation of domain Option
// ==================================================

// The type for domain Option
type OptionDomainType T;

// Translation of domain function Some
function  Some<T>(value_2: T): OptionDomainType T;

// Translation of domain function None
function  None<T>(): OptionDomainType T;

// Translation of domain function get_Option_value
function  get_Option_value<T>(t_3: (OptionDomainType T)): T;

// Translation of domain function Option_tag
function  Option_tag<T>(t_3: (OptionDomainType T)): int;

// Translation of anonymous domain axiom
axiom (forall <T> value: T ::
  { (Some(value): OptionDomainType T) }
  value == (get_Option_value((Some(value): OptionDomainType T)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value: T ::
  { (Some(value): OptionDomainType T) }
  (Option_tag((Some(value): OptionDomainType T)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (Option_tag((None(): OptionDomainType T)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T> t_2: (OptionDomainType T) ::
  { (Option_tag(t_2): int) }
  t_2 == (Some((get_Option_value(t_2): T)): OptionDomainType T) || t_2 == (None(): OptionDomainType T)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique keydict_val: Field NormalField (OptionDomainType Ref);
axiom !IsPredicateField(keydict_val);
axiom !IsWandField(keydict_val);

// ==================================================
// Translation of function keydict___item__
// ==================================================

// Uninterpreted function definitions
function  keydict___item__(Heap: HeapType, self: Ref, key_2: Ref): Ref;
function  keydict___item__'(Heap: HeapType, self: Ref, key_2: Ref): Ref;
axiom (forall Heap: HeapType, self: Ref, key_2: Ref ::
  { keydict___item__(Heap, self, key_2) }
  keydict___item__(Heap, self, key_2) == keydict___item__'(Heap, self, key_2) && dummyFunction(keydict___item__#triggerStateless(self, key_2))
);
axiom (forall Heap: HeapType, self: Ref, key_2: Ref ::
  { keydict___item__'(Heap, self, key_2) }
  dummyFunction(keydict___item__#triggerStateless(self, key_2))
);

// Framing axioms
function  keydict___item__#frame(frame: FrameType, self: Ref, key_2: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref, key_2: Ref ::
  { state(Heap, Mask), keydict___item__'(Heap, self, key_2) }
  state(Heap, Mask) ==> keydict___item__'(Heap, self, key_2) == keydict___item__#frame(EmptyFrame, self, key_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref, key_2: Ref ::
  { state(Heap, Mask), keydict___item__'(Heap, self, key_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || keydict___item__#trigger(EmptyFrame, self, key_2)) ==> keydict___item__inv(Heap, self, keydict___item__'(Heap, self, key_2)) == key_2
);

// Trigger function (controlling recursive postconditions)
function  keydict___item__#trigger(frame: FrameType, self: Ref, key_2: Ref): bool;

// State-independent trigger function
function  keydict___item__#triggerStateless(self: Ref, key_2: Ref): Ref;

// Check contract well-formedness and postcondition
procedure keydict___item__#definedness(self: Ref, key_2: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume Heap[key_2, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Checking definedness of postcondition (no body)
    assume state(Heap, Mask);
    
    // -- Check definedness of keydict___item__inv(self, result) == key
      if (*) {
        // Stop execution
        assume false;
      }
    assume keydict___item__inv(Heap, self, Result) == key_2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function keydict___item__inv
// ==================================================

// Uninterpreted function definitions
function  keydict___item__inv(Heap: HeapType, self: Ref, val_ref: Ref): Ref;
function  keydict___item__inv'(Heap: HeapType, self: Ref, val_ref: Ref): Ref;
axiom (forall Heap: HeapType, self: Ref, val_ref: Ref ::
  { keydict___item__inv(Heap, self, val_ref) }
  keydict___item__inv(Heap, self, val_ref) == keydict___item__inv'(Heap, self, val_ref) && dummyFunction(keydict___item__inv#triggerStateless(self, val_ref))
);
axiom (forall Heap: HeapType, self: Ref, val_ref: Ref ::
  { keydict___item__inv'(Heap, self, val_ref) }
  dummyFunction(keydict___item__inv#triggerStateless(self, val_ref))
);

// Framing axioms
function  keydict___item__inv#frame(frame: FrameType, self: Ref, val_ref: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref, val_ref: Ref ::
  { state(Heap, Mask), keydict___item__inv'(Heap, self, val_ref) }
  state(Heap, Mask) ==> keydict___item__inv'(Heap, self, val_ref) == keydict___item__inv#frame(EmptyFrame, self, val_ref)
);

// Trigger function (controlling recursive postconditions)
function  keydict___item__inv#trigger(frame: FrameType, self: Ref, val_ref: Ref): bool;

// State-independent trigger function
function  keydict___item__inv#triggerStateless(self: Ref, val_ref: Ref): Ref;

// Check contract well-formedness and postcondition
procedure keydict___item__inv#definedness(self: Ref, val_ref: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume Heap[val_ref, $allocated];
    assume AssumeFunctionsAbove == 2;
}

// ==================================================
// Translation of function keydict___contains__
// ==================================================

// Uninterpreted function definitions
function  keydict___contains__(Heap: HeapType, self: Ref, key_2: Ref): bool;
function  keydict___contains__'(Heap: HeapType, self: Ref, key_2: Ref): bool;
axiom (forall Heap: HeapType, self: Ref, key_2: Ref ::
  { keydict___contains__(Heap, self, key_2) }
  keydict___contains__(Heap, self, key_2) == keydict___contains__'(Heap, self, key_2) && dummyFunction(keydict___contains__#triggerStateless(self, key_2))
);
axiom (forall Heap: HeapType, self: Ref, key_2: Ref ::
  { keydict___contains__'(Heap, self, key_2) }
  dummyFunction(keydict___contains__#triggerStateless(self, key_2))
);

// Framing axioms
function  keydict___contains__#frame(frame: FrameType, self: Ref, key_2: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref, key_2: Ref ::
  { state(Heap, Mask), keydict___contains__'(Heap, self, key_2) }
  state(Heap, Mask) ==> keydict___contains__'(Heap, self, key_2) == keydict___contains__#frame(FrameFragment(Heap[keydict___item__(Heap, self, key_2), keydict_val]), self, key_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref, key_2: Ref ::
  { state(Heap, Mask), keydict___contains__'(Heap, self, key_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || keydict___contains__#trigger(FrameFragment(Heap[keydict___item__(Heap, self, key_2), keydict_val]), self, key_2)) ==> keydict___contains__'(Heap, self, key_2) == ((Option_tag(Heap[keydict___item__(Heap, self, key_2), keydict_val]): int) == 1)
);

// Trigger function (controlling recursive postconditions)
function  keydict___contains__#trigger(frame: FrameType, self: Ref, key_2: Ref): bool;

// State-independent trigger function
function  keydict___contains__#triggerStateless(self: Ref, key_2: Ref): bool;

// Check contract well-formedness and postcondition
procedure keydict___contains__#definedness(self: Ref, key_2: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume Heap[key_2, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(keydict___item__(self, key).keydict_val, wildcard)
      if (*) {
        // Stop execution
        assume false;
      }
    havoc wildcard;
    perm := wildcard;
    assume keydict___item__(Heap, self, key_2) != null;
    Mask := Mask[keydict___item__(Heap, self, key_2), keydict_val:=Mask[keydict___item__(Heap, self, key_2), keydict_val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume state(Heap, Mask);
    
    // -- Check definedness of result == ((Option_tag(keydict___item__(self, key).keydict_val): Int) == 1)
      if (*) {
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access keydict___item__(self, key).keydict_val (0816.vpr@18.13--18.69) [60773]"}
        HasDirectPerm(Mask, keydict___item__(Heap, self, key_2), keydict_val);
    assume Result == ((Option_tag(Heap[keydict___item__(Heap, self, key_2), keydict_val]): int) == 1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method keydict___init__
// ==================================================

procedure keydict___init__() returns (self: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var key_3: Ref;
  var ExhaleHeap: HeapType;
  var key_5: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall key: Ref :: { keydict___item__(self, key) } true ==> acc(keydict___item__(self, key).keydict_val, write))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource keydict___item__(self, key).keydict_val might not be injective. (0816.vpr@6.13--6.142) [60774]"}
      (forall key_1: Ref, key_1_1: Ref ::
      
      (key_1 != key_1_1 && NoPerm < FullPerm) && NoPerm < FullPerm ==> keydict___item__(PostHeap, self, key_1) != keydict___item__(PostHeap, self, key_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall key_1: Ref ::
        { keydict___item__#frame(EmptyFrame, self, key_1) } { keydict___item__#frame(EmptyFrame, self, key_1) }
        NoPerm < FullPerm ==> qpRange1(keydict___item__(PostHeap, self, key_1)) && invRecv1(keydict___item__(PostHeap, self, key_1)) == key_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        NoPerm < FullPerm && qpRange1(o_9) ==> keydict___item__(PostHeap, self, invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall key_1: Ref ::
        { keydict___item__#frame(EmptyFrame, self, key_1) } { keydict___item__#frame(EmptyFrame, self, key_1) }
        keydict___item__(PostHeap, self, key_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, keydict_val] }
        (NoPerm < FullPerm && qpRange1(o_9) ==> (NoPerm < FullPerm ==> keydict___item__(PostHeap, self, invRecv1(o_9)) == o_9) && QPMask[o_9, keydict_val] == PostMask[o_9, keydict_val] + FullPerm) && (!(NoPerm < FullPerm && qpRange1(o_9)) ==> QPMask[o_9, keydict_val] == PostMask[o_9, keydict_val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != keydict_val ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall key: Ref :: { keydict___item__(self, key) } true ==> !keydict___contains__(self, key))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function keydict___contains__ might not hold. There might be insufficient permission to access keydict___item__(self, key).keydict_val (0816.vpr@6.111--6.142) [60775]"}
            NoPerm < perm ==> NoPerm < PostMask[keydict___item__(PostHeap, self, key_3), keydict_val];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall key_3_1: Ref ::
      { keydict___item__#frame(EmptyFrame, self, key_3_1) }
      !keydict___contains__(PostHeap, self, key_3_1)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver keydict___item__(self, key) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource keydict___item__(self, key).keydict_val might not be injective. (0816.vpr@6.13--6.142) [60776]"}
        (forall key_4: Ref, key_4_1: Ref ::
        { neverTriggered2(key_4), neverTriggered2(key_4_1) }
        (key_4 != key_4_1 && NoPerm < FullPerm) && NoPerm < FullPerm ==> keydict___item__(Heap, self, key_4) != keydict___item__(Heap, self, key_4_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of keydict___init__ might not hold. There might be insufficient permission to access keydict___item__(self, key).keydict_val (0816.vpr@6.13--6.142) [60777]"}
        (forall key_4: Ref ::
        { keydict___item__#frame(EmptyFrame, self, key_4) } { keydict___item__#frame(EmptyFrame, self, key_4) }
        Mask[keydict___item__(Heap, self, key_4), keydict_val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver keydict___item__(self, key)
      assume (forall key_4: Ref ::
        { keydict___item__#frame(EmptyFrame, self, key_4) } { keydict___item__#frame(EmptyFrame, self, key_4) }
        NoPerm < FullPerm ==> qpRange2(keydict___item__(Heap, self, key_4)) && invRecv2(keydict___item__(Heap, self, key_4)) == key_4
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        NoPerm < FullPerm && qpRange2(o_9) ==> keydict___item__(Heap, self, invRecv2(o_9)) == o_9
      );
    
    // -- assume permission updates for field keydict_val
      assume (forall o_9: Ref ::
        { QPMask[o_9, keydict_val] }
        (NoPerm < FullPerm && qpRange2(o_9) ==> keydict___item__(Heap, self, invRecv2(o_9)) == o_9 && QPMask[o_9, keydict_val] == Mask[o_9, keydict_val] - FullPerm) && (!(NoPerm < FullPerm && qpRange2(o_9)) ==> QPMask[o_9, keydict_val] == Mask[o_9, keydict_val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != keydict_val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      assert {:msg "  Postcondition of keydict___init__ might not hold. Assertion !keydict___contains__(self, key) might not hold. (0816.vpr@6.13--6.142) [60778]"}
        !keydict___contains__(Heap, self, key_5);
      assume false;
    }
    assume (forall key_6_1: Ref ::
      { keydict___item__#frame(EmptyFrame, self, key_6_1) }
      !keydict___contains__(Heap, self, key_6_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}