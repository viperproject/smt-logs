// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:04
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0161.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0161-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 9: body
// - height 8: pre
// - height 7: pre2Abstract
// - height 6: pre1
// - height 5: post1Abstract
// - height 4: pre3Abstract
// - height 3: pre1Abstract
// - height 2: post2Abstract
// - height 1: pre2
// - height 0: pre3
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

const unique x_42: Field NormalField int;
axiom !IsPredicateField(x_42);
axiom !IsWandField(x_42);

// ==================================================
// Translation of function pre
// ==================================================

// Uninterpreted function definitions
function  pre(Heap: HeapType, this: Ref): int;
function  pre'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { pre(Heap, this) }
  pre(Heap, this) == pre'(Heap, this) && dummyFunction(pre#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { pre'(Heap, this) }
  dummyFunction(pre#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 8 ==> this != null && Heap[this, x_42] == 0 ==> pre(Heap, this) == 1
);

// Framing axioms
function  pre#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre'(Heap, this) }
  state(Heap, Mask) ==> pre'(Heap, this) == pre#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  pre#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  pre#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure pre#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 8;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (0161.vpr@8.12--8.39) [77970]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function body
// ==================================================

// Uninterpreted function definitions
function  body(Heap: HeapType, this: Ref): int;
function  body'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { body(Heap, this) }
  body(Heap, this) == body'(Heap, this) && dummyFunction(body#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { body'(Heap, this) }
  dummyFunction(body#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), body(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 9 ==> this != null ==> body(Heap, this) == Heap[this, x_42]
);

// Framing axioms
function  body#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), body'(Heap, this) }
  state(Heap, Mask) ==> body'(Heap, this) == body#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  body#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  body#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure body#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 9;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of this.x
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.x (0161.vpr@14.1--18.2) [77971]"}
        HasDirectPerm(Mask, this, x_42);
  
  // -- Translate function body
    Result := Heap[this, x_42];
}

// ==================================================
// Translation of function pre1
// ==================================================

// Uninterpreted function definitions
function  pre1(Heap: HeapType, this: Ref): int;
function  pre1'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { pre1(Heap, this) }
  pre1(Heap, this) == pre1'(Heap, this) && dummyFunction(pre1#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { pre1'(Heap, this) }
  dummyFunction(pre1#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> this != null && Heap[this, x_42] == 0 ==> pre1(Heap, this) == 1
);

// Framing axioms
function  pre1#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre1'(Heap, this) }
  state(Heap, Mask) ==> pre1'(Heap, this) == pre1#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  pre1#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  pre1#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure pre1#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (0161.vpr@26.12--26.39) [77972]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function pre1Abstract
// ==================================================

// Uninterpreted function definitions
function  pre1Abstract(Heap: HeapType, this: Ref): int;
function  pre1Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { pre1Abstract(Heap, this) }
  pre1Abstract(Heap, this) == pre1Abstract'(Heap, this) && dummyFunction(pre1Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { pre1Abstract'(Heap, this) }
  dummyFunction(pre1Abstract#triggerStateless(this))
);

// Framing axioms
function  pre1Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre1Abstract'(Heap, this) }
  state(Heap, Mask) ==> pre1Abstract'(Heap, this) == pre1Abstract#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  pre1Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  pre1Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure pre1Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (0161.vpr@33.12--33.39) [77973]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function pre2
// ==================================================

// Uninterpreted function definitions
function  pre2(Heap: HeapType, this: Ref): int;
function  pre2'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { pre2(Heap, this) }
  pre2(Heap, this) == pre2'(Heap, this) && dummyFunction(pre2#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { pre2'(Heap, this) }
  dummyFunction(pre2#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre2(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> this != null && Heap[this, x_42] == 0 ==> pre2(Heap, this) == 1
);

// Framing axioms
function  pre2#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre2'(Heap, this) }
  state(Heap, Mask) ==> pre2'(Heap, this) == pre2#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  pre2#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  pre2#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure pre2#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (0161.vpr@38.12--39.23) [77974]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function pre2Abstract
// ==================================================

// Uninterpreted function definitions
function  pre2Abstract(Heap: HeapType, this: Ref): int;
function  pre2Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { pre2Abstract(Heap, this) }
  pre2Abstract(Heap, this) == pre2Abstract'(Heap, this) && dummyFunction(pre2Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { pre2Abstract'(Heap, this) }
  dummyFunction(pre2Abstract#triggerStateless(this))
);

// Framing axioms
function  pre2Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre2Abstract'(Heap, this) }
  state(Heap, Mask) ==> pre2Abstract'(Heap, this) == pre2Abstract#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  pre2Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  pre2Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure pre2Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 7;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (0161.vpr@46.12--47.23) [77975]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function pre3
// ==================================================

// Uninterpreted function definitions
function  pre3(Heap: HeapType, this: Ref): int;
function  pre3'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { pre3(Heap, this) }
  pre3(Heap, this) == pre3'(Heap, this) && dummyFunction(pre3#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { pre3'(Heap, this) }
  dummyFunction(pre3#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre3(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this != null && Heap[this, x_42] == 0 ==> pre3(Heap, this) == 1
);

// Framing axioms
function  pre3#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre3'(Heap, this) }
  state(Heap, Mask) ==> pre3'(Heap, this) == pre3#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  pre3#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  pre3#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure pre3#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (0161.vpr@53.12--53.23) [77976]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function pre3Abstract
// ==================================================

// Uninterpreted function definitions
function  pre3Abstract(Heap: HeapType, this: Ref): int;
function  pre3Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { pre3Abstract(Heap, this) }
  pre3Abstract(Heap, this) == pre3Abstract'(Heap, this) && dummyFunction(pre3Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { pre3Abstract'(Heap, this) }
  dummyFunction(pre3Abstract#triggerStateless(this))
);

// Framing axioms
function  pre3Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), pre3Abstract'(Heap, this) }
  state(Heap, Mask) ==> pre3Abstract'(Heap, this) == pre3Abstract#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  pre3Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  pre3Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure pre3Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (0161.vpr@61.12--61.23) [77977]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function post1Abstract
// ==================================================

// Uninterpreted function definitions
function  post1Abstract(Heap: HeapType, this: Ref): int;
function  post1Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { post1Abstract(Heap, this) }
  post1Abstract(Heap, this) == post1Abstract'(Heap, this) && dummyFunction(post1Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { post1Abstract'(Heap, this) }
  dummyFunction(post1Abstract#triggerStateless(this))
);

// Framing axioms
function  post1Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), post1Abstract'(Heap, this) }
  state(Heap, Mask) ==> post1Abstract'(Heap, this) == post1Abstract#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), post1Abstract'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 5 || post1Abstract#trigger(EmptyFrame, this)) ==> this != null ==> Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  post1Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  post1Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure post1Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (0161.vpr@66.11--66.22) [77978]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function post2Abstract
// ==================================================

// Uninterpreted function definitions
function  post2Abstract(Heap: HeapType, this: Ref): int;
function  post2Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { post2Abstract(Heap, this) }
  post2Abstract(Heap, this) == post2Abstract'(Heap, this) && dummyFunction(post2Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { post2Abstract'(Heap, this) }
  dummyFunction(post2Abstract#triggerStateless(this))
);

// Framing axioms
function  post2Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), post2Abstract'(Heap, this) }
  state(Heap, Mask) ==> post2Abstract'(Heap, this) == post2Abstract#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), post2Abstract'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || post2Abstract#trigger(EmptyFrame, this)) ==> this != null ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  post2Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  post2Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure post2Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (0161.vpr@71.11--72.22) [77979]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
}