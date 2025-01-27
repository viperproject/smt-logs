// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/replaceables/complex/Inputs/wrappers.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/replaceables/complex/Inputs/wrappers-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/replaceables/complex/Inputs/wrappers.dfy

const $$Language$Dafny: bool
uses {
axiom $$Language$Dafny;
}

type Ty;

type Bv0 = int;

const unique TBool: Ty
uses {
axiom Tag(TBool) == TagBool;
}

const unique TChar: Ty
uses {
axiom Tag(TChar) == TagChar;
}

const unique TInt: Ty
uses {
axiom Tag(TInt) == TagInt;
}

const unique TReal: Ty
uses {
axiom Tag(TReal) == TagReal;
}

const unique TORDINAL: Ty
uses {
axiom Tag(TORDINAL) == TagORDINAL;
}

revealed function TBitvector(int) : Ty;

axiom (forall w: int :: { TBitvector(w) } Inv0_TBitvector(TBitvector(w)) == w);

revealed function TSet(Ty) : Ty;

axiom (forall t: Ty :: { TSet(t) } Inv0_TSet(TSet(t)) == t);

axiom (forall t: Ty :: { TSet(t) } Tag(TSet(t)) == TagSet);

revealed function TISet(Ty) : Ty;

axiom (forall t: Ty :: { TISet(t) } Inv0_TISet(TISet(t)) == t);

axiom (forall t: Ty :: { TISet(t) } Tag(TISet(t)) == TagISet);

revealed function TMultiSet(Ty) : Ty;

axiom (forall t: Ty :: { TMultiSet(t) } Inv0_TMultiSet(TMultiSet(t)) == t);

axiom (forall t: Ty :: { TMultiSet(t) } Tag(TMultiSet(t)) == TagMultiSet);

revealed function TSeq(Ty) : Ty;

axiom (forall t: Ty :: { TSeq(t) } Inv0_TSeq(TSeq(t)) == t);

axiom (forall t: Ty :: { TSeq(t) } Tag(TSeq(t)) == TagSeq);

revealed function TMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv0_TMap(TMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv1_TMap(TMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Tag(TMap(t, u)) == TagMap);

revealed function TIMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv0_TIMap(TIMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv1_TIMap(TIMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Tag(TIMap(t, u)) == TagIMap);

revealed function Inv0_TBitvector(Ty) : int;

revealed function Inv0_TSet(Ty) : Ty;

revealed function Inv0_TISet(Ty) : Ty;

revealed function Inv0_TSeq(Ty) : Ty;

revealed function Inv0_TMultiSet(Ty) : Ty;

revealed function Inv0_TMap(Ty) : Ty;

revealed function Inv1_TMap(Ty) : Ty;

revealed function Inv0_TIMap(Ty) : Ty;

revealed function Inv1_TIMap(Ty) : Ty;

type TyTag;

revealed function Tag(Ty) : TyTag;

const unique TagBool: TyTag;

const unique TagChar: TyTag;

const unique TagInt: TyTag;

const unique TagReal: TyTag;

const unique TagORDINAL: TyTag;

const unique TagSet: TyTag;

const unique TagISet: TyTag;

const unique TagMultiSet: TyTag;

const unique TagSeq: TyTag;

const unique TagMap: TyTag;

const unique TagIMap: TyTag;

const unique TagClass: TyTag;

type TyTagFamily;

revealed function TagFamily(Ty) : TyTagFamily;

revealed function {:identity} Lit<T>(x: T) : T
uses {
axiom (forall<T> x: T :: {:identity} { Lit(x): T } Lit(x): T == x);
}

axiom (forall<T> x: T :: { $Box(Lit(x)) } $Box(Lit(x)) == Lit($Box(x)));

revealed function {:identity} LitInt(x: int) : int
uses {
axiom (forall x: int :: {:identity} { LitInt(x): int } LitInt(x): int == x);
}

axiom (forall x: int :: { $Box(LitInt(x)) } $Box(LitInt(x)) == Lit($Box(x)));

revealed function {:identity} LitReal(x: real) : real
uses {
axiom (forall x: real :: {:identity} { LitReal(x): real } LitReal(x): real == x);
}

axiom (forall x: real :: { $Box(LitReal(x)) } $Box(LitReal(x)) == Lit($Box(x)));

revealed function {:inline} char#IsChar(n: int) : bool
{
  (0 <= n && n < 55296) || (57344 <= n && n < 1114112)
}

type char;

revealed function char#FromInt(int) : char;

axiom (forall n: int :: 
  { char#FromInt(n) } 
  char#IsChar(n) ==> char#ToInt(char#FromInt(n)) == n);

revealed function char#ToInt(char) : int;

axiom (forall ch: char :: 
  { char#ToInt(ch) } 
  char#FromInt(char#ToInt(ch)) == ch && char#IsChar(char#ToInt(ch)));

revealed function char#Plus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Plus(a, b) } 
  char#Plus(a, b) == char#FromInt(char#ToInt(a) + char#ToInt(b)));

revealed function char#Minus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Minus(a, b) } 
  char#Minus(a, b) == char#FromInt(char#ToInt(a) - char#ToInt(b)));

type ref;

const null: ref;

type Box;

const $ArbitraryBoxValue: Box;

revealed function $Box<T>(T) : Box;

revealed function $Unbox<T>(Box) : T;

axiom (forall<T> x: T :: { $Box(x) } $Unbox($Box(x)) == x);

axiom (forall<T> x: Box :: { $Unbox(x): T } $Box($Unbox(x): T) == x);

revealed function $IsBox(Box, Ty) : bool;

revealed function $IsAllocBox(Box, Ty, Heap) : bool;

axiom (forall bx: Box :: 
  { $IsBox(bx, TInt) } 
  $IsBox(bx, TInt) ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, TInt));

axiom (forall bx: Box :: 
  { $IsBox(bx, TReal) } 
  $IsBox(bx, TReal)
     ==> $Box($Unbox(bx): real) == bx && $Is($Unbox(bx): real, TReal));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBool) } 
  $IsBox(bx, TBool)
     ==> $Box($Unbox(bx): bool) == bx && $Is($Unbox(bx): bool, TBool));

axiom (forall bx: Box :: 
  { $IsBox(bx, TChar) } 
  $IsBox(bx, TChar)
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, TChar));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(0)) } 
  $IsBox(bx, TBitvector(0))
     ==> $Box($Unbox(bx): Bv0) == bx && $Is($Unbox(bx): Bv0, TBitvector(0)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSet(t)) } 
  $IsBox(bx, TSet(t))
     ==> $Box($Unbox(bx): Set) == bx && $Is($Unbox(bx): Set, TSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TISet(t)) } 
  $IsBox(bx, TISet(t))
     ==> $Box($Unbox(bx): ISet) == bx && $Is($Unbox(bx): ISet, TISet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TMultiSet(t)) } 
  $IsBox(bx, TMultiSet(t))
     ==> $Box($Unbox(bx): MultiSet) == bx && $Is($Unbox(bx): MultiSet, TMultiSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSeq(t)) } 
  $IsBox(bx, TSeq(t))
     ==> $Box($Unbox(bx): Seq) == bx && $Is($Unbox(bx): Seq, TSeq(t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TMap(s, t)) } 
  $IsBox(bx, TMap(s, t))
     ==> $Box($Unbox(bx): Map) == bx && $Is($Unbox(bx): Map, TMap(s, t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TIMap(s, t)) } 
  $IsBox(bx, TIMap(s, t))
     ==> $Box($Unbox(bx): IMap) == bx && $Is($Unbox(bx): IMap, TIMap(s, t)));

axiom (forall<T> v: T, t: Ty :: 
  { $IsBox($Box(v), t) } 
  $IsBox($Box(v), t) <==> $Is(v, t));

axiom (forall<T> v: T, t: Ty, h: Heap :: 
  { $IsAllocBox($Box(v), t, h) } 
  $IsAllocBox($Box(v), t, h) <==> $IsAlloc(v, t, h));

revealed function $Is<T>(T, Ty) : bool;

axiom (forall v: int :: { $Is(v, TInt) } $Is(v, TInt));

axiom (forall v: real :: { $Is(v, TReal) } $Is(v, TReal));

axiom (forall v: bool :: { $Is(v, TBool) } $Is(v, TBool));

axiom (forall v: char :: { $Is(v, TChar) } $Is(v, TChar));

axiom (forall v: ORDINAL :: { $Is(v, TORDINAL) } $Is(v, TORDINAL));

axiom (forall v: Bv0 :: { $Is(v, TBitvector(0)) } $Is(v, TBitvector(0)));

axiom (forall v: Set, t0: Ty :: 
  { $Is(v, TSet(t0)) } 
  $Is(v, TSet(t0))
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: ISet, t0: Ty :: 
  { $Is(v, TISet(t0)) } 
  $Is(v, TISet(t0)) <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0))
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0)) ==> $IsGoodMultiSet(v));

