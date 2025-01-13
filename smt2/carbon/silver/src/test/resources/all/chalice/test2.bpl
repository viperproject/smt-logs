// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:10:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/test2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/test2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 2: getX
// - height 1: getZ
// - height 0: getY
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
// Translation of all fields
// ==================================================

const unique x_36: Field NormalField int;
axiom !IsPredicateField(x_36);
axiom !IsWandField(x_36);
const unique y_15: Field NormalField int;
axiom !IsPredicateField(y_15);
axiom !IsWandField(y_15);
const unique z_22: Field NormalField int;
axiom !IsPredicateField(z_22);
axiom !IsWandField(z_22);
const unique w_12: Field NormalField int;
axiom !IsPredicateField(w_12);
axiom !IsWandField(w_12);

// ==================================================
// Translation of function getX
// ==================================================

// Uninterpreted function definitions
function  getX(Heap: HeapType, this: Ref): int;
function  getX'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { getX(Heap, this) }
  getX(Heap, this) == getX'(Heap, this) && dummyFunction(getX#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { getX'(Heap, this) }
  dummyFunction(getX#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getX(Heap, this) } { state(Heap, Mask), getX#triggerStateless(this), X#trigger(Heap, X(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> getX(Heap, this) == Heap[this, x_36]
);

// Framing axioms
function  getX#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getX'(Heap, this) }
  state(Heap, Mask) ==> getX'(Heap, this) == getX#frame(Heap[null, X(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  getX#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  getX#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure getX#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, X(this):=Mask[null, X(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(X(this), write) in this.x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume X#trigger(UnfoldingHeap, X(this));
      assume UnfoldingHeap[null, X(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access X(this) (test2.vpr@11.3--13.48) [143587]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, X(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.x (test2.vpr@11.3--13.48) [143588]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, X#sm(this):=Heap[null, X#sm(this)][this, x_36:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, x_36];
}

// ==================================================
// Translation of function getY
// ==================================================

// Uninterpreted function definitions
function  getY(Heap: HeapType, this: Ref): int;
function  getY'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { getY(Heap, this) }
  getY(Heap, this) == getY'(Heap, this) && dummyFunction(getY#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { getY'(Heap, this) }
  dummyFunction(getY#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getY(Heap, this) } { state(Heap, Mask), getY#triggerStateless(this), Y#trigger(Heap, Y(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> getY(Heap, this) == Heap[this, y_15]
);

// Framing axioms
function  getY#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getY'(Heap, this) }
  state(Heap, Mask) ==> getY'(Heap, this) == getY#frame(Heap[null, Y(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  getY#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  getY#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure getY#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Y(this):=Mask[null, Y(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Y(this), write) in this.y)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Y#trigger(UnfoldingHeap, Y(this));
      assume UnfoldingHeap[null, Y(this)] == FrameFragment(UnfoldingHeap[this, y_15]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Y(this) (test2.vpr@14.3--16.48) [143589]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Y(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, y_15:=UnfoldingMask[this, y_15] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.y (test2.vpr@14.3--16.48) [143590]"}
        HasDirectPerm(UnfoldingMask, this, y_15);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Y#sm(this):=Heap[null, Y#sm(this)][this, y_15:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, y_15];
}

// ==================================================
// Translation of function getZ
// ==================================================

// Uninterpreted function definitions
function  getZ(Heap: HeapType, this: Ref): int;
function  getZ'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { getZ(Heap, this) }
  getZ(Heap, this) == getZ'(Heap, this) && dummyFunction(getZ#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { getZ'(Heap, this) }
  dummyFunction(getZ#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getZ(Heap, this) } { state(Heap, Mask), getZ#triggerStateless(this), Z#trigger(Heap, Z_2(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> getZ(Heap, this) == Heap[this, z_22]
);

// Framing axioms
function  getZ#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getZ'(Heap, this) }
  state(Heap, Mask) ==> getZ'(Heap, this) == getZ#frame(Heap[null, Z_2(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  getZ#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  getZ#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure getZ#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Z_2(this):=Mask[null, Z_2(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Z(this), write) in this.z)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Z#trigger(UnfoldingHeap, Z_2(this));
      assume UnfoldingHeap[null, Z_2(this)] == FrameFragment(UnfoldingHeap[this, z_22]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Z(this) (test2.vpr@17.3--19.48) [143591]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Z_2(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, z_22:=UnfoldingMask[this, z_22] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.z (test2.vpr@17.3--19.48) [143592]"}
        HasDirectPerm(UnfoldingMask, this, z_22);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Z#sm(this):=Heap[null, Z#sm(this)][this, z_22:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, z_22];
}

// ==================================================
// Translation of predicate X
// ==================================================

type PredicateType_X;
function  X(this: Ref): Field PredicateType_X FrameType;
function  X#sm(this: Ref): Field PredicateType_X PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(X(this)) }
  PredicateMaskField(X(this)) == X#sm(this)
);
axiom (forall this: Ref ::
  { X(this) }
  IsPredicateField(X(this))
);
axiom (forall this: Ref ::
  { X(this) }
  getPredWandId(X(this)) == 0
);
function  X#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  X#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { X(this), X(this2) }
  X(this) == X(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { X#sm(this), X#sm(this2) }
  X#sm(this) == X#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { X#trigger(Heap, X(this)) }
  X#everUsed(X(this))
);

procedure X#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of X
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Y
// ==================================================

type PredicateType_Y;
function  Y(this: Ref): Field PredicateType_Y FrameType;
function  Y#sm(this: Ref): Field PredicateType_Y PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Y(this)) }
  PredicateMaskField(Y(this)) == Y#sm(this)
);
axiom (forall this: Ref ::
  { Y(this) }
  IsPredicateField(Y(this))
);
axiom (forall this: Ref ::
  { Y(this) }
  getPredWandId(Y(this)) == 1
);
function  Y#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Y#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Y(this), Y(this2) }
  Y(this) == Y(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Y#sm(this), Y#sm(this2) }
  Y#sm(this) == Y#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Y#trigger(Heap, Y(this)) }
  Y#everUsed(Y(this))
);

procedure Y#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Y
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, y_15:=Mask[this, y_15] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Z
// ==================================================

type PredicateType_Z;
function  Z_2(this: Ref): Field PredicateType_Z FrameType;
function  Z#sm(this: Ref): Field PredicateType_Z PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Z_2(this)) }
  PredicateMaskField(Z_2(this)) == Z#sm(this)
);
axiom (forall this: Ref ::
  { Z_2(this) }
  IsPredicateField(Z_2(this))
);
axiom (forall this: Ref ::
  { Z_2(this) }
  getPredWandId(Z_2(this)) == 2
);
function  Z#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Z#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Z_2(this), Z_2(this2) }
  Z_2(this) == Z_2(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Z#sm(this), Z#sm(this2) }
  Z#sm(this) == Z#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Z#trigger(Heap, Z_2(this)) }
  Z#everUsed(Z_2(this))
);

procedure Z#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Z
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, z_22:=Mask[this, z_22] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method setX
// ==================================================

procedure setX(this: Ref, v_2: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, X(this):=Mask[null, X(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, X(this):=PostMask[null, X(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of getX(this) == v
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function getX might not hold. There might be insufficient permission to access X(this) (test2.vpr@22.38--22.48) [143593]"}
          NoPerm < perm ==> NoPerm < PostMask[null, X(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume getX(PostHeap, this) == v_2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(X(this), write) -- test2.vpr@24.5--24.31
    assume X#trigger(Heap, X(this));
    assume Heap[null, X(this)] == FrameFragment(Heap[this, x_36]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding X(this) might fail. There might be insufficient permission to access X(this) (test2.vpr@24.5--24.31) [143596]"}
        perm <= Mask[null, X(this)];
    }
    Mask := Mask[null, X(this):=Mask[null, X(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, X(this))) {
        havoc newVersion;
        Heap := Heap[null, X(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.x := v -- test2.vpr@25.5--25.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (test2.vpr@25.5--25.16) [143598]"}
      FullPerm == Mask[this, x_36];
    Heap := Heap[this, x_36:=v_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(X(this), write) -- test2.vpr@26.5--26.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding X(this) might fail. There might be insufficient permission to access this.x (test2.vpr@26.5--26.29) [143601]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    perm := FullPerm;
    Mask := Mask[null, X(this):=Mask[null, X(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume X#trigger(Heap, X(this));
    assume Heap[null, X(this)] == FrameFragment(Heap[this, x_36]);
    if (!HasDirectPerm(Mask, null, X(this))) {
      Heap := Heap[null, X#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, X(this):=freshVersion];
    }
    Heap := Heap[null, X#sm(this):=Heap[null, X#sm(this)][this, x_36:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of setX might not hold. There might be insufficient permission to access X(this) (test2.vpr@22.13--22.57) [143603]"}
        perm <= Mask[null, X(this)];
    }
    Mask := Mask[null, X(this):=Mask[null, X(this)] - perm];
    assert {:msg "  Postcondition of setX might not hold. Assertion getX(this) == v might not hold. (test2.vpr@22.13--22.57) [143604]"}
      getX(Heap, this) == v_2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method check
// ==================================================

procedure check(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, y_15:=Mask[this, y_15] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, z_22:=Mask[this, z_22] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, w_12:=Mask[this, w_12] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume this != null;
    PostMask := PostMask[this, y_15:=PostMask[this, y_15] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.y == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.y (test2.vpr@30.13--30.192) [143605]"}
        HasDirectPerm(PostMask, this, y_15);
    assume PostHeap[this, y_15] == 2;
    perm := FullPerm;
    PostMask := PostMask[null, X(this):=PostMask[null, X(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of getX(this) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function getX might not hold. There might be insufficient permission to access X(this) (test2.vpr@30.81--30.91) [143606]"}
          NoPerm < perm ==> NoPerm < PostMask[null, X(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume getX(PostHeap, this) == 3;
    perm := FullPerm;
    PostMask := PostMask[null, Z_2(this):=PostMask[null, Z_2(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of getZ(this) == 4
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function getZ might not hold. There might be insufficient permission to access Z(this) (test2.vpr@30.129--30.139) [143607]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Z_2(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume getZ(PostHeap, this) == 4;
    perm := FullPerm;
    assume this != null;
    PostMask := PostMask[this, w_12:=PostMask[this, w_12] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.w == 10
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.w (test2.vpr@30.13--30.192) [143608]"}
        HasDirectPerm(PostMask, this, w_12);
    assume PostHeap[this, w_12] == 10;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.x := 1 -- test2.vpr@32.5--32.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (test2.vpr@32.5--32.16) [143609]"}
      FullPerm == Mask[this, x_36];
    Heap := Heap[this, x_36:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.y := 2 -- test2.vpr@33.5--33.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.y (test2.vpr@33.5--33.16) [143610]"}
      FullPerm == Mask[this, y_15];
    Heap := Heap[this, y_15:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.z := 4 -- test2.vpr@34.5--34.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.z (test2.vpr@34.5--34.16) [143611]"}
      FullPerm == Mask[this, z_22];
    Heap := Heap[this, z_22:=4];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.w := 10 -- test2.vpr@35.5--35.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.w (test2.vpr@35.5--35.17) [143612]"}
      FullPerm == Mask[this, w_12];
    Heap := Heap[this, w_12:=10];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(X(this), write) -- test2.vpr@36.5--36.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding X(this) might fail. There might be insufficient permission to access this.x (test2.vpr@36.5--36.29) [143615]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    perm := FullPerm;
    Mask := Mask[null, X(this):=Mask[null, X(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume X#trigger(Heap, X(this));
    assume Heap[null, X(this)] == FrameFragment(Heap[this, x_36]);
    if (!HasDirectPerm(Mask, null, X(this))) {
      Heap := Heap[null, X#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, X(this):=freshVersion];
    }
    Heap := Heap[null, X#sm(this):=Heap[null, X#sm(this)][this, x_36:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Y(this), write) -- test2.vpr@37.5--37.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Y(this) might fail. There might be insufficient permission to access this.y (test2.vpr@37.5--37.29) [143619]"}
        perm <= Mask[this, y_15];
    }
    Mask := Mask[this, y_15:=Mask[this, y_15] - perm];
    perm := FullPerm;
    Mask := Mask[null, Y(this):=Mask[null, Y(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Y#trigger(Heap, Y(this));
    assume Heap[null, Y(this)] == FrameFragment(Heap[this, y_15]);
    if (!HasDirectPerm(Mask, null, Y(this))) {
      Heap := Heap[null, Y#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Y(this):=freshVersion];
    }
    Heap := Heap[null, Y#sm(this):=Heap[null, Y#sm(this)][this, y_15:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Z(this), write) -- test2.vpr@38.5--38.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Z(this) might fail. There might be insufficient permission to access this.z (test2.vpr@38.5--38.29) [143623]"}
        perm <= Mask[this, z_22];
    }
    Mask := Mask[this, z_22:=Mask[this, z_22] - perm];
    perm := FullPerm;
    Mask := Mask[null, Z_2(this):=Mask[null, Z_2(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Z#trigger(Heap, Z_2(this));
    assume Heap[null, Z_2(this)] == FrameFragment(Heap[this, z_22]);
    if (!HasDirectPerm(Mask, null, Z_2(this))) {
      Heap := Heap[null, Z#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Z_2(this):=freshVersion];
    }
    Heap := Heap[null, Z#sm(this):=Heap[null, Z#sm(this)][this, z_22:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: setX(this, 3) -- test2.vpr@39.5--39.18
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method setX might not hold. There might be insufficient permission to access X(this) (test2.vpr@39.5--39.18) [143625]"}
          perm <= Mask[null, X(this)];
      }
      Mask := Mask[null, X(this):=Mask[null, X(this)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, X(this):=Mask[null, X(this)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume getX(Heap, this) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Y(this), write) -- test2.vpr@40.5--40.31
    assume Y#trigger(Heap, Y(this));
    assume Heap[null, Y(this)] == FrameFragment(Heap[this, y_15]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Y(this) might fail. There might be insufficient permission to access Y(this) (test2.vpr@40.5--40.31) [143628]"}
        perm <= Mask[null, Y(this)];
    }
    Mask := Mask[null, Y(this):=Mask[null, Y(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Y(this))) {
        havoc newVersion;
        Heap := Heap[null, Y(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, y_15:=Mask[this, y_15] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of check might not hold. There might be insufficient permission to access this.y (test2.vpr@30.13--30.192) [143630]"}
        perm <= Mask[this, y_15];
    }
    Mask := Mask[this, y_15:=Mask[this, y_15] - perm];
    assert {:msg "  Postcondition of check might not hold. Assertion this.y == 2 might not hold. (test2.vpr@30.13--30.192) [143631]"}
      Heap[this, y_15] == 2;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of check might not hold. There might be insufficient permission to access X(this) (test2.vpr@30.13--30.192) [143632]"}
        perm <= Mask[null, X(this)];
    }
    Mask := Mask[null, X(this):=Mask[null, X(this)] - perm];
    assert {:msg "  Postcondition of check might not hold. Assertion getX(this) == 3 might not hold. (test2.vpr@30.13--30.192) [143633]"}
      getX(Heap, this) == 3;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of check might not hold. There might be insufficient permission to access Z(this) (test2.vpr@30.13--30.192) [143634]"}
        perm <= Mask[null, Z_2(this)];
    }
    Mask := Mask[null, Z_2(this):=Mask[null, Z_2(this)] - perm];
    assert {:msg "  Postcondition of check might not hold. Assertion getZ(this) == 4 might not hold. (test2.vpr@30.13--30.192) [143635]"}
      getZ(Heap, this) == 4;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of check might not hold. There might be insufficient permission to access this.w (test2.vpr@30.13--30.192) [143636]"}
        perm <= Mask[this, w_12];
    }
    Mask := Mask[this, w_12:=Mask[this, w_12] - perm];
    assert {:msg "  Postcondition of check might not hold. Assertion this.w == 10 might not hold. (test2.vpr@30.13--30.192) [143637]"}
      Heap[this, w_12] == 10;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method check1
// ==================================================

procedure check1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var freshVersion: FrameType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, X(this):=Mask[null, X(this)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, y_15:=Mask[this, y_15] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.y == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.y (test2.vpr@43.14--43.76) [143638]"}
        HasDirectPerm(Mask, this, y_15);
    assume Heap[this, y_15] == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume this != null;
    PostMask := PostMask[this, y_15:=PostMask[this, y_15] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.y == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.y (test2.vpr@44.13--44.102) [143639]"}
        HasDirectPerm(PostMask, this, y_15);
    assume PostHeap[this, y_15] == 1;
    perm := FullPerm;
    PostMask := PostMask[null, X(this):=PostMask[null, X(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of getX(this) == 200
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function getX might not hold. There might be insufficient permission to access X(this) (test2.vpr@44.81--44.91) [143640]"}
          NoPerm < perm ==> NoPerm < PostMask[null, X(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume getX(PostHeap, this) == 200;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: setX(this, 10) -- test2.vpr@46.5--46.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method setX might not hold. There might be insufficient permission to access X(this) (test2.vpr@46.5--46.19) [143641]"}
          perm <= Mask[null, X(this)];
      }
      Mask := Mask[null, X(this):=Mask[null, X(this)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, X(this):=Mask[null, X(this)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume getX(Heap, this) == 10;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Y(this), write) -- test2.vpr@47.5--47.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Y(this) might fail. There might be insufficient permission to access this.y (test2.vpr@47.5--47.29) [143644]"}
        perm <= Mask[this, y_15];
    }
    Mask := Mask[this, y_15:=Mask[this, y_15] - perm];
    perm := FullPerm;
    Mask := Mask[null, Y(this):=Mask[null, Y(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Y#trigger(Heap, Y(this));
    assume Heap[null, Y(this)] == FrameFragment(Heap[this, y_15]);
    if (!HasDirectPerm(Mask, null, Y(this))) {
      Heap := Heap[null, Y#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Y(this):=freshVersion];
    }
    Heap := Heap[null, Y#sm(this):=Heap[null, Y#sm(this)][this, y_15:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: setX(this, 100) -- test2.vpr@48.5--48.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method setX might not hold. There might be insufficient permission to access X(this) (test2.vpr@48.5--48.20) [143646]"}
          perm <= Mask[null, X(this)];
      }
      Mask := Mask[null, X(this):=Mask[null, X(this)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, X(this):=Mask[null, X(this)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume getX(Heap, this) == 100;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Y(this), write) -- test2.vpr@49.5--49.31
    assume Y#trigger(Heap, Y(this));
    assume Heap[null, Y(this)] == FrameFragment(Heap[this, y_15]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Y(this) might fail. There might be insufficient permission to access Y(this) (test2.vpr@49.5--49.31) [143649]"}
        perm <= Mask[null, Y(this)];
    }
    Mask := Mask[null, Y(this):=Mask[null, Y(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Y(this))) {
        havoc newVersion;
        Heap := Heap[null, Y(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, y_15:=Mask[this, y_15] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Y(this), write) -- test2.vpr@50.5--50.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Y(this) might fail. There might be insufficient permission to access this.y (test2.vpr@50.5--50.29) [143653]"}
        perm <= Mask[this, y_15];
    }
    Mask := Mask[this, y_15:=Mask[this, y_15] - perm];
    perm := FullPerm;
    Mask := Mask[null, Y(this):=Mask[null, Y(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Y#trigger(Heap, Y(this));
    assume Heap[null, Y(this)] == FrameFragment(Heap[this, y_15]);
    if (!HasDirectPerm(Mask, null, Y(this))) {
      Heap := Heap[null, Y#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Y(this):=freshVersion];
    }
    Heap := Heap[null, Y#sm(this):=Heap[null, Y#sm(this)][this, y_15:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Y(this), write) -- test2.vpr@51.5--51.31
    assume Y#trigger(Heap, Y(this));
    assume Heap[null, Y(this)] == FrameFragment(Heap[this, y_15]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Y(this) might fail. There might be insufficient permission to access Y(this) (test2.vpr@51.5--51.31) [143657]"}
        perm <= Mask[null, Y(this)];
    }
    Mask := Mask[null, Y(this):=Mask[null, Y(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Y(this))) {
        havoc newVersion;
        Heap := Heap[null, Y(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, y_15:=Mask[this, y_15] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: setX(this, 200) -- test2.vpr@52.5--52.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method setX might not hold. There might be insufficient permission to access X(this) (test2.vpr@52.5--52.20) [143659]"}
          perm <= Mask[null, X(this)];
      }
      Mask := Mask[null, X(this):=Mask[null, X(this)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, X(this):=Mask[null, X(this)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume getX(Heap, this) == 200;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of check1 might not hold. There might be insufficient permission to access this.y (test2.vpr@44.13--44.102) [143660]"}
        perm <= Mask[this, y_15];
    }
    Mask := Mask[this, y_15:=Mask[this, y_15] - perm];
    assert {:msg "  Postcondition of check1 might not hold. Assertion this.y == 1 might not hold. (test2.vpr@44.13--44.102) [143661]"}
      Heap[this, y_15] == 1;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of check1 might not hold. There might be insufficient permission to access X(this) (test2.vpr@44.13--44.102) [143662]"}
        perm <= Mask[null, X(this)];
    }
    Mask := Mask[null, X(this):=Mask[null, X(this)] - perm];
    assert {:msg "  Postcondition of check1 might not hold. Assertion getX(this) == 200 might not hold. (test2.vpr@44.13--44.102) [143663]"}
      getX(Heap, this) == 200;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}