axiom (forall v: Seq, t0: Ty :: 
  { $Is(v, TSeq(t0)) } 
  $Is(v, TSeq(t0))
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsBox(Seq#Index(v, i), t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsBox(Map#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     ==> $Is(Map#Domain(v), TSet(t0))
       && $Is(Map#Values(v), TSet(t1))
       && $Is(Map#Items(v), TSet(Tclass._System.Tuple2(t0, t1))));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx] ==> $IsBox(IMap#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     ==> $Is(IMap#Domain(v), TISet(t0))
       && $Is(IMap#Values(v), TISet(t1))
       && $Is(IMap#Items(v), TISet(Tclass._System.Tuple2(t0, t1))));

revealed function $IsAlloc<T>(T, Ty, Heap) : bool;

axiom (forall h: Heap, v: int :: { $IsAlloc(v, TInt, h) } $IsAlloc(v, TInt, h));

axiom (forall h: Heap, v: real :: { $IsAlloc(v, TReal, h) } $IsAlloc(v, TReal, h));

axiom (forall h: Heap, v: bool :: { $IsAlloc(v, TBool, h) } $IsAlloc(v, TBool, h));

axiom (forall h: Heap, v: char :: { $IsAlloc(v, TChar, h) } $IsAlloc(v, TChar, h));

axiom (forall h: Heap, v: ORDINAL :: 
  { $IsAlloc(v, TORDINAL, h) } 
  $IsAlloc(v, TORDINAL, h));

axiom (forall v: Bv0, h: Heap :: 
  { $IsAlloc(v, TBitvector(0), h) } 
  $IsAlloc(v, TBitvector(0), h));

axiom (forall v: Set, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSet(t0), h) } 
  $IsAlloc(v, TSet(t0), h)
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: ISet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TISet(t0), h) } 
  $IsAlloc(v, TISet(t0), h)
     <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: MultiSet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TMultiSet(t0), h) } 
  $IsAlloc(v, TMultiSet(t0), h)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: Seq, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSeq(t0), h) } 
  $IsAlloc(v, TSeq(t0), h)
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsAllocBox(Seq#Index(v, i), t0, h)));

axiom (forall v: Map, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TMap(t0, t1), h) } 
  $IsAlloc(v, TMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsAllocBox(Map#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

axiom (forall v: IMap, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TIMap(t0, t1), h) } 
  $IsAlloc(v, TIMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx]
         ==> $IsAllocBox(IMap#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

revealed function $AlwaysAllocated(Ty) : bool;

axiom (forall ty: Ty :: 
  { $AlwaysAllocated(ty) } 
  $AlwaysAllocated(ty)
     ==> (forall h: Heap, v: Box :: 
      { $IsAllocBox(v, ty, h) } 
      $IsBox(v, ty) ==> $IsAllocBox(v, ty, h)));

revealed function $OlderTag(Heap) : bool;

type ClassName;

const unique class._System.int: ClassName;

const unique class._System.bool: ClassName;

const unique class._System.set: ClassName;

const unique class._System.seq: ClassName;

const unique class._System.multiset: ClassName;

revealed function Tclass._System.object?() : Ty
uses {
// Tclass._System.object? Tag
axiom Tag(Tclass._System.object?()) == Tagclass._System.object?
   && TagFamily(Tclass._System.object?()) == tytagFamily$object;
}

revealed function Tclass._System.Tuple2(Ty, Ty) : Ty;

revealed function dtype(ref) : Ty;

revealed function TypeTuple(a: ClassName, b: ClassName) : ClassName;

revealed function TypeTupleCar(ClassName) : ClassName;

revealed function TypeTupleCdr(ClassName) : ClassName;

axiom (forall a: ClassName, b: ClassName :: 
  { TypeTuple(a, b) } 
  TypeTupleCar(TypeTuple(a, b)) == a && TypeTupleCdr(TypeTuple(a, b)) == b);

type HandleType;

revealed function SetRef_to_SetBox(s: [ref]bool) : Set;

axiom (forall s: [ref]bool, bx: Box :: 
  { Set#IsMember(SetRef_to_SetBox(s), bx) } 
  Set#IsMember(SetRef_to_SetBox(s), bx) == s[$Unbox(bx): ref]);

axiom (forall s: [ref]bool :: 
  { SetRef_to_SetBox(s) } 
  $Is(SetRef_to_SetBox(s), TSet(Tclass._System.object?())));

revealed function Apply1(Ty, Ty, Heap, HandleType, Box) : Box;

type DatatypeType;

type DtCtorId;

revealed function DatatypeCtorId(DatatypeType) : DtCtorId;

revealed function DtRank(DatatypeType) : int;

revealed function BoxRank(Box) : int;

axiom (forall d: DatatypeType :: { BoxRank($Box(d)) } BoxRank($Box(d)) == DtRank(d));

type ORDINAL = Box;

revealed function ORD#IsNat(ORDINAL) : bool;

revealed function ORD#Offset(ORDINAL) : int;

axiom (forall o: ORDINAL :: { ORD#Offset(o) } 0 <= ORD#Offset(o));

revealed function {:inline} ORD#IsLimit(o: ORDINAL) : bool
{
  ORD#Offset(o) == 0
}

revealed function {:inline} ORD#IsSucc(o: ORDINAL) : bool
{
  0 < ORD#Offset(o)
}

revealed function ORD#FromNat(int) : ORDINAL;

axiom (forall n: int :: 
  { ORD#FromNat(n) } 
  0 <= n ==> ORD#IsNat(ORD#FromNat(n)) && ORD#Offset(ORD#FromNat(n)) == n);

axiom (forall o: ORDINAL :: 
  { ORD#Offset(o) } { ORD#IsNat(o) } 
  ORD#IsNat(o) ==> o == ORD#FromNat(ORD#Offset(o)));

revealed function ORD#Less(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p) } 
  (ORD#Less(o, p) ==> o != p)
     && (ORD#IsNat(o) && !ORD#IsNat(p) ==> ORD#Less(o, p))
     && (ORD#IsNat(o) && ORD#IsNat(p)
       ==> ORD#Less(o, p) == (ORD#Offset(o) < ORD#Offset(p)))
     && (ORD#Less(o, p) && ORD#IsNat(p) ==> ORD#IsNat(o)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, o) } 
  ORD#Less(o, p) || o == p || ORD#Less(p, o));

axiom (forall o: ORDINAL, p: ORDINAL, r: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, r) } { ORD#Less(o, p), ORD#Less(o, r) } 
  ORD#Less(o, p) && ORD#Less(p, r) ==> ORD#Less(o, r));

revealed function ORD#LessThanLimit(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#LessThanLimit(o, p) } 
  ORD#LessThanLimit(o, p) == ORD#Less(o, p));

revealed function ORD#Plus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (ORD#IsNat(ORD#Plus(o, p)) ==> ORD#IsNat(o) && ORD#IsNat(p))
     && (ORD#IsNat(p)
       ==> ORD#IsNat(ORD#Plus(o, p)) == ORD#IsNat(o)
         && ORD#Offset(ORD#Plus(o, p)) == ORD#Offset(o) + ORD#Offset(p)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#Plus(o, p) || ORD#Less(o, ORD#Plus(o, p)))
     && (p == ORD#Plus(o, p) || ORD#Less(p, ORD#Plus(o, p))));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#FromNat(0) ==> ORD#Plus(o, p) == p)
     && (p == ORD#FromNat(0) ==> ORD#Plus(o, p) == o));

revealed function ORD#Minus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> ORD#IsNat(ORD#Minus(o, p)) == ORD#IsNat(o)
       && ORD#Offset(ORD#Minus(o, p)) == ORD#Offset(o) - ORD#Offset(p));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> (p == ORD#FromNat(0) && ORD#Minus(o, p) == o)
       || (p != ORD#FromNat(0) && ORD#Less(ORD#Minus(o, p), o)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n
     ==> ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Plus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && m + n <= ORD#Offset(o)
     ==> ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Minus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(n - m))));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(n - m))));

const $ModuleContextHeight: int;

const $FunctionContextHeight: int;

type LayerType;

const $LZ: LayerType;

revealed function $LS(LayerType) : LayerType;

revealed function AsFuelBottom(LayerType) : LayerType;

revealed function AtLayer<A>([LayerType]A, LayerType) : A;

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, ly) } 
  AtLayer(f, ly) == f[ly]);

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, $LS(ly)) } 
  AtLayer(f, $LS(ly)) == AtLayer(f, ly));

type Field;

revealed function FDim(Field) : int
uses {
axiom FDim(alloc) == 0;
}

revealed function IndexField(int) : Field;

axiom (forall i: int :: { IndexField(i) } FDim(IndexField(i)) == 1);

revealed function IndexField_Inverse(Field) : int;

axiom (forall i: int :: { IndexField(i) } IndexField_Inverse(IndexField(i)) == i);

revealed function MultiIndexField(Field, int) : Field;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  FDim(MultiIndexField(f, i)) == FDim(f) + 1);

revealed function MultiIndexField_Inverse0(Field) : Field;

revealed function MultiIndexField_Inverse1(Field) : int;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  MultiIndexField_Inverse0(MultiIndexField(f, i)) == f
     && MultiIndexField_Inverse1(MultiIndexField(f, i)) == i);

revealed function DeclType(Field) : ClassName;

type NameFamily;

revealed function DeclName(Field) : NameFamily
uses {
axiom DeclName(alloc) == allocName;
}

revealed function FieldOfDecl(ClassName, NameFamily) : Field;

axiom (forall cl: ClassName, nm: NameFamily :: 
  { FieldOfDecl(cl, nm): Field } 
  DeclType(FieldOfDecl(cl, nm): Field) == cl
     && DeclName(FieldOfDecl(cl, nm): Field) == nm);

revealed function $IsGhostField(Field) : bool
uses {
axiom $IsGhostField(alloc);
}

axiom (forall h: Heap, k: Heap :: 
  { $HeapSuccGhost(h, k) } 
  $HeapSuccGhost(h, k)
     ==> $HeapSucc(h, k)
       && (forall o: ref, f: Field :: 
        { read(k, o, f) } 
        !$IsGhostField(f) ==> read(h, o, f) == read(k, o, f)));

axiom (forall<T> h: Heap, k: Heap, v: T, t: Ty :: 
  { $HeapSucc(h, k), $IsAlloc(v, t, h) } 
  $HeapSucc(h, k) ==> $IsAlloc(v, t, h) ==> $IsAlloc(v, t, k));

axiom (forall h: Heap, k: Heap, bx: Box, t: Ty :: 
  { $HeapSucc(h, k), $IsAllocBox(bx, t, h) } 
  $HeapSucc(h, k) ==> $IsAllocBox(bx, t, h) ==> $IsAllocBox(bx, t, k));

const unique alloc: Field;

const unique allocName: NameFamily;

revealed function _System.array.Length(a: ref) : int;

axiom (forall o: ref :: { _System.array.Length(o) } 0 <= _System.array.Length(o));

revealed function Int(x: real) : int
uses {
axiom (forall x: real :: { Int(x): int } Int(x): int == int(x));
}

revealed function Real(x: int) : real
uses {
axiom (forall x: int :: { Real(x): real } Real(x): real == real(x));
}

axiom (forall i: int :: { Int(Real(i)) } Int(Real(i)) == i);

revealed function {:inline} _System.real.Floor(x: real) : int
{
  Int(x)
}

type Heap = [ref][Field]Box;

revealed function {:inline} read(H: Heap, r: ref, f: Field) : Box
{
  H[r][f]
}

revealed function {:inline} update(H: Heap, r: ref, f: Field, v: Box) : Heap
{
  H[r := H[r][f := v]]
}

revealed function $IsGoodHeap(Heap) : bool;

revealed function $IsHeapAnchor(Heap) : bool;

var $Heap: Heap where $IsGoodHeap($Heap) && $IsHeapAnchor($Heap);

const $OneHeap: Heap
uses {
axiom $IsGoodHeap($OneHeap);
}

revealed function $HeapSucc(Heap, Heap) : bool;

axiom (forall h: Heap, r: ref, f: Field, x: Box :: 
  { update(h, r, f, x) } 
  $IsGoodHeap(update(h, r, f, x)) ==> $HeapSucc(h, update(h, r, f, x)));

axiom (forall a: Heap, b: Heap, c: Heap :: 
  { $HeapSucc(a, b), $HeapSucc(b, c) } 
  a != c ==> $HeapSucc(a, b) && $HeapSucc(b, c) ==> $HeapSucc(a, c));

axiom (forall h: Heap, k: Heap :: 
  { $HeapSucc(h, k) } 
  $HeapSucc(h, k)
     ==> (forall o: ref :: 
      { read(k, o, alloc) } 
      $Unbox(read(h, o, alloc)) ==> $Unbox(read(k, o, alloc))));

revealed function $HeapSuccGhost(Heap, Heap) : bool;

procedure $YieldHavoc(this: ref, rds: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      $o == this || Set#IsMember(rds, $Box($o)) || Set#IsMember(nw, $Box($o))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc0(this: ref, rds: Set, modi: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      Set#IsMember(rds, $Box($o)) && !Set#IsMember(modi, $Box($o)) && $o != this
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc1(this: ref, modi: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || $o == this
         || Set#IsMember(modi, $Box($o))
         || Set#IsMember(nw, $Box($o)));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterCollectNewObjects(prevHeap: Heap, newHeap: Heap, this: ref, NW: Field) returns (s: Set);
  ensures (forall bx: Box :: 
    { Set#IsMember(s, bx) } 
    Set#IsMember(s, bx)
       <==> Set#IsMember($Unbox(read(newHeap, this, NW)): Set, bx)
         || (
          $Unbox(bx) != null
           && !$Unbox(read(prevHeap, $Unbox(bx): ref, alloc))
           && $Unbox(read(newHeap, $Unbox(bx): ref, alloc))));



type Set;

revealed function Set#Card(s: Set) : int;

axiom (forall s: Set :: { Set#Card(s) } 0 <= Set#Card(s));

revealed function Set#Empty() : Set;

revealed function Set#IsMember(s: Set, o: Box) : bool;

axiom (forall o: Box :: 
  { Set#IsMember(Set#Empty(), o) } 
  !Set#IsMember(Set#Empty(), o));

axiom (forall s: Set :: 
  { Set#Card(s) } 
  (Set#Card(s) == 0 <==> s == Set#Empty())
     && (Set#Card(s) != 0
       ==> (exists x: Box :: { Set#IsMember(s, x) } Set#IsMember(s, x))));

revealed function Set#UnionOne(s: Set, o: Box) : Set;

axiom (forall a: Set, x: Box, o: Box :: 
  { Set#IsMember(Set#UnionOne(a, x), o) } 
  Set#IsMember(Set#UnionOne(a, x), o) <==> o == x || Set#IsMember(a, o));

axiom (forall a: Set, x: Box :: 
  { Set#UnionOne(a, x) } 
  Set#IsMember(Set#UnionOne(a, x), x));

axiom (forall a: Set, x: Box, y: Box :: 
  { Set#UnionOne(a, x), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#UnionOne(a, x), y));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  !Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

revealed function Set#Union(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Union(a, b), o) } 
  Set#IsMember(Set#Union(a, b), o) <==> Set#IsMember(a, o) || Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, b) } 
  Set#Disjoint(a, b)
     ==> Set#Difference(Set#Union(a, b), a) == b
       && Set#Difference(Set#Union(a, b), b) == a);

revealed function Set#Intersection(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Intersection(a, b), o) } 
  Set#IsMember(Set#Intersection(a, b), o)
     <==> Set#IsMember(a, o) && Set#IsMember(b, o));

axiom (forall a: Set, b: Set :: 
  { Set#Union(Set#Union(a, b), b) } 
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, Set#Union(a, b)) } 
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(Set#Intersection(a, b), b) } 
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(a, Set#Intersection(a, b)) } 
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Union(a, b)) } { Set#Card(Set#Intersection(a, b)) } 
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b))
     == Set#Card(a) + Set#Card(b));

revealed function Set#Difference(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Difference(a, b), o) } 
  Set#IsMember(Set#Difference(a, b), o)
     <==> Set#IsMember(a, o) && !Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Difference(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> !Set#IsMember(Set#Difference(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Difference(a, b)) } 
  Set#Card(Set#Difference(a, b))
         + Set#Card(Set#Difference(b, a))
         + Set#Card(Set#Intersection(a, b))
       == Set#Card(Set#Union(a, b))
     && Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

revealed function Set#Subset(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Subset(a, b) } 
  Set#Subset(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) ==> Set#IsMember(b, o)));

revealed function Set#Equal(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Equal(a, b) } 
  Set#Equal(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) <==> Set#IsMember(b, o)));

axiom (forall a: Set, b: Set :: { Set#Equal(a, b) } Set#Equal(a, b) ==> a == b);

revealed function Set#Disjoint(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Disjoint(a, b) } 
  Set#Disjoint(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      !Set#IsMember(a, o) || !Set#IsMember(b, o)));

revealed function Set#FromBoogieMap([Box]bool) : Set;

axiom (forall m: [Box]bool, bx: Box :: 
  { Set#IsMember(Set#FromBoogieMap(m), bx) } 
  Set#IsMember(Set#FromBoogieMap(m), bx) == m[bx]);

type ISet = [Box]bool;

revealed function ISet#Empty() : ISet;

axiom (forall o: Box :: { ISet#Empty()[o] } !ISet#Empty()[o]);

revealed function ISet#FromSet(Set) : ISet;

axiom (forall s: Set, bx: Box :: 
  { ISet#FromSet(s)[bx] } 
  ISet#FromSet(s)[bx] == Set#IsMember(s, bx));

revealed function ISet#UnionOne(ISet, Box) : ISet;

axiom (forall a: ISet, x: Box, o: Box :: 
  { ISet#UnionOne(a, x)[o] } 
  ISet#UnionOne(a, x)[o] <==> o == x || a[o]);

axiom (forall a: ISet, x: Box :: { ISet#UnionOne(a, x) } ISet#UnionOne(a, x)[x]);

axiom (forall a: ISet, x: Box, y: Box :: 
  { ISet#UnionOne(a, x), a[y] } 
  a[y] ==> ISet#UnionOne(a, x)[y]);

revealed function ISet#Union(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Union(a, b)[o] } 
  ISet#Union(a, b)[o] <==> a[o] || b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), a[y] } 
  a[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), b[y] } 
  b[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, b) } 
  ISet#Disjoint(a, b)
     ==> ISet#Difference(ISet#Union(a, b), a) == b
       && ISet#Difference(ISet#Union(a, b), b) == a);

revealed function ISet#Intersection(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Intersection(a, b)[o] } 
  ISet#Intersection(a, b)[o] <==> a[o] && b[o]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(ISet#Union(a, b), b) } 
  ISet#Union(ISet#Union(a, b), b) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, ISet#Union(a, b)) } 
  ISet#Union(a, ISet#Union(a, b)) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(ISet#Intersection(a, b), b) } 
  ISet#Intersection(ISet#Intersection(a, b), b) == ISet#Intersection(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(a, ISet#Intersection(a, b)) } 
  ISet#Intersection(a, ISet#Intersection(a, b)) == ISet#Intersection(a, b));

revealed function ISet#Difference(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Difference(a, b)[o] } 
  ISet#Difference(a, b)[o] <==> a[o] && !b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Difference(a, b), b[y] } 
  b[y] ==> !ISet#Difference(a, b)[y]);

revealed function ISet#Subset(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Subset(a, b) } 
  ISet#Subset(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] ==> b[o]));

revealed function ISet#Equal(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Equal(a, b) } 
  ISet#Equal(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] <==> b[o]));

axiom (forall a: ISet, b: ISet :: { ISet#Equal(a, b) } ISet#Equal(a, b) ==> a == b);

revealed function ISet#Disjoint(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Disjoint(a, b) } 
  ISet#Disjoint(a, b) <==> (forall o: Box :: { a[o] } { b[o] } !a[o] || !b[o]));

revealed function Math#min(a: int, b: int) : int;

axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);

axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);

axiom (forall a: int, b: int :: 
  { Math#min(a, b) } 
  Math#min(a, b) == a || Math#min(a, b) == b);

revealed function Math#clip(a: int) : int;

axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);

axiom (forall a: int :: { Math#clip(a) } a < 0 ==> Math#clip(a) == 0);

type MultiSet;

revealed function MultiSet#Multiplicity(m: MultiSet, o: Box) : int;

revealed function MultiSet#UpdateMultiplicity(m: MultiSet, o: Box, n: int) : MultiSet;

axiom (forall m: MultiSet, o: Box, n: int, p: Box :: 
  { MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) } 
  0 <= n
     ==> (o == p ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) == n)
       && (o != p
         ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p)
           == MultiSet#Multiplicity(m, p)));

revealed function $IsGoodMultiSet(ms: MultiSet) : bool;

axiom (forall ms: MultiSet :: 
  { $IsGoodMultiSet(ms) } 
  $IsGoodMultiSet(ms)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(ms, bx) } 
      0 <= MultiSet#Multiplicity(ms, bx)
         && MultiSet#Multiplicity(ms, bx) <= MultiSet#Card(ms)));

revealed function MultiSet#Card(m: MultiSet) : int;

axiom (forall s: MultiSet :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));

axiom (forall s: MultiSet, x: Box, n: int :: 
  { MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n)) } 
  0 <= n
     ==> MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n))
       == MultiSet#Card(s) - MultiSet#Multiplicity(s, x) + n);

revealed function MultiSet#Empty() : MultiSet;

axiom (forall o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Empty(), o) } 
  MultiSet#Multiplicity(MultiSet#Empty(), o) == 0);

axiom (forall s: MultiSet :: 
  { MultiSet#Card(s) } 
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty())
     && (MultiSet#Card(s) != 0
       ==> (exists x: Box :: 
        { MultiSet#Multiplicity(s, x) } 
        0 < MultiSet#Multiplicity(s, x))));

revealed function MultiSet#Singleton(o: Box) : MultiSet;

axiom (forall r: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Singleton(r), o) } 
  (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 1 <==> r == o)
     && (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 0 <==> r != o));

axiom (forall r: Box :: 
  { MultiSet#Singleton(r) } 
  MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r));

revealed function MultiSet#UnionOne(m: MultiSet, o: Box) : MultiSet;

axiom (forall a: MultiSet, x: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o) } 
  0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o)
     <==> o == x || 0 < MultiSet#Multiplicity(a, o));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#UnionOne(a, x) } 
  MultiSet#Multiplicity(MultiSet#UnionOne(a, x), x)
     == MultiSet#Multiplicity(a, x) + 1);

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  0 < MultiSet#Multiplicity(a, y)
     ==> 0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  x != y
     ==> MultiSet#Multiplicity(a, y) == MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#Card(MultiSet#UnionOne(a, x)) } 
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);

revealed function MultiSet#Union(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Union(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Union(a, b), o)
     == MultiSet#Multiplicity(a, o) + MultiSet#Multiplicity(b, o));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Union(a, b)) } 
  MultiSet#Card(MultiSet#Union(a, b)) == MultiSet#Card(a) + MultiSet#Card(b));

revealed function MultiSet#Intersection(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Intersection(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Intersection(a, b), o)
     == Math#min(MultiSet#Multiplicity(a, o), MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(MultiSet#Intersection(a, b), b) } 
  MultiSet#Intersection(MultiSet#Intersection(a, b), b)
     == MultiSet#Intersection(a, b));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) } 
  MultiSet#Intersection(a, MultiSet#Intersection(a, b))
     == MultiSet#Intersection(a, b));

revealed function MultiSet#Difference(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Difference(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Difference(a, b), o)
     == Math#clip(MultiSet#Multiplicity(a, o) - MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet, y: Box :: 
  { MultiSet#Difference(a, b), MultiSet#Multiplicity(b, y), MultiSet#Multiplicity(a, y) } 
  MultiSet#Multiplicity(a, y) <= MultiSet#Multiplicity(b, y)
     ==> MultiSet#Multiplicity(MultiSet#Difference(a, b), y) == 0);

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Difference(a, b)) } 
  MultiSet#Card(MultiSet#Difference(a, b))
         + MultiSet#Card(MultiSet#Difference(b, a))
         + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
       == MultiSet#Card(MultiSet#Union(a, b))
     && MultiSet#Card(MultiSet#Difference(a, b))
       == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

revealed function MultiSet#Subset(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Subset(a, b) } 
  MultiSet#Subset(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) <= MultiSet#Multiplicity(b, o)));

revealed function MultiSet#Equal(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b) ==> a == b);

revealed function MultiSet#Disjoint(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Disjoint(a, b) } 
  MultiSet#Disjoint(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == 0 || MultiSet#Multiplicity(b, o) == 0));

revealed function MultiSet#FromSet(s: Set) : MultiSet;

axiom (forall s: Set, a: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSet(s), a) } 
  (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 0 <==> !Set#IsMember(s, a))
     && (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 1 <==> Set#IsMember(s, a)));

axiom (forall s: Set :: 
  { MultiSet#Card(MultiSet#FromSet(s)) } 
  MultiSet#Card(MultiSet#FromSet(s)) == Set#Card(s));

revealed function MultiSet#FromSeq(s: Seq) : MultiSet
uses {
axiom MultiSet#FromSeq(Seq#Empty()) == MultiSet#Empty();
}

axiom (forall s: Seq :: { MultiSet#FromSeq(s) } $IsGoodMultiSet(MultiSet#FromSeq(s)));

axiom (forall s: Seq :: 
  { MultiSet#Card(MultiSet#FromSeq(s)) } 
  MultiSet#Card(MultiSet#FromSeq(s)) == Seq#Length(s));

axiom (forall s: Seq, v: Box :: 
  { MultiSet#FromSeq(Seq#Build(s, v)) } 
  MultiSet#FromSeq(Seq#Build(s, v)) == MultiSet#UnionOne(MultiSet#FromSeq(s), v));

axiom (forall a: Seq, b: Seq :: 
  { MultiSet#FromSeq(Seq#Append(a, b)) } 
  MultiSet#FromSeq(Seq#Append(a, b))
     == MultiSet#Union(MultiSet#FromSeq(a), MultiSet#FromSeq(b)));

axiom (forall s: Seq, i: int, v: Box, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x) } 
  0 <= i && i < Seq#Length(s)
     ==> MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x)
       == MultiSet#Multiplicity(MultiSet#Union(MultiSet#Difference(MultiSet#FromSeq(s), MultiSet#Singleton(Seq#Index(s, i))), 
          MultiSet#Singleton(v)), 
        x));

axiom (forall s: Seq, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(s), x) } 
  (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && x == Seq#Index(s, i))
     <==> 0 < MultiSet#Multiplicity(MultiSet#FromSeq(s), x));

type Seq;

revealed function Seq#Length(s: Seq) : int;

axiom (forall s: Seq :: { Seq#Length(s) } 0 <= Seq#Length(s));

revealed function Seq#Empty() : Seq
uses {
axiom Seq#Length(Seq#Empty()) == 0;
}

axiom (forall s: Seq :: { Seq#Length(s) } Seq#Length(s) == 0 ==> s == Seq#Empty());

revealed function Seq#Build(s: Seq, val: Box) : Seq;

revealed function Seq#Build_inv0(s: Seq) : Seq;

revealed function Seq#Build_inv1(s: Seq) : Box;

axiom (forall s: Seq, val: Box :: 
  { Seq#Build(s, val) } 
  Seq#Build_inv0(Seq#Build(s, val)) == s
     && Seq#Build_inv1(Seq#Build(s, val)) == val);

axiom (forall s: Seq, v: Box :: 
  { Seq#Build(s, v) } 
  Seq#Length(Seq#Build(s, v)) == 1 + Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Index(Seq#Build(s, v), i) } 
  (i == Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == v)
     && (i != Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == Seq#Index(s, i)));

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Length(Seq#Append(s0, s1)) } 
  Seq#Length(Seq#Append(s0, s1)) == Seq#Length(s0) + Seq#Length(s1));

revealed function Seq#Index(s: Seq, i: int) : Box;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#Index(Seq#Append(s0, s1), n) } 
  (n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s0, n))
     && (Seq#Length(s0) <= n
       ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s1, n - Seq#Length(s0))));

revealed function Seq#Update(s: Seq, i: int, val: Box) : Seq;

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Length(Seq#Update(s, i, v)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Length(Seq#Update(s, i, v)) == Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Index(Seq#Update(s, i, v), n) } 
  0 <= n && n < Seq#Length(s)
     ==> (i == n ==> Seq#Index(Seq#Update(s, i, v), n) == v)
       && (i != n ==> Seq#Index(Seq#Update(s, i, v), n) == Seq#Index(s, n)));

revealed function Seq#Append(s0: Seq, s1: Seq) : Seq;

revealed function Seq#Contains(s: Seq, val: Box) : bool;

axiom (forall s: Seq, x: Box :: 
  { Seq#Contains(s, x) } 
  Seq#Contains(s, x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall x: Box :: 
  { Seq#Contains(Seq#Empty(), x) } 
  !Seq#Contains(Seq#Empty(), x));

axiom (forall s0: Seq, s1: Seq, x: Box :: 
  { Seq#Contains(Seq#Append(s0, s1), x) } 
  Seq#Contains(Seq#Append(s0, s1), x)
     <==> Seq#Contains(s0, x) || Seq#Contains(s1, x));

axiom (forall s: Seq, v: Box, x: Box :: 
  { Seq#Contains(Seq#Build(s, v), x) } 
  Seq#Contains(Seq#Build(s, v), x) <==> v == x || Seq#Contains(s, x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Take(s, n), x) } 
  Seq#Contains(Seq#Take(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Drop(s, n), x) } 
  Seq#Contains(Seq#Drop(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

revealed function Seq#Equal(s0: Seq, s1: Seq) : bool;

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Equal(s0, s1) } 
  Seq#Equal(s0, s1)
     <==> Seq#Length(s0) == Seq#Length(s1)
       && (forall j: int :: 
        { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

axiom (forall a: Seq, b: Seq :: { Seq#Equal(a, b) } Seq#Equal(a, b) ==> a == b);

revealed function Seq#SameUntil(s0: Seq, s1: Seq, n: int) : bool;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#SameUntil(s0, s1, n) } 
  Seq#SameUntil(s0, s1, n)
     <==> (forall j: int :: 
      { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
      0 <= j && j < n ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

revealed function Seq#Take(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Take(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Take(s, n)) == n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Take(s, n), j) } { Seq#Index(s, j), Seq#Take(s, n) } 
  0 <= j && j < n && j < Seq#Length(s)
     ==> Seq#Index(Seq#Take(s, n), j) == Seq#Index(s, j));

revealed function Seq#Drop(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Drop(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Drop(s, n)) == Seq#Length(s) - n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Drop(s, n), j) } 
  0 <= n && 0 <= j && j < Seq#Length(s) - n
     ==> Seq#Index(Seq#Drop(s, n), j) == Seq#Index(s, j + n));

axiom (forall s: Seq, n: int, k: int :: 
  {:weight 25} { Seq#Index(s, k), Seq#Drop(s, n) } 
  0 <= n && n <= k && k < Seq#Length(s)
     ==> Seq#Index(Seq#Drop(s, n), k - n) == Seq#Index(s, k));

axiom (forall s: Seq, t: Seq, n: int :: 
  { Seq#Take(Seq#Append(s, t), n) } { Seq#Drop(Seq#Append(s, t), n) } 
  n == Seq#Length(s)
     ==> Seq#Take(Seq#Append(s, t), n) == s && Seq#Drop(Seq#Append(s, t), n) == t);

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  n <= i && i < Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Take(s, n));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= n && n <= i && i < Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i - n, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));

axiom (forall s: Seq, v: Box, n: int :: 
  { Seq#Drop(Seq#Build(s, v), n) } 
  0 <= n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Build(s, v), n) == Seq#Build(Seq#Drop(s, n), v));

axiom (forall s: Seq, n: int :: { Seq#Drop(s, n) } n == 0 ==> Seq#Drop(s, n) == s);

axiom (forall s: Seq, n: int :: 
  { Seq#Take(s, n) } 
  n == 0 ==> Seq#Take(s, n) == Seq#Empty());

axiom (forall s: Seq, m: int, n: int :: 
  { Seq#Drop(Seq#Drop(s, m), n) } 
  0 <= m && 0 <= n && m + n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Drop(s, m), n) == Seq#Drop(s, m + n));

axiom (forall s: Seq, bx: Box, t: Ty :: 
  { $Is(Seq#Build(s, bx), TSeq(t)) } 
  $Is(s, TSeq(t)) && $IsBox(bx, t) ==> $Is(Seq#Build(s, bx), TSeq(t)));

revealed function Seq#Create(ty: Ty, heap: Heap, len: int, init: HandleType) : Seq;

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType :: 
  { Seq#Length(Seq#Create(ty, heap, len, init): Seq) } 
  $IsGoodHeap(heap) && 0 <= len
     ==> Seq#Length(Seq#Create(ty, heap, len, init): Seq) == len);

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType, i: int :: 
  { Seq#Index(Seq#Create(ty, heap, len, init), i) } 
  $IsGoodHeap(heap) && 0 <= i && i < len
     ==> Seq#Index(Seq#Create(ty, heap, len, init), i)
       == Apply1(TInt, ty, heap, init, $Box(i)));

revealed function Seq#FromArray(h: Heap, a: ref) : Seq;

axiom (forall h: Heap, a: ref :: 
  { Seq#Length(Seq#FromArray(h, a)) } 
  Seq#Length(Seq#FromArray(h, a)) == _System.array.Length(a));

axiom (forall h: Heap, a: ref :: 
  { Seq#FromArray(h, a) } 
  (forall i: int :: 
    { read(h, a, IndexField(i)) } { Seq#Index(Seq#FromArray(h, a): Seq, i) } 
    0 <= i && i < Seq#Length(Seq#FromArray(h, a))
       ==> Seq#Index(Seq#FromArray(h, a), i) == read(h, a, IndexField(i))));

axiom (forall h0: Heap, h1: Heap, a: ref :: 
  { Seq#FromArray(h1, a), $HeapSucc(h0, h1) } 
  $IsGoodHeap(h0) && $IsGoodHeap(h1) && $HeapSucc(h0, h1) && h0[a] == h1[a]
     ==> Seq#FromArray(h0, a) == Seq#FromArray(h1, a));

axiom (forall h: Heap, i: int, v: Box, a: ref :: 
  { Seq#FromArray(update(h, a, IndexField(i), v), a) } 
  0 <= i && i < _System.array.Length(a)
     ==> Seq#FromArray(update(h, a, IndexField(i), v), a)
       == Seq#Update(Seq#FromArray(h, a), i, v));

axiom (forall h: Heap, a: ref, n0: int, n1: int :: 
  { Seq#Take(Seq#FromArray(h, a), n0), Seq#Take(Seq#FromArray(h, a), n1) } 
  n0 + 1 == n1 && 0 <= n0 && n1 <= _System.array.Length(a)
     ==> Seq#Take(Seq#FromArray(h, a), n1)
       == Seq#Build(Seq#Take(Seq#FromArray(h, a), n0), read(h, a, IndexField(n0): Field)));

revealed function Seq#Rank(Seq) : int;

axiom (forall s: Seq, i: int :: 
  { DtRank($Unbox(Seq#Index(s, i)): DatatypeType) } 
  0 <= i && i < Seq#Length(s)
     ==> DtRank($Unbox(Seq#Index(s, i)): DatatypeType) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Drop(s, i)) } 
  0 < i && i <= Seq#Length(s) ==> Seq#Rank(Seq#Drop(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Take(s, i)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Rank(Seq#Take(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int, j: int :: 
  { Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) } 
  0 <= i && i < j && j <= Seq#Length(s)
     ==> Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) < Seq#Rank(s));

type Map;

revealed function Map#Domain(Map) : Set;

revealed function Map#Elements(Map) : [Box]Box;

revealed function Map#Card(Map) : int;

axiom (forall m: Map :: { Map#Card(m) } 0 <= Map#Card(m));

axiom (forall m: Map :: { Map#Card(m) } Map#Card(m) == 0 <==> m == Map#Empty());

axiom (forall m: Map :: 
  { Map#Domain(m) } 
  m == Map#Empty() || (exists k: Box :: Set#IsMember(Map#Domain(m), k)));

axiom (forall m: Map :: 
  { Map#Values(m) } 
  m == Map#Empty() || (exists v: Box :: Set#IsMember(Map#Values(m), v)));

axiom (forall m: Map :: 
  { Map#Items(m) } 
  m == Map#Empty()
     || (exists k: Box, v: Box :: 
      Set#IsMember(Map#Items(m), $Box(#_System._tuple#2._#Make2(k, v)))));

axiom (forall m: Map :: 
  { Set#Card(Map#Domain(m)) } { Map#Card(m) } 
  Set#Card(Map#Domain(m)) == Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Values(m)) } { Map#Card(m) } 
  Set#Card(Map#Values(m)) <= Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Items(m)) } { Map#Card(m) } 
  Set#Card(Map#Items(m)) == Map#Card(m));

revealed function Map#Values(Map) : Set;

axiom (forall m: Map, v: Box :: 
  { Set#IsMember(Map#Values(m), v) } 
  Set#IsMember(Map#Values(m), v)
     == (exists u: Box :: 
      { Set#IsMember(Map#Domain(m), u) } { Map#Elements(m)[u] } 
      Set#IsMember(Map#Domain(m), u) && v == Map#Elements(m)[u]));

revealed function Map#Items(Map) : Set;

revealed function #_System._tuple#2._#Make2(Box, Box) : DatatypeType;

revealed function _System.Tuple2._0(DatatypeType) : Box;

revealed function _System.Tuple2._1(DatatypeType) : Box;

axiom (forall m: Map, item: Box :: 
  { Set#IsMember(Map#Items(m), item) } 
  Set#IsMember(Map#Items(m), item)
     <==> Set#IsMember(Map#Domain(m), _System.Tuple2._0($Unbox(item)))
       && Map#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function Map#Empty() : Map;

axiom (forall u: Box :: 
  { Set#IsMember(Map#Domain(Map#Empty(): Map), u) } 
  !Set#IsMember(Map#Domain(Map#Empty(): Map), u));

revealed function Map#Glue(Set, [Box]Box, Ty) : Map;

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Domain(Map#Glue(a, b, t)) } 
  Map#Domain(Map#Glue(a, b, t)) == a);

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Elements(Map#Glue(a, b, t)) } 
  Map#Elements(Map#Glue(a, b, t)) == b);

axiom (forall a: Set, b: [Box]Box, t0: Ty, t1: Ty :: 
  { Map#Glue(a, b, TMap(t0, t1)) } 
  (forall bx: Box :: Set#IsMember(a, bx) ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(Map#Glue(a, b, TMap(t0, t1)), TMap(t0, t1)));

revealed function Map#Build(Map, Box, Box) : Map;

axiom (forall m: Map, u: Box, u': Box, v: Box :: 
  { Set#IsMember(Map#Domain(Map#Build(m, u, v)), u') } 
    { Map#Elements(Map#Build(m, u, v))[u'] } 
  (u' == u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
           == Set#IsMember(Map#Domain(m), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == Map#Elements(m)[u']));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  Set#IsMember(Map#Domain(m), u) ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  !Set#IsMember(Map#Domain(m), u)
     ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m) + 1);

revealed function Map#Merge(Map, Map) : Map;

axiom (forall m: Map, n: Map :: 
  { Map#Domain(Map#Merge(m, n)) } 
  Map#Domain(Map#Merge(m, n)) == Set#Union(Map#Domain(m), Map#Domain(n)));

axiom (forall m: Map, n: Map, u: Box :: 
  { Map#Elements(Map#Merge(m, n))[u] } 
  Set#IsMember(Map#Domain(Map#Merge(m, n)), u)
     ==> (!Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(m)[u])
       && (Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(n)[u]));

revealed function Map#Subtract(Map, Set) : Map;

axiom (forall m: Map, s: Set :: 
  { Map#Domain(Map#Subtract(m, s)) } 
  Map#Domain(Map#Subtract(m, s)) == Set#Difference(Map#Domain(m), s));

axiom (forall m: Map, s: Set, u: Box :: 
  { Map#Elements(Map#Subtract(m, s))[u] } 
  Set#IsMember(Map#Domain(Map#Subtract(m, s)), u)
     ==> Map#Elements(Map#Subtract(m, s))[u] == Map#Elements(m)[u]);

revealed function Map#Equal(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Equal(m, m') } 
  Map#Equal(m, m')
     <==> (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) == Set#IsMember(Map#Domain(m'), u))
       && (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) ==> Map#Elements(m)[u] == Map#Elements(m')[u]));

axiom (forall m: Map, m': Map :: { Map#Equal(m, m') } Map#Equal(m, m') ==> m == m');

revealed function Map#Disjoint(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Disjoint(m, m') } 
  Map#Disjoint(m, m')
     <==> (forall o: Box :: 
      { Set#IsMember(Map#Domain(m), o) } { Set#IsMember(Map#Domain(m'), o) } 
      !Set#IsMember(Map#Domain(m), o) || !Set#IsMember(Map#Domain(m'), o)));

type IMap;

revealed function IMap#Domain(IMap) : ISet;

revealed function IMap#Elements(IMap) : [Box]Box;

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() || (exists k: Box :: IMap#Domain(m)[k]));

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() || (exists v: Box :: IMap#Values(m)[v]));

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty()
     || (exists k: Box, v: Box :: IMap#Items(m)[$Box(#_System._tuple#2._#Make2(k, v))]));

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() <==> IMap#Domain(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() <==> IMap#Values(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty() <==> IMap#Items(m) == ISet#Empty());

revealed function IMap#Values(IMap) : ISet;

axiom (forall m: IMap, v: Box :: 
  { IMap#Values(m)[v] } 
  IMap#Values(m)[v]
     == (exists u: Box :: 
      { IMap#Domain(m)[u] } { IMap#Elements(m)[u] } 
      IMap#Domain(m)[u] && v == IMap#Elements(m)[u]));

revealed function IMap#Items(IMap) : ISet;

axiom (forall m: IMap, item: Box :: 
  { IMap#Items(m)[item] } 
  IMap#Items(m)[item]
     <==> IMap#Domain(m)[_System.Tuple2._0($Unbox(item))]
       && IMap#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function IMap#Empty() : IMap;

axiom (forall u: Box :: 
  { IMap#Domain(IMap#Empty(): IMap)[u] } 
  !IMap#Domain(IMap#Empty(): IMap)[u]);

revealed function IMap#Glue([Box]bool, [Box]Box, Ty) : IMap;

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Domain(IMap#Glue(a, b, t)) } 
  IMap#Domain(IMap#Glue(a, b, t)) == a);

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Elements(IMap#Glue(a, b, t)) } 
  IMap#Elements(IMap#Glue(a, b, t)) == b);

axiom (forall a: [Box]bool, b: [Box]Box, t0: Ty, t1: Ty :: 
  { IMap#Glue(a, b, TIMap(t0, t1)) } 
  (forall bx: Box :: a[bx] ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(IMap#Glue(a, b, TIMap(t0, t1)), TIMap(t0, t1)));

revealed function IMap#Build(IMap, Box, Box) : IMap;

axiom (forall m: IMap, u: Box, u': Box, v: Box :: 
  { IMap#Domain(IMap#Build(m, u, v))[u'] } 
    { IMap#Elements(IMap#Build(m, u, v))[u'] } 
  (u' == u
       ==> IMap#Domain(IMap#Build(m, u, v))[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> IMap#Domain(IMap#Build(m, u, v))[u'] == IMap#Domain(m)[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == IMap#Elements(m)[u']));

revealed function IMap#Equal(IMap, IMap) : bool;

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m')
     <==> (forall u: Box :: IMap#Domain(m)[u] == IMap#Domain(m')[u])
       && (forall u: Box :: 
        IMap#Domain(m)[u] ==> IMap#Elements(m)[u] == IMap#Elements(m')[u]));

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m') ==> m == m');

revealed function IMap#Merge(IMap, IMap) : IMap;

axiom (forall m: IMap, n: IMap :: 
  { IMap#Domain(IMap#Merge(m, n)) } 
  IMap#Domain(IMap#Merge(m, n)) == ISet#Union(IMap#Domain(m), IMap#Domain(n)));

axiom (forall m: IMap, n: IMap, u: Box :: 
  { IMap#Elements(IMap#Merge(m, n))[u] } 
  IMap#Domain(IMap#Merge(m, n))[u]
     ==> (!IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(m)[u])
       && (IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(n)[u]));

revealed function IMap#Subtract(IMap, Set) : IMap;

axiom (forall m: IMap, s: Set :: 
  { IMap#Domain(IMap#Subtract(m, s)) } 
  IMap#Domain(IMap#Subtract(m, s))
     == ISet#Difference(IMap#Domain(m), ISet#FromSet(s)));

axiom (forall m: IMap, s: Set, u: Box :: 
  { IMap#Elements(IMap#Subtract(m, s))[u] } 
  IMap#Domain(IMap#Subtract(m, s))[u]
     ==> IMap#Elements(IMap#Subtract(m, s))[u] == IMap#Elements(m)[u]);

revealed function INTERNAL_add_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_add_boogie(x, y): int } 
  INTERNAL_add_boogie(x, y): int == x + y);
}

revealed function INTERNAL_sub_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_sub_boogie(x, y): int } 
  INTERNAL_sub_boogie(x, y): int == x - y);
}

revealed function INTERNAL_mul_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mul_boogie(x, y): int } 
  INTERNAL_mul_boogie(x, y): int == x * y);
}

revealed function INTERNAL_div_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_div_boogie(x, y): int } 
  INTERNAL_div_boogie(x, y): int == x div y);
}

revealed function INTERNAL_mod_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mod_boogie(x, y): int } 
  INTERNAL_mod_boogie(x, y): int == x mod y);
}

revealed function {:never_pattern true} INTERNAL_lt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_lt_boogie(x, y): bool } 
  INTERNAL_lt_boogie(x, y): bool == (x < y));
}

revealed function {:never_pattern true} INTERNAL_le_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_le_boogie(x, y): bool } 
  INTERNAL_le_boogie(x, y): bool == (x <= y));
}

revealed function {:never_pattern true} INTERNAL_gt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_gt_boogie(x, y): bool } 
  INTERNAL_gt_boogie(x, y): bool == (x > y));
}

revealed function {:never_pattern true} INTERNAL_ge_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_ge_boogie(x, y): bool } 
  INTERNAL_ge_boogie(x, y): bool == (x >= y));
}

revealed function Mul(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mul(x, y): int } Mul(x, y): int == x * y);
}

revealed function Div(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Div(x, y): int } Div(x, y): int == x div y);
}

revealed function Mod(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mod(x, y): int } Mod(x, y): int == x mod y);
}

revealed function Add(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Add(x, y): int } Add(x, y): int == x + y);
}

revealed function Sub(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Sub(x, y): int } Sub(x, y): int == x - y);
}

function Tclass._System.nat() : Ty
uses {
// Tclass._System.nat Tag
axiom Tag(Tclass._System.nat()) == Tagclass._System.nat
   && TagFamily(Tclass._System.nat()) == tytagFamily$nat;
}

const unique Tagclass._System.nat: TyTag;

// Box/unbox axiom for Tclass._System.nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.nat()) } 
  $IsBox(bx, Tclass._System.nat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._System.nat()));

// $Is axiom for subset type _System.nat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._System.nat()) } 
  $Is(x#0, Tclass._System.nat()) <==> LitInt(0) <= x#0);

// $IsAlloc axiom for subset type _System.nat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._System.nat(), $h) } 
  $IsAlloc(x#0, Tclass._System.nat(), $h));

const unique class._System.object?: ClassName;

const unique Tagclass._System.object?: TyTag;

// Box/unbox axiom for Tclass._System.object?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object?()) } 
  $IsBox(bx, Tclass._System.object?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object?()));

// $Is axiom for trait object
axiom (forall $o: ref :: 
  { $Is($o, Tclass._System.object?()) } 
  $Is($o, Tclass._System.object?()));

// $IsAlloc axiom for trait object
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.object?(), $h) } 
  $IsAlloc($o, Tclass._System.object?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_System.object(ty: Ty) : bool;

function Tclass._System.object() : Ty
uses {
// Tclass._System.object Tag
axiom Tag(Tclass._System.object()) == Tagclass._System.object
   && TagFamily(Tclass._System.object()) == tytagFamily$object;
}

const unique Tagclass._System.object: TyTag;

// Box/unbox axiom for Tclass._System.object
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object()) } 
  $IsBox(bx, Tclass._System.object())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object()));

// $Is axiom for non-null type _System.object
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._System.object()) } { $Is(c#0, Tclass._System.object?()) } 
  $Is(c#0, Tclass._System.object())
     <==> $Is(c#0, Tclass._System.object?()) && c#0 != null);

// $IsAlloc axiom for non-null type _System.object
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.object(), $h) } 
    { $IsAlloc(c#0, Tclass._System.object?(), $h) } 
  $IsAlloc(c#0, Tclass._System.object(), $h)
     <==> $IsAlloc(c#0, Tclass._System.object?(), $h));

const unique class._System.array?: ClassName;

function Tclass._System.array?(Ty) : Ty;

const unique Tagclass._System.array?: TyTag;

// Tclass._System.array? Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tag(Tclass._System.array?(_System.array$arg)) == Tagclass._System.array?
     && TagFamily(Tclass._System.array?(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array?_0(Ty) : Ty;

// Tclass._System.array? injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tclass._System.array?_0(Tclass._System.array?(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array?
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array?(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array?(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array?(_System.array$arg)));

// array.: Type axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
     ==> $IsBox(read($h, $o, IndexField($i0)), _System.array$arg));

// array.: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, IndexField($i0)), _System.array$arg, $h));

// $Is axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array?(_System.array$arg)) } 
  $Is($o, Tclass._System.array?(_System.array$arg))
     <==> $o == null || dtype($o) == Tclass._System.array?(_System.array$arg));

// $IsAlloc axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// array.Length: Type axiom
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { _System.array.Length($o), Tclass._System.array?(_System.array$arg) } 
  $o != null && dtype($o) == Tclass._System.array?(_System.array$arg)
     ==> $Is(_System.array.Length($o), TInt));

// array.Length: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array.Length($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array.Length($o), TInt, $h));

function Tclass._System.array(Ty) : Ty;

const unique Tagclass._System.array: TyTag;

// Tclass._System.array Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tag(Tclass._System.array(_System.array$arg)) == Tagclass._System.array
     && TagFamily(Tclass._System.array(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array_0(Ty) : Ty;

// Tclass._System.array injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tclass._System.array_0(Tclass._System.array(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array(_System.array$arg)));

// $Is axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array(_System.array$arg)) } 
    { $Is(c#0, Tclass._System.array?(_System.array$arg)) } 
  $Is(c#0, Tclass._System.array(_System.array$arg))
     <==> $Is(c#0, Tclass._System.array?(_System.array$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h));

function Tclass._System.___hFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc1: TyTag;

// Tclass._System.___hFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hFunc1(#$T0, #$R)) == Tagclass._System.___hFunc1
     && TagFamily(Tclass._System.___hFunc1(#$T0, #$R)) == tytagFamily$_#Func1);

function Tclass._System.___hFunc1_0(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_0(Tclass._System.___hFunc1(#$T0, #$R)) == #$T0);

function Tclass._System.___hFunc1_1(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_1(Tclass._System.___hFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc1(#$T0, #$R)));

function Handle1([Heap,Box]Box, [Heap,Box]bool, [Heap,Box]Set) : HandleType;

function Requires1(Ty, Ty, Heap, HandleType, Box) : bool;

function Reads1(Ty, Ty, Heap, HandleType, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) == h[heap, bx0]);

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Requires1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  r[heap, bx0] ==> Requires1(t0, t1, heap, Handle1(h, r, rd), bx0));

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box, 
    bx: Box :: 
  { Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx) } 
  Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx)
     == Set#IsMember(rd[heap, bx0], bx));

function {:inline} Requires1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

function {:inline} Reads1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// empty-reads property for Reads1 
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Reads1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Reads1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap) && $IsBox(bx0, t0) && $Is(f, Tclass._System.___hFunc1(t0, t1))
     ==> (Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
       <==> Set#Equal(Reads1(t0, t1, heap, f, bx0), Set#Empty(): Set)));

// empty-reads property for Requires1
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Requires1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Requires1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
     ==> Requires1(t0, t1, $OneHeap, f, bx0) == Requires1(t0, t1, heap, f, bx0));

axiom (forall f: HandleType, t0: Ty, t1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
     <==> (forall h: Heap, bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsGoodHeap(h) && $IsBox(bx0, t0) && Requires1(t0, t1, h, f, bx0)
         ==> $IsBox(Apply1(t0, t1, h, f, bx0), t1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, u0: Ty, u1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)), $Is(f, Tclass._System.___hFunc1(u0, u1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t1) } { $IsBox(bx, u1) } 
        $IsBox(bx, t1) ==> $IsBox(bx, u1))
     ==> $Is(f, Tclass._System.___hFunc1(u0, u1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
       <==> (forall bx0: Box :: 
        { Apply1(t0, t1, h, f, bx0) } { Reads1(t0, t1, h, f, bx0) } 
        $IsBox(bx0, t0) && $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r)) } 
            r != null && Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
     ==> (forall bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
         ==> $IsAllocBox(Apply1(t0, t1, h, f, bx0), t1, h)));

function Tclass._System.___hPartialFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc1: TyTag;

// Tclass._System.___hPartialFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == Tagclass._System.___hPartialFunc1
     && TagFamily(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == tytagFamily$_#PartialFunc1);

function Tclass._System.___hPartialFunc1_0(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_0(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc1_1(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_1(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0)
           ==> Set#Equal(Reads1(#$T0, #$R, $OneHeap, f#0, x0#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc1(#$T0, #$R), $h));

function Tclass._System.___hTotalFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc1: TyTag;

// Tclass._System.___hTotalFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hTotalFunc1(#$T0, #$R)) == Tagclass._System.___hTotalFunc1
     && TagFamily(Tclass._System.___hTotalFunc1(#$T0, #$R)) == tytagFamily$_#TotalFunc1);

function Tclass._System.___hTotalFunc1_0(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_0(Tclass._System.___hTotalFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc1_1(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_1(Tclass._System.___hTotalFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0) ==> Requires1(#$T0, #$R, $OneHeap, f#0, x0#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h));

function Tclass._System.___hFunc0(Ty) : Ty;

const unique Tagclass._System.___hFunc0: TyTag;

// Tclass._System.___hFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tag(Tclass._System.___hFunc0(#$R)) == Tagclass._System.___hFunc0
     && TagFamily(Tclass._System.___hFunc0(#$R)) == tytagFamily$_#Func0);

function Tclass._System.___hFunc0_0(Ty) : Ty;

// Tclass._System.___hFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tclass._System.___hFunc0_0(Tclass._System.___hFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc0(#$R)));

function Handle0([Heap]Box, [Heap]bool, [Heap]Set) : HandleType;

function Apply0(Ty, Heap, HandleType) : Box;

function Requires0(Ty, Heap, HandleType) : bool;

function Reads0(Ty, Heap, HandleType) : Set;

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Apply0(t0, heap, Handle0(h, r, rd)) } 
  Apply0(t0, heap, Handle0(h, r, rd)) == h[heap]);

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Requires0(t0, heap, Handle0(h, r, rd)) } 
  r[heap] ==> Requires0(t0, heap, Handle0(h, r, rd)));

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set, bx: Box :: 
  { Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx) } 
  Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx)
     == Set#IsMember(rd[heap], bx));

function {:inline} Requires0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

function {:inline} Reads0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// empty-reads property for Reads0 
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Reads0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Reads0(t0, heap, f) } 
  $IsGoodHeap(heap) && $Is(f, Tclass._System.___hFunc0(t0))
     ==> (Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
       <==> Set#Equal(Reads0(t0, heap, f), Set#Empty(): Set)));

// empty-reads property for Requires0
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Requires0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Requires0(t0, heap, f) } 
  $IsGoodHeap(heap)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
     ==> Requires0(t0, $OneHeap, f) == Requires0(t0, heap, f));

axiom (forall f: HandleType, t0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
     <==> (forall h: Heap :: 
      { Apply0(t0, h, f) } 
      $IsGoodHeap(h) && Requires0(t0, h, f) ==> $IsBox(Apply0(t0, h, f), t0)));

axiom (forall f: HandleType, t0: Ty, u0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)), $Is(f, Tclass._System.___hFunc0(u0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t0) } { $IsBox(bx, u0) } 
        $IsBox(bx, t0) ==> $IsBox(bx, u0))
     ==> $Is(f, Tclass._System.___hFunc0(u0)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc0(t0), h)
       <==> Requires0(t0, h, f)
         ==> (forall r: ref :: 
          { Set#IsMember(Reads0(t0, h, f), $Box(r)) } 
          r != null && Set#IsMember(Reads0(t0, h, f), $Box(r))
             ==> $Unbox(read(h, r, alloc)): bool)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc0(t0), h)
     ==> 
    Requires0(t0, h, f)
     ==> $IsAllocBox(Apply0(t0, h, f), t0, h));

function Tclass._System.___hPartialFunc0(Ty) : Ty;

const unique Tagclass._System.___hPartialFunc0: TyTag;

// Tclass._System.___hPartialFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tag(Tclass._System.___hPartialFunc0(#$R)) == Tagclass._System.___hPartialFunc0
     && TagFamily(Tclass._System.___hPartialFunc0(#$R)) == tytagFamily$_#PartialFunc0);

function Tclass._System.___hPartialFunc0_0(Ty) : Ty;

// Tclass._System.___hPartialFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tclass._System.___hPartialFunc0_0(Tclass._System.___hPartialFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc0(#$R)));

// $Is axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hFunc0(#$R))
       && Set#Equal(Reads0(#$R, $OneHeap, f#0), Set#Empty(): Set));

// $IsAlloc axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc0(#$R), $h));

function Tclass._System.___hTotalFunc0(Ty) : Ty;

const unique Tagclass._System.___hTotalFunc0: TyTag;

// Tclass._System.___hTotalFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tag(Tclass._System.___hTotalFunc0(#$R)) == Tagclass._System.___hTotalFunc0
     && TagFamily(Tclass._System.___hTotalFunc0(#$R)) == tytagFamily$_#TotalFunc0);

function Tclass._System.___hTotalFunc0_0(Ty) : Ty;

// Tclass._System.___hTotalFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tclass._System.___hTotalFunc0_0(Tclass._System.___hTotalFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc0(#$R)));

// $Is axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) && Requires0(#$R, $OneHeap, f#0));

// $IsAlloc axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h));

const unique ##_System._tuple#2._#Make2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_System._tuple#2._#Make2(a#0#0#0, a#0#1#0))
     == ##_System._tuple#2._#Make2);
}

function _System.Tuple2.___hMake2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#2._#Make2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: Box :: 
      d == #_System._tuple#2._#Make2(a#1#0#0, a#1#1#0)));

const unique Tagclass._System.Tuple2: TyTag;

// Tclass._System.Tuple2 Tag
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tag(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == Tagclass._System.Tuple2
     && TagFamily(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == tytagFamily$_tuple#2);

function Tclass._System.Tuple2_0(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 0
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_0(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T0);

function Tclass._System.Tuple2_1(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 1
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_1(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T1);

// Box/unbox axiom for Tclass._System.Tuple2
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)));

// Constructor $Is
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, a#2#0#0: Box, a#2#1#0: Box :: 
  { $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     <==> $IsBox(a#2#0#0, _System._tuple#2$T0) && $IsBox(a#2#1#0, _System._tuple#2$T1));

// Constructor $IsAlloc
axiom (forall _System._tuple#2$T0: Ty, 
    _System._tuple#2$T1: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _System._tuple#2$T0, $h)
         && $IsAllocBox(a#2#1#0, _System._tuple#2$T1, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T1: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T0: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: Box :: 
  { #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0))
     == Lit(#_System._tuple#2._#Make2(a#3#0#0, a#3#1#0)));

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#4#0#0, a#4#1#0) } 
  _System.Tuple2._0(#_System._tuple#2._#Make2(a#4#0#0, a#4#1#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#5#0#0, a#5#1#0) } 
  BoxRank(a#5#0#0) < DtRank(#_System._tuple#2._#Make2(a#5#0#0, a#5#1#0)));

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#6#0#0, a#6#1#0) } 
  _System.Tuple2._1(#_System._tuple#2._#Make2(a#6#0#0, a#6#1#0)) == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#7#0#0, a#7#1#0) } 
  BoxRank(a#7#1#0) < DtRank(#_System._tuple#2._#Make2(a#7#0#0, a#7#1#0)));

// Depth-one case-split function
function $IsA#_System.Tuple2(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple2(d) } 
  $IsA#_System.Tuple2(d) ==> _System.Tuple2.___hMake2_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d), $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> _System.Tuple2.___hMake2_q(d));

// Datatype extensional equality declaration
function _System.Tuple2#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#2._#Make2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b)
     <==> _System.Tuple2._0(a) == _System.Tuple2._0(b)
       && _System.Tuple2._1(a) == _System.Tuple2._1(b));

// Datatype extensionality axiom: _System._tuple#2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b) <==> a == b);

const unique class._System.Tuple2: ClassName;

// Constructor function declaration
function #_System._tuple#0._#Make0() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
// Constructor $Is
axiom $Is(#_System._tuple#0._#Make0(), Tclass._System.Tuple0());
// Constructor literal
axiom #_System._tuple#0._#Make0() == Lit(#_System._tuple#0._#Make0());
}

const unique ##_System._tuple#0._#Make0: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
}

function _System.Tuple0.___hMake0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#0._#Make0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d) ==> d == #_System._tuple#0._#Make0());

function Tclass._System.Tuple0() : Ty
uses {
// Tclass._System.Tuple0 Tag
axiom Tag(Tclass._System.Tuple0()) == Tagclass._System.Tuple0
   && TagFamily(Tclass._System.Tuple0()) == tytagFamily$_tuple#0;
}

const unique Tagclass._System.Tuple0: TyTag;

// Box/unbox axiom for Tclass._System.Tuple0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple0()) } 
  $IsBox(bx, Tclass._System.Tuple0())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._System.Tuple0()));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._System.Tuple0(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._System.Tuple0())
     ==> $IsAlloc(d, Tclass._System.Tuple0(), $h));

// Depth-one case-split function
function $IsA#_System.Tuple0(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple0(d) } 
  $IsA#_System.Tuple0(d) ==> _System.Tuple0.___hMake0_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d), $Is(d, Tclass._System.Tuple0()) } 
  $Is(d, Tclass._System.Tuple0()) ==> _System.Tuple0.___hMake0_q(d));

// Datatype extensional equality declaration
function _System.Tuple0#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#0._#Make0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b));

// Datatype extensionality axiom: _System._tuple#0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b) <==> a == b);

const unique class._System.Tuple0: ClassName;

function Tclass._System.___hFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc2: TyTag;

// Tclass._System.___hFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == Tagclass._System.___hFunc2
     && TagFamily(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == tytagFamily$_#Func2);

function Tclass._System.___hFunc2_0(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_0(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T0);

function Tclass._System.___hFunc2_1(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_1(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T1);

function Tclass._System.___hFunc2_2(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_2(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc2(#$T0, #$T1, #$R)));

function Handle2([Heap,Box,Box]Box, [Heap,Box,Box]bool, [Heap,Box,Box]Set) : HandleType;

function Apply2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Box;

function Requires2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : bool;

function Reads2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) == h[heap, bx0, bx1]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  r[heap, bx0, bx1] ==> Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx: Box :: 
  { Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx) } 
  Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx)
     == Set#IsMember(rd[heap, bx0, bx1], bx));

function {:inline} Requires2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

function {:inline} Reads2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// empty-reads property for Reads2 
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Reads2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     ==> (Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
       <==> Set#Equal(Reads2(t0, t1, t2, heap, f, bx0, bx1), Set#Empty(): Set)));

// empty-reads property for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Requires2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
     ==> Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1)
       == Requires2(t0, t1, t2, heap, f, bx0, bx1));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     <==> (forall h: Heap, bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, u0: Ty, u1: Ty, u2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)), $Is(f, Tclass._System.___hFunc2(u0, u1, u2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, t2) } { $IsBox(bx, u2) } 
        $IsBox(bx, t2) ==> $IsBox(bx, u2))
     ==> $Is(f, Tclass._System.___hFunc2(u0, u1, u2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
       <==> (forall bx0: Box, bx1: Box :: 
        { Apply2(t0, t1, t2, h, f, bx0, bx1) } { Reads2(t0, t1, t2, h, f, bx0, bx1) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && Requires2(t0, t1, t2, h, f, bx0, bx1)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r)) } 
            r != null && Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
     ==> (forall bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsAllocBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2, h)));

function Tclass._System.___hPartialFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc2: TyTag;

// Tclass._System.___hPartialFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hPartialFunc2
     && TagFamily(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#PartialFunc2);

function Tclass._System.___hPartialFunc2_0(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_0(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc2_1(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_1(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc2_2(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_2(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Set#Equal(Reads2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R), $h));

function Tclass._System.___hTotalFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc2: TyTag;

// Tclass._System.___hTotalFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hTotalFunc2
     && TagFamily(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#TotalFunc2);

function Tclass._System.___hTotalFunc2_0(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_0(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc2_1(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_1(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc2_2(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_2(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Requires2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h));

const unique class.Std_mWrappers.__default: ClassName;

// function declaration for Std.Wrappers._default.Need
function Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E: Ty, condition#0: bool, error#0: Box)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.__default.Need
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers._default.Need$E: Ty, condition#0: bool, error#0: Box :: 
    { Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E, condition#0, error#0) } 
    Std_mWrappers.__default.Need#canCall(Std.Wrappers._default.Need$E, condition#0, error#0)
         || (1 < $FunctionContextHeight && $IsBox(error#0, Std.Wrappers._default.Need$E))
       ==> $Is(Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E, condition#0, error#0), 
        Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers._default.Need$E)));
// alloc consequence axiom for Std_mWrappers.__default.Need
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, Std.Wrappers._default.Need$E: Ty, condition#0: bool, error#0: Box :: 
    { $IsAlloc(Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E, condition#0, error#0), 
        Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers._default.Need$E), 
        $Heap) } 
    (Std_mWrappers.__default.Need#canCall(Std.Wrappers._default.Need$E, condition#0, error#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(error#0, Std.Wrappers._default.Need$E)
             && $IsAllocBox(error#0, Std.Wrappers._default.Need$E, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E, condition#0, error#0), 
        Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers._default.Need$E), 
        $Heap));
// definition axiom for Std_mWrappers.__default.Need (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers._default.Need$E: Ty, condition#0: bool, error#0: Box :: 
    { Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E, condition#0, error#0) } 
    Std_mWrappers.__default.Need#canCall(Std.Wrappers._default.Need$E, condition#0, error#0)
         || (1 < $FunctionContextHeight && $IsBox(error#0, Std.Wrappers._default.Need$E))
       ==> Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E, condition#0, error#0)
         == (if condition#0
           then #Std.Wrappers.OutcomeResult.Pass'()
           else #Std.Wrappers.OutcomeResult.Fail'(error#0)));
// definition axiom for Std_mWrappers.__default.Need for decreasing-related literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers._default.Need$E: Ty, condition#0: bool, error#0: Box :: 
    {:weight 3} { Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E, Lit(condition#0), error#0) } 
    Std_mWrappers.__default.Need#canCall(Std.Wrappers._default.Need$E, Lit(condition#0), error#0)
         || (1 < $FunctionContextHeight && $IsBox(error#0, Std.Wrappers._default.Need$E))
       ==> Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E, Lit(condition#0), error#0)
         == (if condition#0
           then #Std.Wrappers.OutcomeResult.Pass'()
           else #Std.Wrappers.OutcomeResult.Fail'(error#0)));
// definition axiom for Std_mWrappers.__default.Need for all literals (revealed)
axiom {:id "id2"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers._default.Need$E: Ty, condition#0: bool, error#0: Box :: 
    {:weight 3} { Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E, Lit(condition#0), Lit(error#0)) } 
    Std_mWrappers.__default.Need#canCall(Std.Wrappers._default.Need$E, Lit(condition#0), Lit(error#0))
         || (1 < $FunctionContextHeight && $IsBox(error#0, Std.Wrappers._default.Need$E))
       ==> Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E, Lit(condition#0), Lit(error#0))
         == (if condition#0
           then #Std.Wrappers.OutcomeResult.Pass'()
           else #Std.Wrappers.OutcomeResult.Fail'(Lit(error#0))));
}

function Std_mWrappers.__default.Need#canCall(Std.Wrappers._default.Need$E: Ty, condition#0: bool, error#0: Box) : bool;

function Tclass.Std_mWrappers.OutcomeResult(Ty) : Ty;

const unique Tagclass.Std_mWrappers.OutcomeResult: TyTag;

// Tclass.Std_mWrappers.OutcomeResult Tag
axiom (forall Std.Wrappers.OutcomeResult$E: Ty :: 
  { Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E) } 
  Tag(Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
       == Tagclass.Std_mWrappers.OutcomeResult
     && TagFamily(Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
       == tytagFamily$OutcomeResult);

function Tclass.Std_mWrappers.OutcomeResult_0(Ty) : Ty;

// Tclass.Std_mWrappers.OutcomeResult injectivity 0
axiom (forall Std.Wrappers.OutcomeResult$E: Ty :: 
  { Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E) } 
  Tclass.Std_mWrappers.OutcomeResult_0(Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
     == Std.Wrappers.OutcomeResult$E);

// Box/unbox axiom for Tclass.Std_mWrappers.OutcomeResult
axiom (forall Std.Wrappers.OutcomeResult$E: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E)) } 
  $IsBox(bx, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E)));

function Std_mWrappers.__default.Need#requires(Ty, bool, Box) : bool;

// #requires axiom for Std_mWrappers.__default.Need
axiom (forall Std.Wrappers._default.Need$E: Ty, condition#0: bool, error#0: Box :: 
  { Std_mWrappers.__default.Need#requires(Std.Wrappers._default.Need$E, condition#0, error#0) } 
  $IsBox(error#0, Std.Wrappers._default.Need$E)
     ==> Std_mWrappers.__default.Need#requires(Std.Wrappers._default.Need$E, condition#0, error#0)
       == true);

procedure {:verboseName "Std.Wrappers.Need (well-formedness)"} CheckWellformed$$Std_mWrappers.__default.Need(Std.Wrappers._default.Need$E: Ty, 
    condition#0: bool, 
    error#0: Box where $IsBox(error#0, Std.Wrappers._default.Need$E))
   returns (result#0: DatatypeType);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #Std.Wrappers.Option.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Std.Wrappers.Option.None()) == ##Std.Wrappers.Option.None;
// Constructor literal
axiom #Std.Wrappers.Option.None() == Lit(#Std.Wrappers.Option.None());
}

const unique ##Std.Wrappers.Option.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Std.Wrappers.Option.None()) == ##Std.Wrappers.Option.None;
}

function Std_mWrappers.Option.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Option.None_q(d) } 
  Std_mWrappers.Option.None_q(d)
     <==> DatatypeCtorId(d) == ##Std.Wrappers.Option.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Option.None_q(d) } 
  Std_mWrappers.Option.None_q(d) ==> d == #Std.Wrappers.Option.None());

function Tclass.Std_mWrappers.Option(Ty) : Ty;

const unique Tagclass.Std_mWrappers.Option: TyTag;

// Tclass.Std_mWrappers.Option Tag
axiom (forall Std.Wrappers.Option$T: Ty :: 
  { Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T) } 
  Tag(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
       == Tagclass.Std_mWrappers.Option
     && TagFamily(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
       == tytagFamily$Option);

function Tclass.Std_mWrappers.Option_0(Ty) : Ty;

// Tclass.Std_mWrappers.Option injectivity 0
axiom (forall Std.Wrappers.Option$T: Ty :: 
  { Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T) } 
  Tclass.Std_mWrappers.Option_0(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
     == Std.Wrappers.Option$T);

// Box/unbox axiom for Tclass.Std_mWrappers.Option
axiom (forall Std.Wrappers.Option$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T)) } 
  $IsBox(bx, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T)));

// Constructor $Is
axiom (forall Std.Wrappers.Option$T: Ty :: 
  { $Is(#Std.Wrappers.Option.None(), Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T)) } 
  $Is(#Std.Wrappers.Option.None(), Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T)));

// Constructor $IsAlloc
axiom (forall Std.Wrappers.Option$T: Ty, $h: Heap :: 
  { $IsAlloc(#Std.Wrappers.Option.None(), 
      Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Std.Wrappers.Option.None(), 
      Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), 
      $h));

// Constructor function declaration
function #Std.Wrappers.Option.Some(Box) : DatatypeType;

const unique ##Std.Wrappers.Option.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box :: 
  { #Std.Wrappers.Option.Some(a#4#0#0) } 
  DatatypeCtorId(#Std.Wrappers.Option.Some(a#4#0#0)) == ##Std.Wrappers.Option.Some);
}

function Std_mWrappers.Option.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Option.Some_q(d) } 
  Std_mWrappers.Option.Some_q(d)
     <==> DatatypeCtorId(d) == ##Std.Wrappers.Option.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Option.Some_q(d) } 
  Std_mWrappers.Option.Some_q(d)
     ==> (exists a#5#0#0: Box :: d == #Std.Wrappers.Option.Some(a#5#0#0)));

// Constructor $Is
axiom (forall Std.Wrappers.Option$T: Ty, a#6#0#0: Box :: 
  { $Is(#Std.Wrappers.Option.Some(a#6#0#0), 
      Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T)) } 
  $Is(#Std.Wrappers.Option.Some(a#6#0#0), 
      Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
     <==> $IsBox(a#6#0#0, Std.Wrappers.Option$T));

// Constructor $IsAlloc
axiom (forall Std.Wrappers.Option$T: Ty, a#6#0#0: Box, $h: Heap :: 
  { $IsAlloc(#Std.Wrappers.Option.Some(a#6#0#0), 
      Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Std.Wrappers.Option.Some(a#6#0#0), 
        Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), 
        $h)
       <==> $IsAllocBox(a#6#0#0, Std.Wrappers.Option$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Std.Wrappers.Option$T: Ty, $h: Heap :: 
  { $IsAllocBox(Std_mWrappers.Option.value(d), Std.Wrappers.Option$T, $h) } 
  $IsGoodHeap($h)
       && 
      Std_mWrappers.Option.Some_q(d)
       && $IsAlloc(d, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $h)
     ==> $IsAllocBox(Std_mWrappers.Option.value(d), Std.Wrappers.Option$T, $h));

// Constructor literal
axiom (forall a#7#0#0: Box :: 
  { #Std.Wrappers.Option.Some(Lit(a#7#0#0)) } 
  #Std.Wrappers.Option.Some(Lit(a#7#0#0))
     == Lit(#Std.Wrappers.Option.Some(a#7#0#0)));

function Std_mWrappers.Option.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box :: 
  { #Std.Wrappers.Option.Some(a#8#0#0) } 
  Std_mWrappers.Option.value(#Std.Wrappers.Option.Some(a#8#0#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box :: 
  { #Std.Wrappers.Option.Some(a#9#0#0) } 
  BoxRank(a#9#0#0) < DtRank(#Std.Wrappers.Option.Some(a#9#0#0)));

// Depth-one case-split function
function $IsA#Std_mWrappers.Option(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Std_mWrappers.Option(d) } 
  $IsA#Std_mWrappers.Option(d)
     ==> Std_mWrappers.Option.None_q(d) || Std_mWrappers.Option.Some_q(d));

// Questionmark data type disjunctivity
axiom (forall Std.Wrappers.Option$T: Ty, d: DatatypeType :: 
  { Std_mWrappers.Option.Some_q(d), $Is(d, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T)) } 
    { Std_mWrappers.Option.None_q(d), $Is(d, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T)) } 
  $Is(d, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
     ==> Std_mWrappers.Option.None_q(d) || Std_mWrappers.Option.Some_q(d));

// Datatype extensional equality declaration
function Std_mWrappers.Option#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Std.Wrappers.Option.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.Option#Equal(a, b), Std_mWrappers.Option.None_q(a) } 
    { Std_mWrappers.Option#Equal(a, b), Std_mWrappers.Option.None_q(b) } 
  Std_mWrappers.Option.None_q(a) && Std_mWrappers.Option.None_q(b)
     ==> Std_mWrappers.Option#Equal(a, b));

// Datatype extensional equality definition: #Std.Wrappers.Option.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.Option#Equal(a, b), Std_mWrappers.Option.Some_q(a) } 
    { Std_mWrappers.Option#Equal(a, b), Std_mWrappers.Option.Some_q(b) } 
  Std_mWrappers.Option.Some_q(a) && Std_mWrappers.Option.Some_q(b)
     ==> (Std_mWrappers.Option#Equal(a, b)
       <==> Std_mWrappers.Option.value(a) == Std_mWrappers.Option.value(b)));

// Datatype extensionality axiom: Std.Wrappers.Option
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.Option#Equal(a, b) } 
  Std_mWrappers.Option#Equal(a, b) <==> a == b);

const unique class.Std_mWrappers.Option: ClassName;

// function declaration for Std.Wrappers.Option.IsFailure
function Std_mWrappers.Option.IsFailure(Std.Wrappers.Option$T: Ty, this: DatatypeType) : bool
uses {
// definition axiom for Std_mWrappers.Option.IsFailure (revealed)
axiom {:id "id7"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, this: DatatypeType :: 
    { Std_mWrappers.Option.IsFailure(Std.Wrappers.Option$T, this) } 
    Std_mWrappers.Option.IsFailure#canCall(Std.Wrappers.Option$T, this)
         || (0 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T)))
       ==> Std_mWrappers.Option.IsFailure(Std.Wrappers.Option$T, this)
         == Std_mWrappers.Option.None_q(this));
// definition axiom for Std_mWrappers.Option.IsFailure for all literals (revealed)
axiom {:id "id8"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.Option.IsFailure(Std.Wrappers.Option$T, Lit(this)) } 
    Std_mWrappers.Option.IsFailure#canCall(Std.Wrappers.Option$T, Lit(this))
         || (0 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T)))
       ==> Std_mWrappers.Option.IsFailure(Std.Wrappers.Option$T, Lit(this))
         == Lit(Std_mWrappers.Option.None_q(Lit(this))));
}

function Std_mWrappers.Option.IsFailure#canCall(Std.Wrappers.Option$T: Ty, this: DatatypeType) : bool;

function Std_mWrappers.Option.IsFailure#requires(Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.Option.IsFailure
axiom (forall Std.Wrappers.Option$T: Ty, this: DatatypeType :: 
  { Std_mWrappers.Option.IsFailure#requires(Std.Wrappers.Option$T, this) } 
  $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
     ==> Std_mWrappers.Option.IsFailure#requires(Std.Wrappers.Option$T, this) == true);

procedure {:verboseName "Std.Wrappers.Option.IsFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.Option.IsFailure(Std.Wrappers.Option$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
         && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Option.PropagateFailure
function Std_mWrappers.Option.PropagateFailure(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.PropagateFailure$U: Ty, 
    this: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Option.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    { Std_mWrappers.Option.PropagateFailure(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this) } 
    Std_mWrappers.Option.PropagateFailure#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && Std_mWrappers.Option.None_q(this))
       ==> $Is(Std_mWrappers.Option.PropagateFailure(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this), 
        Tclass.Std_mWrappers.Option(Std.Wrappers.Option.PropagateFailure$U)));
// alloc consequence axiom for Std_mWrappers.Option.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    { $IsAlloc(Std_mWrappers.Option.PropagateFailure(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this), 
        Tclass.Std_mWrappers.Option(Std.Wrappers.Option.PropagateFailure$U), 
        $Heap) } 
    (Std_mWrappers.Option.PropagateFailure#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap)
             && Std_mWrappers.Option.None_q(this)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Option.PropagateFailure(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this), 
        Tclass.Std_mWrappers.Option(Std.Wrappers.Option.PropagateFailure$U), 
        $Heap));
// definition axiom for Std_mWrappers.Option.PropagateFailure (revealed)
axiom {:id "id10"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    { Std_mWrappers.Option.PropagateFailure(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this) } 
    Std_mWrappers.Option.PropagateFailure#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && Std_mWrappers.Option.None_q(this))
       ==> Std_mWrappers.Option.PropagateFailure(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this)
         == Lit(#Std.Wrappers.Option.None()));
// definition axiom for Std_mWrappers.Option.PropagateFailure for all literals (revealed)
axiom {:id "id11"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.Option.PropagateFailure(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, Lit(this)) } 
    Std_mWrappers.Option.PropagateFailure#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, Lit(this))
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && Lit(Std_mWrappers.Option.None_q(Lit(this))))
       ==> Std_mWrappers.Option.PropagateFailure(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, Lit(this))
         == Lit(#Std.Wrappers.Option.None()));
}

function Std_mWrappers.Option.PropagateFailure#canCall(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.PropagateFailure$U: Ty, 
    this: DatatypeType)
   : bool;

function Std_mWrappers.Option.PropagateFailure#requires(Ty, Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.Option.PropagateFailure
axiom (forall Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { Std_mWrappers.Option.PropagateFailure#requires(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this) } 
  $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
     ==> Std_mWrappers.Option.PropagateFailure#requires(Std.Wrappers.Option$T, Std.Wrappers.Option.PropagateFailure$U, this)
       == Std_mWrappers.Option.None_q(this));

procedure {:verboseName "Std.Wrappers.Option.PropagateFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.Option.PropagateFailure(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.PropagateFailure$U: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
         && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Option.Extract
function Std_mWrappers.Option.Extract(Std.Wrappers.Option$T: Ty, this: DatatypeType) : Box
uses {
// consequence axiom for Std_mWrappers.Option.Extract
axiom 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, this: DatatypeType :: 
    { Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, this) } 
    Std_mWrappers.Option.Extract#canCall(Std.Wrappers.Option$T, this)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && Std_mWrappers.Option.Some_q(this))
       ==> $IsBox(Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, this), Std.Wrappers.Option$T));
// alloc consequence axiom for Std_mWrappers.Option.Extract
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, Std.Wrappers.Option$T: Ty, this: DatatypeType :: 
    { $IsAllocBox(Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, this), 
        Std.Wrappers.Option$T, 
        $Heap) } 
    (Std_mWrappers.Option.Extract#canCall(Std.Wrappers.Option$T, this)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap)
             && Std_mWrappers.Option.Some_q(this)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, this), 
        Std.Wrappers.Option$T, 
        $Heap));
// definition axiom for Std_mWrappers.Option.Extract (revealed)
axiom {:id "id14"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, this: DatatypeType :: 
    { Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, this) } 
    Std_mWrappers.Option.Extract#canCall(Std.Wrappers.Option$T, this)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && Std_mWrappers.Option.Some_q(this))
       ==> Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, this)
         == Std_mWrappers.Option.value(this));
// definition axiom for Std_mWrappers.Option.Extract for all literals (revealed)
axiom {:id "id15"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, Lit(this)) } 
    Std_mWrappers.Option.Extract#canCall(Std.Wrappers.Option$T, Lit(this))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && Lit(Std_mWrappers.Option.Some_q(Lit(this))))
       ==> Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, Lit(this))
         == Lit(Std_mWrappers.Option.value(Lit(this))));
}

function Std_mWrappers.Option.Extract#canCall(Std.Wrappers.Option$T: Ty, this: DatatypeType) : bool;

function Std_mWrappers.Option.Extract#requires(Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.Option.Extract
axiom (forall Std.Wrappers.Option$T: Ty, this: DatatypeType :: 
  { Std_mWrappers.Option.Extract#requires(Std.Wrappers.Option$T, this) } 
  $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
     ==> Std_mWrappers.Option.Extract#requires(Std.Wrappers.Option$T, this)
       == Std_mWrappers.Option.Some_q(this));

procedure {:verboseName "Std.Wrappers.Option.Extract (well-formedness)"} CheckWellformed$$Std_mWrappers.Option.Extract(Std.Wrappers.Option$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
         && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Std.Wrappers.Option.Extract (well-formedness)"} CheckWellformed$$Std_mWrappers.Option.Extract(Std.Wrappers.Option$T: Ty, this: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id16"} Std_mWrappers.Option.Some_q(this);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, this), Std.Wrappers.Option$T);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id17"} Std_mWrappers.Option.Some_q(this);
        assume {:id "id18"} Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, this)
           == Std_mWrappers.Option.value(this);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(Std_mWrappers.Option.Extract(Std.Wrappers.Option$T, this), Std.Wrappers.Option$T);
        return;

        assume false;
    }
}



// function declaration for Std.Wrappers.Option.GetOr
function Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T: Ty, this: DatatypeType, default#0: Box) : Box
uses {
// consequence axiom for Std_mWrappers.Option.GetOr
axiom 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, this: DatatypeType, default#0: Box :: 
    { Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T, this, default#0) } 
    Std_mWrappers.Option.GetOr#canCall(Std.Wrappers.Option$T, this, default#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(default#0, Std.Wrappers.Option$T))
       ==> $IsBox(Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T, this, default#0), 
        Std.Wrappers.Option$T));
// alloc consequence axiom for Std_mWrappers.Option.GetOr
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, Std.Wrappers.Option$T: Ty, this: DatatypeType, default#0: Box :: 
    { $IsAllocBox(Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T, this, default#0), 
        Std.Wrappers.Option$T, 
        $Heap) } 
    (Std_mWrappers.Option.GetOr#canCall(Std.Wrappers.Option$T, this, default#0)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap)
             && 
            $IsBox(default#0, Std.Wrappers.Option$T)
             && $IsAllocBox(default#0, Std.Wrappers.Option$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T, this, default#0), 
        Std.Wrappers.Option$T, 
        $Heap));
// definition axiom for Std_mWrappers.Option.GetOr (revealed)
axiom {:id "id19"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, this: DatatypeType, default#0: Box :: 
    { Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T, this, default#0) } 
    Std_mWrappers.Option.GetOr#canCall(Std.Wrappers.Option$T, this, default#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(default#0, Std.Wrappers.Option$T))
       ==> Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T, this, default#0)
         == (if Std_mWrappers.Option.None_q(this)
           then default#0
           else (var v#0 := Std_mWrappers.Option.value(this); v#0)));
// definition axiom for Std_mWrappers.Option.GetOr for decreasing-related literals (revealed)
axiom {:id "id20"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, this: DatatypeType, default#0: Box :: 
    {:weight 3} { Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T, Lit(this), default#0) } 
    Std_mWrappers.Option.GetOr#canCall(Std.Wrappers.Option$T, Lit(this), default#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(default#0, Std.Wrappers.Option$T))
       ==> Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T, Lit(this), default#0)
         == (if Std_mWrappers.Option.None_q(Lit(this))
           then default#0
           else (var v#2 := Lit(Std_mWrappers.Option.value(Lit(this))); v#2)));
// definition axiom for Std_mWrappers.Option.GetOr for all literals (revealed)
axiom {:id "id21"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, this: DatatypeType, default#0: Box :: 
    {:weight 3} { Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T, Lit(this), Lit(default#0)) } 
    Std_mWrappers.Option.GetOr#canCall(Std.Wrappers.Option$T, Lit(this), Lit(default#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(default#0, Std.Wrappers.Option$T))
       ==> Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T, Lit(this), Lit(default#0))
         == (if Std_mWrappers.Option.None_q(Lit(this))
           then default#0
           else (var v#4 := Lit(Std_mWrappers.Option.value(Lit(this))); v#4)));
}

function Std_mWrappers.Option.GetOr#canCall(Std.Wrappers.Option$T: Ty, this: DatatypeType, default#0: Box) : bool;

function Std_mWrappers.Option.GetOr#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for Std_mWrappers.Option.GetOr
axiom (forall Std.Wrappers.Option$T: Ty, this: DatatypeType, default#0: Box :: 
  { Std_mWrappers.Option.GetOr#requires(Std.Wrappers.Option$T, this, default#0) } 
  $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
       && $IsBox(default#0, Std.Wrappers.Option$T)
     ==> Std_mWrappers.Option.GetOr#requires(Std.Wrappers.Option$T, this, default#0)
       == true);

procedure {:verboseName "Std.Wrappers.Option.GetOr (well-formedness)"} CheckWellformed$$Std_mWrappers.Option.GetOr(Std.Wrappers.Option$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
         && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap), 
    default#0: Box where $IsBox(default#0, Std.Wrappers.Option$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Option.ToResult
function Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.ToResult$E: Ty, 
    this: DatatypeType, 
    error#0: Box)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Option.ToResult
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.ToResult$E: Ty, 
      this: DatatypeType, 
      error#0: Box :: 
    { Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0) } 
    Std_mWrappers.Option.ToResult#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(error#0, Std.Wrappers.Option.ToResult$E))
       ==> $Is(Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E)));
// alloc consequence axiom for Std_mWrappers.Option.ToResult
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.ToResult$E: Ty, 
      this: DatatypeType, 
      error#0: Box :: 
    { $IsAlloc(Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E), 
        $Heap) } 
    (Std_mWrappers.Option.ToResult#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap)
             && 
            $IsBox(error#0, Std.Wrappers.Option.ToResult$E)
             && $IsAllocBox(error#0, Std.Wrappers.Option.ToResult$E, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E), 
        $Heap));
// definition axiom for Std_mWrappers.Option.ToResult (revealed)
axiom {:id "id26"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.ToResult$E: Ty, 
      this: DatatypeType, 
      error#0: Box :: 
    { Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0) } 
    Std_mWrappers.Option.ToResult#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(error#0, Std.Wrappers.Option.ToResult$E))
       ==> Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0)
         == (if Std_mWrappers.Option.None_q(this)
           then #Std.Wrappers.Result.Failure(error#0)
           else (var v#0 := Std_mWrappers.Option.value(this); #Std.Wrappers.Result.Success(v#0))));
// definition axiom for Std_mWrappers.Option.ToResult for decreasing-related literals (revealed)
axiom {:id "id27"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.ToResult$E: Ty, 
      this: DatatypeType, 
      error#0: Box :: 
    {:weight 3} { Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, Lit(this), error#0) } 
    Std_mWrappers.Option.ToResult#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, Lit(this), error#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(error#0, Std.Wrappers.Option.ToResult$E))
       ==> Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, Lit(this), error#0)
         == (if Std_mWrappers.Option.None_q(Lit(this))
           then #Std.Wrappers.Result.Failure(error#0)
           else (var v#2 := Lit(Std_mWrappers.Option.value(Lit(this))); 
            Lit(#Std.Wrappers.Result.Success(v#2)))));
// definition axiom for Std_mWrappers.Option.ToResult for all literals (revealed)
axiom {:id "id28"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.ToResult$E: Ty, 
      this: DatatypeType, 
      error#0: Box :: 
    {:weight 3} { Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, Lit(this), Lit(error#0)) } 
    Std_mWrappers.Option.ToResult#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, Lit(this), Lit(error#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(error#0, Std.Wrappers.Option.ToResult$E))
       ==> Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, Lit(this), Lit(error#0))
         == (if Std_mWrappers.Option.None_q(Lit(this))
           then #Std.Wrappers.Result.Failure(Lit(error#0))
           else (var v#4 := Lit(Std_mWrappers.Option.value(Lit(this))); 
            Lit(#Std.Wrappers.Result.Success(v#4)))));
}

function Std_mWrappers.Option.ToResult#canCall(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.ToResult$E: Ty, 
    this: DatatypeType, 
    error#0: Box)
   : bool;

function Tclass.Std_mWrappers.Result(Ty, Ty) : Ty;

const unique Tagclass.Std_mWrappers.Result: TyTag;

// Tclass.Std_mWrappers.Result Tag
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty :: 
  { Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E) } 
  Tag(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
       == Tagclass.Std_mWrappers.Result
     && TagFamily(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
       == tytagFamily$Result);

function Tclass.Std_mWrappers.Result_0(Ty) : Ty;

// Tclass.Std_mWrappers.Result injectivity 0
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty :: 
  { Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E) } 
  Tclass.Std_mWrappers.Result_0(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     == Std.Wrappers.Result$R);

function Tclass.Std_mWrappers.Result_1(Ty) : Ty;

// Tclass.Std_mWrappers.Result injectivity 1
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty :: 
  { Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E) } 
  Tclass.Std_mWrappers.Result_1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     == Std.Wrappers.Result$E);

// Box/unbox axiom for Tclass.Std_mWrappers.Result
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)) } 
  $IsBox(bx, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)));

function Std_mWrappers.Option.ToResult#requires(Ty, Ty, DatatypeType, Box) : bool;

// #requires axiom for Std_mWrappers.Option.ToResult
axiom (forall Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.ToResult$E: Ty, 
    this: DatatypeType, 
    error#0: Box :: 
  { Std_mWrappers.Option.ToResult#requires(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0) } 
  $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
       && $IsBox(error#0, Std.Wrappers.Option.ToResult$E)
     ==> Std_mWrappers.Option.ToResult#requires(Std.Wrappers.Option$T, Std.Wrappers.Option.ToResult$E, this, error#0)
       == true);

procedure {:verboseName "Std.Wrappers.Option.ToResult (well-formedness)"} CheckWellformed$$Std_mWrappers.Option.ToResult(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.ToResult$E: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
         && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap), 
    error#0: Box where $IsBox(error#0, Std.Wrappers.Option.ToResult$E));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Option.ToOutcome
function Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.ToOutcome$E: Ty, 
    this: DatatypeType, 
    error#0: Box)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Option.ToOutcome
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.ToOutcome$E: Ty, 
      this: DatatypeType, 
      error#0: Box :: 
    { Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0) } 
    Std_mWrappers.Option.ToOutcome#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(error#0, Std.Wrappers.Option.ToOutcome$E))
       ==> $Is(Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Option.ToOutcome$E)));
// alloc consequence axiom for Std_mWrappers.Option.ToOutcome
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.ToOutcome$E: Ty, 
      this: DatatypeType, 
      error#0: Box :: 
    { $IsAlloc(Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Option.ToOutcome$E), 
        $Heap) } 
    (Std_mWrappers.Option.ToOutcome#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap)
             && 
            $IsBox(error#0, Std.Wrappers.Option.ToOutcome$E)
             && $IsAllocBox(error#0, Std.Wrappers.Option.ToOutcome$E, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Option.ToOutcome$E), 
        $Heap));
// definition axiom for Std_mWrappers.Option.ToOutcome (revealed)
axiom {:id "id33"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.ToOutcome$E: Ty, 
      this: DatatypeType, 
      error#0: Box :: 
    { Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0) } 
    Std_mWrappers.Option.ToOutcome#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(error#0, Std.Wrappers.Option.ToOutcome$E))
       ==> Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0)
         == (if Std_mWrappers.Option.None_q(this)
           then #Std.Wrappers.Outcome.Fail(error#0)
           else (var v#0 := Std_mWrappers.Option.value(this); Lit(#Std.Wrappers.Outcome.Pass()))));
// definition axiom for Std_mWrappers.Option.ToOutcome for decreasing-related literals (revealed)
axiom {:id "id34"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.ToOutcome$E: Ty, 
      this: DatatypeType, 
      error#0: Box :: 
    {:weight 3} { Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, Lit(this), error#0) } 
    Std_mWrappers.Option.ToOutcome#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, Lit(this), error#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(error#0, Std.Wrappers.Option.ToOutcome$E))
       ==> Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, Lit(this), error#0)
         == (if Std_mWrappers.Option.None_q(Lit(this))
           then #Std.Wrappers.Outcome.Fail(error#0)
           else (var v#2 := Lit(Std_mWrappers.Option.value(Lit(this))); 
            Lit(#Std.Wrappers.Outcome.Pass()))));
// definition axiom for Std_mWrappers.Option.ToOutcome for all literals (revealed)
axiom {:id "id35"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.ToOutcome$E: Ty, 
      this: DatatypeType, 
      error#0: Box :: 
    {:weight 3} { Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, Lit(this), Lit(error#0)) } 
    Std_mWrappers.Option.ToOutcome#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, Lit(this), Lit(error#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsBox(error#0, Std.Wrappers.Option.ToOutcome$E))
       ==> Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, Lit(this), Lit(error#0))
         == (if Std_mWrappers.Option.None_q(Lit(this))
           then #Std.Wrappers.Outcome.Fail(Lit(error#0))
           else (var v#4 := Lit(Std_mWrappers.Option.value(Lit(this))); 
            Lit(#Std.Wrappers.Outcome.Pass()))));
}

function Std_mWrappers.Option.ToOutcome#canCall(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.ToOutcome$E: Ty, 
    this: DatatypeType, 
    error#0: Box)
   : bool;

function Tclass.Std_mWrappers.Outcome(Ty) : Ty;

const unique Tagclass.Std_mWrappers.Outcome: TyTag;

// Tclass.Std_mWrappers.Outcome Tag
axiom (forall Std.Wrappers.Outcome$E: Ty :: 
  { Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E) } 
  Tag(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
       == Tagclass.Std_mWrappers.Outcome
     && TagFamily(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
       == tytagFamily$Outcome);

function Tclass.Std_mWrappers.Outcome_0(Ty) : Ty;

// Tclass.Std_mWrappers.Outcome injectivity 0
axiom (forall Std.Wrappers.Outcome$E: Ty :: 
  { Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E) } 
  Tclass.Std_mWrappers.Outcome_0(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
     == Std.Wrappers.Outcome$E);

// Box/unbox axiom for Tclass.Std_mWrappers.Outcome
axiom (forall Std.Wrappers.Outcome$E: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)) } 
  $IsBox(bx, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)));

function Std_mWrappers.Option.ToOutcome#requires(Ty, Ty, DatatypeType, Box) : bool;

// #requires axiom for Std_mWrappers.Option.ToOutcome
axiom (forall Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.ToOutcome$E: Ty, 
    this: DatatypeType, 
    error#0: Box :: 
  { Std_mWrappers.Option.ToOutcome#requires(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0) } 
  $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
       && $IsBox(error#0, Std.Wrappers.Option.ToOutcome$E)
     ==> Std_mWrappers.Option.ToOutcome#requires(Std.Wrappers.Option$T, Std.Wrappers.Option.ToOutcome$E, this, error#0)
       == true);

procedure {:verboseName "Std.Wrappers.Option.ToOutcome (well-formedness)"} CheckWellformed$$Std_mWrappers.Option.ToOutcome(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.ToOutcome$E: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
         && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap), 
    error#0: Box where $IsBox(error#0, Std.Wrappers.Option.ToOutcome$E));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Option.Map
function Std_mWrappers.Option.Map(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.Map$FC: Ty, 
    this: DatatypeType, 
    rewrap#0: HandleType)
   : Box
uses {
// consequence axiom for Std_mWrappers.Option.Map
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.Map$FC: Ty, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    { Std_mWrappers.Option.Map(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0) } 
    Std_mWrappers.Option.Map#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), Std.Wrappers.Option.Map$FC)))
       ==> $IsBox(Std_mWrappers.Option.Map(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0), 
        Std.Wrappers.Option.Map$FC));
// alloc consequence axiom for Std_mWrappers.Option.Map
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.Map$FC: Ty, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    { $IsAllocBox(Std_mWrappers.Option.Map(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0), 
        Std.Wrappers.Option.Map$FC, 
        $Heap) } 
    (Std_mWrappers.Option.Map#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap)
             && 
            $Is(rewrap#0, 
              Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), Std.Wrappers.Option.Map$FC))
             && $IsAlloc(rewrap#0, 
              Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), Std.Wrappers.Option.Map$FC), 
              $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(Std_mWrappers.Option.Map(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0), 
        Std.Wrappers.Option.Map$FC, 
        $Heap));
// definition axiom for Std_mWrappers.Option.Map (revealed)
axiom {:id "id40"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.Map$FC: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    { Std_mWrappers.Option.Map(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0), $IsGoodHeap($Heap) } 
    Std_mWrappers.Option.Map#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), Std.Wrappers.Option.Map$FC)))
       ==> Std_mWrappers.Option.Map(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0)
         == Apply1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), 
          Std.Wrappers.Option.Map$FC, 
          $Heap, 
          rewrap#0, 
          $Box(this)));
// definition axiom for Std_mWrappers.Option.Map for decreasing-related literals (revealed)
axiom {:id "id41"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.Map$FC: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    {:weight 3} { Std_mWrappers.Option.Map(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, Lit(this), rewrap#0), $IsGoodHeap($Heap) } 
    Std_mWrappers.Option.Map#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, Lit(this), rewrap#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), Std.Wrappers.Option.Map$FC)))
       ==> Std_mWrappers.Option.Map(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, Lit(this), rewrap#0)
         == Apply1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), 
          Std.Wrappers.Option.Map$FC, 
          $Heap, 
          rewrap#0, 
          $Box(Lit(this))));
// definition axiom for Std_mWrappers.Option.Map for all literals (revealed)
axiom {:id "id42"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Option$T: Ty, 
      Std.Wrappers.Option.Map$FC: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    {:weight 3} { Std_mWrappers.Option.Map(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, Lit(this), Lit(rewrap#0)), $IsGoodHeap($Heap) } 
    Std_mWrappers.Option.Map#canCall(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, Lit(this), Lit(rewrap#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
           && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), Std.Wrappers.Option.Map$FC)))
       ==> Std_mWrappers.Option.Map(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, Lit(this), Lit(rewrap#0))
         == Apply1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), 
          Std.Wrappers.Option.Map$FC, 
          $Heap, 
          Lit(rewrap#0), 
          $Box(Lit(this))));
}

function Std_mWrappers.Option.Map#canCall(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.Map$FC: Ty, 
    this: DatatypeType, 
    rewrap#0: HandleType)
   : bool;

function Std_mWrappers.Option.Map#requires(Ty, Ty, DatatypeType, HandleType) : bool;

// #requires axiom for Std_mWrappers.Option.Map
axiom (forall Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.Map$FC: Ty, 
    $Heap: Heap, 
    this: DatatypeType, 
    rewrap#0: HandleType :: 
  { Std_mWrappers.Option.Map#requires(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
       && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap)
       && $Is(rewrap#0, 
        Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), Std.Wrappers.Option.Map$FC))
     ==> Std_mWrappers.Option.Map#requires(Std.Wrappers.Option$T, Std.Wrappers.Option.Map$FC, this, rewrap#0)
       == true);

procedure {:verboseName "Std.Wrappers.Option.Map (well-formedness)"} CheckWellformed$$Std_mWrappers.Option.Map(Std.Wrappers.Option$T: Ty, 
    Std.Wrappers.Option.Map$FC: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T))
         && $IsAlloc(this, Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), $Heap), 
    rewrap#0: HandleType
       where $Is(rewrap#0, 
        Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Option(Std.Wrappers.Option$T), Std.Wrappers.Option.Map$FC)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #Std.Wrappers.Result.Success(Box) : DatatypeType;

const unique ##Std.Wrappers.Result.Success: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #Std.Wrappers.Result.Success(a#0#0#0) } 
  DatatypeCtorId(#Std.Wrappers.Result.Success(a#0#0#0))
     == ##Std.Wrappers.Result.Success);
}

function Std_mWrappers.Result.Success_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Result.Success_q(d) } 
  Std_mWrappers.Result.Success_q(d)
     <==> DatatypeCtorId(d) == ##Std.Wrappers.Result.Success);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Result.Success_q(d) } 
  Std_mWrappers.Result.Success_q(d)
     ==> (exists a#1#0#0: Box :: d == #Std.Wrappers.Result.Success(a#1#0#0)));

// Constructor $Is
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, a#2#0#0: Box :: 
  { $Is(#Std.Wrappers.Result.Success(a#2#0#0), 
      Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)) } 
  $Is(#Std.Wrappers.Result.Success(a#2#0#0), 
      Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     <==> $IsBox(a#2#0#0, Std.Wrappers.Result$R));

// Constructor $IsAlloc
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#Std.Wrappers.Result.Success(a#2#0#0), 
      Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Std.Wrappers.Result.Success(a#2#0#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
        $h)
       <==> $IsAllocBox(a#2#0#0, Std.Wrappers.Result$R, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Std.Wrappers.Result$R: Ty, $h: Heap :: 
  { $IsAllocBox(Std_mWrappers.Result.value(d), Std.Wrappers.Result$R, $h) } 
  $IsGoodHeap($h)
       && 
      Std_mWrappers.Result.Success_q(d)
       && (exists Std.Wrappers.Result$E: Ty :: 
        { $IsAlloc(d, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), $h) } 
        $IsAlloc(d, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), $h))
     ==> $IsAllocBox(Std_mWrappers.Result.value(d), Std.Wrappers.Result$R, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #Std.Wrappers.Result.Success(Lit(a#3#0#0)) } 
  #Std.Wrappers.Result.Success(Lit(a#3#0#0))
     == Lit(#Std.Wrappers.Result.Success(a#3#0#0)));

function Std_mWrappers.Result.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #Std.Wrappers.Result.Success(a#4#0#0) } 
  Std_mWrappers.Result.value(#Std.Wrappers.Result.Success(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #Std.Wrappers.Result.Success(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#Std.Wrappers.Result.Success(a#5#0#0)));

// Constructor function declaration
function #Std.Wrappers.Result.Failure(Box) : DatatypeType;

const unique ##Std.Wrappers.Result.Failure: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: Box :: 
  { #Std.Wrappers.Result.Failure(a#6#0#0) } 
  DatatypeCtorId(#Std.Wrappers.Result.Failure(a#6#0#0))
     == ##Std.Wrappers.Result.Failure);
}

function Std_mWrappers.Result.Failure_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Result.Failure_q(d) } 
  Std_mWrappers.Result.Failure_q(d)
     <==> DatatypeCtorId(d) == ##Std.Wrappers.Result.Failure);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Result.Failure_q(d) } 
  Std_mWrappers.Result.Failure_q(d)
     ==> (exists a#7#0#0: Box :: d == #Std.Wrappers.Result.Failure(a#7#0#0)));

// Constructor $Is
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, a#8#0#0: Box :: 
  { $Is(#Std.Wrappers.Result.Failure(a#8#0#0), 
      Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)) } 
  $Is(#Std.Wrappers.Result.Failure(a#8#0#0), 
      Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     <==> $IsBox(a#8#0#0, Std.Wrappers.Result$E));

// Constructor $IsAlloc
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, a#8#0#0: Box, $h: Heap :: 
  { $IsAlloc(#Std.Wrappers.Result.Failure(a#8#0#0), 
      Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Std.Wrappers.Result.Failure(a#8#0#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
        $h)
       <==> $IsAllocBox(a#8#0#0, Std.Wrappers.Result$E, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Std.Wrappers.Result$E: Ty, $h: Heap :: 
  { $IsAllocBox(Std_mWrappers.Result.error(d), Std.Wrappers.Result$E, $h) } 
  $IsGoodHeap($h)
       && 
      Std_mWrappers.Result.Failure_q(d)
       && (exists Std.Wrappers.Result$R: Ty :: 
        { $IsAlloc(d, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), $h) } 
        $IsAlloc(d, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), $h))
     ==> $IsAllocBox(Std_mWrappers.Result.error(d), Std.Wrappers.Result$E, $h));

// Constructor literal
axiom (forall a#9#0#0: Box :: 
  { #Std.Wrappers.Result.Failure(Lit(a#9#0#0)) } 
  #Std.Wrappers.Result.Failure(Lit(a#9#0#0))
     == Lit(#Std.Wrappers.Result.Failure(a#9#0#0)));

function Std_mWrappers.Result.error(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: Box :: 
  { #Std.Wrappers.Result.Failure(a#10#0#0) } 
  Std_mWrappers.Result.error(#Std.Wrappers.Result.Failure(a#10#0#0)) == a#10#0#0);

// Inductive rank
axiom (forall a#11#0#0: Box :: 
  { #Std.Wrappers.Result.Failure(a#11#0#0) } 
  BoxRank(a#11#0#0) < DtRank(#Std.Wrappers.Result.Failure(a#11#0#0)));

// Depth-one case-split function
function $IsA#Std_mWrappers.Result(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Std_mWrappers.Result(d) } 
  $IsA#Std_mWrappers.Result(d)
     ==> Std_mWrappers.Result.Success_q(d) || Std_mWrappers.Result.Failure_q(d));

// Questionmark data type disjunctivity
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, d: DatatypeType :: 
  { Std_mWrappers.Result.Failure_q(d), $Is(d, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)) } 
    { Std_mWrappers.Result.Success_q(d), $Is(d, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)) } 
  $Is(d, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     ==> Std_mWrappers.Result.Success_q(d) || Std_mWrappers.Result.Failure_q(d));

// Datatype extensional equality declaration
function Std_mWrappers.Result#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Std.Wrappers.Result.Success
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.Result#Equal(a, b), Std_mWrappers.Result.Success_q(a) } 
    { Std_mWrappers.Result#Equal(a, b), Std_mWrappers.Result.Success_q(b) } 
  Std_mWrappers.Result.Success_q(a) && Std_mWrappers.Result.Success_q(b)
     ==> (Std_mWrappers.Result#Equal(a, b)
       <==> Std_mWrappers.Result.value(a) == Std_mWrappers.Result.value(b)));

// Datatype extensional equality definition: #Std.Wrappers.Result.Failure
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.Result#Equal(a, b), Std_mWrappers.Result.Failure_q(a) } 
    { Std_mWrappers.Result#Equal(a, b), Std_mWrappers.Result.Failure_q(b) } 
  Std_mWrappers.Result.Failure_q(a) && Std_mWrappers.Result.Failure_q(b)
     ==> (Std_mWrappers.Result#Equal(a, b)
       <==> Std_mWrappers.Result.error(a) == Std_mWrappers.Result.error(b)));

// Datatype extensionality axiom: Std.Wrappers.Result
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.Result#Equal(a, b) } 
  Std_mWrappers.Result#Equal(a, b) <==> a == b);

const unique class.Std_mWrappers.Result: ClassName;

// function declaration for Std.Wrappers.Result.IsFailure
function Std_mWrappers.Result.IsFailure(Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType) : bool
uses {
// definition axiom for Std_mWrappers.Result.IsFailure (revealed)
axiom {:id "id44"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.Result.IsFailure(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
    Std_mWrappers.Result.IsFailure#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         || (0 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)))
       ==> Std_mWrappers.Result.IsFailure(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         == Std_mWrappers.Result.Failure_q(this));
// definition axiom for Std_mWrappers.Result.IsFailure for all literals (revealed)
axiom {:id "id45"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.Result.IsFailure(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this)) } 
    Std_mWrappers.Result.IsFailure#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this))
         || (0 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)))
       ==> Std_mWrappers.Result.IsFailure(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this))
         == Lit(Std_mWrappers.Result.Failure_q(Lit(this))));
}

function Std_mWrappers.Result.IsFailure#canCall(Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType) : bool;

function Std_mWrappers.Result.IsFailure#requires(Ty, Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.Result.IsFailure
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
  { Std_mWrappers.Result.IsFailure#requires(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
  $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     ==> Std_mWrappers.Result.IsFailure#requires(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
       == true);

procedure {:verboseName "Std.Wrappers.Result.IsFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.Result.IsFailure(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
         && $IsAlloc(this, 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Result.PropagateFailure
function Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.PropagateFailure$U: Ty, 
    this: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Result.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    { Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.PropagateFailure$U, 
        this) } 
    Std_mWrappers.Result.PropagateFailure#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.PropagateFailure$U, 
          this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && Std_mWrappers.Result.Failure_q(this))
       ==> $Is(Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.PropagateFailure$U, 
          this), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result.PropagateFailure$U, Std.Wrappers.Result$E)));
// alloc consequence axiom for Std_mWrappers.Result.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    { $IsAlloc(Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.PropagateFailure$U, 
          this), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result.PropagateFailure$U, Std.Wrappers.Result$E), 
        $Heap) } 
    (Std_mWrappers.Result.PropagateFailure#canCall(Std.Wrappers.Result$R, 
            Std.Wrappers.Result$E, 
            Std.Wrappers.Result.PropagateFailure$U, 
            this)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, 
              Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              $Heap)
             && Std_mWrappers.Result.Failure_q(this)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.PropagateFailure$U, 
          this), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result.PropagateFailure$U, Std.Wrappers.Result$E), 
        $Heap));
// definition axiom for Std_mWrappers.Result.PropagateFailure (revealed)
axiom {:id "id47"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    { Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.PropagateFailure$U, 
        this) } 
    Std_mWrappers.Result.PropagateFailure#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.PropagateFailure$U, 
          this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && Std_mWrappers.Result.Failure_q(this))
       ==> Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.PropagateFailure$U, 
          this)
         == #Std.Wrappers.Result.Failure(Std_mWrappers.Result.error(this)));
// definition axiom for Std_mWrappers.Result.PropagateFailure for all literals (revealed)
axiom {:id "id48"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.PropagateFailure$U, 
        Lit(this)) } 
    Std_mWrappers.Result.PropagateFailure#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.PropagateFailure$U, 
          Lit(this))
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && Lit(Std_mWrappers.Result.Failure_q(Lit(this))))
       ==> Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.PropagateFailure$U, 
          Lit(this))
         == Lit(#Std.Wrappers.Result.Failure(Lit(Std_mWrappers.Result.error(Lit(this))))));
}

function Std_mWrappers.Result.PropagateFailure#canCall(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.PropagateFailure$U: Ty, 
    this: DatatypeType)
   : bool;

function Std_mWrappers.Result.PropagateFailure#requires(Ty, Ty, Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.Result.PropagateFailure
axiom (forall Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { Std_mWrappers.Result.PropagateFailure#requires(Std.Wrappers.Result$R, 
      Std.Wrappers.Result$E, 
      Std.Wrappers.Result.PropagateFailure$U, 
      this) } 
  $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     ==> Std_mWrappers.Result.PropagateFailure#requires(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.PropagateFailure$U, 
        this)
       == Std_mWrappers.Result.Failure_q(this));

procedure {:verboseName "Std.Wrappers.Result.PropagateFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.PropagateFailure$U: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
         && $IsAlloc(this, 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          $Heap))
   returns (r#0: DatatypeType);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Std.Wrappers.Result.PropagateFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.PropagateFailure$U: Ty, 
    this: DatatypeType)
   returns (r#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id49"} Std_mWrappers.Result.Failure_q(this);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
            Std.Wrappers.Result$E, 
            Std.Wrappers.Result.PropagateFailure$U, 
            this), 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result.PropagateFailure$U, Std.Wrappers.Result$E));
        assume $Is(r#0, 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result.PropagateFailure$U, Std.Wrappers.Result$E));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id50"} Std_mWrappers.Result.Failure_q(this);
        assume {:id "id51"} Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
            Std.Wrappers.Result$E, 
            Std.Wrappers.Result.PropagateFailure$U, 
            this)
           == #Std.Wrappers.Result.Failure(Std_mWrappers.Result.error(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
            Std.Wrappers.Result$E, 
            Std.Wrappers.Result.PropagateFailure$U, 
            this), 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result.PropagateFailure$U, Std.Wrappers.Result$E));
        assume {:id "id52"} Std_mWrappers.Result.PropagateFailure(Std.Wrappers.Result$R, 
            Std.Wrappers.Result$E, 
            Std.Wrappers.Result.PropagateFailure$U, 
            this)
           == r#0;
        return;

        assume false;
    }
}



// function declaration for Std.Wrappers.Result.Extract
function Std_mWrappers.Result.Extract(Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType) : Box
uses {
// consequence axiom for Std_mWrappers.Result.Extract
axiom 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
    Std_mWrappers.Result.Extract#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && Std_mWrappers.Result.Success_q(this))
       ==> $IsBox(Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
        Std.Wrappers.Result$R));
// alloc consequence axiom for Std_mWrappers.Result.Extract
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      this: DatatypeType :: 
    { $IsAllocBox(Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
        Std.Wrappers.Result$R, 
        $Heap) } 
    (Std_mWrappers.Result.Extract#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, 
              Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              $Heap)
             && Std_mWrappers.Result.Success_q(this)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
        Std.Wrappers.Result$R, 
        $Heap));
// definition axiom for Std_mWrappers.Result.Extract (revealed)
axiom {:id "id53"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
    Std_mWrappers.Result.Extract#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && Std_mWrappers.Result.Success_q(this))
       ==> Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         == Std_mWrappers.Result.value(this));
// definition axiom for Std_mWrappers.Result.Extract for all literals (revealed)
axiom {:id "id54"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this)) } 
    Std_mWrappers.Result.Extract#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && Lit(Std_mWrappers.Result.Success_q(Lit(this))))
       ==> Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this))
         == Lit(Std_mWrappers.Result.value(Lit(this))));
}

function Std_mWrappers.Result.Extract#canCall(Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType) : bool;

function Std_mWrappers.Result.Extract#requires(Ty, Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.Result.Extract
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
  { Std_mWrappers.Result.Extract#requires(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
  $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     ==> Std_mWrappers.Result.Extract#requires(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
       == Std_mWrappers.Result.Success_q(this));

procedure {:verboseName "Std.Wrappers.Result.Extract (well-formedness)"} CheckWellformed$$Std_mWrappers.Result.Extract(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
         && $IsAlloc(this, 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Std.Wrappers.Result.Extract (well-formedness)"} CheckWellformed$$Std_mWrappers.Result.Extract(Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id55"} Std_mWrappers.Result.Success_q(this);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
          Std.Wrappers.Result$R);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id56"} Std_mWrappers.Result.Success_q(this);
        assume {:id "id57"} Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
           == Std_mWrappers.Result.value(this);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(Std_mWrappers.Result.Extract(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
          Std.Wrappers.Result$R);
        return;

        assume false;
    }
}



// function declaration for Std.Wrappers.Result.GetOr
function Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    this: DatatypeType, 
    default#0: Box)
   : Box
uses {
// consequence axiom for Std_mWrappers.Result.GetOr
axiom 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      this: DatatypeType, 
      default#0: Box :: 
    { Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0) } 
    Std_mWrappers.Result.GetOr#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $IsBox(default#0, Std.Wrappers.Result$R))
       ==> $IsBox(Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0), 
        Std.Wrappers.Result$R));
// alloc consequence axiom for Std_mWrappers.Result.GetOr
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      this: DatatypeType, 
      default#0: Box :: 
    { $IsAllocBox(Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0), 
        Std.Wrappers.Result$R, 
        $Heap) } 
    (Std_mWrappers.Result.GetOr#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, 
              Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              $Heap)
             && 
            $IsBox(default#0, Std.Wrappers.Result$R)
             && $IsAllocBox(default#0, Std.Wrappers.Result$R, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0), 
        Std.Wrappers.Result$R, 
        $Heap));
// definition axiom for Std_mWrappers.Result.GetOr (revealed)
axiom {:id "id58"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      this: DatatypeType, 
      default#0: Box :: 
    { Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0) } 
    Std_mWrappers.Result.GetOr#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $IsBox(default#0, Std.Wrappers.Result$R))
       ==> Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0)
         == (if Std_mWrappers.Result.Success_q(this)
           then (var s#0 := Std_mWrappers.Result.value(this); s#0)
           else (var e#0 := Std_mWrappers.Result.error(this); default#0)));
// definition axiom for Std_mWrappers.Result.GetOr for decreasing-related literals (revealed)
axiom {:id "id59"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      this: DatatypeType, 
      default#0: Box :: 
    {:weight 3} { Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this), default#0) } 
    Std_mWrappers.Result.GetOr#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this), default#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $IsBox(default#0, Std.Wrappers.Result$R))
       ==> Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this), default#0)
         == (if Std_mWrappers.Result.Success_q(Lit(this))
           then (var s#2 := Lit(Std_mWrappers.Result.value(Lit(this))); s#2)
           else (var e#2 := Lit(Std_mWrappers.Result.error(Lit(this))); default#0)));
// definition axiom for Std_mWrappers.Result.GetOr for all literals (revealed)
axiom {:id "id60"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      this: DatatypeType, 
      default#0: Box :: 
    {:weight 3} { Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this), Lit(default#0)) } 
    Std_mWrappers.Result.GetOr#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this), Lit(default#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $IsBox(default#0, Std.Wrappers.Result$R))
       ==> Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this), Lit(default#0))
         == (if Std_mWrappers.Result.Success_q(Lit(this))
           then (var s#4 := Lit(Std_mWrappers.Result.value(Lit(this))); s#4)
           else (var e#4 := Lit(Std_mWrappers.Result.error(Lit(this))); Lit(default#0))));
}

function Std_mWrappers.Result.GetOr#canCall(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    this: DatatypeType, 
    default#0: Box)
   : bool;

function Std_mWrappers.Result.GetOr#requires(Ty, Ty, DatatypeType, Box) : bool;

// #requires axiom for Std_mWrappers.Result.GetOr
axiom (forall Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    this: DatatypeType, 
    default#0: Box :: 
  { Std_mWrappers.Result.GetOr#requires(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0) } 
  $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
       && $IsBox(default#0, Std.Wrappers.Result$R)
     ==> Std_mWrappers.Result.GetOr#requires(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this, default#0)
       == true);

procedure {:verboseName "Std.Wrappers.Result.GetOr (well-formedness)"} CheckWellformed$$Std_mWrappers.Result.GetOr(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
         && $IsAlloc(this, 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          $Heap), 
    default#0: Box where $IsBox(default#0, Std.Wrappers.Result$R));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Result.ToOption
function Std_mWrappers.Result.ToOption(Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Result.ToOption
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.Result.ToOption(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
    Std_mWrappers.Result.ToOption#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         || (1 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)))
       ==> $Is(Std_mWrappers.Result.ToOption(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
        Tclass.Std_mWrappers.Option(Std.Wrappers.Result$R)));
// alloc consequence axiom for Std_mWrappers.Result.ToOption
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      this: DatatypeType :: 
    { $IsAlloc(Std_mWrappers.Result.ToOption(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
        Tclass.Std_mWrappers.Option(Std.Wrappers.Result$R), 
        $Heap) } 
    (Std_mWrappers.Result.ToOption#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
           || (1 < $FunctionContextHeight
             && $IsAlloc(this, 
              Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Result.ToOption(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
        Tclass.Std_mWrappers.Option(Std.Wrappers.Result$R), 
        $Heap));
// definition axiom for Std_mWrappers.Result.ToOption (revealed)
axiom {:id "id67"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.Result.ToOption(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
    Std_mWrappers.Result.ToOption#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         || (1 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)))
       ==> Std_mWrappers.Result.ToOption(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         == (if Std_mWrappers.Result.Success_q(this)
           then (var s#0 := Std_mWrappers.Result.value(this); #Std.Wrappers.Option.Some(s#0))
           else (var e#0 := Std_mWrappers.Result.error(this); Lit(#Std.Wrappers.Option.None()))));
// definition axiom for Std_mWrappers.Result.ToOption for all literals (revealed)
axiom {:id "id68"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.Result.ToOption(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this)) } 
    Std_mWrappers.Result.ToOption#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this))
         || (1 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)))
       ==> Std_mWrappers.Result.ToOption(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this))
         == (if Std_mWrappers.Result.Success_q(Lit(this))
           then (var s#2 := Lit(Std_mWrappers.Result.value(Lit(this))); 
            Lit(#Std.Wrappers.Option.Some(s#2)))
           else (var e#2 := Lit(Std_mWrappers.Result.error(Lit(this))); 
            Lit(#Std.Wrappers.Option.None()))));
}

function Std_mWrappers.Result.ToOption#canCall(Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType) : bool;

function Std_mWrappers.Result.ToOption#requires(Ty, Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.Result.ToOption
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
  { Std_mWrappers.Result.ToOption#requires(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
  $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     ==> Std_mWrappers.Result.ToOption#requires(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
       == true);

procedure {:verboseName "Std.Wrappers.Result.ToOption (well-formedness)"} CheckWellformed$$Std_mWrappers.Result.ToOption(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
         && $IsAlloc(this, 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Result.ToOutcome
function Std_mWrappers.Result.ToOutcome(Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Result.ToOutcome
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.Result.ToOutcome(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
    Std_mWrappers.Result.ToOutcome#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         || (1 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)))
       ==> $Is(Std_mWrappers.Result.ToOutcome(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Result$E)));
// alloc consequence axiom for Std_mWrappers.Result.ToOutcome
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      this: DatatypeType :: 
    { $IsAlloc(Std_mWrappers.Result.ToOutcome(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Result$E), 
        $Heap) } 
    (Std_mWrappers.Result.ToOutcome#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
           || (1 < $FunctionContextHeight
             && $IsAlloc(this, 
              Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Result.ToOutcome(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Result$E), 
        $Heap));
// definition axiom for Std_mWrappers.Result.ToOutcome (revealed)
axiom {:id "id75"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.Result.ToOutcome(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
    Std_mWrappers.Result.ToOutcome#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         || (1 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)))
       ==> Std_mWrappers.Result.ToOutcome(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
         == (if Std_mWrappers.Result.Success_q(this)
           then (var s#0 := Std_mWrappers.Result.value(this); Lit(#Std.Wrappers.Outcome.Pass()))
           else (var e#0 := Std_mWrappers.Result.error(this); #Std.Wrappers.Outcome.Fail(e#0))));
// definition axiom for Std_mWrappers.Result.ToOutcome for all literals (revealed)
axiom {:id "id76"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.Result.ToOutcome(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this)) } 
    Std_mWrappers.Result.ToOutcome#canCall(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this))
         || (1 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E)))
       ==> Std_mWrappers.Result.ToOutcome(Std.Wrappers.Result$R, Std.Wrappers.Result$E, Lit(this))
         == (if Std_mWrappers.Result.Success_q(Lit(this))
           then (var s#2 := Lit(Std_mWrappers.Result.value(Lit(this))); 
            Lit(#Std.Wrappers.Outcome.Pass()))
           else (var e#2 := Lit(Std_mWrappers.Result.error(Lit(this))); 
            Lit(#Std.Wrappers.Outcome.Fail(e#2)))));
}

function Std_mWrappers.Result.ToOutcome#canCall(Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType) : bool;

function Std_mWrappers.Result.ToOutcome#requires(Ty, Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.Result.ToOutcome
axiom (forall Std.Wrappers.Result$R: Ty, Std.Wrappers.Result$E: Ty, this: DatatypeType :: 
  { Std_mWrappers.Result.ToOutcome#requires(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this) } 
  $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
     ==> Std_mWrappers.Result.ToOutcome#requires(Std.Wrappers.Result$R, Std.Wrappers.Result$E, this)
       == true);

procedure {:verboseName "Std.Wrappers.Result.ToOutcome (well-formedness)"} CheckWellformed$$Std_mWrappers.Result.ToOutcome(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
         && $IsAlloc(this, 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Result.Map
function Std_mWrappers.Result.Map(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.Map$FC: Ty, 
    this: DatatypeType, 
    rewrap#0: HandleType)
   : Box
uses {
// consequence axiom for Std_mWrappers.Result.Map
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.Map$FC: Ty, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    { Std_mWrappers.Result.Map(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.Map$FC, 
        this, 
        rewrap#0) } 
    Std_mWrappers.Result.Map#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.Map$FC, 
          this, 
          rewrap#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              Std.Wrappers.Result.Map$FC)))
       ==> $IsBox(Std_mWrappers.Result.Map(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.Map$FC, 
          this, 
          rewrap#0), 
        Std.Wrappers.Result.Map$FC));
// alloc consequence axiom for Std_mWrappers.Result.Map
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.Map$FC: Ty, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    { $IsAllocBox(Std_mWrappers.Result.Map(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.Map$FC, 
          this, 
          rewrap#0), 
        Std.Wrappers.Result.Map$FC, 
        $Heap) } 
    (Std_mWrappers.Result.Map#canCall(Std.Wrappers.Result$R, 
            Std.Wrappers.Result$E, 
            Std.Wrappers.Result.Map$FC, 
            this, 
            rewrap#0)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, 
              Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              $Heap)
             && 
            $Is(rewrap#0, 
              Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
                Std.Wrappers.Result.Map$FC))
             && $IsAlloc(rewrap#0, 
              Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
                Std.Wrappers.Result.Map$FC), 
              $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(Std_mWrappers.Result.Map(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.Map$FC, 
          this, 
          rewrap#0), 
        Std.Wrappers.Result.Map$FC, 
        $Heap));
// definition axiom for Std_mWrappers.Result.Map (revealed)
axiom {:id "id83"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.Map$FC: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    { Std_mWrappers.Result.Map(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.Map$FC, 
        this, 
        rewrap#0), $IsGoodHeap($Heap) } 
    Std_mWrappers.Result.Map#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.Map$FC, 
          this, 
          rewrap#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $IsAlloc(this, 
            Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
            $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              Std.Wrappers.Result.Map$FC)))
       ==> Std_mWrappers.Result.Map(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.Map$FC, 
          this, 
          rewrap#0)
         == Apply1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          Std.Wrappers.Result.Map$FC, 
          $Heap, 
          rewrap#0, 
          $Box(this)));
// definition axiom for Std_mWrappers.Result.Map for decreasing-related literals (revealed)
axiom {:id "id84"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.Map$FC: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    {:weight 3} { Std_mWrappers.Result.Map(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.Map$FC, 
        Lit(this), 
        rewrap#0), $IsGoodHeap($Heap) } 
    Std_mWrappers.Result.Map#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.Map$FC, 
          Lit(this), 
          rewrap#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $IsAlloc(this, 
            Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
            $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              Std.Wrappers.Result.Map$FC)))
       ==> Std_mWrappers.Result.Map(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.Map$FC, 
          Lit(this), 
          rewrap#0)
         == Apply1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          Std.Wrappers.Result.Map$FC, 
          $Heap, 
          rewrap#0, 
          $Box(Lit(this))));
// definition axiom for Std_mWrappers.Result.Map for all literals (revealed)
axiom {:id "id85"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.Map$FC: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    {:weight 3} { Std_mWrappers.Result.Map(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.Map$FC, 
        Lit(this), 
        Lit(rewrap#0)), $IsGoodHeap($Heap) } 
    Std_mWrappers.Result.Map#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.Map$FC, 
          Lit(this), 
          Lit(rewrap#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $IsAlloc(this, 
            Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
            $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              Std.Wrappers.Result.Map$FC)))
       ==> Std_mWrappers.Result.Map(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.Map$FC, 
          Lit(this), 
          Lit(rewrap#0))
         == Apply1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          Std.Wrappers.Result.Map$FC, 
          $Heap, 
          Lit(rewrap#0), 
          $Box(Lit(this))));
}

function Std_mWrappers.Result.Map#canCall(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.Map$FC: Ty, 
    this: DatatypeType, 
    rewrap#0: HandleType)
   : bool;

function Std_mWrappers.Result.Map#requires(Ty, Ty, Ty, DatatypeType, HandleType) : bool;

// #requires axiom for Std_mWrappers.Result.Map
axiom (forall Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.Map$FC: Ty, 
    $Heap: Heap, 
    this: DatatypeType, 
    rewrap#0: HandleType :: 
  { Std_mWrappers.Result.Map#requires(Std.Wrappers.Result$R, 
      Std.Wrappers.Result$E, 
      Std.Wrappers.Result.Map$FC, 
      this, 
      rewrap#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
       && $IsAlloc(this, 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
        $Heap)
       && $Is(rewrap#0, 
        Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          Std.Wrappers.Result.Map$FC))
     ==> Std_mWrappers.Result.Map#requires(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.Map$FC, 
        this, 
        rewrap#0)
       == true);

procedure {:verboseName "Std.Wrappers.Result.Map (well-formedness)"} CheckWellformed$$Std_mWrappers.Result.Map(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.Map$FC: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
         && $IsAlloc(this, 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          $Heap), 
    rewrap#0: HandleType
       where $Is(rewrap#0, 
        Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          Std.Wrappers.Result.Map$FC)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Result.MapFailure
function Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.MapFailure$NewE: Ty, 
    this: DatatypeType, 
    reWrap#0: HandleType)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Result.MapFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.MapFailure$NewE: Ty, 
      this: DatatypeType, 
      reWrap#0: HandleType :: 
    { Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.MapFailure$NewE, 
        this, 
        reWrap#0) } 
    Std_mWrappers.Result.MapFailure#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.MapFailure$NewE, 
          this, 
          reWrap#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $Is(reWrap#0, 
            Tclass._System.___hTotalFunc1(Std.Wrappers.Result$E, Std.Wrappers.Result.MapFailure$NewE)))
       ==> $Is(Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.MapFailure$NewE, 
          this, 
          reWrap#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result.MapFailure$NewE)));
// alloc consequence axiom for Std_mWrappers.Result.MapFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.MapFailure$NewE: Ty, 
      this: DatatypeType, 
      reWrap#0: HandleType :: 
    { $IsAlloc(Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.MapFailure$NewE, 
          this, 
          reWrap#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result.MapFailure$NewE), 
        $Heap) } 
    (Std_mWrappers.Result.MapFailure#canCall(Std.Wrappers.Result$R, 
            Std.Wrappers.Result$E, 
            Std.Wrappers.Result.MapFailure$NewE, 
            this, 
            reWrap#0)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, 
              Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
              $Heap)
             && 
            $Is(reWrap#0, 
              Tclass._System.___hTotalFunc1(Std.Wrappers.Result$E, Std.Wrappers.Result.MapFailure$NewE))
             && $IsAlloc(reWrap#0, 
              Tclass._System.___hTotalFunc1(Std.Wrappers.Result$E, Std.Wrappers.Result.MapFailure$NewE), 
              $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.MapFailure$NewE, 
          this, 
          reWrap#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result.MapFailure$NewE), 
        $Heap));
// definition axiom for Std_mWrappers.Result.MapFailure (revealed)
axiom {:id "id87"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.MapFailure$NewE: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      reWrap#0: HandleType :: 
    { Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.MapFailure$NewE, 
        this, 
        reWrap#0), $IsGoodHeap($Heap) } 
    Std_mWrappers.Result.MapFailure#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.MapFailure$NewE, 
          this, 
          reWrap#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $IsAlloc(this, 
            Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
            $Heap)
           && $Is(reWrap#0, 
            Tclass._System.___hTotalFunc1(Std.Wrappers.Result$E, Std.Wrappers.Result.MapFailure$NewE)))
       ==> Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.MapFailure$NewE, 
          this, 
          reWrap#0)
         == (if Std_mWrappers.Result.Success_q(this)
           then (var s#0 := Std_mWrappers.Result.value(this); #Std.Wrappers.Result.Success(s#0))
           else (var e#0 := Std_mWrappers.Result.error(this); 
            #Std.Wrappers.Result.Failure(Apply1(Std.Wrappers.Result$E, Std.Wrappers.Result.MapFailure$NewE, $Heap, reWrap#0, e#0)))));
// definition axiom for Std_mWrappers.Result.MapFailure for decreasing-related literals (revealed)
axiom {:id "id88"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.MapFailure$NewE: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      reWrap#0: HandleType :: 
    {:weight 3} { Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.MapFailure$NewE, 
        Lit(this), 
        reWrap#0), $IsGoodHeap($Heap) } 
    Std_mWrappers.Result.MapFailure#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.MapFailure$NewE, 
          Lit(this), 
          reWrap#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $IsAlloc(this, 
            Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
            $Heap)
           && $Is(reWrap#0, 
            Tclass._System.___hTotalFunc1(Std.Wrappers.Result$E, Std.Wrappers.Result.MapFailure$NewE)))
       ==> Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.MapFailure$NewE, 
          Lit(this), 
          reWrap#0)
         == (if Std_mWrappers.Result.Success_q(Lit(this))
           then (var s#2 := Lit(Std_mWrappers.Result.value(Lit(this))); 
            Lit(#Std.Wrappers.Result.Success(s#2)))
           else (var e#2 := Lit(Std_mWrappers.Result.error(Lit(this))); 
            #Std.Wrappers.Result.Failure(Apply1(Std.Wrappers.Result$E, Std.Wrappers.Result.MapFailure$NewE, $Heap, reWrap#0, e#2)))));
// definition axiom for Std_mWrappers.Result.MapFailure for all literals (revealed)
axiom {:id "id89"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Result$R: Ty, 
      Std.Wrappers.Result$E: Ty, 
      Std.Wrappers.Result.MapFailure$NewE: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      reWrap#0: HandleType :: 
    {:weight 3} { Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.MapFailure$NewE, 
        Lit(this), 
        Lit(reWrap#0)), $IsGoodHeap($Heap) } 
    Std_mWrappers.Result.MapFailure#canCall(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.MapFailure$NewE, 
          Lit(this), 
          Lit(reWrap#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
           && $IsAlloc(this, 
            Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
            $Heap)
           && $Is(reWrap#0, 
            Tclass._System.___hTotalFunc1(Std.Wrappers.Result$E, Std.Wrappers.Result.MapFailure$NewE)))
       ==> Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R, 
          Std.Wrappers.Result$E, 
          Std.Wrappers.Result.MapFailure$NewE, 
          Lit(this), 
          Lit(reWrap#0))
         == (if Std_mWrappers.Result.Success_q(Lit(this))
           then (var s#4 := Lit(Std_mWrappers.Result.value(Lit(this))); 
            Lit(#Std.Wrappers.Result.Success(s#4)))
           else (var e#4 := Lit(Std_mWrappers.Result.error(Lit(this))); 
            #Std.Wrappers.Result.Failure(Apply1(Std.Wrappers.Result$E, 
                Std.Wrappers.Result.MapFailure$NewE, 
                $Heap, 
                Lit(reWrap#0), 
                e#4)))));
}

function Std_mWrappers.Result.MapFailure#canCall(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.MapFailure$NewE: Ty, 
    this: DatatypeType, 
    reWrap#0: HandleType)
   : bool;

function Std_mWrappers.Result.MapFailure#requires(Ty, Ty, Ty, DatatypeType, HandleType) : bool;

// #requires axiom for Std_mWrappers.Result.MapFailure
axiom (forall Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.MapFailure$NewE: Ty, 
    $Heap: Heap, 
    this: DatatypeType, 
    reWrap#0: HandleType :: 
  { Std_mWrappers.Result.MapFailure#requires(Std.Wrappers.Result$R, 
      Std.Wrappers.Result$E, 
      Std.Wrappers.Result.MapFailure$NewE, 
      this, 
      reWrap#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
       && $IsAlloc(this, 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
        $Heap)
       && $Is(reWrap#0, 
        Tclass._System.___hTotalFunc1(Std.Wrappers.Result$E, Std.Wrappers.Result.MapFailure$NewE))
     ==> Std_mWrappers.Result.MapFailure#requires(Std.Wrappers.Result$R, 
        Std.Wrappers.Result$E, 
        Std.Wrappers.Result.MapFailure$NewE, 
        this, 
        reWrap#0)
       == true);

procedure {:verboseName "Std.Wrappers.Result.MapFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.Result.MapFailure(Std.Wrappers.Result$R: Ty, 
    Std.Wrappers.Result$E: Ty, 
    Std.Wrappers.Result.MapFailure$NewE: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E))
         && $IsAlloc(this, 
          Tclass.Std_mWrappers.Result(Std.Wrappers.Result$R, Std.Wrappers.Result$E), 
          $Heap), 
    reWrap#0: HandleType
       where $Is(reWrap#0, 
        Tclass._System.___hTotalFunc1(Std.Wrappers.Result$E, Std.Wrappers.Result.MapFailure$NewE)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #Std.Wrappers.Outcome.Pass() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Std.Wrappers.Outcome.Pass()) == ##Std.Wrappers.Outcome.Pass;
// Constructor literal
axiom #Std.Wrappers.Outcome.Pass() == Lit(#Std.Wrappers.Outcome.Pass());
}

const unique ##Std.Wrappers.Outcome.Pass: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Std.Wrappers.Outcome.Pass()) == ##Std.Wrappers.Outcome.Pass;
}

function Std_mWrappers.Outcome.Pass_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Outcome.Pass_q(d) } 
  Std_mWrappers.Outcome.Pass_q(d)
     <==> DatatypeCtorId(d) == ##Std.Wrappers.Outcome.Pass);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Outcome.Pass_q(d) } 
  Std_mWrappers.Outcome.Pass_q(d) ==> d == #Std.Wrappers.Outcome.Pass());

// Constructor $Is
axiom (forall Std.Wrappers.Outcome$E: Ty :: 
  { $Is(#Std.Wrappers.Outcome.Pass(), 
      Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)) } 
  $Is(#Std.Wrappers.Outcome.Pass(), 
    Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)));

// Constructor $IsAlloc
axiom (forall Std.Wrappers.Outcome$E: Ty, $h: Heap :: 
  { $IsAlloc(#Std.Wrappers.Outcome.Pass(), 
      Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Std.Wrappers.Outcome.Pass(), 
      Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
      $h));

// Constructor function declaration
function #Std.Wrappers.Outcome.Fail(Box) : DatatypeType;

const unique ##Std.Wrappers.Outcome.Fail: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box :: 
  { #Std.Wrappers.Outcome.Fail(a#4#0#0) } 
  DatatypeCtorId(#Std.Wrappers.Outcome.Fail(a#4#0#0))
     == ##Std.Wrappers.Outcome.Fail);
}

function Std_mWrappers.Outcome.Fail_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Outcome.Fail_q(d) } 
  Std_mWrappers.Outcome.Fail_q(d)
     <==> DatatypeCtorId(d) == ##Std.Wrappers.Outcome.Fail);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.Outcome.Fail_q(d) } 
  Std_mWrappers.Outcome.Fail_q(d)
     ==> (exists a#5#0#0: Box :: d == #Std.Wrappers.Outcome.Fail(a#5#0#0)));

// Constructor $Is
axiom (forall Std.Wrappers.Outcome$E: Ty, a#6#0#0: Box :: 
  { $Is(#Std.Wrappers.Outcome.Fail(a#6#0#0), 
      Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)) } 
  $Is(#Std.Wrappers.Outcome.Fail(a#6#0#0), 
      Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
     <==> $IsBox(a#6#0#0, Std.Wrappers.Outcome$E));

// Constructor $IsAlloc
axiom (forall Std.Wrappers.Outcome$E: Ty, a#6#0#0: Box, $h: Heap :: 
  { $IsAlloc(#Std.Wrappers.Outcome.Fail(a#6#0#0), 
      Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Std.Wrappers.Outcome.Fail(a#6#0#0), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
        $h)
       <==> $IsAllocBox(a#6#0#0, Std.Wrappers.Outcome$E, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Std.Wrappers.Outcome$E: Ty, $h: Heap :: 
  { $IsAllocBox(Std_mWrappers.Outcome.error(d), Std.Wrappers.Outcome$E, $h) } 
  $IsGoodHeap($h)
       && 
      Std_mWrappers.Outcome.Fail_q(d)
       && $IsAlloc(d, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $h)
     ==> $IsAllocBox(Std_mWrappers.Outcome.error(d), Std.Wrappers.Outcome$E, $h));

// Constructor literal
axiom (forall a#7#0#0: Box :: 
  { #Std.Wrappers.Outcome.Fail(Lit(a#7#0#0)) } 
  #Std.Wrappers.Outcome.Fail(Lit(a#7#0#0))
     == Lit(#Std.Wrappers.Outcome.Fail(a#7#0#0)));

function Std_mWrappers.Outcome.error(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box :: 
  { #Std.Wrappers.Outcome.Fail(a#8#0#0) } 
  Std_mWrappers.Outcome.error(#Std.Wrappers.Outcome.Fail(a#8#0#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box :: 
  { #Std.Wrappers.Outcome.Fail(a#9#0#0) } 
  BoxRank(a#9#0#0) < DtRank(#Std.Wrappers.Outcome.Fail(a#9#0#0)));

// Depth-one case-split function
function $IsA#Std_mWrappers.Outcome(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Std_mWrappers.Outcome(d) } 
  $IsA#Std_mWrappers.Outcome(d)
     ==> Std_mWrappers.Outcome.Pass_q(d) || Std_mWrappers.Outcome.Fail_q(d));

// Questionmark data type disjunctivity
axiom (forall Std.Wrappers.Outcome$E: Ty, d: DatatypeType :: 
  { Std_mWrappers.Outcome.Fail_q(d), $Is(d, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)) } 
    { Std_mWrappers.Outcome.Pass_q(d), $Is(d, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)) } 
  $Is(d, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
     ==> Std_mWrappers.Outcome.Pass_q(d) || Std_mWrappers.Outcome.Fail_q(d));

// Datatype extensional equality declaration
function Std_mWrappers.Outcome#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Std.Wrappers.Outcome.Pass
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.Outcome#Equal(a, b), Std_mWrappers.Outcome.Pass_q(a) } 
    { Std_mWrappers.Outcome#Equal(a, b), Std_mWrappers.Outcome.Pass_q(b) } 
  Std_mWrappers.Outcome.Pass_q(a) && Std_mWrappers.Outcome.Pass_q(b)
     ==> Std_mWrappers.Outcome#Equal(a, b));

// Datatype extensional equality definition: #Std.Wrappers.Outcome.Fail
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.Outcome#Equal(a, b), Std_mWrappers.Outcome.Fail_q(a) } 
    { Std_mWrappers.Outcome#Equal(a, b), Std_mWrappers.Outcome.Fail_q(b) } 
  Std_mWrappers.Outcome.Fail_q(a) && Std_mWrappers.Outcome.Fail_q(b)
     ==> (Std_mWrappers.Outcome#Equal(a, b)
       <==> Std_mWrappers.Outcome.error(a) == Std_mWrappers.Outcome.error(b)));

// Datatype extensionality axiom: Std.Wrappers.Outcome
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.Outcome#Equal(a, b) } 
  Std_mWrappers.Outcome#Equal(a, b) <==> a == b);

const unique class.Std_mWrappers.Outcome: ClassName;

// function declaration for Std.Wrappers.Outcome.IsFailure
function Std_mWrappers.Outcome.IsFailure(Std.Wrappers.Outcome$E: Ty, this: DatatypeType) : bool
uses {
// definition axiom for Std_mWrappers.Outcome.IsFailure (revealed)
axiom {:id "id96"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.Outcome.IsFailure(Std.Wrappers.Outcome$E, this) } 
    Std_mWrappers.Outcome.IsFailure#canCall(Std.Wrappers.Outcome$E, this)
         || (0 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)))
       ==> Std_mWrappers.Outcome.IsFailure(Std.Wrappers.Outcome$E, this)
         == Std_mWrappers.Outcome.Fail_q(this));
// definition axiom for Std_mWrappers.Outcome.IsFailure for all literals (revealed)
axiom {:id "id97"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.Outcome.IsFailure(Std.Wrappers.Outcome$E, Lit(this)) } 
    Std_mWrappers.Outcome.IsFailure#canCall(Std.Wrappers.Outcome$E, Lit(this))
         || (0 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)))
       ==> Std_mWrappers.Outcome.IsFailure(Std.Wrappers.Outcome$E, Lit(this))
         == Lit(Std_mWrappers.Outcome.Fail_q(Lit(this))));
}

function Std_mWrappers.Outcome.IsFailure#canCall(Std.Wrappers.Outcome$E: Ty, this: DatatypeType) : bool;

function Std_mWrappers.Outcome.IsFailure#requires(Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.Outcome.IsFailure
axiom (forall Std.Wrappers.Outcome$E: Ty, this: DatatypeType :: 
  { Std_mWrappers.Outcome.IsFailure#requires(Std.Wrappers.Outcome$E, this) } 
  $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
     ==> Std_mWrappers.Outcome.IsFailure#requires(Std.Wrappers.Outcome$E, this) == true);

procedure {:verboseName "Std.Wrappers.Outcome.IsFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.Outcome.IsFailure(Std.Wrappers.Outcome$E: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
         && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Outcome.PropagateFailure
function Std_mWrappers.Outcome.PropagateFailure(Std.Wrappers.Outcome$E: Ty, this: DatatypeType) : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Outcome.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.Outcome.PropagateFailure(Std.Wrappers.Outcome$E, this) } 
    Std_mWrappers.Outcome.PropagateFailure#canCall(Std.Wrappers.Outcome$E, this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && Std_mWrappers.Outcome.Fail_q(this))
       ==> $Is(Std_mWrappers.Outcome.PropagateFailure(Std.Wrappers.Outcome$E, this), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)));
// alloc consequence axiom for Std_mWrappers.Outcome.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, Std.Wrappers.Outcome$E: Ty, this: DatatypeType :: 
    { $IsAlloc(Std_mWrappers.Outcome.PropagateFailure(Std.Wrappers.Outcome$E, this), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
        $Heap) } 
    (Std_mWrappers.Outcome.PropagateFailure#canCall(Std.Wrappers.Outcome$E, this)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
             && Std_mWrappers.Outcome.Fail_q(this)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Outcome.PropagateFailure(Std.Wrappers.Outcome$E, this), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
        $Heap));
// definition axiom for Std_mWrappers.Outcome.PropagateFailure (revealed)
axiom {:id "id99"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.Outcome.PropagateFailure(Std.Wrappers.Outcome$E, this) } 
    Std_mWrappers.Outcome.PropagateFailure#canCall(Std.Wrappers.Outcome$E, this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && Std_mWrappers.Outcome.Fail_q(this))
       ==> Std_mWrappers.Outcome.PropagateFailure(Std.Wrappers.Outcome$E, this) == this);
// definition axiom for Std_mWrappers.Outcome.PropagateFailure for all literals (revealed)
axiom {:id "id100"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.Outcome.PropagateFailure(Std.Wrappers.Outcome$E, Lit(this)) } 
    Std_mWrappers.Outcome.PropagateFailure#canCall(Std.Wrappers.Outcome$E, Lit(this))
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && Lit(Std_mWrappers.Outcome.Fail_q(Lit(this))))
       ==> Std_mWrappers.Outcome.PropagateFailure(Std.Wrappers.Outcome$E, Lit(this))
         == Lit(this));
}

function Std_mWrappers.Outcome.PropagateFailure#canCall(Std.Wrappers.Outcome$E: Ty, this: DatatypeType) : bool;

function Std_mWrappers.Outcome.PropagateFailure#requires(Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.Outcome.PropagateFailure
axiom (forall Std.Wrappers.Outcome$E: Ty, this: DatatypeType :: 
  { Std_mWrappers.Outcome.PropagateFailure#requires(Std.Wrappers.Outcome$E, this) } 
  $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
     ==> Std_mWrappers.Outcome.PropagateFailure#requires(Std.Wrappers.Outcome$E, this)
       == Std_mWrappers.Outcome.Fail_q(this));

procedure {:verboseName "Std.Wrappers.Outcome.PropagateFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.Outcome.PropagateFailure(Std.Wrappers.Outcome$E: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
         && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Outcome.ToOption
function Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.ToOption$R: Ty, 
    this: DatatypeType, 
    r#0: Box)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Outcome.ToOption
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.ToOption$R: Ty, 
      this: DatatypeType, 
      r#0: Box :: 
    { Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0) } 
    Std_mWrappers.Outcome.ToOption#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsBox(r#0, Std.Wrappers.Outcome.ToOption$R))
       ==> $Is(Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0), 
        Tclass.Std_mWrappers.Option(Std.Wrappers.Outcome.ToOption$R)));
// alloc consequence axiom for Std_mWrappers.Outcome.ToOption
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.ToOption$R: Ty, 
      this: DatatypeType, 
      r#0: Box :: 
    { $IsAlloc(Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0), 
        Tclass.Std_mWrappers.Option(Std.Wrappers.Outcome.ToOption$R), 
        $Heap) } 
    (Std_mWrappers.Outcome.ToOption#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
             && 
            $IsBox(r#0, Std.Wrappers.Outcome.ToOption$R)
             && $IsAllocBox(r#0, Std.Wrappers.Outcome.ToOption$R, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0), 
        Tclass.Std_mWrappers.Option(Std.Wrappers.Outcome.ToOption$R), 
        $Heap));
// definition axiom for Std_mWrappers.Outcome.ToOption (revealed)
axiom {:id "id103"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.ToOption$R: Ty, 
      this: DatatypeType, 
      r#0: Box :: 
    { Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0) } 
    Std_mWrappers.Outcome.ToOption#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsBox(r#0, Std.Wrappers.Outcome.ToOption$R))
       ==> Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0)
         == (if Std_mWrappers.Outcome.Pass_q(this)
           then #Std.Wrappers.Option.Some(r#0)
           else (var e#0 := Std_mWrappers.Outcome.error(this); Lit(#Std.Wrappers.Option.None()))));
// definition axiom for Std_mWrappers.Outcome.ToOption for decreasing-related literals (revealed)
axiom {:id "id104"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.ToOption$R: Ty, 
      this: DatatypeType, 
      r#0: Box :: 
    {:weight 3} { Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, Lit(this), r#0) } 
    Std_mWrappers.Outcome.ToOption#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, Lit(this), r#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsBox(r#0, Std.Wrappers.Outcome.ToOption$R))
       ==> Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, Lit(this), r#0)
         == (if Std_mWrappers.Outcome.Pass_q(Lit(this))
           then #Std.Wrappers.Option.Some(r#0)
           else (var e#2 := Lit(Std_mWrappers.Outcome.error(Lit(this))); 
            Lit(#Std.Wrappers.Option.None()))));
// definition axiom for Std_mWrappers.Outcome.ToOption for all literals (revealed)
axiom {:id "id105"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.ToOption$R: Ty, 
      this: DatatypeType, 
      r#0: Box :: 
    {:weight 3} { Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, Lit(this), Lit(r#0)) } 
    Std_mWrappers.Outcome.ToOption#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, Lit(this), Lit(r#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsBox(r#0, Std.Wrappers.Outcome.ToOption$R))
       ==> Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, Lit(this), Lit(r#0))
         == (if Std_mWrappers.Outcome.Pass_q(Lit(this))
           then #Std.Wrappers.Option.Some(Lit(r#0))
           else (var e#4 := Lit(Std_mWrappers.Outcome.error(Lit(this))); 
            Lit(#Std.Wrappers.Option.None()))));
}

function Std_mWrappers.Outcome.ToOption#canCall(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.ToOption$R: Ty, 
    this: DatatypeType, 
    r#0: Box)
   : bool;

function Std_mWrappers.Outcome.ToOption#requires(Ty, Ty, DatatypeType, Box) : bool;

// #requires axiom for Std_mWrappers.Outcome.ToOption
axiom (forall Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.ToOption$R: Ty, 
    this: DatatypeType, 
    r#0: Box :: 
  { Std_mWrappers.Outcome.ToOption#requires(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0) } 
  $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
       && $IsBox(r#0, Std.Wrappers.Outcome.ToOption$R)
     ==> Std_mWrappers.Outcome.ToOption#requires(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToOption$R, this, r#0)
       == true);

procedure {:verboseName "Std.Wrappers.Outcome.ToOption (well-formedness)"} CheckWellformed$$Std_mWrappers.Outcome.ToOption(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.ToOption$R: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
         && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap), 
    r#0: Box where $IsBox(r#0, Std.Wrappers.Outcome.ToOption$R));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Outcome.ToResult
function Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.ToResult$R: Ty, 
    this: DatatypeType, 
    r#0: Box)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Outcome.ToResult
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.ToResult$R: Ty, 
      this: DatatypeType, 
      r#0: Box :: 
    { Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0) } 
    Std_mWrappers.Outcome.ToResult#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsBox(r#0, Std.Wrappers.Outcome.ToResult$R))
       ==> $Is(Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Outcome.ToResult$R, Std.Wrappers.Outcome$E)));
// alloc consequence axiom for Std_mWrappers.Outcome.ToResult
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.ToResult$R: Ty, 
      this: DatatypeType, 
      r#0: Box :: 
    { $IsAlloc(Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Outcome.ToResult$R, Std.Wrappers.Outcome$E), 
        $Heap) } 
    (Std_mWrappers.Outcome.ToResult#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
             && 
            $IsBox(r#0, Std.Wrappers.Outcome.ToResult$R)
             && $IsAllocBox(r#0, Std.Wrappers.Outcome.ToResult$R, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Outcome.ToResult$R, Std.Wrappers.Outcome$E), 
        $Heap));
// definition axiom for Std_mWrappers.Outcome.ToResult (revealed)
axiom {:id "id110"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.ToResult$R: Ty, 
      this: DatatypeType, 
      r#0: Box :: 
    { Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0) } 
    Std_mWrappers.Outcome.ToResult#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsBox(r#0, Std.Wrappers.Outcome.ToResult$R))
       ==> Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0)
         == (if Std_mWrappers.Outcome.Pass_q(this)
           then #Std.Wrappers.Result.Success(r#0)
           else (var e#0 := Std_mWrappers.Outcome.error(this); 
            #Std.Wrappers.Result.Failure(e#0))));
// definition axiom for Std_mWrappers.Outcome.ToResult for decreasing-related literals (revealed)
axiom {:id "id111"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.ToResult$R: Ty, 
      this: DatatypeType, 
      r#0: Box :: 
    {:weight 3} { Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, Lit(this), r#0) } 
    Std_mWrappers.Outcome.ToResult#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, Lit(this), r#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsBox(r#0, Std.Wrappers.Outcome.ToResult$R))
       ==> Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, Lit(this), r#0)
         == (if Std_mWrappers.Outcome.Pass_q(Lit(this))
           then #Std.Wrappers.Result.Success(r#0)
           else (var e#2 := Lit(Std_mWrappers.Outcome.error(Lit(this))); 
            Lit(#Std.Wrappers.Result.Failure(e#2)))));
// definition axiom for Std_mWrappers.Outcome.ToResult for all literals (revealed)
axiom {:id "id112"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.ToResult$R: Ty, 
      this: DatatypeType, 
      r#0: Box :: 
    {:weight 3} { Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, Lit(this), Lit(r#0)) } 
    Std_mWrappers.Outcome.ToResult#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, Lit(this), Lit(r#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsBox(r#0, Std.Wrappers.Outcome.ToResult$R))
       ==> Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, Lit(this), Lit(r#0))
         == (if Std_mWrappers.Outcome.Pass_q(Lit(this))
           then #Std.Wrappers.Result.Success(Lit(r#0))
           else (var e#4 := Lit(Std_mWrappers.Outcome.error(Lit(this))); 
            Lit(#Std.Wrappers.Result.Failure(e#4)))));
}

function Std_mWrappers.Outcome.ToResult#canCall(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.ToResult$R: Ty, 
    this: DatatypeType, 
    r#0: Box)
   : bool;

function Std_mWrappers.Outcome.ToResult#requires(Ty, Ty, DatatypeType, Box) : bool;

// #requires axiom for Std_mWrappers.Outcome.ToResult
axiom (forall Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.ToResult$R: Ty, 
    this: DatatypeType, 
    r#0: Box :: 
  { Std_mWrappers.Outcome.ToResult#requires(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0) } 
  $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
       && $IsBox(r#0, Std.Wrappers.Outcome.ToResult$R)
     ==> Std_mWrappers.Outcome.ToResult#requires(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.ToResult$R, this, r#0)
       == true);

procedure {:verboseName "Std.Wrappers.Outcome.ToResult (well-formedness)"} CheckWellformed$$Std_mWrappers.Outcome.ToResult(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.ToResult$R: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
         && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap), 
    r#0: Box where $IsBox(r#0, Std.Wrappers.Outcome.ToResult$R));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Outcome.Map
function Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.Map$FC: Ty, 
    this: DatatypeType, 
    rewrap#0: HandleType)
   : Box
uses {
// consequence axiom for Std_mWrappers.Outcome.Map
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.Map$FC: Ty, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    { Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0) } 
    Std_mWrappers.Outcome.Map#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
              Std.Wrappers.Outcome.Map$FC)))
       ==> $IsBox(Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0), 
        Std.Wrappers.Outcome.Map$FC));
// alloc consequence axiom for Std_mWrappers.Outcome.Map
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.Map$FC: Ty, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    { $IsAllocBox(Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0), 
        Std.Wrappers.Outcome.Map$FC, 
        $Heap) } 
    (Std_mWrappers.Outcome.Map#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
             && 
            $Is(rewrap#0, 
              Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
                Std.Wrappers.Outcome.Map$FC))
             && $IsAlloc(rewrap#0, 
              Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
                Std.Wrappers.Outcome.Map$FC), 
              $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0), 
        Std.Wrappers.Outcome.Map$FC, 
        $Heap));
// definition axiom for Std_mWrappers.Outcome.Map (revealed)
axiom {:id "id117"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.Map$FC: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    { Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0), $IsGoodHeap($Heap) } 
    Std_mWrappers.Outcome.Map#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
              Std.Wrappers.Outcome.Map$FC)))
       ==> Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0)
         == Apply1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
          Std.Wrappers.Outcome.Map$FC, 
          $Heap, 
          rewrap#0, 
          $Box(this)));
// definition axiom for Std_mWrappers.Outcome.Map for decreasing-related literals (revealed)
axiom {:id "id118"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.Map$FC: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    {:weight 3} { Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, Lit(this), rewrap#0), $IsGoodHeap($Heap) } 
    Std_mWrappers.Outcome.Map#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, Lit(this), rewrap#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
              Std.Wrappers.Outcome.Map$FC)))
       ==> Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, Lit(this), rewrap#0)
         == Apply1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
          Std.Wrappers.Outcome.Map$FC, 
          $Heap, 
          rewrap#0, 
          $Box(Lit(this))));
// definition axiom for Std_mWrappers.Outcome.Map for all literals (revealed)
axiom {:id "id119"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.Map$FC: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType :: 
    {:weight 3} { Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, Lit(this), Lit(rewrap#0)), $IsGoodHeap($Heap) } 
    Std_mWrappers.Outcome.Map#canCall(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, Lit(this), Lit(rewrap#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
              Std.Wrappers.Outcome.Map$FC)))
       ==> Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, Lit(this), Lit(rewrap#0))
         == Apply1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
          Std.Wrappers.Outcome.Map$FC, 
          $Heap, 
          Lit(rewrap#0), 
          $Box(Lit(this))));
}

function Std_mWrappers.Outcome.Map#canCall(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.Map$FC: Ty, 
    this: DatatypeType, 
    rewrap#0: HandleType)
   : bool;

function Std_mWrappers.Outcome.Map#requires(Ty, Ty, DatatypeType, HandleType) : bool;

// #requires axiom for Std_mWrappers.Outcome.Map
axiom (forall Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.Map$FC: Ty, 
    $Heap: Heap, 
    this: DatatypeType, 
    rewrap#0: HandleType :: 
  { Std_mWrappers.Outcome.Map#requires(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
       && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
       && $Is(rewrap#0, 
        Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
          Std.Wrappers.Outcome.Map$FC))
     ==> Std_mWrappers.Outcome.Map#requires(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.Map$FC, this, rewrap#0)
       == true);

procedure {:verboseName "Std.Wrappers.Outcome.Map (well-formedness)"} CheckWellformed$$Std_mWrappers.Outcome.Map(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.Map$FC: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
         && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap), 
    rewrap#0: HandleType
       where $Is(rewrap#0, 
        Tclass._System.___hTotalFunc1(Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
          Std.Wrappers.Outcome.Map$FC)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Outcome.MapFailure
function Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.MapFailure$T: Ty, 
    Std.Wrappers.Outcome.MapFailure$NewE: Ty, 
    this: DatatypeType, 
    rewrap#0: HandleType, 
    default#0: Box)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Outcome.MapFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.MapFailure$T: Ty, 
      Std.Wrappers.Outcome.MapFailure$NewE: Ty, 
      this: DatatypeType, 
      rewrap#0: HandleType, 
      default#0: Box :: 
    { Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E, 
        Std.Wrappers.Outcome.MapFailure$T, 
        Std.Wrappers.Outcome.MapFailure$NewE, 
        this, 
        rewrap#0, 
        default#0) } 
    Std_mWrappers.Outcome.MapFailure#canCall(Std.Wrappers.Outcome$E, 
          Std.Wrappers.Outcome.MapFailure$T, 
          Std.Wrappers.Outcome.MapFailure$NewE, 
          this, 
          rewrap#0, 
          default#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.MapFailure$NewE))
           && $IsBox(default#0, Std.Wrappers.Outcome.MapFailure$T))
       ==> $Is(Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E, 
          Std.Wrappers.Outcome.MapFailure$T, 
          Std.Wrappers.Outcome.MapFailure$NewE, 
          this, 
          rewrap#0, 
          default#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Outcome.MapFailure$T, Std.Wrappers.Outcome.MapFailure$NewE)));
// alloc consequence axiom for Std_mWrappers.Outcome.MapFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.MapFailure$T: Ty, 
      Std.Wrappers.Outcome.MapFailure$NewE: Ty, 
      this: DatatypeType, 
      rewrap#0: HandleType, 
      default#0: Box :: 
    { $IsAlloc(Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E, 
          Std.Wrappers.Outcome.MapFailure$T, 
          Std.Wrappers.Outcome.MapFailure$NewE, 
          this, 
          rewrap#0, 
          default#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Outcome.MapFailure$T, Std.Wrappers.Outcome.MapFailure$NewE), 
        $Heap) } 
    (Std_mWrappers.Outcome.MapFailure#canCall(Std.Wrappers.Outcome$E, 
            Std.Wrappers.Outcome.MapFailure$T, 
            Std.Wrappers.Outcome.MapFailure$NewE, 
            this, 
            rewrap#0, 
            default#0)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
             && 
            $Is(rewrap#0, 
              Tclass._System.___hTotalFunc1(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.MapFailure$NewE))
             && $IsAlloc(rewrap#0, 
              Tclass._System.___hTotalFunc1(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.MapFailure$NewE), 
              $Heap)
             && 
            $IsBox(default#0, Std.Wrappers.Outcome.MapFailure$T)
             && $IsAllocBox(default#0, Std.Wrappers.Outcome.MapFailure$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E, 
          Std.Wrappers.Outcome.MapFailure$T, 
          Std.Wrappers.Outcome.MapFailure$NewE, 
          this, 
          rewrap#0, 
          default#0), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.Outcome.MapFailure$T, Std.Wrappers.Outcome.MapFailure$NewE), 
        $Heap));
// definition axiom for Std_mWrappers.Outcome.MapFailure (revealed)
axiom {:id "id121"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.MapFailure$T: Ty, 
      Std.Wrappers.Outcome.MapFailure$NewE: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType, 
      default#0: Box :: 
    { Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E, 
        Std.Wrappers.Outcome.MapFailure$T, 
        Std.Wrappers.Outcome.MapFailure$NewE, 
        this, 
        rewrap#0, 
        default#0), $IsGoodHeap($Heap) } 
    Std_mWrappers.Outcome.MapFailure#canCall(Std.Wrappers.Outcome$E, 
          Std.Wrappers.Outcome.MapFailure$T, 
          Std.Wrappers.Outcome.MapFailure$NewE, 
          this, 
          rewrap#0, 
          default#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.MapFailure$NewE))
           && $IsBox(default#0, Std.Wrappers.Outcome.MapFailure$T))
       ==> Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E, 
          Std.Wrappers.Outcome.MapFailure$T, 
          Std.Wrappers.Outcome.MapFailure$NewE, 
          this, 
          rewrap#0, 
          default#0)
         == (if Std_mWrappers.Outcome.Pass_q(this)
           then #Std.Wrappers.Result.Success(default#0)
           else (var e#0 := Std_mWrappers.Outcome.error(this); 
            #Std.Wrappers.Result.Failure(Apply1(Std.Wrappers.Outcome$E, 
                Std.Wrappers.Outcome.MapFailure$NewE, 
                $Heap, 
                rewrap#0, 
                e#0)))));
// definition axiom for Std_mWrappers.Outcome.MapFailure for decreasing-related literals (revealed)
axiom {:id "id122"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.MapFailure$T: Ty, 
      Std.Wrappers.Outcome.MapFailure$NewE: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType, 
      default#0: Box :: 
    {:weight 3} { Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E, 
        Std.Wrappers.Outcome.MapFailure$T, 
        Std.Wrappers.Outcome.MapFailure$NewE, 
        Lit(this), 
        rewrap#0, 
        default#0), $IsGoodHeap($Heap) } 
    Std_mWrappers.Outcome.MapFailure#canCall(Std.Wrappers.Outcome$E, 
          Std.Wrappers.Outcome.MapFailure$T, 
          Std.Wrappers.Outcome.MapFailure$NewE, 
          Lit(this), 
          rewrap#0, 
          default#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.MapFailure$NewE))
           && $IsBox(default#0, Std.Wrappers.Outcome.MapFailure$T))
       ==> Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E, 
          Std.Wrappers.Outcome.MapFailure$T, 
          Std.Wrappers.Outcome.MapFailure$NewE, 
          Lit(this), 
          rewrap#0, 
          default#0)
         == (if Std_mWrappers.Outcome.Pass_q(Lit(this))
           then #Std.Wrappers.Result.Success(default#0)
           else (var e#2 := Lit(Std_mWrappers.Outcome.error(Lit(this))); 
            #Std.Wrappers.Result.Failure(Apply1(Std.Wrappers.Outcome$E, 
                Std.Wrappers.Outcome.MapFailure$NewE, 
                $Heap, 
                rewrap#0, 
                e#2)))));
// definition axiom for Std_mWrappers.Outcome.MapFailure for all literals (revealed)
axiom {:id "id123"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, 
      Std.Wrappers.Outcome.MapFailure$T: Ty, 
      Std.Wrappers.Outcome.MapFailure$NewE: Ty, 
      $Heap: Heap, 
      this: DatatypeType, 
      rewrap#0: HandleType, 
      default#0: Box :: 
    {:weight 3} { Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E, 
        Std.Wrappers.Outcome.MapFailure$T, 
        Std.Wrappers.Outcome.MapFailure$NewE, 
        Lit(this), 
        Lit(rewrap#0), 
        Lit(default#0)), $IsGoodHeap($Heap) } 
    Std_mWrappers.Outcome.MapFailure#canCall(Std.Wrappers.Outcome$E, 
          Std.Wrappers.Outcome.MapFailure$T, 
          Std.Wrappers.Outcome.MapFailure$NewE, 
          Lit(this), 
          Lit(rewrap#0), 
          Lit(default#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
           && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
           && $Is(rewrap#0, 
            Tclass._System.___hTotalFunc1(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.MapFailure$NewE))
           && $IsBox(default#0, Std.Wrappers.Outcome.MapFailure$T))
       ==> Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E, 
          Std.Wrappers.Outcome.MapFailure$T, 
          Std.Wrappers.Outcome.MapFailure$NewE, 
          Lit(this), 
          Lit(rewrap#0), 
          Lit(default#0))
         == (if Std_mWrappers.Outcome.Pass_q(Lit(this))
           then #Std.Wrappers.Result.Success(Lit(default#0))
           else (var e#4 := Lit(Std_mWrappers.Outcome.error(Lit(this))); 
            #Std.Wrappers.Result.Failure(Apply1(Std.Wrappers.Outcome$E, 
                Std.Wrappers.Outcome.MapFailure$NewE, 
                $Heap, 
                Lit(rewrap#0), 
                e#4)))));
}

function Std_mWrappers.Outcome.MapFailure#canCall(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.MapFailure$T: Ty, 
    Std.Wrappers.Outcome.MapFailure$NewE: Ty, 
    this: DatatypeType, 
    rewrap#0: HandleType, 
    default#0: Box)
   : bool;

function Std_mWrappers.Outcome.MapFailure#requires(Ty, Ty, Ty, DatatypeType, HandleType, Box) : bool;

// #requires axiom for Std_mWrappers.Outcome.MapFailure
axiom (forall Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.MapFailure$T: Ty, 
    Std.Wrappers.Outcome.MapFailure$NewE: Ty, 
    $Heap: Heap, 
    this: DatatypeType, 
    rewrap#0: HandleType, 
    default#0: Box :: 
  { Std_mWrappers.Outcome.MapFailure#requires(Std.Wrappers.Outcome$E, 
      Std.Wrappers.Outcome.MapFailure$T, 
      Std.Wrappers.Outcome.MapFailure$NewE, 
      this, 
      rewrap#0, 
      default#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
       && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap)
       && $Is(rewrap#0, 
        Tclass._System.___hTotalFunc1(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.MapFailure$NewE))
       && $IsBox(default#0, Std.Wrappers.Outcome.MapFailure$T)
     ==> Std_mWrappers.Outcome.MapFailure#requires(Std.Wrappers.Outcome$E, 
        Std.Wrappers.Outcome.MapFailure$T, 
        Std.Wrappers.Outcome.MapFailure$NewE, 
        this, 
        rewrap#0, 
        default#0)
       == true);

procedure {:verboseName "Std.Wrappers.Outcome.MapFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.Outcome.MapFailure(Std.Wrappers.Outcome$E: Ty, 
    Std.Wrappers.Outcome.MapFailure$T: Ty, 
    Std.Wrappers.Outcome.MapFailure$NewE: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E))
         && $IsAlloc(this, Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), $Heap), 
    rewrap#0: HandleType
       where $Is(rewrap#0, 
        Tclass._System.___hTotalFunc1(Std.Wrappers.Outcome$E, Std.Wrappers.Outcome.MapFailure$NewE)), 
    default#0: Box where $IsBox(default#0, Std.Wrappers.Outcome.MapFailure$T));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.Outcome.Need
function Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E: Ty, condition#0: bool, error#0: Box) : DatatypeType
uses {
// consequence axiom for Std_mWrappers.Outcome.Need
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, condition#0: bool, error#0: Box :: 
    { Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E, condition#0, error#0) } 
    Std_mWrappers.Outcome.Need#canCall(Std.Wrappers.Outcome$E, condition#0, error#0)
         || (1 < $FunctionContextHeight && $IsBox(error#0, Std.Wrappers.Outcome$E))
       ==> $Is(Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E, condition#0, error#0), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E)));
// alloc consequence axiom for Std_mWrappers.Outcome.Need
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, Std.Wrappers.Outcome$E: Ty, condition#0: bool, error#0: Box :: 
    { $IsAlloc(Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E, condition#0, error#0), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
        $Heap) } 
    (Std_mWrappers.Outcome.Need#canCall(Std.Wrappers.Outcome$E, condition#0, error#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(error#0, Std.Wrappers.Outcome$E)
             && $IsAllocBox(error#0, Std.Wrappers.Outcome$E, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E, condition#0, error#0), 
        Tclass.Std_mWrappers.Outcome(Std.Wrappers.Outcome$E), 
        $Heap));
// definition axiom for Std_mWrappers.Outcome.Need (revealed)
axiom {:id "id128"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, condition#0: bool, error#0: Box :: 
    { Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E, condition#0, error#0) } 
    Std_mWrappers.Outcome.Need#canCall(Std.Wrappers.Outcome$E, condition#0, error#0)
         || (1 < $FunctionContextHeight && $IsBox(error#0, Std.Wrappers.Outcome$E))
       ==> Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E, condition#0, error#0)
         == (if condition#0
           then #Std.Wrappers.Outcome.Pass()
           else #Std.Wrappers.Outcome.Fail(error#0)));
// definition axiom for Std_mWrappers.Outcome.Need for decreasing-related literals (revealed)
axiom {:id "id129"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, condition#0: bool, error#0: Box :: 
    {:weight 3} { Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E, Lit(condition#0), error#0) } 
    Std_mWrappers.Outcome.Need#canCall(Std.Wrappers.Outcome$E, Lit(condition#0), error#0)
         || (1 < $FunctionContextHeight && $IsBox(error#0, Std.Wrappers.Outcome$E))
       ==> Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E, Lit(condition#0), error#0)
         == (if condition#0
           then #Std.Wrappers.Outcome.Pass()
           else #Std.Wrappers.Outcome.Fail(error#0)));
// definition axiom for Std_mWrappers.Outcome.Need for all literals (revealed)
axiom {:id "id130"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.Outcome$E: Ty, condition#0: bool, error#0: Box :: 
    {:weight 3} { Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E, Lit(condition#0), Lit(error#0)) } 
    Std_mWrappers.Outcome.Need#canCall(Std.Wrappers.Outcome$E, Lit(condition#0), Lit(error#0))
         || (1 < $FunctionContextHeight && $IsBox(error#0, Std.Wrappers.Outcome$E))
       ==> Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E, Lit(condition#0), Lit(error#0))
         == (if condition#0
           then #Std.Wrappers.Outcome.Pass()
           else #Std.Wrappers.Outcome.Fail(Lit(error#0))));
}

function Std_mWrappers.Outcome.Need#canCall(Std.Wrappers.Outcome$E: Ty, condition#0: bool, error#0: Box) : bool;

function Std_mWrappers.Outcome.Need#requires(Ty, bool, Box) : bool;

// #requires axiom for Std_mWrappers.Outcome.Need
axiom (forall Std.Wrappers.Outcome$E: Ty, condition#0: bool, error#0: Box :: 
  { Std_mWrappers.Outcome.Need#requires(Std.Wrappers.Outcome$E, condition#0, error#0) } 
  $IsBox(error#0, Std.Wrappers.Outcome$E)
     ==> Std_mWrappers.Outcome.Need#requires(Std.Wrappers.Outcome$E, condition#0, error#0)
       == true);

procedure {:verboseName "Std.Wrappers.Outcome.Need (well-formedness)"} CheckWellformed$$Std_mWrappers.Outcome.Need(Std.Wrappers.Outcome$E: Ty, 
    condition#0: bool, 
    error#0: Box where $IsBox(error#0, Std.Wrappers.Outcome$E))
   returns (result#0: DatatypeType);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #Std.Wrappers.OutcomeResult.Pass'() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Std.Wrappers.OutcomeResult.Pass'())
   == ##Std.Wrappers.OutcomeResult.Pass';
// Constructor literal
axiom #Std.Wrappers.OutcomeResult.Pass'() == Lit(#Std.Wrappers.OutcomeResult.Pass'());
}

const unique ##Std.Wrappers.OutcomeResult.Pass': DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Std.Wrappers.OutcomeResult.Pass'())
   == ##Std.Wrappers.OutcomeResult.Pass';
}

function Std_mWrappers.OutcomeResult.Pass_k_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.OutcomeResult.Pass_k_q(d) } 
  Std_mWrappers.OutcomeResult.Pass_k_q(d)
     <==> DatatypeCtorId(d) == ##Std.Wrappers.OutcomeResult.Pass');

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.OutcomeResult.Pass_k_q(d) } 
  Std_mWrappers.OutcomeResult.Pass_k_q(d)
     ==> d == #Std.Wrappers.OutcomeResult.Pass'());

// Constructor $Is
axiom (forall Std.Wrappers.OutcomeResult$E: Ty :: 
  { $Is(#Std.Wrappers.OutcomeResult.Pass'(), 
      Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E)) } 
  $Is(#Std.Wrappers.OutcomeResult.Pass'(), 
    Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E)));

// Constructor $IsAlloc
axiom (forall Std.Wrappers.OutcomeResult$E: Ty, $h: Heap :: 
  { $IsAlloc(#Std.Wrappers.OutcomeResult.Pass'(), 
      Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Std.Wrappers.OutcomeResult.Pass'(), 
      Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E), 
      $h));

// Constructor function declaration
function #Std.Wrappers.OutcomeResult.Fail'(Box) : DatatypeType;

const unique ##Std.Wrappers.OutcomeResult.Fail': DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box :: 
  { #Std.Wrappers.OutcomeResult.Fail'(a#4#0#0) } 
  DatatypeCtorId(#Std.Wrappers.OutcomeResult.Fail'(a#4#0#0))
     == ##Std.Wrappers.OutcomeResult.Fail');
}

function Std_mWrappers.OutcomeResult.Fail_k_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.OutcomeResult.Fail_k_q(d) } 
  Std_mWrappers.OutcomeResult.Fail_k_q(d)
     <==> DatatypeCtorId(d) == ##Std.Wrappers.OutcomeResult.Fail');

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Std_mWrappers.OutcomeResult.Fail_k_q(d) } 
  Std_mWrappers.OutcomeResult.Fail_k_q(d)
     ==> (exists a#5#0#0: Box :: d == #Std.Wrappers.OutcomeResult.Fail'(a#5#0#0)));

// Constructor $Is
axiom (forall Std.Wrappers.OutcomeResult$E: Ty, a#6#0#0: Box :: 
  { $Is(#Std.Wrappers.OutcomeResult.Fail'(a#6#0#0), 
      Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E)) } 
  $Is(#Std.Wrappers.OutcomeResult.Fail'(a#6#0#0), 
      Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
     <==> $IsBox(a#6#0#0, Std.Wrappers.OutcomeResult$E));

// Constructor $IsAlloc
axiom (forall Std.Wrappers.OutcomeResult$E: Ty, a#6#0#0: Box, $h: Heap :: 
  { $IsAlloc(#Std.Wrappers.OutcomeResult.Fail'(a#6#0#0), 
      Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Std.Wrappers.OutcomeResult.Fail'(a#6#0#0), 
        Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E), 
        $h)
       <==> $IsAllocBox(a#6#0#0, Std.Wrappers.OutcomeResult$E, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Std.Wrappers.OutcomeResult$E: Ty, $h: Heap :: 
  { $IsAllocBox(Std_mWrappers.OutcomeResult.error(d), Std.Wrappers.OutcomeResult$E, $h) } 
  $IsGoodHeap($h)
       && 
      Std_mWrappers.OutcomeResult.Fail_k_q(d)
       && $IsAlloc(d, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E), $h)
     ==> $IsAllocBox(Std_mWrappers.OutcomeResult.error(d), Std.Wrappers.OutcomeResult$E, $h));

// Constructor literal
axiom (forall a#7#0#0: Box :: 
  { #Std.Wrappers.OutcomeResult.Fail'(Lit(a#7#0#0)) } 
  #Std.Wrappers.OutcomeResult.Fail'(Lit(a#7#0#0))
     == Lit(#Std.Wrappers.OutcomeResult.Fail'(a#7#0#0)));

function Std_mWrappers.OutcomeResult.error(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box :: 
  { #Std.Wrappers.OutcomeResult.Fail'(a#8#0#0) } 
  Std_mWrappers.OutcomeResult.error(#Std.Wrappers.OutcomeResult.Fail'(a#8#0#0))
     == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box :: 
  { #Std.Wrappers.OutcomeResult.Fail'(a#9#0#0) } 
  BoxRank(a#9#0#0) < DtRank(#Std.Wrappers.OutcomeResult.Fail'(a#9#0#0)));

// Depth-one case-split function
function $IsA#Std_mWrappers.OutcomeResult(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Std_mWrappers.OutcomeResult(d) } 
  $IsA#Std_mWrappers.OutcomeResult(d)
     ==> Std_mWrappers.OutcomeResult.Pass_k_q(d)
       || Std_mWrappers.OutcomeResult.Fail_k_q(d));

// Questionmark data type disjunctivity
axiom (forall Std.Wrappers.OutcomeResult$E: Ty, d: DatatypeType :: 
  { Std_mWrappers.OutcomeResult.Fail_k_q(d), $Is(d, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E)) } 
    { Std_mWrappers.OutcomeResult.Pass_k_q(d), $Is(d, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E)) } 
  $Is(d, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
     ==> Std_mWrappers.OutcomeResult.Pass_k_q(d)
       || Std_mWrappers.OutcomeResult.Fail_k_q(d));

// Datatype extensional equality declaration
function Std_mWrappers.OutcomeResult#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Std.Wrappers.OutcomeResult.Pass'
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.OutcomeResult#Equal(a, b), Std_mWrappers.OutcomeResult.Pass_k_q(a) } 
    { Std_mWrappers.OutcomeResult#Equal(a, b), Std_mWrappers.OutcomeResult.Pass_k_q(b) } 
  Std_mWrappers.OutcomeResult.Pass_k_q(a)
       && Std_mWrappers.OutcomeResult.Pass_k_q(b)
     ==> Std_mWrappers.OutcomeResult#Equal(a, b));

// Datatype extensional equality definition: #Std.Wrappers.OutcomeResult.Fail'
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.OutcomeResult#Equal(a, b), Std_mWrappers.OutcomeResult.Fail_k_q(a) } 
    { Std_mWrappers.OutcomeResult#Equal(a, b), Std_mWrappers.OutcomeResult.Fail_k_q(b) } 
  Std_mWrappers.OutcomeResult.Fail_k_q(a)
       && Std_mWrappers.OutcomeResult.Fail_k_q(b)
     ==> (Std_mWrappers.OutcomeResult#Equal(a, b)
       <==> Std_mWrappers.OutcomeResult.error(a) == Std_mWrappers.OutcomeResult.error(b)));

// Datatype extensionality axiom: Std.Wrappers.OutcomeResult
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Std_mWrappers.OutcomeResult#Equal(a, b) } 
  Std_mWrappers.OutcomeResult#Equal(a, b) <==> a == b);

const unique class.Std_mWrappers.OutcomeResult: ClassName;

// function declaration for Std.Wrappers.OutcomeResult.IsFailure
function Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E: Ty, this: DatatypeType) : bool
uses {
// definition axiom for Std_mWrappers.OutcomeResult.IsFailure (revealed)
axiom {:id "id135"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.OutcomeResult$E: Ty, this: DatatypeType :: 
    { Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E, this) } 
    Std_mWrappers.OutcomeResult.IsFailure#canCall(Std.Wrappers.OutcomeResult$E, this)
         || (0 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E)))
       ==> Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E, this)
         == Std_mWrappers.OutcomeResult.Fail_k_q(this));
// definition axiom for Std_mWrappers.OutcomeResult.IsFailure for all literals (revealed)
axiom {:id "id136"} 0 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.OutcomeResult$E: Ty, this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E, Lit(this)) } 
    Std_mWrappers.OutcomeResult.IsFailure#canCall(Std.Wrappers.OutcomeResult$E, Lit(this))
         || (0 < $FunctionContextHeight
           && $Is(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E)))
       ==> Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E, Lit(this))
         == Lit(Std_mWrappers.OutcomeResult.Fail_k_q(Lit(this))));
}

function Std_mWrappers.OutcomeResult.IsFailure#canCall(Std.Wrappers.OutcomeResult$E: Ty, this: DatatypeType) : bool;

function Std_mWrappers.OutcomeResult.IsFailure#requires(Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.OutcomeResult.IsFailure
axiom (forall Std.Wrappers.OutcomeResult$E: Ty, this: DatatypeType :: 
  { Std_mWrappers.OutcomeResult.IsFailure#requires(Std.Wrappers.OutcomeResult$E, this) } 
  $Is(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
     ==> Std_mWrappers.OutcomeResult.IsFailure#requires(Std.Wrappers.OutcomeResult$E, this)
       == true);

procedure {:verboseName "Std.Wrappers.OutcomeResult.IsFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
         && $IsAlloc(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Std.Wrappers.OutcomeResult.PropagateFailure
function Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E: Ty, 
    Std.Wrappers.OutcomeResult.PropagateFailure$U: Ty, 
    this: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for Std_mWrappers.OutcomeResult.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.OutcomeResult$E: Ty, 
      Std.Wrappers.OutcomeResult.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    { Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
        Std.Wrappers.OutcomeResult.PropagateFailure$U, 
        this) } 
    Std_mWrappers.OutcomeResult.PropagateFailure#canCall(Std.Wrappers.OutcomeResult$E, 
          Std.Wrappers.OutcomeResult.PropagateFailure$U, 
          this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
           && Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E, this))
       ==> $Is(Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
          Std.Wrappers.OutcomeResult.PropagateFailure$U, 
          this), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.OutcomeResult.PropagateFailure$U, Std.Wrappers.OutcomeResult$E)));
// alloc consequence axiom for Std_mWrappers.OutcomeResult.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Std.Wrappers.OutcomeResult$E: Ty, 
      Std.Wrappers.OutcomeResult.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    { $IsAlloc(Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
          Std.Wrappers.OutcomeResult.PropagateFailure$U, 
          this), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.OutcomeResult.PropagateFailure$U, Std.Wrappers.OutcomeResult$E), 
        $Heap) } 
    (Std_mWrappers.OutcomeResult.PropagateFailure#canCall(Std.Wrappers.OutcomeResult$E, 
            Std.Wrappers.OutcomeResult.PropagateFailure$U, 
            this)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E), $Heap)
             && Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E, this)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
          Std.Wrappers.OutcomeResult.PropagateFailure$U, 
          this), 
        Tclass.Std_mWrappers.Result(Std.Wrappers.OutcomeResult.PropagateFailure$U, Std.Wrappers.OutcomeResult$E), 
        $Heap));
// definition axiom for Std_mWrappers.OutcomeResult.PropagateFailure (revealed)
axiom {:id "id138"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.OutcomeResult$E: Ty, 
      Std.Wrappers.OutcomeResult.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    { Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
        Std.Wrappers.OutcomeResult.PropagateFailure$U, 
        this) } 
    Std_mWrappers.OutcomeResult.PropagateFailure#canCall(Std.Wrappers.OutcomeResult$E, 
          Std.Wrappers.OutcomeResult.PropagateFailure$U, 
          this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
           && Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E, this))
       ==> Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
          Std.Wrappers.OutcomeResult.PropagateFailure$U, 
          this)
         == #Std.Wrappers.Result.Failure(Std_mWrappers.OutcomeResult.error(this)));
// definition axiom for Std_mWrappers.OutcomeResult.PropagateFailure for all literals (revealed)
axiom {:id "id139"} 1 <= $FunctionContextHeight
   ==> (forall Std.Wrappers.OutcomeResult$E: Ty, 
      Std.Wrappers.OutcomeResult.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    {:weight 3} { Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
        Std.Wrappers.OutcomeResult.PropagateFailure$U, 
        Lit(this)) } 
    Std_mWrappers.OutcomeResult.PropagateFailure#canCall(Std.Wrappers.OutcomeResult$E, 
          Std.Wrappers.OutcomeResult.PropagateFailure$U, 
          Lit(this))
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
           && Lit(Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E, Lit(this))))
       ==> Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
          Std.Wrappers.OutcomeResult.PropagateFailure$U, 
          Lit(this))
         == Lit(#Std.Wrappers.Result.Failure(Lit(Std_mWrappers.OutcomeResult.error(Lit(this))))));
}

function Std_mWrappers.OutcomeResult.PropagateFailure#canCall(Std.Wrappers.OutcomeResult$E: Ty, 
    Std.Wrappers.OutcomeResult.PropagateFailure$U: Ty, 
    this: DatatypeType)
   : bool;

function Std_mWrappers.OutcomeResult.PropagateFailure#requires(Ty, Ty, DatatypeType) : bool;

// #requires axiom for Std_mWrappers.OutcomeResult.PropagateFailure
axiom (forall Std.Wrappers.OutcomeResult$E: Ty, 
    Std.Wrappers.OutcomeResult.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { Std_mWrappers.OutcomeResult.PropagateFailure#requires(Std.Wrappers.OutcomeResult$E, 
      Std.Wrappers.OutcomeResult.PropagateFailure$U, 
      this) } 
  $Is(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
     ==> Std_mWrappers.OutcomeResult.PropagateFailure#requires(Std.Wrappers.OutcomeResult$E, 
        Std.Wrappers.OutcomeResult.PropagateFailure$U, 
        this)
       == Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E, this));

procedure {:verboseName "Std.Wrappers.OutcomeResult.PropagateFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E: Ty, 
    Std.Wrappers.OutcomeResult.PropagateFailure$U: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E))
         && $IsAlloc(this, Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Std.Wrappers.OutcomeResult.PropagateFailure (well-formedness)"} CheckWellformed$$Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E: Ty, 
    Std.Wrappers.OutcomeResult.PropagateFailure$U: Ty, 
    this: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass.Std_mWrappers.OutcomeResult(Std.Wrappers.OutcomeResult$E), 
      $Heap);
    assume Std_mWrappers.OutcomeResult.IsFailure#canCall(Std.Wrappers.OutcomeResult$E, this);
    assume {:id "id140"} Std_mWrappers.OutcomeResult.IsFailure(Std.Wrappers.OutcomeResult$E, this);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
            Std.Wrappers.OutcomeResult.PropagateFailure$U, 
            this), 
          Tclass.Std_mWrappers.Result(Std.Wrappers.OutcomeResult.PropagateFailure$U, Std.Wrappers.OutcomeResult$E));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id141"} Std_mWrappers.OutcomeResult.Fail_k_q(this);
        assume {:id "id142"} Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
            Std.Wrappers.OutcomeResult.PropagateFailure$U, 
            this)
           == #Std.Wrappers.Result.Failure(Std_mWrappers.OutcomeResult.error(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(Std_mWrappers.OutcomeResult.PropagateFailure(Std.Wrappers.OutcomeResult$E, 
            Std.Wrappers.OutcomeResult.PropagateFailure$U, 
            this), 
          Tclass.Std_mWrappers.Result(Std.Wrappers.OutcomeResult.PropagateFailure$U, Std.Wrappers.OutcomeResult$E));
        return;

        assume false;
    }
}



const unique tytagFamily$nat: TyTagFamily;

const unique tytagFamily$object: TyTagFamily;

const unique tytagFamily$array: TyTagFamily;

const unique tytagFamily$_#Func1: TyTagFamily;

const unique tytagFamily$_#PartialFunc1: TyTagFamily;

const unique tytagFamily$_#TotalFunc1: TyTagFamily;

const unique tytagFamily$_#Func0: TyTagFamily;

const unique tytagFamily$_#PartialFunc0: TyTagFamily;

const unique tytagFamily$_#TotalFunc0: TyTagFamily;

const unique tytagFamily$_tuple#2: TyTagFamily;

const unique tytagFamily$_tuple#0: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$OutcomeResult: TyTagFamily;

const unique tytagFamily$Option: TyTagFamily;

const unique tytagFamily$Result: TyTagFamily;

const unique tytagFamily$Outcome: TyTagFamily;
