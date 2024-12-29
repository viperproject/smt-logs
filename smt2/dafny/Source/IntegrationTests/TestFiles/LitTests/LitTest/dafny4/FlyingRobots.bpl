// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy

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

// Constructor function declaration
function #_System._tuple#3._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: Box, a#12#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#12#0#0, a#12#1#0, a#12#2#0) } 
  DatatypeCtorId(#_System._tuple#3._#Make3(a#12#0#0, a#12#1#0, a#12#2#0))
     == ##_System._tuple#3._#Make3);
}

function _System.Tuple3.___hMake3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#3._#Make3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: Box, a#13#2#0: Box :: 
      d == #_System._tuple#3._#Make3(a#13#0#0, a#13#1#0, a#13#2#0)));

function Tclass._System.Tuple3(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple3: TyTag;

// Tclass._System.Tuple3 Tag
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tag(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == Tagclass._System.Tuple3
     && TagFamily(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == tytagFamily$_tuple#3);

function Tclass._System.Tuple3_0(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 0
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_0(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T0);

function Tclass._System.Tuple3_1(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 1
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_1(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T1);

function Tclass._System.Tuple3_2(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 2
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_2(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T2);

// Box/unbox axiom for Tclass._System.Tuple3
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)));

// Constructor $Is
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box :: 
  { $Is(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     <==> $IsBox(a#14#0#0, _System._tuple#3$T0)
       && $IsBox(a#14#1#0, _System._tuple#3$T1)
       && $IsBox(a#14#2#0, _System._tuple#3$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _System._tuple#3$T0, $h)
         && $IsAllocBox(a#14#1#0, _System._tuple#3$T1, $h)
         && $IsAllocBox(a#14#2#0, _System._tuple#3$T2, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, a#15#1#0: Box, a#15#2#0: Box :: 
  { #_System._tuple#3._#Make3(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0)) } 
  #_System._tuple#3._#Make3(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0))
     == Lit(#_System._tuple#3._#Make3(a#15#0#0, a#15#1#0, a#15#2#0)));

function _System.Tuple3._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: Box, a#16#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#16#0#0, a#16#1#0, a#16#2#0) } 
  _System.Tuple3._0(#_System._tuple#3._#Make3(a#16#0#0, a#16#1#0, a#16#2#0))
     == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, a#17#1#0: Box, a#17#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#17#0#0, a#17#1#0, a#17#2#0) } 
  BoxRank(a#17#0#0)
     < DtRank(#_System._tuple#3._#Make3(a#17#0#0, a#17#1#0, a#17#2#0)));

function _System.Tuple3._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: Box, a#18#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#18#0#0, a#18#1#0, a#18#2#0) } 
  _System.Tuple3._1(#_System._tuple#3._#Make3(a#18#0#0, a#18#1#0, a#18#2#0))
     == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, a#19#1#0: Box, a#19#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#19#0#0, a#19#1#0, a#19#2#0) } 
  BoxRank(a#19#1#0)
     < DtRank(#_System._tuple#3._#Make3(a#19#0#0, a#19#1#0, a#19#2#0)));

function _System.Tuple3._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box, a#20#1#0: Box, a#20#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#20#0#0, a#20#1#0, a#20#2#0) } 
  _System.Tuple3._2(#_System._tuple#3._#Make3(a#20#0#0, a#20#1#0, a#20#2#0))
     == a#20#2#0);

// Inductive rank
axiom (forall a#21#0#0: Box, a#21#1#0: Box, a#21#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#21#0#0, a#21#1#0, a#21#2#0) } 
  BoxRank(a#21#2#0)
     < DtRank(#_System._tuple#3._#Make3(a#21#0#0, a#21#1#0, a#21#2#0)));

// Depth-one case-split function
function $IsA#_System.Tuple3(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple3(d) } 
  $IsA#_System.Tuple3(d) ==> _System.Tuple3.___hMake3_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d), $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> _System.Tuple3.___hMake3_q(d));

// Datatype extensional equality declaration
function _System.Tuple3#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#3._#Make3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b)
     <==> _System.Tuple3._0(a) == _System.Tuple3._0(b)
       && _System.Tuple3._1(a) == _System.Tuple3._1(b)
       && _System.Tuple3._2(a) == _System.Tuple3._2(b));

// Datatype extensionality axiom: _System._tuple#3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b) <==> a == b);

const unique class._System.Tuple3: ClassName;

const reveal__module.Bot.Valid: bool;

const unique class._module.__default: ClassName;

function Tclass._module.Bot() : Ty
uses {
// Tclass._module.Bot Tag
axiom Tag(Tclass._module.Bot()) == Tagclass._module.Bot
   && TagFamily(Tclass._module.Bot()) == tytagFamily$Bot;
}

const unique Tagclass._module.Bot: TyTag;

// Box/unbox axiom for Tclass._module.Bot
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Bot()) } 
  $IsBox(bx, Tclass._module.Bot())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Bot()));

procedure {:verboseName "FlyRobots (well-formedness)"} CheckWellFormed$$_module.__default.FlyRobots(b0#0: ref
       where $Is(b0#0, Tclass._module.Bot()) && $IsAlloc(b0#0, Tclass._module.Bot(), $Heap), 
    b1#0: ref
       where $Is(b1#0, Tclass._module.Bot()) && $IsAlloc(b1#0, Tclass._module.Bot(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Bot?() : Ty
uses {
// Tclass._module.Bot? Tag
axiom Tag(Tclass._module.Bot?()) == Tagclass._module.Bot?
   && TagFamily(Tclass._module.Bot?()) == tytagFamily$Bot;
}

const unique Tagclass._module.Bot?: TyTag;

// Box/unbox axiom for Tclass._module.Bot?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Bot?()) } 
  $IsBox(bx, Tclass._module.Bot?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Bot?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FlyRobots (well-formedness)"} CheckWellFormed$$_module.__default.FlyRobots(b0#0: ref, b1#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: FlyRobots, CheckWellFormed$$_module.__default.FlyRobots
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
           || Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o)));
    assert {:id "id0"} b0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b0#0), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, b0#0);
    assume {:id "id1"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
    assert {:id "id2"} b1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b1#0), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, b1#0);
    assume {:id "id3"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
    if (*)
    {
        assume {:id "id4"} b0#0 != b1#0;
        assert {:id "id5"} b0#0 != null;
        assert {:id "id6"} b1#0 != null;
        assume {:id "id7"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
    }
    else
    {
        assume {:id "id8"} b0#0 != b1#0
           ==> Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
            $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
    }

    assert {:id "id9"} b0#0 != null;
    assert {:id "id10"} b1#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
           || Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id11"} b0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b0#0), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, b0#0);
    assume {:id "id12"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
    assert {:id "id13"} b0#0 != null;
    assert {:id "id14"} b0#0 != null;
    assert {:id "id15"} $IsAlloc(b0#0, Tclass._module.Bot(), old($Heap));
    assume {:id "id16"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id17"} b1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b1#0), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, b1#0);
    assume {:id "id18"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
    assert {:id "id19"} b1#0 != null;
    assert {:id "id20"} b1#0 != null;
    assert {:id "id21"} $IsAlloc(b1#0, Tclass._module.Bot(), old($Heap));
    assume {:id "id22"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    if (*)
    {
        assume {:id "id23"} b0#0 != b1#0;
        assert {:id "id24"} b0#0 != null;
        assert {:id "id25"} b1#0 != null;
        assume {:id "id26"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
    }
    else
    {
        assume {:id "id27"} b0#0 != b1#0
           ==> Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
            $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
    }

    assert {:id "id28"} b0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b0#0), Tclass._module.Bot?(), $Heap);
    assert {:id "id29"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
    assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
    assume _module.Bot.robot__inv#canCall($Heap, b0#0);
    assume {:id "id30"} _module.Bot.robot__inv($Heap, b0#0);
    assert {:id "id31"} b1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b1#0), Tclass._module.Bot?(), $Heap);
    assert {:id "id32"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
    assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
    assume _module.Bot.robot__inv#canCall($Heap, b1#0);
    assume {:id "id33"} _module.Bot.robot__inv($Heap, b1#0);
    assert {:id "id34"} b0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b0#0), Tclass._module.Bot?(), $Heap);
    assert {:id "id35"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
    assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
    assume _module.Bot.flying#canCall($Heap, b0#0);
    assume {:id "id36"} _module.Bot.flying($Heap, b0#0);
    assert {:id "id37"} b1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b1#0), Tclass._module.Bot?(), $Heap);
    assert {:id "id38"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
    assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
    assume _module.Bot.flying#canCall($Heap, b1#0);
    assume {:id "id39"} _module.Bot.flying($Heap, b1#0);
}



procedure {:verboseName "FlyRobots (call)"} Call$$_module.__default.FlyRobots(b0#0: ref
       where $Is(b0#0, Tclass._module.Bot()) && $IsAlloc(b0#0, Tclass._module.Bot(), $Heap), 
    b1#0: ref
       where $Is(b1#0, Tclass._module.Bot()) && $IsAlloc(b1#0, Tclass._module.Bot(), $Heap));
  // user-defined preconditions
  requires {:id "id40"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
  requires {:id "id41"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
  requires {:id "id42"} b0#0 != b1#0
     ==> Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
      $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Bot.Valid#canCall($Heap, b0#0);
  ensures {:id "id43"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
  ensures {:id "id44"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures _module.Bot.Valid#canCall($Heap, b1#0);
  ensures {:id "id45"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
  ensures {:id "id46"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id47"} b0#0 != b1#0
     ==> Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
      $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  free ensures _module.Bot.robot__inv#canCall($Heap, b0#0)
     && (_module.Bot.robot__inv($Heap, b0#0)
       ==> _module.Bot.robot__inv#canCall($Heap, b1#0));
  free ensures {:id "id48"} _module.Bot.robot__inv#canCall($Heap, b0#0)
     && 
    _module.Bot.robot__inv($Heap, b0#0)
     && (_module.Bot.flying($Heap, b0#0) ==> _module.Bot.arms__up($Heap, b0#0));
  free ensures {:id "id49"} _module.Bot.robot__inv#canCall($Heap, b1#0)
     && 
    _module.Bot.robot__inv($Heap, b1#0)
     && (_module.Bot.flying($Heap, b1#0) ==> _module.Bot.arms__up($Heap, b1#0));
  free ensures _module.Bot.flying#canCall($Heap, b0#0)
     && (_module.Bot.flying($Heap, b0#0) ==> _module.Bot.flying#canCall($Heap, b1#0));
  free ensures {:id "id50"} _module.Bot.flying#canCall($Heap, b0#0)
     && 
    _module.Bot.flying($Heap, b0#0)
     && $Unbox(read($Heap, 
          $Unbox(read($Heap, $Unbox(read($Heap, b0#0, _module.Bot.pos)): ref, _module.Point.z)): ref, 
          _module.Cell.val)): int
       > 0;
  free ensures {:id "id51"} _module.Bot.flying#canCall($Heap, b1#0)
     && 
    _module.Bot.flying($Heap, b1#0)
     && $Unbox(read($Heap, 
          $Unbox(read($Heap, $Unbox(read($Heap, b1#0, _module.Bot.pos)): ref, _module.Point.z)): ref, 
          _module.Cell.val)): int
       > 0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FlyRobots (correctness)"} Impl$$_module.__default.FlyRobots(b0#0: ref
       where $Is(b0#0, Tclass._module.Bot()) && $IsAlloc(b0#0, Tclass._module.Bot(), $Heap), 
    b1#0: ref
       where $Is(b1#0, Tclass._module.Bot()) && $IsAlloc(b1#0, Tclass._module.Bot(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id52"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
  requires {:id "id53"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
  requires {:id "id54"} b0#0 != b1#0
     ==> Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
      $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Bot.Valid#canCall($Heap, b0#0);
  ensures {:id "id55"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
  ensures {:id "id56"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures _module.Bot.Valid#canCall($Heap, b1#0);
  ensures {:id "id57"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
  ensures {:id "id58"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id59"} b0#0 != b1#0
     ==> Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
      $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  free ensures _module.Bot.robot__inv#canCall($Heap, b0#0)
     && (_module.Bot.robot__inv($Heap, b0#0)
       ==> _module.Bot.robot__inv#canCall($Heap, b1#0));
  ensures {:id "id60"} _module.Bot.robot__inv#canCall($Heap, b0#0)
     ==> _module.Bot.robot__inv($Heap, b0#0)
       || (_module.Bot.flying($Heap, b0#0)
         ==> 
        _module.Bot.arms__up#canCall($Heap, b0#0)
         ==> _module.Bot.arms__up($Heap, b0#0)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, b0#0, _module.Bot.left)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int
             == $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, b0#0, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int);
  ensures {:id "id61"} _module.Bot.robot__inv#canCall($Heap, b0#0)
     ==> _module.Bot.robot__inv($Heap, b0#0)
       || (_module.Bot.flying($Heap, b0#0)
         ==> 
        _module.Bot.arms__up#canCall($Heap, b0#0)
         ==> _module.Bot.arms__up($Heap, b0#0)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, b0#0, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int
             == LitInt(0));
  ensures {:id "id62"} _module.Bot.robot__inv#canCall($Heap, b1#0)
     ==> _module.Bot.robot__inv($Heap, b1#0)
       || (_module.Bot.flying($Heap, b1#0)
         ==> 
        _module.Bot.arms__up#canCall($Heap, b1#0)
         ==> _module.Bot.arms__up($Heap, b1#0)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, b1#0, _module.Bot.left)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int
             == $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, b1#0, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int);
  ensures {:id "id63"} _module.Bot.robot__inv#canCall($Heap, b1#0)
     ==> _module.Bot.robot__inv($Heap, b1#0)
       || (_module.Bot.flying($Heap, b1#0)
         ==> 
        _module.Bot.arms__up#canCall($Heap, b1#0)
         ==> _module.Bot.arms__up($Heap, b1#0)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, b1#0, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int
             == LitInt(0));
  free ensures _module.Bot.flying#canCall($Heap, b0#0)
     && (_module.Bot.flying($Heap, b0#0) ==> _module.Bot.flying#canCall($Heap, b1#0));
  ensures {:id "id64"} _module.Bot.flying#canCall($Heap, b0#0)
     ==> _module.Bot.flying($Heap, b0#0)
       || $Unbox(read($Heap, 
            $Unbox(read($Heap, $Unbox(read($Heap, b0#0, _module.Bot.pos)): ref, _module.Point.z)): ref, 
            _module.Cell.val)): int
         > 0;
  ensures {:id "id65"} _module.Bot.flying#canCall($Heap, b1#0)
     ==> _module.Bot.flying($Heap, b1#0)
       || $Unbox(read($Heap, 
            $Unbox(read($Heap, $Unbox(read($Heap, b1#0, _module.Bot.pos)): ref, _module.Point.z)): ref, 
            _module.Cell.val)): int
         > 0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FlyRobots (correctness)"} Impl$$_module.__default.FlyRobots(b0#0: ref, b1#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: FlyRobots, Impl$$_module.__default.FlyRobots
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
           || Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(169,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id66"} b0#0 != null;
    assert {:id "id67"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id68"} Call$$_module.Bot.Fly(b0#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(170,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id69"} b1#0 != null;
    assert {:id "id70"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id71"} Call$$_module.Bot.Fly(b1#0);
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.ArmyRepr
function _module.__default.ArmyRepr($heap: Heap, bots#0: Seq) : Set
uses {
// consequence axiom for _module.__default.ArmyRepr
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, bots#0: Seq :: 
    { _module.__default.ArmyRepr($Heap, bots#0) } 
    _module.__default.ArmyRepr#canCall($Heap, bots#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(bots#0, TSeq(Tclass._module.Bot()))
           && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap))
       ==> $Is(_module.__default.ArmyRepr($Heap, bots#0), TSet(Tclass._System.object())));
// alloc consequence axiom for _module.__default.ArmyRepr
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, bots#0: Seq :: 
    { $IsAlloc(_module.__default.ArmyRepr($Heap, bots#0), TSet(Tclass._System.object()), $Heap) } 
    _module.__default.ArmyRepr#canCall($Heap, bots#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(bots#0, TSeq(Tclass._module.Bot()))
           && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap))
       ==> $IsAlloc(_module.__default.ArmyRepr($Heap, bots#0), TSet(Tclass._System.object()), $Heap));
// definition axiom for _module.__default.ArmyRepr (revealed)
axiom {:id "id72"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, bots#0: Seq :: 
    { _module.__default.ArmyRepr($Heap, bots#0), $IsGoodHeap($Heap) } 
    _module.__default.ArmyRepr#canCall($Heap, bots#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(bots#0, TSeq(Tclass._module.Bot())))
       ==> _module.__default.ArmyRepr($Heap, bots#0)
         == Set#FromBoogieMap((lambda $y#0: Box :: 
            (exists b#0: ref, o#0: ref :: 
              { Set#IsMember($Unbox(read($Heap, b#0, _module.Bot.Repr)): Set, $Box(o#0)) } 
              $Is(b#0, Tclass._module.Bot())
                 && $Is(o#0, Tclass._System.object())
                 && 
                Seq#Contains(bots#0, $Box(b#0))
                 && Set#IsMember($Unbox(read($Heap, b#0, _module.Bot.Repr)): Set, $Box(o#0))
                 && $y#0 == $Box(o#0)))));
}

function _module.__default.ArmyRepr#canCall($heap: Heap, bots#0: Seq) : bool;

// frame axiom for _module.__default.ArmyRepr
axiom (forall $h0: Heap, $h1: Heap, bots#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.ArmyRepr($h1, bots#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.ArmyRepr#canCall($h0, bots#0)
         || $Is(bots#0, TSeq(Tclass._module.Bot())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Is($o, Tclass._module.Bot()) && Seq#Contains(bots#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.ArmyRepr($h0, bots#0)
       == _module.__default.ArmyRepr($h1, bots#0));

function _module.__default.ArmyRepr#requires(Heap, Seq) : bool;

// #requires axiom for _module.__default.ArmyRepr
axiom (forall $Heap: Heap, bots#0: Seq :: 
  { _module.__default.ArmyRepr#requires($Heap, bots#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(bots#0, TSeq(Tclass._module.Bot()))
     ==> _module.__default.ArmyRepr#requires($Heap, bots#0) == true);

procedure {:verboseName "ArmyRepr (well-formedness)"} CheckWellformed$$_module.__default.ArmyRepr(bots#0: Seq where $Is(bots#0, TSeq(Tclass._module.Bot())));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArmyRepr (well-formedness)"} CheckWellformed$$_module.__default.ArmyRepr(bots#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b#1: ref;
  var b#2: ref;
  var b#3: ref;
  var o#1: ref;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Is($o, Tclass._module.Bot()) && Seq#Contains(bots#0, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Begin Comprehension WF check
    havoc b#1;
    if ($Is(b#1, Tclass._module.Bot()) && $IsAlloc(b#1, Tclass._module.Bot(), $Heap))
    {
        if (Seq#Contains(bots#0, $Box(b#1)))
        {
        }
    }

    // End Comprehension WF check
    // Check well-formedness of the decreases clause
    // Begin Comprehension WF check
    havoc b#2;
    if ($Is(b#2, Tclass._module.Bot()) && $IsAlloc(b#2, Tclass._module.Bot(), $Heap))
    {
        if (Seq#Contains(bots#0, $Box(b#2)))
        {
        }
    }

    // End Comprehension WF check
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.ArmyRepr($Heap, bots#0), TSet(Tclass._System.object()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc b#3;
        havoc o#1;
        if ($Is(b#3, Tclass._module.Bot())
           && $IsAlloc(b#3, Tclass._module.Bot(), $Heap)
           && 
          $Is(o#1, Tclass._System.object())
           && $IsAlloc(o#1, Tclass._System.object(), $Heap))
        {
            if (Seq#Contains(bots#0, $Box(b#3)))
            {
                assert {:id "id73"} b#3 != null;
                b$reqreads#0 := $_ReadsFrame[b#3, _module.Bot.Repr];
            }

            if (Seq#Contains(bots#0, $Box(b#3))
               && Set#IsMember($Unbox(read($Heap, b#3, _module.Bot.Repr)): Set, $Box(o#1)))
            {
            }
        }

        // End Comprehension WF check
        assume {:id "id74"} _module.__default.ArmyRepr($Heap, bots#0)
           == Set#FromBoogieMap((lambda $y#2: Box :: 
              (exists b#4: ref, o#2: ref :: 
                { Set#IsMember($Unbox(read($Heap, b#4, _module.Bot.Repr)): Set, $Box(o#2)) } 
                $Is(b#4, Tclass._module.Bot())
                   && $Is(o#2, Tclass._System.object())
                   && 
                  Seq#Contains(bots#0, $Box(b#4))
                   && Set#IsMember($Unbox(read($Heap, b#4, _module.Bot.Repr)): Set, $Box(o#2))
                   && $y#2 == $Box(o#2))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.ArmyRepr($Heap, bots#0), TSet(Tclass._System.object()));
        assert {:id "id75"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module._default.ValidArmy
function _module.__default.ValidArmy($heap: Heap, bots#0: Seq) : bool
uses {
// definition axiom for _module.__default.ValidArmy (revealed)
axiom {:id "id76"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, bots#0: Seq :: 
    { _module.__default.ValidArmy($Heap, bots#0), $IsGoodHeap($Heap) } 
    _module.__default.ValidArmy#canCall($Heap, bots#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(bots#0, TSeq(Tclass._module.Bot())))
       ==> (forall i#0: int :: 
          { $Unbox(Seq#Index(bots#0, i#0)): ref } 
          LitInt(0) <= i#0
             ==> 
            i#0 < Seq#Length(bots#0)
             ==> _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, i#0)): ref))
         && _module.__default.ValidArmy($Heap, bots#0)
           == ((forall i#0: int :: 
              { $Unbox(Seq#Index(bots#0, i#0)): ref } 
              LitInt(0) <= i#0 && i#0 < Seq#Length(bots#0)
                 ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#0)): ref))
             && (forall i#1: int, j#0: int :: 
              { $Unbox(Seq#Index(bots#0, j#0)): ref, $Unbox(Seq#Index(bots#0, i#1)): ref } 
              LitInt(0) <= i#1 && i#1 < j#0 && j#0 < Seq#Length(bots#0)
                 ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                  $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#0)): ref, _module.Bot.Repr)): Set))));
}

function _module.__default.ValidArmy#canCall($heap: Heap, bots#0: Seq) : bool;

// frame axiom for _module.__default.ValidArmy
axiom (forall $h0: Heap, $h1: Heap, bots#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.ValidArmy($h1, bots#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.ValidArmy#canCall($h0, bots#0)
         || $Is(bots#0, TSeq(Tclass._module.Bot())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (($Is($o, Tclass._module.Bot()) && Seq#Contains(bots#0, $Box($o)))
             || Set#IsMember(_module.__default.ArmyRepr($h0, bots#0), $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.ValidArmy($h0, bots#0)
       == _module.__default.ValidArmy($h1, bots#0));

function _module.__default.ValidArmy#requires(Heap, Seq) : bool;

// #requires axiom for _module.__default.ValidArmy
axiom (forall $Heap: Heap, bots#0: Seq :: 
  { _module.__default.ValidArmy#requires($Heap, bots#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(bots#0, TSeq(Tclass._module.Bot()))
     ==> _module.__default.ValidArmy#requires($Heap, bots#0) == true);

procedure {:verboseName "ValidArmy (well-formedness)"} CheckWellformed$$_module.__default.ValidArmy(bots#0: Seq where $Is(bots#0, TSeq(Tclass._module.Bot())));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ValidArmy (well-formedness)"} CheckWellformed$$_module.__default.ValidArmy(bots#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b#0: ref;
  var ##bots#0: Seq;
  var b$reqreads#0: bool;
  var b#1: ref;
  var ##bots#1: Seq;
  var i#2: int;
  var i#3: int;
  var j#1: int;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($Is($o, Tclass._module.Bot()) && Seq#Contains(bots#0, $Box($o)))
           || Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Begin Comprehension WF check
    havoc b#0;
    if ($Is(b#0, Tclass._module.Bot()) && $IsAlloc(b#0, Tclass._module.Bot(), $Heap))
    {
        if (Seq#Contains(bots#0, $Box(b#0)))
        {
        }
    }

    // End Comprehension WF check
    ##bots#0 := bots#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bots#0, TSeq(Tclass._module.Bot()), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $Is($o, Tclass._module.Bot())
           && Seq#Contains(##bots#0, $Box($o))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.__default.ArmyRepr#canCall($Heap, bots#0);
    assert {:id "id77"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Begin Comprehension WF check
    havoc b#1;
    if ($Is(b#1, Tclass._module.Bot()) && $IsAlloc(b#1, Tclass._module.Bot(), $Heap))
    {
        if (Seq#Contains(bots#0, $Box(b#1)))
        {
        }
    }

    // End Comprehension WF check
    ##bots#1 := bots#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bots#1, TSeq(Tclass._module.Bot()), $Heap);
    assume _module.__default.ArmyRepr#canCall($Heap, bots#0);
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc i#2;
        if (true)
        {
            if (LitInt(0) <= i#2)
            {
            }

            if (LitInt(0) <= i#2 && i#2 < Seq#Length(bots#0))
            {
                assert {:id "id78"} 0 <= i#2 && i#2 < Seq#Length(bots#0);
                assert {:id "id79"} $Unbox(Seq#Index(bots#0, i#2)): ref != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox(Seq#Index(bots#0, i#2), Tclass._module.Bot?(), $Heap);
                b$reqreads#1 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && ($o == $Unbox(Seq#Index(bots#0, i#2)): ref
                         || Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#2)): ref, _module.Bot.Repr)): Set, 
                          $Box($o)))
                     ==> $_ReadsFrame[$o, $f]);
                assume _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, i#2)): ref);
            }
        }

        // End Comprehension WF check
        if ((forall i#4: int :: 
          { $Unbox(Seq#Index(bots#0, i#4)): ref } 
          LitInt(0) <= i#4 && i#4 < Seq#Length(bots#0)
             ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#4)): ref)))
        {
            // Begin Comprehension WF check
            havoc i#3;
            havoc j#1;
            if (true)
            {
                if (LitInt(0) <= i#3)
                {
                }

                if (LitInt(0) <= i#3 && i#3 < j#1)
                {
                }

                if (LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(bots#0))
                {
                    assert {:id "id80"} 0 <= i#3 && i#3 < Seq#Length(bots#0);
                    assert {:id "id81"} $Unbox(Seq#Index(bots#0, i#3)): ref != null;
                    b$reqreads#2 := $_ReadsFrame[$Unbox(Seq#Index(bots#0, i#3)): ref, _module.Bot.Repr];
                    assert {:id "id82"} 0 <= j#1 && j#1 < Seq#Length(bots#0);
                    assert {:id "id83"} $Unbox(Seq#Index(bots#0, j#1)): ref != null;
                    b$reqreads#3 := $_ReadsFrame[$Unbox(Seq#Index(bots#0, j#1)): ref, _module.Bot.Repr];
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id84"} _module.__default.ValidArmy($Heap, bots#0)
           == ((forall i#4: int :: 
              { $Unbox(Seq#Index(bots#0, i#4)): ref } 
              LitInt(0) <= i#4 && i#4 < Seq#Length(bots#0)
                 ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#4)): ref))
             && (forall i#5: int, j#2: int :: 
              { $Unbox(Seq#Index(bots#0, j#2)): ref, $Unbox(Seq#Index(bots#0, i#5)): ref } 
              LitInt(0) <= i#5 && i#5 < j#2 && j#2 < Seq#Length(bots#0)
                 ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#5)): ref, _module.Bot.Repr)): Set, 
                  $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#2)): ref, _module.Bot.Repr)): Set)));
        assume (forall i#4: int :: 
          { $Unbox(Seq#Index(bots#0, i#4)): ref } 
          LitInt(0) <= i#4 && i#4 < Seq#Length(bots#0)
             ==> _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, i#4)): ref));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.ValidArmy($Heap, bots#0), TBool);
        assert {:id "id85"} b$reqreads#1;
        assert {:id "id86"} b$reqreads#2;
        assert {:id "id87"} b$reqreads#3;
        return;

        assume false;
    }
}



procedure {:verboseName "FlyRobotArmy (well-formedness)"} CheckWellFormed$$_module.__default.FlyRobotArmy(bots#0: Seq
       where $Is(bots#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FlyRobotArmy (well-formedness)"} CheckWellFormed$$_module.__default.FlyRobotArmy(bots#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##bots#0: Seq;
  var ##bots#1: Seq;
  var ##bots#2: Seq;
  var ##bots#3: Seq;
  var ##bots#4: Seq;
  var b#0: ref;


    // AddMethodImpl: FlyRobotArmy, CheckWellFormed$$_module.__default.FlyRobotArmy
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o)));
    ##bots#0 := bots#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bots#0, TSeq(Tclass._module.Bot()), $Heap);
    assume _module.__default.ValidArmy#canCall($Heap, bots#0);
    assume {:id "id88"} _module.__default.ValidArmy($Heap, bots#0);
    ##bots#1 := bots#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bots#1, TSeq(Tclass._module.Bot()), $Heap);
    assume _module.__default.ArmyRepr#canCall($Heap, bots#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    ##bots#2 := bots#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bots#2, TSeq(Tclass._module.Bot()), $Heap);
    assume _module.__default.ValidArmy#canCall($Heap, bots#0);
    assume {:id "id89"} _module.__default.ValidArmy($Heap, bots#0);
    ##bots#3 := bots#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bots#3, TSeq(Tclass._module.Bot()), $Heap);
    assume _module.__default.ArmyRepr#canCall($Heap, bots#0);
    ##bots#4 := bots#0;
    assert {:id "id90"} $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), old($Heap));
    assume _module.__default.ArmyRepr#canCall(old($Heap), bots#0);
    assume {:id "id91"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o))
             && !Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o))
             && !Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    havoc b#0;
    assume $Is(b#0, Tclass._module.Bot()) && $IsAlloc(b#0, Tclass._module.Bot(), $Heap);
    if (*)
    {
        assume {:id "id92"} Seq#Contains(bots#0, $Box(b#0));
        assert {:id "id93"} b#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(b#0), Tclass._module.Bot?(), $Heap);
        assume _module.Bot.Valid#canCall($Heap, b#0);
        assume {:id "id94"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#0);
        assert {:id "id95"} b#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(b#0), Tclass._module.Bot?(), $Heap);
        assert {:id "id96"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#0);
        assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#0);
        assume _module.Bot.robot__inv#canCall($Heap, b#0);
        assume {:id "id97"} _module.Bot.robot__inv($Heap, b#0);
        assert {:id "id98"} b#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(b#0), Tclass._module.Bot?(), $Heap);
        assert {:id "id99"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#0);
        assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#0);
        assume _module.Bot.flying#canCall($Heap, b#0);
        assume {:id "id100"} _module.Bot.flying($Heap, b#0);
    }
    else
    {
        assume {:id "id101"} Seq#Contains(bots#0, $Box(b#0))
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#0)
             && _module.Bot.robot__inv($Heap, b#0)
             && _module.Bot.flying($Heap, b#0);
    }

    assume {:id "id102"} (forall b#1: ref :: 
      { _module.Bot.flying($Heap, b#1) } 
        { _module.Bot.robot__inv($Heap, b#1) } 
        { _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#1) } 
        { Seq#Contains(bots#0, $Box(b#1)) } 
      $Is(b#1, Tclass._module.Bot())
         ==> (Seq#Contains(bots#0, $Box(b#1))
             ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#1))
           && (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.robot__inv($Heap, b#1))
           && (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.flying($Heap, b#1)));
}



procedure {:verboseName "FlyRobotArmy (call)"} Call$$_module.__default.FlyRobotArmy(bots#0: Seq
       where $Is(bots#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap));
  // user-defined preconditions
  requires {:id "id103"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     ==> _module.__default.ValidArmy($Heap, bots#0)
       || (forall i#0: int :: 
        { $Unbox(Seq#Index(bots#0, i#0)): ref } 
        LitInt(0) <= i#0 && i#0 < Seq#Length(bots#0)
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#0)): ref));
  requires {:id "id104"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     ==> _module.__default.ValidArmy($Heap, bots#0)
       || (forall i#1: int, j#0: int :: 
        { $Unbox(Seq#Index(bots#0, j#0)): ref, $Unbox(Seq#Index(bots#0, i#1)): ref } 
        LitInt(0) <= i#1 && i#1 < j#0 && j#0 < Seq#Length(bots#0)
           ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#0)): ref, _module.Bot.Repr)): Set));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ValidArmy#canCall($Heap, bots#0)
     && (_module.__default.ValidArmy($Heap, bots#0)
       ==> _module.__default.ArmyRepr#canCall($Heap, bots#0)
         && _module.__default.ArmyRepr#canCall(old($Heap), bots#0));
  free ensures {:id "id105"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     && 
    _module.__default.ValidArmy($Heap, bots#0)
     && 
    (forall i#2: int :: 
      { $Unbox(Seq#Index(bots#0, i#2)): ref } 
      LitInt(0) <= i#2 && i#2 < Seq#Length(bots#0)
         ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#2)): ref))
     && (forall i#3: int, j#1: int :: 
      { $Unbox(Seq#Index(bots#0, j#1)): ref, $Unbox(Seq#Index(bots#0, i#3)): ref } 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(bots#0)
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#3)): ref, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#1)): ref, _module.Bot.Repr)): Set));
  ensures {:id "id106"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o))
           && !Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o))
           && !Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures (forall b#1: ref :: 
    { _module.Bot.flying($Heap, b#1) } 
      { _module.Bot.robot__inv($Heap, b#1) } 
      { _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#1) } 
      { Seq#Contains(bots#0, $Box(b#1)) } 
    $Is(b#1, Tclass._module.Bot())
       ==> (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.Valid#canCall($Heap, b#1))
         && (
          (Seq#Contains(bots#0, $Box(b#1))
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#1))
           ==> (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.robot__inv#canCall($Heap, b#1))
             && (
              (Seq#Contains(bots#0, $Box(b#1))
               ==> _module.Bot.robot__inv($Heap, b#1))
               ==> 
              Seq#Contains(bots#0, $Box(b#1))
               ==> _module.Bot.flying#canCall($Heap, b#1))));
  ensures {:id "id107"} (forall b#1: ref :: 
    { _module.Bot.flying($Heap, b#1) } 
      { _module.Bot.robot__inv($Heap, b#1) } 
      { _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#1) } 
      { Seq#Contains(bots#0, $Box(b#1)) } 
    $Is(b#1, Tclass._module.Bot())
       ==> (Seq#Contains(bots#0, $Box(b#1))
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#1))
         && (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.robot__inv($Heap, b#1))
         && (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.flying($Heap, b#1)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FlyRobotArmy (correctness)"} Impl$$_module.__default.FlyRobotArmy(bots#0: Seq
       where $Is(bots#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id108"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     && 
    _module.__default.ValidArmy($Heap, bots#0)
     && 
    (forall i#4: int :: 
      { $Unbox(Seq#Index(bots#0, i#4)): ref } 
      LitInt(0) <= i#4 && i#4 < Seq#Length(bots#0)
         ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#4)): ref))
     && (forall i#5: int, j#2: int :: 
      { $Unbox(Seq#Index(bots#0, j#2)): ref, $Unbox(Seq#Index(bots#0, i#5)): ref } 
      LitInt(0) <= i#5 && i#5 < j#2 && j#2 < Seq#Length(bots#0)
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#5)): ref, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#2)): ref, _module.Bot.Repr)): Set));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ValidArmy#canCall($Heap, bots#0)
     && (_module.__default.ValidArmy($Heap, bots#0)
       ==> _module.__default.ArmyRepr#canCall($Heap, bots#0)
         && _module.__default.ArmyRepr#canCall(old($Heap), bots#0));
  ensures {:id "id109"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     ==> _module.__default.ValidArmy($Heap, bots#0)
       || (forall i#6: int :: 
        { $Unbox(Seq#Index(bots#0, i#6)): ref } 
        LitInt(0) <= i#6 && i#6 < Seq#Length(bots#0)
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#6)): ref));
  ensures {:id "id110"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     ==> _module.__default.ValidArmy($Heap, bots#0)
       || (forall i#7: int, j#3: int :: 
        { $Unbox(Seq#Index(bots#0, j#3)): ref, $Unbox(Seq#Index(bots#0, i#7)): ref } 
        LitInt(0) <= i#7 && i#7 < j#3 && j#3 < Seq#Length(bots#0)
           ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#7)): ref, _module.Bot.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#3)): ref, _module.Bot.Repr)): Set));
  ensures {:id "id111"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o))
           && !Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o))
           && !Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures (forall b#1: ref :: 
    { _module.Bot.flying($Heap, b#1) } 
      { _module.Bot.robot__inv($Heap, b#1) } 
      { _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#1) } 
      { Seq#Contains(bots#0, $Box(b#1)) } 
    $Is(b#1, Tclass._module.Bot())
       ==> (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.Valid#canCall($Heap, b#1))
         && (
          (Seq#Contains(bots#0, $Box(b#1))
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#1))
           ==> (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.robot__inv#canCall($Heap, b#1))
             && (
              (Seq#Contains(bots#0, $Box(b#1))
               ==> _module.Bot.robot__inv($Heap, b#1))
               ==> 
              Seq#Contains(bots#0, $Box(b#1))
               ==> _module.Bot.flying#canCall($Heap, b#1))));
  ensures {:id "id112"} (forall b#1: ref :: 
    { _module.Bot.flying($Heap, b#1) } 
      { _module.Bot.robot__inv($Heap, b#1) } 
      { _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#1) } 
      { Seq#Contains(bots#0, $Box(b#1)) } 
    $Is(b#1, Tclass._module.Bot())
       ==> (Seq#Contains(bots#0, $Box(b#1))
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#1))
         && (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.robot__inv($Heap, b#1))
         && (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.flying($Heap, b#1)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FlyRobotArmy (correctness)"} Impl$$_module.__default.FlyRobotArmy(bots#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var bots##0_0: Seq;
  var n#1_0: int;
  var $PreLoopHeap$loop#1_0: Heap;
  var $decr_init$loop#1_00: int;
  var $w$loop#1_0: bool;
  var ##bots#1_0: Seq;
  var j#1_1: int;
  var i#1_2: int;
  var $decr$loop#1_00: int;
  var bots##1_0_0: Seq;
  var n##1_0_0: int;

    // AddMethodImpl: FlyRobotArmy, Impl$$_module.__default.FlyRobotArmy
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(197,3)
    if (*)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(199,29)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        bots##0_0 := bots#0;
        assert {:id "id113"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(_module.__default.ArmyRepr($Heap, bots##0_0), $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id114"} Call$$_module.__default.FlyRobotArmy__Recursively(bots##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(202,11)
        assume true;
        assume true;
        n#1_0 := LitInt(0);
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(203,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#1_0 := $Heap;
        $decr_init$loop#1_00 := Seq#Length(bots#0) - n#1_0;
        havoc $w$loop#1_0;
        while (true)
          free invariant true;
          invariant {:id "id117"} $w$loop#1_0 ==> LitInt(0) <= n#1_0;
          invariant {:id "id118"} $w$loop#1_0 ==> n#1_0 <= Seq#Length(bots#0);
          free invariant $w$loop#1_0 ==> _module.__default.ValidArmy#canCall($Heap, bots#0);
          invariant {:id "id120"} $w$loop#1_0
             ==> 
            _module.__default.ValidArmy#canCall($Heap, bots#0)
             ==> _module.__default.ValidArmy($Heap, bots#0)
               || (forall i#1_0: int :: 
                { $Unbox(Seq#Index(bots#0, i#1_0)): ref } 
                LitInt(0) <= i#1_0 && i#1_0 < Seq#Length(bots#0)
                   ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#1_0)): ref));
          invariant {:id "id121"} $w$loop#1_0
             ==> 
            _module.__default.ValidArmy#canCall($Heap, bots#0)
             ==> _module.__default.ValidArmy($Heap, bots#0)
               || (forall i#1_1: int, j#1_0: int :: 
                { $Unbox(Seq#Index(bots#0, j#1_0)): ref, $Unbox(Seq#Index(bots#0, i#1_1)): ref } 
                LitInt(0) <= i#1_1 && i#1_1 < j#1_0 && j#1_0 < Seq#Length(bots#0)
                   ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1_1)): ref, _module.Bot.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#1_0)): ref, _module.Bot.Repr)): Set));
          free invariant {:id "id122"} $w$loop#1_0
             ==> _module.__default.ValidArmy#canCall($Heap, bots#0)
               && 
              _module.__default.ValidArmy($Heap, bots#0)
               && 
              (forall i#1_0: int :: 
                { $Unbox(Seq#Index(bots#0, i#1_0)): ref } 
                LitInt(0) <= i#1_0 && i#1_0 < Seq#Length(bots#0)
                   ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#1_0)): ref))
               && (forall i#1_1: int, j#1_0: int :: 
                { $Unbox(Seq#Index(bots#0, j#1_0)): ref, $Unbox(Seq#Index(bots#0, i#1_1)): ref } 
                LitInt(0) <= i#1_1 && i#1_1 < j#1_0 && j#1_0 < Seq#Length(bots#0)
                   ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1_1)): ref, _module.Bot.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#1_0)): ref, _module.Bot.Repr)): Set));
          free invariant $w$loop#1_0
             ==> (forall j#1_2: int :: 
              { $Unbox(Seq#Index(bots#0, j#1_2)): ref } 
              (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                   ==> _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                 && (
                  (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                   ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                   ==> (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                       ==> _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                     && (
                      (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                       ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                       ==> 
                      LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                       ==> _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))));
          invariant {:id "id132"} $w$loop#1_0
             ==> (forall j#1_2: int :: 
              { $Unbox(Seq#Index(bots#0, j#1_2)): ref } 
              (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                   ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                 && (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                   ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                 && (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                   ==> _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref)));
          free invariant true;
          invariant {:id "id139"} $w$loop#1_0
             ==> (forall i#1_3: int :: 
              { $Unbox(Seq#Index(bots#0, i#1_3)): ref } 
                { $Unbox(Seq#Index(bots#0, i#1_3)): ref } 
              LitInt(0) <= i#1_3 && i#1_3 < Seq#Length(bots#0)
                 ==> (forall $o: ref :: 
                    { $o != null } 
                    Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1_3)): ref, _module.Bot.Repr)): Set, 
                          $Box($o))
                         && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#1_3)): ref, _module.Bot.Repr)): Set, 
                          $Box($o))
                       ==> $o != null)
                   && (forall $o: ref :: 
                    { $Unbox(read(old($Heap), $o, alloc)): bool } 
                    Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1_3)): ref, _module.Bot.Repr)): Set, 
                          $Box($o))
                         && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#1_3)): ref, _module.Bot.Repr)): Set, 
                          $Box($o))
                       ==> !$Unbox(read(old($Heap), $o, alloc)): bool));
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#1_0[$o]
                 || Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o)));
          free invariant $HeapSucc($PreLoopHeap$loop#1_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#1_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant Seq#Length(bots#0) - n#1_0 <= $decr_init$loop#1_00;
        {
            if (!$w$loop#1_0)
            {
                if (LitInt(0) <= n#1_0)
                {
                }

                assume true;
                assume {:id "id116"} LitInt(0) <= n#1_0 && n#1_0 <= Seq#Length(bots#0);
                ##bots#1_0 := bots#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##bots#1_0, TSeq(Tclass._module.Bot()), $Heap);
                assume _module.__default.ValidArmy#canCall($Heap, bots#0);
                assume _module.__default.ValidArmy#canCall($Heap, bots#0);
                assume {:id "id119"} _module.__default.ValidArmy($Heap, bots#0);
                // Begin Comprehension WF check
                havoc j#1_1;
                if (true)
                {
                    if (LitInt(0) <= j#1_1)
                    {
                    }

                    if (LitInt(0) <= j#1_1 && j#1_1 < n#1_0)
                    {
                        assert {:id "id123"} {:subsumption 0} 0 <= j#1_1 && j#1_1 < Seq#Length(bots#0);
                        assert {:id "id124"} {:subsumption 0} $Unbox(Seq#Index(bots#0, j#1_1)): ref != null;
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox(Seq#Index(bots#0, j#1_1), Tclass._module.Bot?(), $Heap);
                        assume _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_1)): ref);
                        if (_module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1_1)): ref))
                        {
                            assert {:id "id125"} {:subsumption 0} 0 <= j#1_1 && j#1_1 < Seq#Length(bots#0);
                            assert {:id "id126"} {:subsumption 0} $Unbox(Seq#Index(bots#0, j#1_1)): ref != null;
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox(Seq#Index(bots#0, j#1_1), Tclass._module.Bot?(), $Heap);
                            assert {:id "id127"} {:subsumption 0} Lit(true)
                               ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1_1)): ref);
                            assume _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_1)): ref);
                        }

                        if (_module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1_1)): ref)
                           && _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#1_1)): ref))
                        {
                            assert {:id "id128"} {:subsumption 0} 0 <= j#1_1 && j#1_1 < Seq#Length(bots#0);
                            assert {:id "id129"} {:subsumption 0} $Unbox(Seq#Index(bots#0, j#1_1)): ref != null;
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox(Seq#Index(bots#0, j#1_1), Tclass._module.Bot?(), $Heap);
                            assert {:id "id130"} {:subsumption 0} Lit(true)
                               ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1_1)): ref);
                            assume _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_1)): ref);
                        }
                    }
                }

                // End Comprehension WF check
                assume (forall j#1_2: int :: 
                  { $Unbox(Seq#Index(bots#0, j#1_2)): ref } 
                  (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                       ==> _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                     && (
                      (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                       ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                       ==> (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                           ==> _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                         && (
                          (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                           ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                           ==> 
                          LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                           ==> _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))));
                assume {:id "id131"} (forall j#1_2: int :: 
                  { $Unbox(Seq#Index(bots#0, j#1_2)): ref } 
                  (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                       ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                     && (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                       ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                     && (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                       ==> _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref)));
                // Begin Comprehension WF check
                havoc i#1_2;
                if (true)
                {
                    if (LitInt(0) <= i#1_2)
                    {
                    }

                    if (LitInt(0) <= i#1_2 && i#1_2 < Seq#Length(bots#0))
                    {
                        assert {:id "id133"} {:subsumption 0} 0 <= i#1_2 && i#1_2 < Seq#Length(bots#0);
                        assert {:id "id134"} {:subsumption 0} $Unbox(Seq#Index(bots#0, i#1_2)): ref != null;
                        assert {:id "id135"} {:subsumption 0} 0 <= i#1_2 && i#1_2 < Seq#Length(bots#0);
                        assert {:id "id136"} {:subsumption 0} $Unbox(Seq#Index(bots#0, i#1_2)): ref != null;
                        assert {:id "id137"} $IsAlloc($Unbox(Seq#Index(bots#0, i#1_2)): ref, Tclass._module.Bot(), old($Heap));
                    }
                }

                // End Comprehension WF check
                assume true;
                assume {:id "id138"} (forall i#1_3: int :: 
                  { $Unbox(Seq#Index(bots#0, i#1_3)): ref } 
                    { $Unbox(Seq#Index(bots#0, i#1_3)): ref } 
                  LitInt(0) <= i#1_3 && i#1_3 < Seq#Length(bots#0)
                     ==> (forall $o: ref :: 
                        { $o != null } 
                        Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1_3)): ref, _module.Bot.Repr)): Set, 
                              $Box($o))
                             && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#1_3)): ref, _module.Bot.Repr)): Set, 
                              $Box($o))
                           ==> $o != null)
                       && (forall $o: ref :: 
                        { $Unbox(read(old($Heap), $o, alloc)): bool } 
                        Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1_3)): ref, _module.Bot.Repr)): Set, 
                              $Box($o))
                             && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#1_3)): ref, _module.Bot.Repr)): Set, 
                              $Box($o))
                           ==> !$Unbox(read(old($Heap), $o, alloc)): bool));
                assume true;
                assume false;
            }

            assume true;
            if (Seq#Length(bots#0) <= n#1_0)
            {
                break;
            }

            $decr$loop#1_00 := Seq#Length(bots#0) - n#1_0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(209,13)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            bots##1_0_0 := bots#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            n##1_0_0 := n#1_0;
            assert {:id "id140"} (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots##1_0_0, n##1_0_0)): ref, _module.Bot.Repr)): Set, 
                    $Box($o))
                 ==> $_ModifiesFrame[$o, $f]);
            call {:id "id141"} Call$$_module.__default.FlyOne(bots##1_0_0, n##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(210,9)
            assume true;
            assume true;
            n#1_0 := n#1_0 + 1;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(203,5)
            assert {:id "id143"} 0 <= $decr$loop#1_00 || Seq#Length(bots#0) - n#1_0 == $decr$loop#1_00;
            assert {:id "id144"} Seq#Length(bots#0) - n#1_0 < $decr$loop#1_00;
            assume LitInt(0) <= n#1_0 && n#1_0 <= Seq#Length(bots#0)
               ==> _module.__default.ValidArmy#canCall($Heap, bots#0)
                 && (_module.__default.ValidArmy($Heap, bots#0)
                   ==> (forall j#1_2: int :: 
                    { $Unbox(Seq#Index(bots#0, j#1_2)): ref } 
                    (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                         ==> _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                       && (
                        (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                         ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                         ==> (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                             ==> _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                           && (
                            (LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                             ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref))
                             ==> 
                            LitInt(0) <= j#1_2 && j#1_2 < n#1_0
                             ==> _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, j#1_2)): ref)))));
        }
    }
}



procedure {:verboseName "FlyRobotArmy_Recursively (well-formedness)"} {:rlimit 100000000} CheckWellFormed$$_module.__default.FlyRobotArmy__Recursively(bots#0: Seq
       where $Is(bots#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FlyRobotArmy_Recursively (well-formedness)"} {:rlimit 100000000} CheckWellFormed$$_module.__default.FlyRobotArmy__Recursively(bots#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##bots#0: Seq;
  var ##bots#1: Seq;
  var ##bots#2: Seq;
  var i#0: int;
  var b#0: ref;


    // AddMethodImpl: FlyRobotArmy_Recursively, CheckWellFormed$$_module.__default.FlyRobotArmy__Recursively
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o)));
    ##bots#0 := bots#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bots#0, TSeq(Tclass._module.Bot()), $Heap);
    assume _module.__default.ValidArmy#canCall($Heap, bots#0);
    assume {:id "id145"} _module.__default.ValidArmy($Heap, bots#0);
    ##bots#1 := bots#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bots#1, TSeq(Tclass._module.Bot()), $Heap);
    assume _module.__default.ArmyRepr#canCall($Heap, bots#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    ##bots#2 := bots#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bots#2, TSeq(Tclass._module.Bot()), $Heap);
    assume _module.__default.ValidArmy#canCall($Heap, bots#0);
    assume {:id "id146"} _module.__default.ValidArmy($Heap, bots#0);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        assume {:id "id147"} LitInt(0) <= i#0 && i#0 < Seq#Length(bots#0);
        assert {:id "id148"} 0 <= i#0 && i#0 < Seq#Length(bots#0);
        assert {:id "id149"} $Unbox(Seq#Index(bots#0, i#0)): ref != null;
        assert {:id "id150"} 0 <= i#0 && i#0 < Seq#Length(bots#0);
        assert {:id "id151"} $Unbox(Seq#Index(bots#0, i#0)): ref != null;
        assert {:id "id152"} $IsAlloc($Unbox(Seq#Index(bots#0, i#0)): ref, Tclass._module.Bot(), old($Heap));
        assume {:id "id153"} (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#0)): ref, _module.Bot.Repr)): Set, 
                  $Box($o))
                 && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#0)): ref, _module.Bot.Repr)): Set, 
                  $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { $Unbox(read(old($Heap), $o, alloc)): bool } 
            Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#0)): ref, _module.Bot.Repr)): Set, 
                  $Box($o))
                 && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#0)): ref, _module.Bot.Repr)): Set, 
                  $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else
    {
        assume {:id "id154"} LitInt(0) <= i#0 && i#0 < Seq#Length(bots#0)
           ==> (forall $o: ref :: 
              { $o != null } 
              Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#0)): ref, _module.Bot.Repr)): Set, 
                    $Box($o))
                   && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#0)): ref, _module.Bot.Repr)): Set, 
                    $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { $Unbox(read(old($Heap), $o, alloc)): bool } 
              Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#0)): ref, _module.Bot.Repr)): Set, 
                    $Box($o))
                   && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#0)): ref, _module.Bot.Repr)): Set, 
                    $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }

    assume {:id "id155"} (forall i#1: int :: 
      { $Unbox(Seq#Index(bots#0, i#1)): ref } { $Unbox(Seq#Index(bots#0, i#1)): ref } 
      LitInt(0) <= i#1 && i#1 < Seq#Length(bots#0)
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                  $Box($o))
                 && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                  $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { $Unbox(read(old($Heap), $o, alloc)): bool } 
            Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                  $Box($o))
                 && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                  $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool));
    havoc b#0;
    assume $Is(b#0, Tclass._module.Bot()) && $IsAlloc(b#0, Tclass._module.Bot(), $Heap);
    if (*)
    {
        assume {:id "id156"} Seq#Contains(bots#0, $Box(b#0));
        assert {:id "id157"} b#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(b#0), Tclass._module.Bot?(), $Heap);
        assert {:id "id158"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#0);
        assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#0);
        assume _module.Bot.robot__inv#canCall($Heap, b#0);
        assume {:id "id159"} _module.Bot.robot__inv($Heap, b#0);
        assert {:id "id160"} b#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(b#0), Tclass._module.Bot?(), $Heap);
        assert {:id "id161"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#0);
        assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b#0);
        assume _module.Bot.flying#canCall($Heap, b#0);
        assume {:id "id162"} _module.Bot.flying($Heap, b#0);
    }
    else
    {
        assume {:id "id163"} Seq#Contains(bots#0, $Box(b#0))
           ==> _module.Bot.robot__inv($Heap, b#0) && _module.Bot.flying($Heap, b#0);
    }

    assume {:id "id164"} (forall b#1: ref :: 
      { _module.Bot.flying($Heap, b#1) } 
        { _module.Bot.robot__inv($Heap, b#1) } 
        { Seq#Contains(bots#0, $Box(b#1)) } 
      $Is(b#1, Tclass._module.Bot())
         ==> (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.robot__inv($Heap, b#1))
           && (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.flying($Heap, b#1)));
}



procedure {:verboseName "FlyRobotArmy_Recursively (call)"} {:rlimit 100000000} Call$$_module.__default.FlyRobotArmy__Recursively(bots#0: Seq
       where $Is(bots#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap));
  // user-defined preconditions
  requires {:id "id165"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     ==> _module.__default.ValidArmy($Heap, bots#0)
       || (forall i#2: int :: 
        { $Unbox(Seq#Index(bots#0, i#2)): ref } 
        LitInt(0) <= i#2 && i#2 < Seq#Length(bots#0)
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#2)): ref));
  requires {:id "id166"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     ==> _module.__default.ValidArmy($Heap, bots#0)
       || (forall i#3: int, j#0: int :: 
        { $Unbox(Seq#Index(bots#0, j#0)): ref, $Unbox(Seq#Index(bots#0, i#3)): ref } 
        LitInt(0) <= i#3 && i#3 < j#0 && j#0 < Seq#Length(bots#0)
           ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#3)): ref, _module.Bot.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#0)): ref, _module.Bot.Repr)): Set));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ValidArmy#canCall($Heap, bots#0);
  free ensures {:id "id167"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     && 
    _module.__default.ValidArmy($Heap, bots#0)
     && 
    (forall i#4: int :: 
      { $Unbox(Seq#Index(bots#0, i#4)): ref } 
      LitInt(0) <= i#4 && i#4 < Seq#Length(bots#0)
         ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#4)): ref))
     && (forall i#5: int, j#1: int :: 
      { $Unbox(Seq#Index(bots#0, j#1)): ref, $Unbox(Seq#Index(bots#0, i#5)): ref } 
      LitInt(0) <= i#5 && i#5 < j#1 && j#1 < Seq#Length(bots#0)
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#5)): ref, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#1)): ref, _module.Bot.Repr)): Set));
  free ensures true;
  ensures {:id "id168"} (forall i#1: int :: 
    { $Unbox(Seq#Index(bots#0, i#1)): ref } { $Unbox(Seq#Index(bots#0, i#1)): ref } 
    LitInt(0) <= i#1 && i#1 < Seq#Length(bots#0)
       ==> (forall $o: ref :: 
          { $o != null } 
          Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                $Box($o))
               && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                $Box($o))
             ==> $o != null)
         && (forall $o: ref :: 
          { $Unbox(read(old($Heap), $o, alloc)): bool } 
          Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                $Box($o))
               && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                $Box($o))
             ==> !$Unbox(read(old($Heap), $o, alloc)): bool));
  free ensures (forall b#1: ref :: 
    { _module.Bot.flying($Heap, b#1) } 
      { _module.Bot.robot__inv($Heap, b#1) } 
      { Seq#Contains(bots#0, $Box(b#1)) } 
    $Is(b#1, Tclass._module.Bot())
       ==> (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.robot__inv#canCall($Heap, b#1))
         && (
          (Seq#Contains(bots#0, $Box(b#1))
           ==> _module.Bot.robot__inv($Heap, b#1))
           ==> 
          Seq#Contains(bots#0, $Box(b#1))
           ==> _module.Bot.flying#canCall($Heap, b#1)));
  ensures {:id "id169"} (forall b#1: ref :: 
    { _module.Bot.flying($Heap, b#1) } 
      { _module.Bot.robot__inv($Heap, b#1) } 
      { Seq#Contains(bots#0, $Box(b#1)) } 
    $Is(b#1, Tclass._module.Bot())
       ==> (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.robot__inv($Heap, b#1))
         && (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.flying($Heap, b#1)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FlyRobotArmy_Recursively (correctness)"} {:rlimit 100000000} Impl$$_module.__default.FlyRobotArmy__Recursively(bots#0: Seq
       where $Is(bots#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id170"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     && 
    _module.__default.ValidArmy($Heap, bots#0)
     && 
    (forall i#6: int :: 
      { $Unbox(Seq#Index(bots#0, i#6)): ref } 
      LitInt(0) <= i#6 && i#6 < Seq#Length(bots#0)
         ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#6)): ref))
     && (forall i#7: int, j#2: int :: 
      { $Unbox(Seq#Index(bots#0, j#2)): ref, $Unbox(Seq#Index(bots#0, i#7)): ref } 
      LitInt(0) <= i#7 && i#7 < j#2 && j#2 < Seq#Length(bots#0)
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#7)): ref, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#2)): ref, _module.Bot.Repr)): Set));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ValidArmy#canCall($Heap, bots#0);
  ensures {:id "id171"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     ==> _module.__default.ValidArmy($Heap, bots#0)
       || (forall i#8: int :: 
        { $Unbox(Seq#Index(bots#0, i#8)): ref } 
        LitInt(0) <= i#8 && i#8 < Seq#Length(bots#0)
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, i#8)): ref));
  ensures {:id "id172"} _module.__default.ValidArmy#canCall($Heap, bots#0)
     ==> _module.__default.ValidArmy($Heap, bots#0)
       || (forall i#9: int, j#3: int :: 
        { $Unbox(Seq#Index(bots#0, j#3)): ref, $Unbox(Seq#Index(bots#0, i#9)): ref } 
        LitInt(0) <= i#9 && i#9 < j#3 && j#3 < Seq#Length(bots#0)
           ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#9)): ref, _module.Bot.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#3)): ref, _module.Bot.Repr)): Set));
  free ensures true;
  ensures {:id "id173"} (forall i#1: int :: 
    { $Unbox(Seq#Index(bots#0, i#1)): ref } { $Unbox(Seq#Index(bots#0, i#1)): ref } 
    LitInt(0) <= i#1 && i#1 < Seq#Length(bots#0)
       ==> (forall $o: ref :: 
          { $o != null } 
          Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                $Box($o))
               && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                $Box($o))
             ==> $o != null)
         && (forall $o: ref :: 
          { $Unbox(read(old($Heap), $o, alloc)): bool } 
          Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                $Box($o))
               && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
                $Box($o))
             ==> !$Unbox(read(old($Heap), $o, alloc)): bool));
  free ensures (forall b#1: ref :: 
    { _module.Bot.flying($Heap, b#1) } 
      { _module.Bot.robot__inv($Heap, b#1) } 
      { Seq#Contains(bots#0, $Box(b#1)) } 
    $Is(b#1, Tclass._module.Bot())
       ==> (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.robot__inv#canCall($Heap, b#1))
         && (
          (Seq#Contains(bots#0, $Box(b#1))
           ==> _module.Bot.robot__inv($Heap, b#1))
           ==> 
          Seq#Contains(bots#0, $Box(b#1))
           ==> _module.Bot.flying#canCall($Heap, b#1)));
  ensures {:id "id174"} (forall b#1: ref :: 
    { _module.Bot.flying($Heap, b#1) } 
      { _module.Bot.robot__inv($Heap, b#1) } 
      { Seq#Contains(bots#0, $Box(b#1)) } 
    $Is(b#1, Tclass._module.Bot())
       ==> (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.robot__inv($Heap, b#1))
         && (Seq#Contains(bots#0, $Box(b#1)) ==> _module.Bot.flying($Heap, b#1)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember(_module.__default.ArmyRepr(old($Heap), bots#0), $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FlyRobotArmy_Recursively (correctness)"} {:rlimit 100000000} Impl$$_module.__default.FlyRobotArmy__Recursively(bots#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var bots##0_0: Seq;
  var n##0_0: int;
  var bots##0_1: Seq;

    // AddMethodImpl: FlyRobotArmy_Recursively, Impl$$_module.__default.FlyRobotArmy__Recursively
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(_module.__default.ArmyRepr($Heap, bots#0), $Box($o)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(222,3)
    assume true;
    if (!Seq#Equal(bots#0, Seq#Empty(): Seq))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(223,11)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        bots##0_0 := bots#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := LitInt(0);
        assert {:id "id175"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots##0_0, n##0_0)): ref, _module.Bot.Repr)): Set, 
                $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id176"} Call$$_module.__default.FlyOne(bots##0_0, n##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(224,29)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id177"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(bots#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        bots##0_1 := Seq#Drop(bots#0, LitInt(1));
        assert {:id "id178"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(_module.__default.ArmyRepr($Heap, bots##0_1), $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id179"} Seq#Rank(bots##0_1) < Seq#Rank(bots#0);
        call {:id "id180"} Call$$_module.__default.FlyRobotArmy__Recursively(bots##0_1);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "FlyOne (well-formedness)"} CheckWellFormed$$_module.__default.FlyOne(bots#0: Seq
       where $Is(bots#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap), 
    n#0: int);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FlyOne (well-formedness)"} CheckWellFormed$$_module.__default.FlyOne(bots#0: Seq, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var j#0: int;
  var i#0: int;
  var j#2: int;
  var j#4: int;
  var j#6: int;
  var j#8: int;
  var j#10: int;


    // AddMethodImpl: FlyOne, CheckWellFormed$$_module.__default.FlyOne
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
          $Box($o)));
    if (LitInt(0) <= n#0)
    {
    }

    assume {:id "id181"} LitInt(0) <= n#0 && n#0 < Seq#Length(bots#0);
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= j#0)
        {
        }

        assume {:id "id182"} LitInt(0) <= j#0 && j#0 < Seq#Length(bots#0);
        assert {:id "id183"} 0 <= j#0 && j#0 < Seq#Length(bots#0);
        assert {:id "id184"} $Unbox(Seq#Index(bots#0, j#0)): ref != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(Seq#Index(bots#0, j#0), Tclass._module.Bot?(), $Heap);
        assume _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, j#0)): ref);
        assume {:id "id185"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#0)): ref);
    }
    else
    {
        assume {:id "id186"} LitInt(0) <= j#0 && j#0 < Seq#Length(bots#0)
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#0)): ref);
    }

    assume {:id "id187"} (forall j#1: int :: 
      { $Unbox(Seq#Index(bots#0, j#1)): ref } 
      LitInt(0) <= j#1 && j#1 < Seq#Length(bots#0)
         ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1)): ref));
    havoc i#0;
    havoc j#2;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < j#2)
        {
        }

        assume {:id "id188"} LitInt(0) <= i#0 && i#0 < j#2 && j#2 < Seq#Length(bots#0);
        assert {:id "id189"} 0 <= i#0 && i#0 < Seq#Length(bots#0);
        assert {:id "id190"} $Unbox(Seq#Index(bots#0, i#0)): ref != null;
        assert {:id "id191"} 0 <= j#2 && j#2 < Seq#Length(bots#0);
        assert {:id "id192"} $Unbox(Seq#Index(bots#0, j#2)): ref != null;
        assume {:id "id193"} Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#0)): ref, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#2)): ref, _module.Bot.Repr)): Set);
    }
    else
    {
        assume {:id "id194"} LitInt(0) <= i#0 && i#0 < j#2 && j#2 < Seq#Length(bots#0)
           ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#0)): ref, _module.Bot.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#2)): ref, _module.Bot.Repr)): Set);
    }

    assume {:id "id195"} (forall i#1: int, j#3: int :: 
      { $Unbox(Seq#Index(bots#0, j#3)): ref, $Unbox(Seq#Index(bots#0, i#1)): ref } 
      LitInt(0) <= i#1 && i#1 < j#3 && j#3 < Seq#Length(bots#0)
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#3)): ref, _module.Bot.Repr)): Set));
    havoc j#4;
    assume true;
    if (*)
    {
        if (LitInt(0) <= j#4)
        {
        }

        assume {:id "id196"} LitInt(0) <= j#4 && j#4 < n#0;
        assert {:id "id197"} 0 <= j#4 && j#4 < Seq#Length(bots#0);
        assert {:id "id198"} $Unbox(Seq#Index(bots#0, j#4)): ref != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(Seq#Index(bots#0, j#4), Tclass._module.Bot?(), $Heap);
        assert {:id "id199"} {:subsumption 0} Lit(true)
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#4)): ref);
        assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#4)): ref);
        assume _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, j#4)): ref);
        assume {:id "id200"} _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#4)): ref);
        assert {:id "id201"} 0 <= j#4 && j#4 < Seq#Length(bots#0);
        assert {:id "id202"} $Unbox(Seq#Index(bots#0, j#4)): ref != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(Seq#Index(bots#0, j#4), Tclass._module.Bot?(), $Heap);
        assert {:id "id203"} {:subsumption 0} Lit(true)
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#4)): ref);
        assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#4)): ref);
        assume _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, j#4)): ref);
        assume {:id "id204"} _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#4)): ref);
    }
    else
    {
        assume {:id "id205"} LitInt(0) <= j#4 && j#4 < n#0
           ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#4)): ref)
             && _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#4)): ref);
    }

    assume {:id "id206"} (forall j#5: int :: 
      { $Unbox(Seq#Index(bots#0, j#5)): ref } 
      (LitInt(0) <= j#5 && j#5 < n#0
           ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#5)): ref))
         && (LitInt(0) <= j#5 && j#5 < n#0
           ==> _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#5)): ref)));
    assert {:id "id207"} 0 <= n#0 && n#0 < Seq#Length(bots#0);
    assert {:id "id208"} $Unbox(Seq#Index(bots#0, n#0)): ref != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
            $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc j#6;
    assume true;
    if (*)
    {
        if (LitInt(0) <= j#6)
        {
        }

        assume {:id "id209"} LitInt(0) <= j#6 && j#6 < Seq#Length(bots#0);
        assert {:id "id210"} 0 <= j#6 && j#6 < Seq#Length(bots#0);
        assert {:id "id211"} $Unbox(Seq#Index(bots#0, j#6)): ref != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(Seq#Index(bots#0, j#6), Tclass._module.Bot?(), $Heap);
        assume _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, j#6)): ref);
        assume {:id "id212"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#6)): ref);
    }
    else
    {
        assume {:id "id213"} LitInt(0) <= j#6 && j#6 < Seq#Length(bots#0)
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#6)): ref);
    }

    assume {:id "id214"} (forall j#7: int :: 
      { $Unbox(Seq#Index(bots#0, j#7)): ref } 
      LitInt(0) <= j#7 && j#7 < Seq#Length(bots#0)
         ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#7)): ref));
    assert {:id "id215"} 0 <= n#0 && n#0 < Seq#Length(bots#0);
    assert {:id "id216"} $Unbox(Seq#Index(bots#0, n#0)): ref != null;
    assert {:id "id217"} 0 <= n#0 && n#0 < Seq#Length(bots#0);
    assert {:id "id218"} $Unbox(Seq#Index(bots#0, n#0)): ref != null;
    assert {:id "id219"} $IsAlloc($Unbox(Seq#Index(bots#0, n#0)): ref, Tclass._module.Bot(), old($Heap));
    assume {:id "id220"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
              $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
              $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
              $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
              $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id221"} 0 <= n#0 && n#0 < Seq#Length(bots#0);
    assert {:id "id222"} $Unbox(Seq#Index(bots#0, n#0)): ref != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(Seq#Index(bots#0, n#0), Tclass._module.Bot?(), $Heap);
    assert {:id "id223"} {:subsumption 0} Lit(true)
       ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, n#0)): ref);
    assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, n#0)): ref);
    assume _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref);
    assume {:id "id224"} _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref);
    assert {:id "id225"} 0 <= n#0 && n#0 < Seq#Length(bots#0);
    assert {:id "id226"} $Unbox(Seq#Index(bots#0, n#0)): ref != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(Seq#Index(bots#0, n#0), Tclass._module.Bot?(), $Heap);
    assert {:id "id227"} {:subsumption 0} Lit(true)
       ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, n#0)): ref);
    assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, n#0)): ref);
    assume _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref);
    assume {:id "id228"} _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref);
    havoc j#8;
    assume true;
    if (*)
    {
        if (LitInt(0) <= j#8)
        {
        }

        assume {:id "id229"} LitInt(0) <= j#8 && j#8 < Seq#Length(bots#0);
        assume {:id "id230"} j#8 != n#0;
        assert {:id "id231"} 0 <= j#8 && j#8 < Seq#Length(bots#0);
        assert {:id "id232"} $Unbox(Seq#Index(bots#0, j#8)): ref != null;
        assert {:id "id233"} 0 <= j#8 && j#8 < Seq#Length(bots#0);
        assert {:id "id234"} $Unbox(Seq#Index(bots#0, j#8)): ref != null;
        assert {:id "id235"} $IsAlloc($Unbox(Seq#Index(bots#0, j#8)): ref, Tclass._module.Bot(), old($Heap));
        assume {:id "id236"} Set#Equal($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#8)): ref, _module.Bot.Repr)): Set, 
          $Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, j#8)): ref, _module.Bot.Repr)): Set);
    }
    else
    {
        assume {:id "id237"} LitInt(0) <= j#8 && j#8 < Seq#Length(bots#0) && j#8 != n#0
           ==> Set#Equal($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#8)): ref, _module.Bot.Repr)): Set, 
            $Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, j#8)): ref, _module.Bot.Repr)): Set);
    }

    assume {:id "id238"} (forall j#9: int :: 
      { $Unbox(Seq#Index(bots#0, j#9)): ref } { $Unbox(Seq#Index(bots#0, j#9)): ref } 
      LitInt(0) <= j#9 && j#9 < Seq#Length(bots#0) && j#9 != n#0
         ==> Set#Equal($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#9)): ref, _module.Bot.Repr)): Set, 
          $Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, j#9)): ref, _module.Bot.Repr)): Set));
    havoc j#10;
    assume true;
    if (*)
    {
        if (LitInt(0) <= j#10)
        {
        }

        assume {:id "id239"} LitInt(0) <= j#10 && j#10 < n#0;
        assert {:id "id240"} 0 <= j#10 && j#10 < Seq#Length(bots#0);
        assert {:id "id241"} $Unbox(Seq#Index(bots#0, j#10)): ref != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(Seq#Index(bots#0, j#10), Tclass._module.Bot?(), $Heap);
        assert {:id "id242"} {:subsumption 0} Lit(true)
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#10)): ref);
        assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#10)): ref);
        assume _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, j#10)): ref);
        assume {:id "id243"} _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#10)): ref);
        assert {:id "id244"} 0 <= j#10 && j#10 < Seq#Length(bots#0);
        assert {:id "id245"} $Unbox(Seq#Index(bots#0, j#10)): ref != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(Seq#Index(bots#0, j#10), Tclass._module.Bot?(), $Heap);
        assert {:id "id246"} {:subsumption 0} Lit(true)
           ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#10)): ref);
        assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#10)): ref);
        assume _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, j#10)): ref);
        assume {:id "id247"} _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#10)): ref);
    }
    else
    {
        assume {:id "id248"} LitInt(0) <= j#10 && j#10 < n#0
           ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#10)): ref)
             && _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#10)): ref);
    }

    assume {:id "id249"} (forall j#11: int :: 
      { $Unbox(Seq#Index(bots#0, j#11)): ref } 
      (LitInt(0) <= j#11 && j#11 < n#0
           ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref))
         && (LitInt(0) <= j#11 && j#11 < n#0
           ==> _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref)));
}



procedure {:verboseName "FlyOne (call)"} Call$$_module.__default.FlyOne(bots#0: Seq
       where $Is(bots#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap), 
    n#0: int);
  // user-defined preconditions
  requires {:id "id250"} LitInt(0) <= n#0;
  requires {:id "id251"} n#0 < Seq#Length(bots#0);
  requires {:id "id252"} (forall j#1: int :: 
    { $Unbox(Seq#Index(bots#0, j#1)): ref } 
    LitInt(0) <= j#1 && j#1 < Seq#Length(bots#0)
       ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1)): ref));
  requires {:id "id253"} (forall i#1: int, j#3: int :: 
    { $Unbox(Seq#Index(bots#0, j#3)): ref, $Unbox(Seq#Index(bots#0, i#1)): ref } 
    LitInt(0) <= i#1 && i#1 < j#3 && j#3 < Seq#Length(bots#0)
       ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#3)): ref, _module.Bot.Repr)): Set));
  requires {:id "id254"} (forall j#5: int :: 
    { $Unbox(Seq#Index(bots#0, j#5)): ref } 
    (LitInt(0) <= j#5 && j#5 < n#0
         ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#5)): ref))
       && (LitInt(0) <= j#5 && j#5 < n#0
         ==> _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#5)): ref)));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall j#7: int :: 
    { $Unbox(Seq#Index(bots#0, j#7)): ref } 
    LitInt(0) <= j#7 && j#7 < Seq#Length(bots#0)
       ==> _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, j#7)): ref));
  ensures {:id "id255"} (forall j#7: int :: 
    { $Unbox(Seq#Index(bots#0, j#7)): ref } 
    LitInt(0) <= j#7 && j#7 < Seq#Length(bots#0)
       ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#7)): ref));
  free ensures true;
  ensures {:id "id256"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
            $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
            $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
            $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
            $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
     && (_module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
       ==> _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref));
  free ensures {:id "id257"} _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
     && 
    _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
     && (_module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
       ==> _module.Bot.arms__up($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref));
  free ensures {:id "id258"} _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
     && 
    _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
     && $Unbox(read($Heap, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.pos)): ref, 
              _module.Point.z)): ref, 
          _module.Cell.val)): int
       > 0;
  free ensures true;
  ensures {:id "id259"} (forall j#9: int :: 
    { $Unbox(Seq#Index(bots#0, j#9)): ref } { $Unbox(Seq#Index(bots#0, j#9)): ref } 
    LitInt(0) <= j#9 && j#9 < Seq#Length(bots#0) && j#9 != n#0
       ==> Set#Equal($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#9)): ref, _module.Bot.Repr)): Set, 
        $Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, j#9)): ref, _module.Bot.Repr)): Set));
  free ensures (forall j#11: int :: 
    { $Unbox(Seq#Index(bots#0, j#11)): ref } 
    (LitInt(0) <= j#11 && j#11 < n#0
         ==> _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref))
       && (
        (LitInt(0) <= j#11 && j#11 < n#0
         ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref))
         ==> 
        LitInt(0) <= j#11 && j#11 < n#0
         ==> _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref)));
  ensures {:id "id260"} (forall j#11: int :: 
    { $Unbox(Seq#Index(bots#0, j#11)): ref } 
    (LitInt(0) <= j#11 && j#11 < n#0
         ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref))
       && (LitInt(0) <= j#11 && j#11 < n#0
         ==> _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
          $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FlyOne (correctness)"} Impl$$_module.__default.FlyOne(bots#0: Seq
       where $Is(bots#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(bots#0, TSeq(Tclass._module.Bot()), $Heap), 
    n#0: int)
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id261"} LitInt(0) <= n#0;
  requires {:id "id262"} n#0 < Seq#Length(bots#0);
  requires {:id "id263"} (forall j#1: int :: 
    { $Unbox(Seq#Index(bots#0, j#1)): ref } 
    LitInt(0) <= j#1 && j#1 < Seq#Length(bots#0)
       ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#1)): ref));
  requires {:id "id264"} (forall i#1: int, j#3: int :: 
    { $Unbox(Seq#Index(bots#0, j#3)): ref, $Unbox(Seq#Index(bots#0, i#1)): ref } 
    LitInt(0) <= i#1 && i#1 < j#3 && j#3 < Seq#Length(bots#0)
       ==> Set#Disjoint($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, i#1)): ref, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#3)): ref, _module.Bot.Repr)): Set));
  requires {:id "id265"} (forall j#5: int :: 
    { $Unbox(Seq#Index(bots#0, j#5)): ref } 
    (LitInt(0) <= j#5 && j#5 < n#0
         ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#5)): ref))
       && (LitInt(0) <= j#5 && j#5 < n#0
         ==> _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#5)): ref)));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall j#7: int :: 
    { $Unbox(Seq#Index(bots#0, j#7)): ref } 
    LitInt(0) <= j#7 && j#7 < Seq#Length(bots#0)
       ==> _module.Bot.Valid#canCall($Heap, $Unbox(Seq#Index(bots#0, j#7)): ref));
  ensures {:id "id266"} (forall j#7: int :: 
    { $Unbox(Seq#Index(bots#0, j#7)): ref } 
    LitInt(0) <= j#7 && j#7 < Seq#Length(bots#0)
       ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, $Unbox(Seq#Index(bots#0, j#7)): ref));
  free ensures true;
  ensures {:id "id267"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
            $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
            $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
            $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
            $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
     && (_module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
       ==> _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref));
  ensures {:id "id268"} _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
     ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
       || (_module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
         ==> 
        _module.Bot.arms__up#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
         ==> _module.Bot.arms__up($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.left)): ref, 
                    _module.Arm.polar)): ref, 
                _module.Cell.val)): int
             == $Unbox(read($Heap, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.right)): ref, 
                    _module.Arm.polar)): ref, 
                _module.Cell.val)): int);
  ensures {:id "id269"} _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
     ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
       || (_module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
         ==> 
        _module.Bot.arms__up#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
         ==> _module.Bot.arms__up($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.right)): ref, 
                    _module.Arm.polar)): ref, 
                _module.Cell.val)): int
             == LitInt(0));
  ensures {:id "id270"} _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
     ==> _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref)
       || $Unbox(read($Heap, 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.pos)): ref, 
                _module.Point.z)): ref, 
            _module.Cell.val)): int
         > 0;
  free ensures true;
  ensures {:id "id271"} (forall j#9: int :: 
    { $Unbox(Seq#Index(bots#0, j#9)): ref } { $Unbox(Seq#Index(bots#0, j#9)): ref } 
    LitInt(0) <= j#9 && j#9 < Seq#Length(bots#0) && j#9 != n#0
       ==> Set#Equal($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, j#9)): ref, _module.Bot.Repr)): Set, 
        $Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, j#9)): ref, _module.Bot.Repr)): Set));
  free ensures (forall j#11: int :: 
    { $Unbox(Seq#Index(bots#0, j#11)): ref } 
    (LitInt(0) <= j#11 && j#11 < n#0
         ==> _module.Bot.robot__inv#canCall($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref))
       && (
        (LitInt(0) <= j#11 && j#11 < n#0
         ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref))
         ==> 
        LitInt(0) <= j#11 && j#11 < n#0
         ==> _module.Bot.flying#canCall($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref)));
  ensures {:id "id272"} (forall j#11: int :: 
    { $Unbox(Seq#Index(bots#0, j#11)): ref } 
    (LitInt(0) <= j#11 && j#11 < n#0
         ==> _module.Bot.robot__inv($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref))
       && (LitInt(0) <= j#11 && j#11 < n#0
         ==> _module.Bot.flying($Heap, $Unbox(Seq#Index(bots#0, j#11)): ref)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
          $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FlyOne (correctness)"} Impl$$_module.__default.FlyOne(bots#0: Seq, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: FlyOne, Impl$$_module.__default.FlyOne
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
          $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(241,14)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id273"} 0 <= n#0 && n#0 < Seq#Length(bots#0);
    assume true;
    assert {:id "id274"} $Unbox(Seq#Index(bots#0, n#0)): ref != null;
    assert {:id "id275"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, $Unbox(Seq#Index(bots#0, n#0)): ref, _module.Bot.Repr)): Set, 
            $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id276"} Call$$_module.Bot.Fly($Unbox(Seq#Index(bots#0, n#0)): ref);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "FormArmy (well-formedness)"} CheckWellFormed$$_module.__default.FormArmy(b0#0: ref
       where $Is(b0#0, Tclass._module.Bot()) && $IsAlloc(b0#0, Tclass._module.Bot(), $Heap), 
    b1#0: ref
       where $Is(b1#0, Tclass._module.Bot()) && $IsAlloc(b1#0, Tclass._module.Bot(), $Heap), 
    b2#0: ref
       where $Is(b2#0, Tclass._module.Bot()) && $IsAlloc(b2#0, Tclass._module.Bot(), $Heap));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FormArmy (well-formedness)"} CheckWellFormed$$_module.__default.FormArmy(b0#0: ref, b1#0: ref, b2#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: FormArmy, CheckWellFormed$$_module.__default.FormArmy
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
           || Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
           || Set#IsMember($Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set, $Box($o)));
    assert {:id "id277"} b0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b0#0), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, b0#0);
    assume {:id "id278"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
    assert {:id "id279"} b1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b1#0), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, b1#0);
    assume {:id "id280"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
    assert {:id "id281"} b2#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b2#0), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, b2#0);
    assume {:id "id282"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b2#0);
    assert {:id "id283"} b0#0 != null;
    assert {:id "id284"} b1#0 != null;
    if (Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
      $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set))
    {
        assert {:id "id285"} b0#0 != null;
        assert {:id "id286"} b1#0 != null;
    }

    if (Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set)
       && Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set))
    {
        assert {:id "id287"} b0#0 != null;
        assert {:id "id288"} b1#0 != null;
        assert {:id "id289"} b2#0 != null;
    }

    assume {:id "id290"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set)
       && Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set)
       && Set#Disjoint(Set#Union($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set), 
        $Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set);
    assert {:id "id291"} b0#0 != null;
    assert {:id "id292"} b1#0 != null;
    assert {:id "id293"} b2#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
           || Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o))
           || Set#IsMember($Unbox(read(old($Heap), b2#0, _module.Bot.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id294"} b0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b0#0), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, b0#0);
    assume {:id "id295"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
    assert {:id "id296"} b1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b1#0), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, b1#0);
    assume {:id "id297"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
    assert {:id "id298"} b2#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b2#0), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, b2#0);
    assume {:id "id299"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b2#0);
    assert {:id "id300"} b0#0 != null;
    assert {:id "id301"} b1#0 != null;
    if (Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
      $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set))
    {
        assert {:id "id302"} b0#0 != null;
        assert {:id "id303"} b1#0 != null;
    }

    if (Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set)
       && Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set))
    {
        assert {:id "id304"} b0#0 != null;
        assert {:id "id305"} b1#0 != null;
        assert {:id "id306"} b2#0 != null;
    }

    assume {:id "id307"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set)
       && Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set)
       && Set#Disjoint(Set#Union($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set), 
        $Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set);
    assert {:id "id308"} b0#0 != null;
    assert {:id "id309"} b1#0 != null;
    assert {:id "id310"} b2#0 != null;
    assert {:id "id311"} b0#0 != null;
    assert {:id "id312"} $IsAlloc(b0#0, Tclass._module.Bot(), old($Heap));
    assert {:id "id313"} b1#0 != null;
    assert {:id "id314"} $IsAlloc(b1#0, Tclass._module.Bot(), old($Heap));
    assert {:id "id315"} b2#0 != null;
    assert {:id "id316"} $IsAlloc(b2#0, Tclass._module.Bot(), old($Heap));
    assume {:id "id317"} (forall $o: ref :: 
        { $o != null } 
        (
              Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
               || Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
               || Set#IsMember($Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set, $Box($o)))
             && !Set#IsMember(Set#Union(Set#Union($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, 
                  $Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set), 
                $Unbox(read(old($Heap), b2#0, _module.Bot.Repr)): Set), 
              $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        (
              Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
               || Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
               || Set#IsMember($Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set, $Box($o)))
             && !Set#IsMember(Set#Union(Set#Union($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, 
                  $Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set), 
                $Unbox(read(old($Heap), b2#0, _module.Bot.Repr)): Set), 
              $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
}



procedure {:verboseName "FormArmy (call)"} Call$$_module.__default.FormArmy(b0#0: ref
       where $Is(b0#0, Tclass._module.Bot()) && $IsAlloc(b0#0, Tclass._module.Bot(), $Heap), 
    b1#0: ref
       where $Is(b1#0, Tclass._module.Bot()) && $IsAlloc(b1#0, Tclass._module.Bot(), $Heap), 
    b2#0: ref
       where $Is(b2#0, Tclass._module.Bot()) && $IsAlloc(b2#0, Tclass._module.Bot(), $Heap));
  // user-defined preconditions
  requires {:id "id318"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
  requires {:id "id319"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
  requires {:id "id320"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b2#0);
  requires {:id "id321"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
    $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  requires {:id "id322"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
    $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  requires {:id "id323"} Set#Disjoint(Set#Union($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
      $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set), 
    $Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Bot.Valid#canCall($Heap, b0#0)
     && (_module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0)
       ==> _module.Bot.Valid#canCall($Heap, b1#0)
         && (_module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0)
           ==> _module.Bot.Valid#canCall($Heap, b2#0)));
  ensures {:id "id324"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
  ensures {:id "id325"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
  ensures {:id "id326"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b2#0);
  free ensures true;
  ensures {:id "id327"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
    $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  ensures {:id "id328"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
    $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  ensures {:id "id329"} Set#Disjoint(Set#Union($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
      $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set), 
    $Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set);
  free ensures true;
  ensures {:id "id330"} (forall $o: ref :: 
      { $o != null } 
      (
            Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set, $Box($o)))
           && !Set#IsMember(Set#Union(Set#Union($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, 
                $Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set), 
              $Unbox(read(old($Heap), b2#0, _module.Bot.Repr)): Set), 
            $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      (
            Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set, $Box($o)))
           && !Set#IsMember(Set#Union(Set#Union($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, 
                $Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set), 
              $Unbox(read(old($Heap), b2#0, _module.Bot.Repr)): Set), 
            $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), b2#0, _module.Bot.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FormArmy (correctness)"} Impl$$_module.__default.FormArmy(b0#0: ref
       where $Is(b0#0, Tclass._module.Bot()) && $IsAlloc(b0#0, Tclass._module.Bot(), $Heap), 
    b1#0: ref
       where $Is(b1#0, Tclass._module.Bot()) && $IsAlloc(b1#0, Tclass._module.Bot(), $Heap), 
    b2#0: ref
       where $Is(b2#0, Tclass._module.Bot()) && $IsAlloc(b2#0, Tclass._module.Bot(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id331"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
  requires {:id "id332"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
  requires {:id "id333"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b2#0);
  requires {:id "id334"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
    $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  requires {:id "id335"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
    $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  requires {:id "id336"} Set#Disjoint(Set#Union($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
      $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set), 
    $Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Bot.Valid#canCall($Heap, b0#0)
     && (_module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0)
       ==> _module.Bot.Valid#canCall($Heap, b1#0)
         && (_module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0)
           ==> _module.Bot.Valid#canCall($Heap, b2#0)));
  ensures {:id "id337"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b0#0);
  ensures {:id "id338"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b1#0);
  ensures {:id "id339"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, b2#0);
  free ensures true;
  ensures {:id "id340"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
    $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  ensures {:id "id341"} Set#Disjoint($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
    $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set);
  ensures {:id "id342"} Set#Disjoint(Set#Union($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, 
      $Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set), 
    $Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set);
  free ensures true;
  ensures {:id "id343"} (forall $o: ref :: 
      { $o != null } 
      (
            Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set, $Box($o)))
           && !Set#IsMember(Set#Union(Set#Union($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, 
                $Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set), 
              $Unbox(read(old($Heap), b2#0, _module.Bot.Repr)): Set), 
            $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      (
            Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set, $Box($o)))
           && !Set#IsMember(Set#Union(Set#Union($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, 
                $Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set), 
              $Unbox(read(old($Heap), b2#0, _module.Bot.Repr)): Set), 
            $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        Set#IsMember($Unbox(read(old($Heap), b0#0, _module.Bot.Repr)): Set, $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), b1#0, _module.Bot.Repr)): Set, $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), b2#0, _module.Bot.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FormArmy (correctness)"} Impl$$_module.__default.FormArmy(b0#0: ref, b1#0: ref, b2#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var army#0: Seq
     where $Is(army#0, TSeq(Tclass._module.Bot()))
       && $IsAlloc(army#0, TSeq(Tclass._module.Bot()), $Heap);
  var army##0: Seq;
  var bots##0: Seq;
  var bots##1: Seq;
  var army##1: Seq;

    // AddMethodImpl: FormArmy, Impl$$_module.__default.FormArmy
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, b0#0, _module.Bot.Repr)): Set, $Box($o))
           || Set#IsMember($Unbox(read($Heap, b1#0, _module.Bot.Repr)): Set, $Box($o))
           || Set#IsMember($Unbox(read($Heap, b2#0, _module.Bot.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(253,12)
    assume true;
    assume true;
    army#0 := Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(b0#0)), $Box(b1#0)), $Box(b2#0));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(254,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    army##0 := army#0;
    call {:id "id345"} Call$$_module.__default.ArmyRepr3(army##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(255,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    bots##0 := army#0;
    assert {:id "id346"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember(_module.__default.ArmyRepr($Heap, bots##0), $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id347"} Call$$_module.__default.FlyRobotArmy(bots##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(256,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    bots##1 := army#0;
    assert {:id "id348"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember(_module.__default.ArmyRepr($Heap, bots##1), $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id349"} Call$$_module.__default.FlyRobotArmy(bots##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(257,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    army##1 := army#0;
    call {:id "id350"} Call$$_module.__default.ArmyRepr3(army##1);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "ArmyRepr3 (well-formedness)"} CheckWellFormed$$_module.__default.ArmyRepr3(army#0: Seq
       where $Is(army#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(army#0, TSeq(Tclass._module.Bot()), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArmyRepr3 (well-formedness)"} CheckWellFormed$$_module.__default.ArmyRepr3(army#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##bots#0: Seq;


    // AddMethodImpl: ArmyRepr3, CheckWellFormed$$_module.__default.ArmyRepr3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id351"} Seq#Length(army#0) == LitInt(3);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##bots#0 := army#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##bots#0, TSeq(Tclass._module.Bot()), $Heap);
    assume _module.__default.ArmyRepr#canCall($Heap, army#0);
    assert {:id "id352"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(army#0);
    assert {:id "id353"} $Unbox(Seq#Index(army#0, LitInt(0))): ref != null;
    assert {:id "id354"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(army#0);
    assert {:id "id355"} $Unbox(Seq#Index(army#0, LitInt(1))): ref != null;
    assert {:id "id356"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(army#0);
    assert {:id "id357"} $Unbox(Seq#Index(army#0, LitInt(2))): ref != null;
    assume {:id "id358"} Set#Equal(_module.__default.ArmyRepr($Heap, army#0), 
      Set#Union(Set#Union($Unbox(read($Heap, $Unbox(Seq#Index(army#0, LitInt(0))): ref, _module.Bot.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(Seq#Index(army#0, LitInt(1))): ref, _module.Bot.Repr)): Set), 
        $Unbox(read($Heap, $Unbox(Seq#Index(army#0, LitInt(2))): ref, _module.Bot.Repr)): Set));
}



procedure {:verboseName "ArmyRepr3 (call)"} Call$$_module.__default.ArmyRepr3(army#0: Seq
       where $Is(army#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(army#0, TSeq(Tclass._module.Bot()), $Heap));
  // user-defined preconditions
  requires {:id "id359"} Seq#Length(army#0) == LitInt(3);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ArmyRepr#canCall($Heap, army#0);
  ensures {:id "id360"} Set#Equal(_module.__default.ArmyRepr($Heap, army#0), 
    Set#Union(Set#Union($Unbox(read($Heap, $Unbox(Seq#Index(army#0, LitInt(0))): ref, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, $Unbox(Seq#Index(army#0, LitInt(1))): ref, _module.Bot.Repr)): Set), 
      $Unbox(read($Heap, $Unbox(Seq#Index(army#0, LitInt(2))): ref, _module.Bot.Repr)): Set));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ArmyRepr3 (correctness)"} Impl$$_module.__default.ArmyRepr3(army#0: Seq
       where $Is(army#0, TSeq(Tclass._module.Bot()))
         && $IsAlloc(army#0, TSeq(Tclass._module.Bot()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id361"} Seq#Length(army#0) == LitInt(3);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ArmyRepr#canCall($Heap, army#0);
  ensures {:id "id362"} Set#Equal(_module.__default.ArmyRepr($Heap, army#0), 
    Set#Union(Set#Union($Unbox(read($Heap, $Unbox(Seq#Index(army#0, LitInt(0))): ref, _module.Bot.Repr)): Set, 
        $Unbox(read($Heap, $Unbox(Seq#Index(army#0, LitInt(1))): ref, _module.Bot.Repr)): Set), 
      $Unbox(read($Heap, $Unbox(Seq#Index(army#0, LitInt(2))): ref, _module.Bot.Repr)): Set));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArmyRepr3 (correctness)"} Impl$$_module.__default.ArmyRepr3(army#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: ArmyRepr3, Impl$$_module.__default.ArmyRepr3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (call)"} Call$$_module.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#b0#0: bool;
  var b0#0: ref
     where defass#b0#0
       ==> $Is(b0#0, Tclass._module.Bot()) && $IsAlloc(b0#0, Tclass._module.Bot(), $Heap);
  var $nw: ref;
  var defass#b1#0: bool;
  var b1#0: ref
     where defass#b1#0
       ==> $Is(b1#0, Tclass._module.Bot()) && $IsAlloc(b1#0, Tclass._module.Bot(), $Heap);
  var b0##0: ref;
  var b1##0: ref;
  var b0##1: ref;
  var b1##1: ref;
  var b0##2: ref;
  var b1##2: ref;
  var defass#b2#0: bool;
  var b2#0: ref
     where defass#b2#0
       ==> $Is(b2#0, Tclass._module.Bot()) && $IsAlloc(b2#0, Tclass._module.Bot(), $Heap);
  var b0##3: ref;
  var b1##3: ref;
  var b2##0: ref;
  var b0##4: ref;
  var b1##4: ref;
  var b2##1: ref;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(270,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(270,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id363"} $nw := Call$$_module.Bot.__ctor();
    // TrCallStmt: After ProcessCallStmt
    b0#0 := $nw;
    defass#b0#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(271,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(271,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id365"} $nw := Call$$_module.Bot.__ctor();
    // TrCallStmt: After ProcessCallStmt
    b1#0 := $nw;
    defass#b1#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(272,12)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id367"} defass#b0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b0##0 := b0#0;
    assert {:id "id368"} defass#b1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b1##0 := b1#0;
    assert {:id "id369"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (Set#IsMember($Unbox(read($Heap, b0##0, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b1##0, _module.Bot.Repr)): Set, $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id370"} Call$$_module.__default.FlyRobots(b0##0, b1##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(273,12)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id371"} defass#b0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b0##1 := b0#0;
    assert {:id "id372"} defass#b1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b1##1 := b1#0;
    assert {:id "id373"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (Set#IsMember($Unbox(read($Heap, b0##1, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b1##1, _module.Bot.Repr)): Set, $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id374"} Call$$_module.__default.FlyRobots(b0##1, b1##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(274,12)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id375"} defass#b1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b0##2 := b1#0;
    assert {:id "id376"} defass#b0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b1##2 := b0#0;
    assert {:id "id377"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (Set#IsMember($Unbox(read($Heap, b0##2, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b1##2, _module.Bot.Repr)): Set, $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id378"} Call$$_module.__default.FlyRobots(b0##2, b1##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(276,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(276,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id379"} $nw := Call$$_module.Bot.__ctor();
    // TrCallStmt: After ProcessCallStmt
    b2#0 := $nw;
    defass#b2#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(277,11)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id381"} defass#b0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b0##3 := b0#0;
    assert {:id "id382"} defass#b1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b1##3 := b1#0;
    assert {:id "id383"} defass#b2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b2##0 := b2#0;
    assert {:id "id384"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            Set#IsMember($Unbox(read($Heap, b0##3, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b1##3, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b2##0, _module.Bot.Repr)): Set, $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id385"} Call$$_module.__default.FormArmy(b0##3, b1##3, b2##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(278,11)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id386"} defass#b2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b0##4 := b2#0;
    assert {:id "id387"} defass#b0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b1##4 := b0#0;
    assert {:id "id388"} defass#b1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b2##1 := b1#0;
    assert {:id "id389"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            Set#IsMember($Unbox(read($Heap, b0##4, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b1##4, _module.Bot.Repr)): Set, $Box($o))
             || Set#IsMember($Unbox(read($Heap, b2##1, _module.Bot.Repr)): Set, $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id390"} Call$$_module.__default.FormArmy(b0##4, b1##4, b2##1);
    // TrCallStmt: After ProcessCallStmt
}



const unique class._module.Cell?: ClassName;

function Tclass._module.Cell?() : Ty
uses {
// Tclass._module.Cell? Tag
axiom Tag(Tclass._module.Cell?()) == Tagclass._module.Cell?
   && TagFamily(Tclass._module.Cell?()) == tytagFamily$Cell;
}

const unique Tagclass._module.Cell?: TyTag;

// Box/unbox axiom for Tclass._module.Cell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Cell?()) } 
  $IsBox(bx, Tclass._module.Cell?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Cell?()));

// $Is axiom for class Cell
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Cell?()) } 
  $Is($o, Tclass._module.Cell?())
     <==> $o == null || dtype($o) == Tclass._module.Cell?());

// $IsAlloc axiom for class Cell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Cell?(), $h) } 
  $IsAlloc($o, Tclass._module.Cell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Cell.val: Field
uses {
axiom FDim(_module.Cell.val) == 0
   && FieldOfDecl(class._module.Cell?, field$val) == _module.Cell.val
   && !$IsGhostField(_module.Cell.val);
}

// Cell.val: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.val)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Cell?()
     ==> $Is($Unbox(read($h, $o, _module.Cell.val)): int, TInt));

// Cell.val: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.val)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Cell.val)): int, TInt, $h));

procedure {:verboseName "Cell._ctor (well-formedness)"} CheckWellFormed$$_module.Cell.__ctor(v#0: int) returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Cell() : Ty
uses {
// Tclass._module.Cell Tag
axiom Tag(Tclass._module.Cell()) == Tagclass._module.Cell
   && TagFamily(Tclass._module.Cell()) == tytagFamily$Cell;
}

const unique Tagclass._module.Cell: TyTag;

// Box/unbox axiom for Tclass._module.Cell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Cell()) } 
  $IsBox(bx, Tclass._module.Cell())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Cell()));

procedure {:verboseName "Cell._ctor (call)"} Call$$_module.Cell.__ctor(v#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell())
         && $IsAlloc(this, Tclass._module.Cell(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id392"} $Unbox(read($Heap, this, _module.Cell.val)): int == v#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cell._ctor (correctness)"} Impl$$_module.Cell.__ctor(v#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id393"} $Unbox(read($Heap, this, _module.Cell.val)): int == v#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cell._ctor (correctness)"} Impl$$_module.Cell.__ctor(v#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.val: int;

    // AddMethodImpl: _ctor, Impl$$_module.Cell.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(10,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(11,9)
    assume true;
    assume true;
    this.val := v#0;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(10,3)
    assume this != null && $Is(this, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Cell.val)): int == this.val;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(10,3)
}



// $Is axiom for non-null type _module.Cell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Cell()) } { $Is(c#0, Tclass._module.Cell?()) } 
  $Is(c#0, Tclass._module.Cell())
     <==> $Is(c#0, Tclass._module.Cell?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Cell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Cell(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Cell?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Cell(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Cell?(), $h));

const unique class._module.Point?: ClassName;

function Tclass._module.Point?() : Ty
uses {
// Tclass._module.Point? Tag
axiom Tag(Tclass._module.Point?()) == Tagclass._module.Point?
   && TagFamily(Tclass._module.Point?()) == tytagFamily$Point;
}

const unique Tagclass._module.Point?: TyTag;

// Box/unbox axiom for Tclass._module.Point?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Point?()) } 
  $IsBox(bx, Tclass._module.Point?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Point?()));

// $Is axiom for class Point
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Point?()) } 
  $Is($o, Tclass._module.Point?())
     <==> $o == null || dtype($o) == Tclass._module.Point?());

// $IsAlloc axiom for class Point
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Point?(), $h) } 
  $IsAlloc($o, Tclass._module.Point?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Point.Value: Field
uses {
axiom FDim(_module.Point.Value) == 0
   && FieldOfDecl(class._module.Point?, field$Value) == _module.Point.Value
   && $IsGhostField(_module.Point.Value);
}

// Point.Value: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Point.Value)): DatatypeType } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Point?()
     ==> $Is($Unbox(read($h, $o, _module.Point.Value)): DatatypeType, 
      Tclass._System.Tuple3(TInt, TInt, TInt)));

// Point.Value: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Point.Value)): DatatypeType } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Point?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Point.Value)): DatatypeType, 
      Tclass._System.Tuple3(TInt, TInt, TInt), 
      $h));

const _module.Point.Repr: Field
uses {
axiom FDim(_module.Point.Repr) == 0
   && FieldOfDecl(class._module.Point?, field$Repr) == _module.Point.Repr
   && $IsGhostField(_module.Point.Repr);
}

// Point.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Point.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Point?()
     ==> $Is($Unbox(read($h, $o, _module.Point.Repr)): Set, TSet(Tclass._System.object())));

// Point.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Point.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Point?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Point.Repr)): Set, TSet(Tclass._System.object()), $h));

// function declaration for _module.Point.Valid
function _module.Point.Valid($heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.Point.Valid
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Point.Valid($Heap, this) } 
    _module.Point.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Point())
           && $IsAlloc(this, Tclass._module.Point(), $Heap))
       ==> 
      _module.Point.Valid($Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this)));
// definition axiom for _module.Point.Valid (revealed)
axiom {:id "id395"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Point.Valid($Heap, this), $IsGoodHeap($Heap) } 
    _module.Point.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Point())
           && $IsAlloc(this, Tclass._module.Point(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
           ==> 
          Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
                read($Heap, this, _module.Point.y)), 
              read($Heap, this, _module.Point.z)), 
            $Unbox(read($Heap, this, _module.Point.Repr)): Set)
           ==> 
          $Unbox(read($Heap, this, _module.Point.x)): ref
             != $Unbox(read($Heap, this, _module.Point.y)): ref
           ==> 
          $Unbox(read($Heap, this, _module.Point.y)): ref
             != $Unbox(read($Heap, this, _module.Point.z)): ref
           ==> 
          $Unbox(read($Heap, this, _module.Point.z)): ref
             != $Unbox(read($Heap, this, _module.Point.x)): ref
           ==> $IsA#_System.Tuple3($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType))
         && _module.Point.Valid($Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
             && Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
                  read($Heap, this, _module.Point.y)), 
                read($Heap, this, _module.Point.z)), 
              $Unbox(read($Heap, this, _module.Point.Repr)): Set)
             && $Unbox(read($Heap, this, _module.Point.x)): ref
               != $Unbox(read($Heap, this, _module.Point.y)): ref
             && $Unbox(read($Heap, this, _module.Point.y)): ref
               != $Unbox(read($Heap, this, _module.Point.z)): ref
             && $Unbox(read($Heap, this, _module.Point.z)): ref
               != $Unbox(read($Heap, this, _module.Point.x)): ref
             && _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
              #_System._tuple#3._#Make3(read($Heap, $Unbox(read($Heap, this, _module.Point.x)): ref, _module.Cell.val), 
                read($Heap, $Unbox(read($Heap, this, _module.Point.y)): ref, _module.Cell.val), 
                read($Heap, $Unbox(read($Heap, this, _module.Point.z)): ref, _module.Cell.val)))));
}

function _module.Point.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass._module.Point() : Ty
uses {
// Tclass._module.Point Tag
axiom Tag(Tclass._module.Point()) == Tagclass._module.Point
   && TagFamily(Tclass._module.Point()) == tytagFamily$Point;
}

const unique Tagclass._module.Point: TyTag;

// Box/unbox axiom for Tclass._module.Point
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Point()) } 
  $IsBox(bx, Tclass._module.Point())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Point()));

// frame axiom for _module.Point.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Point.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Point())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Point.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Point.Valid($h0, this) == _module.Point.Valid($h1, this));

function _module.Point.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.Point.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Point.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Point())
       && $IsAlloc(this, Tclass._module.Point(), $Heap)
     ==> _module.Point.Valid#requires($Heap, this) == true);

procedure {:verboseName "Point.Valid (well-formedness)"} CheckWellformed$$_module.Point.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Point())
         && $IsAlloc(this, Tclass._module.Point(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id396"} _module.Point.Valid($Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Point.Valid (well-formedness)"} CheckWellformed$$_module.Point.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Point.Repr];
    assert {:id "id397"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Point?(), $Heap);
            assert {:id "id398"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Point.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Point.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Point.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Point.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || _module.Point.Valid#canCall($Heap, this);
            assume {:id "id399"} _module.Point.Valid($Heap, this);
            assume {:id "id400"} Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id401"} _module.Point.Valid($Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.Point.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.Point.x];
            b$reqreads#3 := $_ReadsFrame[this, _module.Point.y];
            b$reqreads#4 := $_ReadsFrame[this, _module.Point.z];
            b$reqreads#5 := $_ReadsFrame[this, _module.Point.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
                read($Heap, this, _module.Point.y)), 
              read($Heap, this, _module.Point.z)), 
            $Unbox(read($Heap, this, _module.Point.Repr)): Set))
        {
            b$reqreads#6 := $_ReadsFrame[this, _module.Point.x];
            b$reqreads#7 := $_ReadsFrame[this, _module.Point.y];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
                read($Heap, this, _module.Point.y)), 
              read($Heap, this, _module.Point.z)), 
            $Unbox(read($Heap, this, _module.Point.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Point.x)): ref
             != $Unbox(read($Heap, this, _module.Point.y)): ref)
        {
            b$reqreads#8 := $_ReadsFrame[this, _module.Point.y];
            b$reqreads#9 := $_ReadsFrame[this, _module.Point.z];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
                read($Heap, this, _module.Point.y)), 
              read($Heap, this, _module.Point.z)), 
            $Unbox(read($Heap, this, _module.Point.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Point.x)): ref
             != $Unbox(read($Heap, this, _module.Point.y)): ref
           && $Unbox(read($Heap, this, _module.Point.y)): ref
             != $Unbox(read($Heap, this, _module.Point.z)): ref)
        {
            b$reqreads#10 := $_ReadsFrame[this, _module.Point.z];
            b$reqreads#11 := $_ReadsFrame[this, _module.Point.x];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
                read($Heap, this, _module.Point.y)), 
              read($Heap, this, _module.Point.z)), 
            $Unbox(read($Heap, this, _module.Point.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Point.x)): ref
             != $Unbox(read($Heap, this, _module.Point.y)): ref
           && $Unbox(read($Heap, this, _module.Point.y)): ref
             != $Unbox(read($Heap, this, _module.Point.z)): ref
           && $Unbox(read($Heap, this, _module.Point.z)): ref
             != $Unbox(read($Heap, this, _module.Point.x)): ref)
        {
            b$reqreads#12 := $_ReadsFrame[this, _module.Point.Value];
            b$reqreads#13 := $_ReadsFrame[this, _module.Point.x];
            assert {:id "id402"} $Unbox(read($Heap, this, _module.Point.x)): ref != null;
            b$reqreads#14 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Point.x)): ref, _module.Cell.val];
            b$reqreads#15 := $_ReadsFrame[this, _module.Point.y];
            assert {:id "id403"} $Unbox(read($Heap, this, _module.Point.y)): ref != null;
            b$reqreads#16 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Point.y)): ref, _module.Cell.val];
            b$reqreads#17 := $_ReadsFrame[this, _module.Point.z];
            assert {:id "id404"} $Unbox(read($Heap, this, _module.Point.z)): ref != null;
            b$reqreads#18 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Point.z)): ref, _module.Cell.val];
        }

        assume {:id "id405"} _module.Point.Valid($Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
             && Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
                  read($Heap, this, _module.Point.y)), 
                read($Heap, this, _module.Point.z)), 
              $Unbox(read($Heap, this, _module.Point.Repr)): Set)
             && $Unbox(read($Heap, this, _module.Point.x)): ref
               != $Unbox(read($Heap, this, _module.Point.y)): ref
             && $Unbox(read($Heap, this, _module.Point.y)): ref
               != $Unbox(read($Heap, this, _module.Point.z)): ref
             && $Unbox(read($Heap, this, _module.Point.z)): ref
               != $Unbox(read($Heap, this, _module.Point.x)): ref
             && _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
              #_System._tuple#3._#Make3(read($Heap, $Unbox(read($Heap, this, _module.Point.x)): ref, _module.Cell.val), 
                read($Heap, $Unbox(read($Heap, this, _module.Point.y)): ref, _module.Cell.val), 
                read($Heap, $Unbox(read($Heap, this, _module.Point.z)): ref, _module.Cell.val))));
        assume Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
           ==> 
          Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
                read($Heap, this, _module.Point.y)), 
              read($Heap, this, _module.Point.z)), 
            $Unbox(read($Heap, this, _module.Point.Repr)): Set)
           ==> 
          $Unbox(read($Heap, this, _module.Point.x)): ref
             != $Unbox(read($Heap, this, _module.Point.y)): ref
           ==> 
          $Unbox(read($Heap, this, _module.Point.y)): ref
             != $Unbox(read($Heap, this, _module.Point.z)): ref
           ==> 
          $Unbox(read($Heap, this, _module.Point.z)): ref
             != $Unbox(read($Heap, this, _module.Point.x)): ref
           ==> $IsA#_System.Tuple3($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Point.Valid($Heap, this), TBool);
        assert {:id "id406"} b$reqreads#1;
        assert {:id "id407"} b$reqreads#2;
        assert {:id "id408"} b$reqreads#3;
        assert {:id "id409"} b$reqreads#4;
        assert {:id "id410"} b$reqreads#5;
        assert {:id "id411"} b$reqreads#6;
        assert {:id "id412"} b$reqreads#7;
        assert {:id "id413"} b$reqreads#8;
        assert {:id "id414"} b$reqreads#9;
        assert {:id "id415"} b$reqreads#10;
        assert {:id "id416"} b$reqreads#11;
        assert {:id "id417"} b$reqreads#12;
        assert {:id "id418"} b$reqreads#13;
        assert {:id "id419"} b$reqreads#14;
        assert {:id "id420"} b$reqreads#15;
        assert {:id "id421"} b$reqreads#16;
        assert {:id "id422"} b$reqreads#17;
        assert {:id "id423"} b$reqreads#18;
        return;

        assume false;
    }
}



const _module.Point.x: Field
uses {
axiom FDim(_module.Point.x) == 0
   && FieldOfDecl(class._module.Point?, field$x) == _module.Point.x
   && !$IsGhostField(_module.Point.x);
}

// Point.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Point.x)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Point?()
     ==> $Is($Unbox(read($h, $o, _module.Point.x)): ref, Tclass._module.Cell()));

// Point.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Point.x)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Point?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Point.x)): ref, Tclass._module.Cell(), $h));

const _module.Point.y: Field
uses {
axiom FDim(_module.Point.y) == 0
   && FieldOfDecl(class._module.Point?, field$y) == _module.Point.y
   && !$IsGhostField(_module.Point.y);
}

// Point.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Point.y)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Point?()
     ==> $Is($Unbox(read($h, $o, _module.Point.y)): ref, Tclass._module.Cell()));

// Point.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Point.y)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Point?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Point.y)): ref, Tclass._module.Cell(), $h));

const _module.Point.z: Field
uses {
axiom FDim(_module.Point.z) == 0
   && FieldOfDecl(class._module.Point?, field$z) == _module.Point.z
   && !$IsGhostField(_module.Point.z);
}

// Point.z: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Point.z)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Point?()
     ==> $Is($Unbox(read($h, $o, _module.Point.z)): ref, Tclass._module.Cell()));

// Point.z: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Point.z)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Point?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Point.z)): ref, Tclass._module.Cell(), $h));

procedure {:verboseName "Point._ctor (well-formedness)"} CheckWellFormed$$_module.Point.__ctor(a#0: int, b#0: int, c#0: int) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Point._ctor (call)"} Call$$_module.Point.__ctor(a#0: int, b#0: int, c#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Point())
         && $IsAlloc(this, Tclass._module.Point(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Point.Valid#canCall($Heap, this);
  free ensures {:id "id427"} _module.Point.Valid#canCall($Heap, this)
     && 
    _module.Point.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
     && Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
          read($Heap, this, _module.Point.y)), 
        read($Heap, this, _module.Point.z)), 
      $Unbox(read($Heap, this, _module.Point.Repr)): Set)
     && $Unbox(read($Heap, this, _module.Point.x)): ref
       != $Unbox(read($Heap, this, _module.Point.y)): ref
     && $Unbox(read($Heap, this, _module.Point.y)): ref
       != $Unbox(read($Heap, this, _module.Point.z)): ref
     && $Unbox(read($Heap, this, _module.Point.z)): ref
       != $Unbox(read($Heap, this, _module.Point.x)): ref
     && _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
      #_System._tuple#3._#Make3(read($Heap, $Unbox(read($Heap, this, _module.Point.x)): ref, _module.Cell.val), 
        read($Heap, $Unbox(read($Heap, this, _module.Point.y)): ref, _module.Cell.val), 
        read($Heap, $Unbox(read($Heap, this, _module.Point.z)): ref, _module.Cell.val)));
  ensures {:id "id428"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures $IsA#_System.Tuple3($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType);
  ensures {:id "id429"} _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
    #_System._tuple#3._#Make3($Box(a#0), $Box(b#0), $Box(c#0)));
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Point._ctor (correctness)"} Impl$$_module.Point.__ctor(a#0: int, b#0: int, c#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Point.Valid#canCall($Heap, this);
  ensures {:id "id430"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this));
  ensures {:id "id431"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
            read($Heap, this, _module.Point.y)), 
          read($Heap, this, _module.Point.z)), 
        $Unbox(read($Heap, this, _module.Point.Repr)): Set);
  ensures {:id "id432"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Point.x)): ref
         != $Unbox(read($Heap, this, _module.Point.y)): ref;
  ensures {:id "id433"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Point.y)): ref
         != $Unbox(read($Heap, this, _module.Point.z)): ref;
  ensures {:id "id434"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Point.z)): ref
         != $Unbox(read($Heap, this, _module.Point.x)): ref;
  ensures {:id "id435"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
        #_System._tuple#3._#Make3(read($Heap, $Unbox(read($Heap, this, _module.Point.x)): ref, _module.Cell.val), 
          read($Heap, $Unbox(read($Heap, this, _module.Point.y)): ref, _module.Cell.val), 
          read($Heap, $Unbox(read($Heap, this, _module.Point.z)): ref, _module.Cell.val)));
  ensures {:id "id436"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures $IsA#_System.Tuple3($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType);
  ensures {:id "id437"} _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
    #_System._tuple#3._#Make3($Box(a#0), $Box(b#0), $Box(c#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Point._ctor (correctness)"} Impl$$_module.Point.__ctor(a#0: int, b#0: int, c#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Value: DatatypeType;
  var this.Repr: Set;
  var this.x: ref;
  var this.y: ref;
  var this.z: ref;
  var defass#this.x: bool;
  var defass#this.y: bool;
  var defass#this.z: bool;
  var $nw: ref;
  var v##0: int;
  var v##1: int;
  var v##2: int;

    // AddMethodImpl: _ctor, Impl$$_module.Point.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(34,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(35,7)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(35,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    v##0 := a#0;
    call {:id "id438"} $nw := Call$$_module.Cell.__ctor(v##0);
    // TrCallStmt: After ProcessCallStmt
    this.x := $nw;
    defass#this.x := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(36,7)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(36,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    v##1 := b#0;
    call {:id "id440"} $nw := Call$$_module.Cell.__ctor(v##1);
    // TrCallStmt: After ProcessCallStmt
    this.y := $nw;
    defass#this.y := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(37,7)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(37,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    v##2 := c#0;
    call {:id "id442"} $nw := Call$$_module.Cell.__ctor(v##2);
    // TrCallStmt: After ProcessCallStmt
    this.z := $nw;
    defass#this.z := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(38,10)
    assume true;
    assert {:id "id444"} defass#this.x;
    assert {:id "id445"} defass#this.y;
    assert {:id "id446"} defass#this.z;
    assume true;
    this.Repr := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(this)), $Box(this.x)), 
        $Box(this.y)), 
      $Box(this.z));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(39,11)
    assume true;
    assume true;
    this.Value := #_System._tuple#3._#Make3($Box(a#0), $Box(b#0), $Box(c#0));
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(34,3)
    assert {:id "id449"} defass#this.x;
    assert {:id "id450"} defass#this.y;
    assert {:id "id451"} defass#this.z;
    assume this != null && $Is(this, Tclass._module.Point?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Point.Value)): DatatypeType == this.Value;
    assume $Unbox(read($Heap, this, _module.Point.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.Point.x)): ref == this.x;
    assume $Unbox(read($Heap, this, _module.Point.y)): ref == this.y;
    assume $Unbox(read($Heap, this, _module.Point.z)): ref == this.z;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(34,3)
}



procedure {:verboseName "Point.Mutate (well-formedness)"} CheckWellFormed$$_module.Point.Mutate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Point())
         && $IsAlloc(this, Tclass._module.Point(), $Heap), 
    a#0: int, 
    b#0: int, 
    c#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Point.Mutate (well-formedness)"} CheckWellFormed$$_module.Point.Mutate(this: ref, a#0: int, b#0: int, c#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Mutate, CheckWellFormed$$_module.Point.Mutate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Point?(), $Heap);
    assume _module.Point.Valid#canCall($Heap, this);
    assume {:id "id452"} _module.Point.Valid($Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.Point.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Point?(), $Heap);
    assume _module.Point.Valid#canCall($Heap, this);
    assume {:id "id453"} _module.Point.Valid($Heap, this);
    assert {:id "id454"} $IsAlloc(this, Tclass._module.Point(), old($Heap));
    assume {:id "id455"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Point.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Point.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assume {:id "id456"} _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
      #_System._tuple#3._#Make3($Box(a#0), $Box(b#0), $Box(c#0)));
}



procedure {:verboseName "Point.Mutate (call)"} Call$$_module.Point.Mutate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Point())
         && $IsAlloc(this, Tclass._module.Point(), $Heap), 
    a#0: int, 
    b#0: int, 
    c#0: int);
  // user-defined preconditions
  requires {:id "id457"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this));
  requires {:id "id458"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
            read($Heap, this, _module.Point.y)), 
          read($Heap, this, _module.Point.z)), 
        $Unbox(read($Heap, this, _module.Point.Repr)): Set);
  requires {:id "id459"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Point.x)): ref
         != $Unbox(read($Heap, this, _module.Point.y)): ref;
  requires {:id "id460"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Point.y)): ref
         != $Unbox(read($Heap, this, _module.Point.z)): ref;
  requires {:id "id461"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Point.z)): ref
         != $Unbox(read($Heap, this, _module.Point.x)): ref;
  requires {:id "id462"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
        #_System._tuple#3._#Make3(read($Heap, $Unbox(read($Heap, this, _module.Point.x)): ref, _module.Cell.val), 
          read($Heap, $Unbox(read($Heap, this, _module.Point.y)): ref, _module.Cell.val), 
          read($Heap, $Unbox(read($Heap, this, _module.Point.z)): ref, _module.Cell.val)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Point.Valid#canCall($Heap, this);
  free ensures {:id "id463"} _module.Point.Valid#canCall($Heap, this)
     && 
    _module.Point.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
     && Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
          read($Heap, this, _module.Point.y)), 
        read($Heap, this, _module.Point.z)), 
      $Unbox(read($Heap, this, _module.Point.Repr)): Set)
     && $Unbox(read($Heap, this, _module.Point.x)): ref
       != $Unbox(read($Heap, this, _module.Point.y)): ref
     && $Unbox(read($Heap, this, _module.Point.y)): ref
       != $Unbox(read($Heap, this, _module.Point.z)): ref
     && $Unbox(read($Heap, this, _module.Point.z)): ref
       != $Unbox(read($Heap, this, _module.Point.x)): ref
     && _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
      #_System._tuple#3._#Make3(read($Heap, $Unbox(read($Heap, this, _module.Point.x)): ref, _module.Cell.val), 
        read($Heap, $Unbox(read($Heap, this, _module.Point.y)): ref, _module.Cell.val), 
        read($Heap, $Unbox(read($Heap, this, _module.Point.z)): ref, _module.Cell.val)));
  ensures {:id "id464"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Point.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Point.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures $IsA#_System.Tuple3($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType);
  ensures {:id "id465"} _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
    #_System._tuple#3._#Make3($Box(a#0), $Box(b#0), $Box(c#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Point.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Point.Mutate (correctness)"} Impl$$_module.Point.Mutate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Point())
         && $IsAlloc(this, Tclass._module.Point(), $Heap), 
    a#0: int, 
    b#0: int, 
    c#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id466"} _module.Point.Valid#canCall($Heap, this)
     && 
    _module.Point.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this))
     && Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
          read($Heap, this, _module.Point.y)), 
        read($Heap, this, _module.Point.z)), 
      $Unbox(read($Heap, this, _module.Point.Repr)): Set)
     && $Unbox(read($Heap, this, _module.Point.x)): ref
       != $Unbox(read($Heap, this, _module.Point.y)): ref
     && $Unbox(read($Heap, this, _module.Point.y)): ref
       != $Unbox(read($Heap, this, _module.Point.z)): ref
     && $Unbox(read($Heap, this, _module.Point.z)): ref
       != $Unbox(read($Heap, this, _module.Point.x)): ref
     && _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
      #_System._tuple#3._#Make3(read($Heap, $Unbox(read($Heap, this, _module.Point.x)): ref, _module.Cell.val), 
        read($Heap, $Unbox(read($Heap, this, _module.Point.y)): ref, _module.Cell.val), 
        read($Heap, $Unbox(read($Heap, this, _module.Point.z)): ref, _module.Cell.val)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Point.Valid#canCall($Heap, this);
  ensures {:id "id467"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box(this));
  ensures {:id "id468"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Point.x)), 
            read($Heap, this, _module.Point.y)), 
          read($Heap, this, _module.Point.z)), 
        $Unbox(read($Heap, this, _module.Point.Repr)): Set);
  ensures {:id "id469"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Point.x)): ref
         != $Unbox(read($Heap, this, _module.Point.y)): ref;
  ensures {:id "id470"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Point.y)): ref
         != $Unbox(read($Heap, this, _module.Point.z)): ref;
  ensures {:id "id471"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Point.z)): ref
         != $Unbox(read($Heap, this, _module.Point.x)): ref;
  ensures {:id "id472"} _module.Point.Valid#canCall($Heap, this)
     ==> _module.Point.Valid($Heap, this)
       || _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
        #_System._tuple#3._#Make3(read($Heap, $Unbox(read($Heap, this, _module.Point.x)): ref, _module.Cell.val), 
          read($Heap, $Unbox(read($Heap, this, _module.Point.y)): ref, _module.Cell.val), 
          read($Heap, $Unbox(read($Heap, this, _module.Point.z)): ref, _module.Cell.val)));
  ensures {:id "id473"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Point.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Point.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures $IsA#_System.Tuple3($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType);
  ensures {:id "id474"} _System.Tuple3#Equal($Unbox(read($Heap, this, _module.Point.Value)): DatatypeType, 
    #_System._tuple#3._#Make3($Box(a#0), $Box(b#0), $Box(c#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Point.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Point.Mutate (correctness)"} Impl$$_module.Point.Mutate(this: ref, a#0: int, b#0: int, c#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $obj2: ref;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $rhs#3: DatatypeType;

    // AddMethodImpl: Mutate, Impl$$_module.Point.Mutate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Point.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(48,25)
    assert {:id "id475"} $Unbox(read($Heap, this, _module.Point.x)): ref != null;
    assume true;
    $obj0 := $Unbox(read($Heap, this, _module.Point.x)): ref;
    assert {:id "id476"} $_ModifiesFrame[$obj0, _module.Cell.val];
    assert {:id "id477"} $Unbox(read($Heap, this, _module.Point.y)): ref != null;
    assume true;
    $obj1 := $Unbox(read($Heap, this, _module.Point.y)): ref;
    assert {:id "id478"} $_ModifiesFrame[$obj1, _module.Cell.val];
    assert {:id "id479"} $Unbox(read($Heap, this, _module.Point.z)): ref != null;
    assume true;
    $obj2 := $Unbox(read($Heap, this, _module.Point.z)): ref;
    assert {:id "id480"} $_ModifiesFrame[$obj2, _module.Cell.val];
    assume true;
    $rhs#0 := a#0;
    assume true;
    $rhs#1 := b#0;
    assume true;
    $rhs#2 := c#0;
    assert {:id "id484"} $Unbox(read($Heap, this, _module.Point.y)): ref
         != $Unbox(read($Heap, this, _module.Point.x)): ref
       || $rhs#1 == $rhs#0;
    assert {:id "id485"} $Unbox(read($Heap, this, _module.Point.z)): ref
         != $Unbox(read($Heap, this, _module.Point.x)): ref
       || $rhs#2 == $rhs#0;
    assert {:id "id486"} $Unbox(read($Heap, this, _module.Point.z)): ref
         != $Unbox(read($Heap, this, _module.Point.y)): ref
       || $rhs#2 == $rhs#1;
    $Heap := update($Heap, $obj0, _module.Cell.val, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.Cell.val, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj2, _module.Cell.val, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(49,11)
    assume true;
    assert {:id "id490"} $_ModifiesFrame[this, _module.Point.Value];
    assume true;
    $rhs#3 := #_System._tuple#3._#Make3($Box(a#0), $Box(b#0), $Box(c#0));
    $Heap := update($Heap, this, _module.Point.Value, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.Point
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Point()) } { $Is(c#0, Tclass._module.Point?()) } 
  $Is(c#0, Tclass._module.Point())
     <==> $Is(c#0, Tclass._module.Point?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Point
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Point(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Point?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Point(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Point?(), $h));

const unique class._module.Arm?: ClassName;

function Tclass._module.Arm?() : Ty
uses {
// Tclass._module.Arm? Tag
axiom Tag(Tclass._module.Arm?()) == Tagclass._module.Arm?
   && TagFamily(Tclass._module.Arm?()) == tytagFamily$Arm;
}

const unique Tagclass._module.Arm?: TyTag;

// Box/unbox axiom for Tclass._module.Arm?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Arm?()) } 
  $IsBox(bx, Tclass._module.Arm?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Arm?()));

// $Is axiom for class Arm
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Arm?()) } 
  $Is($o, Tclass._module.Arm?())
     <==> $o == null || dtype($o) == Tclass._module.Arm?());

// $IsAlloc axiom for class Arm
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Arm?(), $h) } 
  $IsAlloc($o, Tclass._module.Arm?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Arm.Value: Field
uses {
axiom FDim(_module.Arm.Value) == 0
   && FieldOfDecl(class._module.Arm?, field$Value) == _module.Arm.Value
   && $IsGhostField(_module.Arm.Value);
}

// Arm.Value: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Arm.Value)): DatatypeType } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Arm?()
     ==> $Is($Unbox(read($h, $o, _module.Arm.Value)): DatatypeType, 
      Tclass._System.Tuple2(TInt, TInt)));

// Arm.Value: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Arm.Value)): DatatypeType } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Arm?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Arm.Value)): DatatypeType, 
      Tclass._System.Tuple2(TInt, TInt), 
      $h));

const _module.Arm.Repr: Field
uses {
axiom FDim(_module.Arm.Repr) == 0
   && FieldOfDecl(class._module.Arm?, field$Repr) == _module.Arm.Repr
   && $IsGhostField(_module.Arm.Repr);
}

// Arm.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Arm.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Arm?()
     ==> $Is($Unbox(read($h, $o, _module.Arm.Repr)): Set, TSet(Tclass._System.object())));

// Arm.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Arm.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Arm?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Arm.Repr)): Set, TSet(Tclass._System.object()), $h));

// function declaration for _module.Arm.Valid
function _module.Arm.Valid($heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.Arm.Valid
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Arm.Valid($Heap, this) } 
    _module.Arm.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Arm())
           && $IsAlloc(this, Tclass._module.Arm(), $Heap))
       ==> 
      _module.Arm.Valid($Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this)));
// definition axiom for _module.Arm.Valid (revealed)
axiom {:id "id493"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Arm.Valid($Heap, this), $IsGoodHeap($Heap) } 
    _module.Arm.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Arm())
           && $IsAlloc(this, Tclass._module.Arm(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this))
           ==> 
          Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
              read($Heap, this, _module.Arm.azim)), 
            $Unbox(read($Heap, this, _module.Arm.Repr)): Set)
           ==> 
          $Unbox(read($Heap, this, _module.Arm.polar)): ref
             != $Unbox(read($Heap, this, _module.Arm.azim)): ref
           ==> $IsA#_System.Tuple2($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType))
         && _module.Arm.Valid($Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this))
             && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
                read($Heap, this, _module.Arm.azim)), 
              $Unbox(read($Heap, this, _module.Arm.Repr)): Set)
             && $Unbox(read($Heap, this, _module.Arm.polar)): ref
               != $Unbox(read($Heap, this, _module.Arm.azim)): ref
             && _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
              #_System._tuple#2._#Make2(read($Heap, $Unbox(read($Heap, this, _module.Arm.polar)): ref, _module.Cell.val), 
                read($Heap, $Unbox(read($Heap, this, _module.Arm.azim)): ref, _module.Cell.val)))));
}

function _module.Arm.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass._module.Arm() : Ty
uses {
// Tclass._module.Arm Tag
axiom Tag(Tclass._module.Arm()) == Tagclass._module.Arm
   && TagFamily(Tclass._module.Arm()) == tytagFamily$Arm;
}

const unique Tagclass._module.Arm: TyTag;

// Box/unbox axiom for Tclass._module.Arm
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Arm()) } 
  $IsBox(bx, Tclass._module.Arm())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Arm()));

// frame axiom for _module.Arm.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Arm.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Arm())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Arm.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Arm.Valid($h0, this) == _module.Arm.Valid($h1, this));

function _module.Arm.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.Arm.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Arm.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Arm())
       && $IsAlloc(this, Tclass._module.Arm(), $Heap)
     ==> _module.Arm.Valid#requires($Heap, this) == true);

procedure {:verboseName "Arm.Valid (well-formedness)"} CheckWellformed$$_module.Arm.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Arm())
         && $IsAlloc(this, Tclass._module.Arm(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id494"} _module.Arm.Valid($Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Arm.Valid (well-formedness)"} CheckWellformed$$_module.Arm.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Arm.Repr];
    assert {:id "id495"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Arm?(), $Heap);
            assert {:id "id496"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Arm.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Arm.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Arm.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Arm.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || _module.Arm.Valid#canCall($Heap, this);
            assume {:id "id497"} _module.Arm.Valid($Heap, this);
            assume {:id "id498"} Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id499"} _module.Arm.Valid($Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.Arm.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.Arm.polar];
            b$reqreads#3 := $_ReadsFrame[this, _module.Arm.azim];
            b$reqreads#4 := $_ReadsFrame[this, _module.Arm.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
              read($Heap, this, _module.Arm.azim)), 
            $Unbox(read($Heap, this, _module.Arm.Repr)): Set))
        {
            b$reqreads#5 := $_ReadsFrame[this, _module.Arm.polar];
            b$reqreads#6 := $_ReadsFrame[this, _module.Arm.azim];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
              read($Heap, this, _module.Arm.azim)), 
            $Unbox(read($Heap, this, _module.Arm.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Arm.polar)): ref
             != $Unbox(read($Heap, this, _module.Arm.azim)): ref)
        {
            b$reqreads#7 := $_ReadsFrame[this, _module.Arm.Value];
            b$reqreads#8 := $_ReadsFrame[this, _module.Arm.polar];
            assert {:id "id500"} $Unbox(read($Heap, this, _module.Arm.polar)): ref != null;
            b$reqreads#9 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Arm.polar)): ref, _module.Cell.val];
            b$reqreads#10 := $_ReadsFrame[this, _module.Arm.azim];
            assert {:id "id501"} $Unbox(read($Heap, this, _module.Arm.azim)): ref != null;
            b$reqreads#11 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Arm.azim)): ref, _module.Cell.val];
        }

        assume {:id "id502"} _module.Arm.Valid($Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this))
             && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
                read($Heap, this, _module.Arm.azim)), 
              $Unbox(read($Heap, this, _module.Arm.Repr)): Set)
             && $Unbox(read($Heap, this, _module.Arm.polar)): ref
               != $Unbox(read($Heap, this, _module.Arm.azim)): ref
             && _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
              #_System._tuple#2._#Make2(read($Heap, $Unbox(read($Heap, this, _module.Arm.polar)): ref, _module.Cell.val), 
                read($Heap, $Unbox(read($Heap, this, _module.Arm.azim)): ref, _module.Cell.val))));
        assume Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this))
           ==> 
          Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
              read($Heap, this, _module.Arm.azim)), 
            $Unbox(read($Heap, this, _module.Arm.Repr)): Set)
           ==> 
          $Unbox(read($Heap, this, _module.Arm.polar)): ref
             != $Unbox(read($Heap, this, _module.Arm.azim)): ref
           ==> $IsA#_System.Tuple2($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Arm.Valid($Heap, this), TBool);
        assert {:id "id503"} b$reqreads#1;
        assert {:id "id504"} b$reqreads#2;
        assert {:id "id505"} b$reqreads#3;
        assert {:id "id506"} b$reqreads#4;
        assert {:id "id507"} b$reqreads#5;
        assert {:id "id508"} b$reqreads#6;
        assert {:id "id509"} b$reqreads#7;
        assert {:id "id510"} b$reqreads#8;
        assert {:id "id511"} b$reqreads#9;
        assert {:id "id512"} b$reqreads#10;
        assert {:id "id513"} b$reqreads#11;
        return;

        assume false;
    }
}



const _module.Arm.polar: Field
uses {
axiom FDim(_module.Arm.polar) == 0
   && FieldOfDecl(class._module.Arm?, field$polar) == _module.Arm.polar
   && !$IsGhostField(_module.Arm.polar);
}

// Arm.polar: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Arm.polar)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Arm?()
     ==> $Is($Unbox(read($h, $o, _module.Arm.polar)): ref, Tclass._module.Cell()));

// Arm.polar: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Arm.polar)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Arm?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Arm.polar)): ref, Tclass._module.Cell(), $h));

const _module.Arm.azim: Field
uses {
axiom FDim(_module.Arm.azim) == 0
   && FieldOfDecl(class._module.Arm?, field$azim) == _module.Arm.azim
   && !$IsGhostField(_module.Arm.azim);
}

// Arm.azim: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Arm.azim)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Arm?()
     ==> $Is($Unbox(read($h, $o, _module.Arm.azim)): ref, Tclass._module.Cell()));

// Arm.azim: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Arm.azim)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Arm?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Arm.azim)): ref, Tclass._module.Cell(), $h));

procedure {:verboseName "Arm._ctor (well-formedness)"} CheckWellFormed$$_module.Arm.__ctor(polar_in#0: int, azim_in#0: int) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Arm._ctor (call)"} Call$$_module.Arm.__ctor(polar_in#0: int, azim_in#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Arm())
         && $IsAlloc(this, Tclass._module.Arm(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Arm.Valid#canCall($Heap, this);
  free ensures {:id "id517"} _module.Arm.Valid#canCall($Heap, this)
     && 
    _module.Arm.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this))
     && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
        read($Heap, this, _module.Arm.azim)), 
      $Unbox(read($Heap, this, _module.Arm.Repr)): Set)
     && $Unbox(read($Heap, this, _module.Arm.polar)): ref
       != $Unbox(read($Heap, this, _module.Arm.azim)): ref
     && _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
      #_System._tuple#2._#Make2(read($Heap, $Unbox(read($Heap, this, _module.Arm.polar)): ref, _module.Cell.val), 
        read($Heap, $Unbox(read($Heap, this, _module.Arm.azim)): ref, _module.Cell.val)));
  ensures {:id "id518"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures $IsA#_System.Tuple2($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType);
  ensures {:id "id519"} _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
    #_System._tuple#2._#Make2($Box(polar_in#0), $Box(azim_in#0)));
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Arm._ctor (correctness)"} Impl$$_module.Arm.__ctor(polar_in#0: int, azim_in#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Arm.Valid#canCall($Heap, this);
  ensures {:id "id520"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this));
  ensures {:id "id521"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
          read($Heap, this, _module.Arm.azim)), 
        $Unbox(read($Heap, this, _module.Arm.Repr)): Set);
  ensures {:id "id522"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Arm.polar)): ref
         != $Unbox(read($Heap, this, _module.Arm.azim)): ref;
  ensures {:id "id523"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
        #_System._tuple#2._#Make2(read($Heap, $Unbox(read($Heap, this, _module.Arm.polar)): ref, _module.Cell.val), 
          read($Heap, $Unbox(read($Heap, this, _module.Arm.azim)): ref, _module.Cell.val)));
  ensures {:id "id524"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures $IsA#_System.Tuple2($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType);
  ensures {:id "id525"} _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
    #_System._tuple#2._#Make2($Box(polar_in#0), $Box(azim_in#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Arm._ctor (correctness)"} Impl$$_module.Arm.__ctor(polar_in#0: int, azim_in#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Value: DatatypeType;
  var this.Repr: Set;
  var this.polar: ref;
  var this.azim: ref;
  var defass#this.polar: bool;
  var defass#this.azim: bool;
  var $nw: ref;
  var v##0: int;
  var v##1: int;

    // AddMethodImpl: _ctor, Impl$$_module.Arm.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(73,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(74,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(74,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    v##0 := polar_in#0;
    call {:id "id526"} $nw := Call$$_module.Cell.__ctor(v##0);
    // TrCallStmt: After ProcessCallStmt
    this.polar := $nw;
    defass#this.polar := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(75,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(75,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    v##1 := azim_in#0;
    call {:id "id528"} $nw := Call$$_module.Cell.__ctor(v##1);
    // TrCallStmt: After ProcessCallStmt
    this.azim := $nw;
    defass#this.azim := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(76,10)
    assume true;
    assert {:id "id530"} defass#this.polar;
    assert {:id "id531"} defass#this.azim;
    assume true;
    this.Repr := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(this)), $Box(this.polar)), 
      $Box(this.azim));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(77,11)
    assume true;
    assume true;
    this.Value := #_System._tuple#2._#Make2($Box(polar_in#0), $Box(azim_in#0));
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(73,3)
    assert {:id "id534"} defass#this.polar;
    assert {:id "id535"} defass#this.azim;
    assume this != null && $Is(this, Tclass._module.Arm?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType == this.Value;
    assume $Unbox(read($Heap, this, _module.Arm.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.Arm.polar)): ref == this.polar;
    assume $Unbox(read($Heap, this, _module.Arm.azim)): ref == this.azim;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(73,3)
}



procedure {:verboseName "Arm.Mutate (well-formedness)"} CheckWellFormed$$_module.Arm.Mutate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Arm())
         && $IsAlloc(this, Tclass._module.Arm(), $Heap), 
    polar_in#0: int, 
    azim_in#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Arm.Mutate (well-formedness)"} CheckWellFormed$$_module.Arm.Mutate(this: ref, polar_in#0: int, azim_in#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Mutate, CheckWellFormed$$_module.Arm.Mutate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Arm?(), $Heap);
    assume _module.Arm.Valid#canCall($Heap, this);
    assume {:id "id536"} _module.Arm.Valid($Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.Arm.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Arm?(), $Heap);
    assume _module.Arm.Valid#canCall($Heap, this);
    assume {:id "id537"} _module.Arm.Valid($Heap, this);
    assert {:id "id538"} $IsAlloc(this, Tclass._module.Arm(), old($Heap));
    assume {:id "id539"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Arm.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Arm.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assume {:id "id540"} _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
      #_System._tuple#2._#Make2($Box(polar_in#0), $Box(azim_in#0)));
}



procedure {:verboseName "Arm.Mutate (call)"} Call$$_module.Arm.Mutate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Arm())
         && $IsAlloc(this, Tclass._module.Arm(), $Heap), 
    polar_in#0: int, 
    azim_in#0: int);
  // user-defined preconditions
  requires {:id "id541"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this));
  requires {:id "id542"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
          read($Heap, this, _module.Arm.azim)), 
        $Unbox(read($Heap, this, _module.Arm.Repr)): Set);
  requires {:id "id543"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Arm.polar)): ref
         != $Unbox(read($Heap, this, _module.Arm.azim)): ref;
  requires {:id "id544"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
        #_System._tuple#2._#Make2(read($Heap, $Unbox(read($Heap, this, _module.Arm.polar)): ref, _module.Cell.val), 
          read($Heap, $Unbox(read($Heap, this, _module.Arm.azim)): ref, _module.Cell.val)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Arm.Valid#canCall($Heap, this);
  free ensures {:id "id545"} _module.Arm.Valid#canCall($Heap, this)
     && 
    _module.Arm.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this))
     && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
        read($Heap, this, _module.Arm.azim)), 
      $Unbox(read($Heap, this, _module.Arm.Repr)): Set)
     && $Unbox(read($Heap, this, _module.Arm.polar)): ref
       != $Unbox(read($Heap, this, _module.Arm.azim)): ref
     && _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
      #_System._tuple#2._#Make2(read($Heap, $Unbox(read($Heap, this, _module.Arm.polar)): ref, _module.Cell.val), 
        read($Heap, $Unbox(read($Heap, this, _module.Arm.azim)): ref, _module.Cell.val)));
  ensures {:id "id546"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Arm.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Arm.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures $IsA#_System.Tuple2($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType);
  ensures {:id "id547"} _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
    #_System._tuple#2._#Make2($Box(polar_in#0), $Box(azim_in#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Arm.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Arm.Mutate (correctness)"} Impl$$_module.Arm.Mutate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Arm())
         && $IsAlloc(this, Tclass._module.Arm(), $Heap), 
    polar_in#0: int, 
    azim_in#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id548"} _module.Arm.Valid#canCall($Heap, this)
     && 
    _module.Arm.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this))
     && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
        read($Heap, this, _module.Arm.azim)), 
      $Unbox(read($Heap, this, _module.Arm.Repr)): Set)
     && $Unbox(read($Heap, this, _module.Arm.polar)): ref
       != $Unbox(read($Heap, this, _module.Arm.azim)): ref
     && _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
      #_System._tuple#2._#Make2(read($Heap, $Unbox(read($Heap, this, _module.Arm.polar)): ref, _module.Cell.val), 
        read($Heap, $Unbox(read($Heap, this, _module.Arm.azim)): ref, _module.Cell.val)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Arm.Valid#canCall($Heap, this);
  ensures {:id "id549"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box(this));
  ensures {:id "id550"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Arm.polar)), 
          read($Heap, this, _module.Arm.azim)), 
        $Unbox(read($Heap, this, _module.Arm.Repr)): Set);
  ensures {:id "id551"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || $Unbox(read($Heap, this, _module.Arm.polar)): ref
         != $Unbox(read($Heap, this, _module.Arm.azim)): ref;
  ensures {:id "id552"} _module.Arm.Valid#canCall($Heap, this)
     ==> _module.Arm.Valid($Heap, this)
       || _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
        #_System._tuple#2._#Make2(read($Heap, $Unbox(read($Heap, this, _module.Arm.polar)): ref, _module.Cell.val), 
          read($Heap, $Unbox(read($Heap, this, _module.Arm.azim)): ref, _module.Cell.val)));
  ensures {:id "id553"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Arm.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Arm.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures $IsA#_System.Tuple2($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType);
  ensures {:id "id554"} _System.Tuple2#Equal($Unbox(read($Heap, this, _module.Arm.Value)): DatatypeType, 
    #_System._tuple#2._#Make2($Box(polar_in#0), $Box(azim_in#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Arm.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Arm.Mutate (correctness)"} Impl$$_module.Arm.Mutate(this: ref, polar_in#0: int, azim_in#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: DatatypeType;

    // AddMethodImpl: Mutate, Impl$$_module.Arm.Mutate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Arm.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(86,25)
    assert {:id "id555"} $Unbox(read($Heap, this, _module.Arm.polar)): ref != null;
    assume true;
    $obj0 := $Unbox(read($Heap, this, _module.Arm.polar)): ref;
    assert {:id "id556"} $_ModifiesFrame[$obj0, _module.Cell.val];
    assert {:id "id557"} $Unbox(read($Heap, this, _module.Arm.azim)): ref != null;
    assume true;
    $obj1 := $Unbox(read($Heap, this, _module.Arm.azim)): ref;
    assert {:id "id558"} $_ModifiesFrame[$obj1, _module.Cell.val];
    assume true;
    $rhs#0 := polar_in#0;
    assume true;
    $rhs#1 := azim_in#0;
    assert {:id "id561"} $Unbox(read($Heap, this, _module.Arm.azim)): ref
         != $Unbox(read($Heap, this, _module.Arm.polar)): ref
       || $rhs#1 == $rhs#0;
    $Heap := update($Heap, $obj0, _module.Cell.val, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.Cell.val, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(87,11)
    assume true;
    assert {:id "id564"} $_ModifiesFrame[this, _module.Arm.Value];
    assume true;
    $rhs#2 := #_System._tuple#2._#Make2($Box(polar_in#0), $Box(azim_in#0));
    $Heap := update($Heap, this, _module.Arm.Value, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.Arm
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Arm()) } { $Is(c#0, Tclass._module.Arm?()) } 
  $Is(c#0, Tclass._module.Arm())
     <==> $Is(c#0, Tclass._module.Arm?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Arm
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Arm(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Arm?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Arm(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Arm?(), $h));

const unique class._module.Bot?: ClassName;

// $Is axiom for class Bot
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Bot?()) } 
  $Is($o, Tclass._module.Bot?())
     <==> $o == null || dtype($o) == Tclass._module.Bot?());

// $IsAlloc axiom for class Bot
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Bot?(), $h) } 
  $IsAlloc($o, Tclass._module.Bot?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Bot.Repr: Field
uses {
axiom FDim(_module.Bot.Repr) == 0
   && FieldOfDecl(class._module.Bot?, field$Repr) == _module.Bot.Repr
   && $IsGhostField(_module.Bot.Repr);
}

// Bot.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Bot.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Bot?()
     ==> $Is($Unbox(read($h, $o, _module.Bot.Repr)): Set, TSet(Tclass._System.object())));

// Bot.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Bot.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Bot?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Bot.Repr)): Set, TSet(Tclass._System.object()), $h));

// function declaration for _module.Bot.Valid
function _module.Bot.Valid($reveal: bool, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.Bot.Valid
axiom 1 <= $FunctionContextHeight
   ==> (forall $reveal: bool, $Heap: Heap, this: ref :: 
    { _module.Bot.Valid($reveal, $Heap, this) } 
    _module.Bot.Valid#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Bot())
           && $IsAlloc(this, Tclass._module.Bot(), $Heap))
       ==> 
      _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this)));
// definition axiom for _module.Bot.Valid (revealed)
axiom {:id "id567"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Bot.Valid(true, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Bot.Valid#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Bot())
           && $IsAlloc(this, Tclass._module.Bot(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos))
           ==> 
          Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
              read($Heap, this, _module.Bot.right)), 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           ==> 
          $Unbox(read($Heap, this, _module.Bot.left)): ref
             != $Unbox(read($Heap, this, _module.Bot.right)): ref
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           ==> 
          Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
           ==> 
          Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
           ==> 
          Set#Disjoint(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set)
           ==> _module.Point.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref)
             && (_module.Point.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref)
               ==> _module.Arm.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref)
                 && (_module.Arm.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref)
                   ==> _module.Arm.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref))))
         && _module.Bot.Valid(true, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
             && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
              read($Heap, this, _module.Bot.pos))
             && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
                read($Heap, this, _module.Bot.right)), 
              $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
             && $Unbox(read($Heap, this, _module.Bot.left)): ref
               != $Unbox(read($Heap, this, _module.Bot.right)): ref
             && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
             && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set, 
              $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
             && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set, 
              $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
             && 
            Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
             && Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
             && Set#Disjoint(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set), 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set)
             && _module.Point.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref)
             && _module.Arm.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref)
             && _module.Arm.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref)));
}

function _module.Bot.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Bot.Valid
axiom (forall $reveal: bool, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Bot.Valid($reveal, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Bot())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Bot.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Bot.Valid($reveal, $h0, this) == _module.Bot.Valid($reveal, $h1, this));

function _module.Bot.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.Bot.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Bot.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Bot())
       && $IsAlloc(this, Tclass._module.Bot(), $Heap)
     ==> _module.Bot.Valid#requires($Heap, this) == true);

procedure {:verboseName "Bot.Valid (well-formedness)"} CheckWellformed$$_module.Bot.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Bot())
         && $IsAlloc(this, Tclass._module.Bot(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id568"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Bot.Valid (well-formedness)"} CheckWellformed$$_module.Bot.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;
  var b$reqreads#19: bool;
  var b$reqreads#20: bool;
  var b$reqreads#21: bool;
  var b$reqreads#22: bool;
  var b$reqreads#23: bool;
  var b$reqreads#24: bool;
  var b$reqreads#25: bool;
  var b$reqreads#26: bool;
  var b$reqreads#27: bool;
  var b$reqreads#28: bool;
  var b$reqreads#29: bool;
  var b$reqreads#30: bool;
  var b$reqreads#31: bool;
  var b$reqreads#32: bool;
  var b$reqreads#33: bool;
  var b$reqreads#34: bool;
  var b$reqreads#35: bool;
  var b$reqreads#36: bool;
  var b$reqreads#37: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;
    b$reqreads#19 := true;
    b$reqreads#20 := true;
    b$reqreads#21 := true;
    b$reqreads#22 := true;
    b$reqreads#23 := true;
    b$reqreads#24 := true;
    b$reqreads#25 := true;
    b$reqreads#26 := true;
    b$reqreads#27 := true;
    b$reqreads#28 := true;
    b$reqreads#29 := true;
    b$reqreads#30 := true;
    b$reqreads#31 := true;
    b$reqreads#32 := true;
    b$reqreads#33 := true;
    b$reqreads#34 := true;
    b$reqreads#35 := true;
    b$reqreads#36 := true;
    b$reqreads#37 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Bot.Repr];
    assert {:id "id569"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Bot?(), $Heap);
            assert {:id "id570"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || _module.Bot.Valid#canCall($Heap, this);
            assume {:id "id571"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
            assume {:id "id572"} Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id573"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.Bot.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.Bot.pos];
            b$reqreads#3 := $_ReadsFrame[this, _module.Bot.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos)))
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.Bot.left];
            b$reqreads#5 := $_ReadsFrame[this, _module.Bot.right];
            b$reqreads#6 := $_ReadsFrame[this, _module.Bot.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
              read($Heap, this, _module.Bot.right)), 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set))
        {
            b$reqreads#7 := $_ReadsFrame[this, _module.Bot.left];
            b$reqreads#8 := $_ReadsFrame[this, _module.Bot.right];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
              read($Heap, this, _module.Bot.right)), 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Bot.left)): ref
             != $Unbox(read($Heap, this, _module.Bot.right)): ref)
        {
            b$reqreads#9 := $_ReadsFrame[this, _module.Bot.pos];
            assert {:id "id574"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
            b$reqreads#10 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr];
            b$reqreads#11 := $_ReadsFrame[this, _module.Bot.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
              read($Heap, this, _module.Bot.right)), 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Bot.left)): ref
             != $Unbox(read($Heap, this, _module.Bot.right)): ref
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set))
        {
            b$reqreads#12 := $_ReadsFrame[this, _module.Bot.left];
            assert {:id "id575"} $Unbox(read($Heap, this, _module.Bot.left)): ref != null;
            b$reqreads#13 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr];
            b$reqreads#14 := $_ReadsFrame[this, _module.Bot.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
              read($Heap, this, _module.Bot.right)), 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Bot.left)): ref
             != $Unbox(read($Heap, this, _module.Bot.right)): ref
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set))
        {
            b$reqreads#15 := $_ReadsFrame[this, _module.Bot.right];
            assert {:id "id576"} $Unbox(read($Heap, this, _module.Bot.right)): ref != null;
            b$reqreads#16 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr];
            b$reqreads#17 := $_ReadsFrame[this, _module.Bot.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
              read($Heap, this, _module.Bot.right)), 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Bot.left)): ref
             != $Unbox(read($Heap, this, _module.Bot.right)): ref
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set))
        {
            b$reqreads#18 := $_ReadsFrame[this, _module.Bot.pos];
            assert {:id "id577"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
            b$reqreads#19 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr];
            b$reqreads#20 := $_ReadsFrame[this, _module.Bot.left];
            assert {:id "id578"} $Unbox(read($Heap, this, _module.Bot.left)): ref != null;
            b$reqreads#21 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr];
            if (Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set))
            {
                b$reqreads#22 := $_ReadsFrame[this, _module.Bot.pos];
                assert {:id "id579"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
                b$reqreads#23 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr];
                b$reqreads#24 := $_ReadsFrame[this, _module.Bot.left];
                assert {:id "id580"} $Unbox(read($Heap, this, _module.Bot.left)): ref != null;
                b$reqreads#25 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr];
            }

            if (Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
               && Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set))
            {
                b$reqreads#26 := $_ReadsFrame[this, _module.Bot.pos];
                assert {:id "id581"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
                b$reqreads#27 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr];
                b$reqreads#28 := $_ReadsFrame[this, _module.Bot.left];
                assert {:id "id582"} $Unbox(read($Heap, this, _module.Bot.left)): ref != null;
                b$reqreads#29 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr];
                b$reqreads#30 := $_ReadsFrame[this, _module.Bot.right];
                assert {:id "id583"} $Unbox(read($Heap, this, _module.Bot.right)): ref != null;
                b$reqreads#31 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
              read($Heap, this, _module.Bot.right)), 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Bot.left)): ref
             != $Unbox(read($Heap, this, _module.Bot.right)): ref
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && 
          Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
           && Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
           && Set#Disjoint(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set))
        {
            b$reqreads#32 := $_ReadsFrame[this, _module.Bot.pos];
            assert {:id "id584"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.Bot.pos), Tclass._module.Point?(), $Heap);
            b$reqreads#33 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == $Unbox(read($Heap, this, _module.Bot.pos)): ref
                     || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Point.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref);
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
              read($Heap, this, _module.Bot.right)), 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Bot.left)): ref
             != $Unbox(read($Heap, this, _module.Bot.right)): ref
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && 
          Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
           && Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
           && Set#Disjoint(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set)
           && _module.Point.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref))
        {
            b$reqreads#34 := $_ReadsFrame[this, _module.Bot.left];
            assert {:id "id585"} $Unbox(read($Heap, this, _module.Bot.left)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.Bot.left), Tclass._module.Arm?(), $Heap);
            b$reqreads#35 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == $Unbox(read($Heap, this, _module.Bot.left)): ref
                     || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Arm.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref);
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos))
           && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
              read($Heap, this, _module.Bot.right)), 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && $Unbox(read($Heap, this, _module.Bot.left)): ref
             != $Unbox(read($Heap, this, _module.Bot.right)): ref
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           && 
          Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
           && Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
           && Set#Disjoint(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set)
           && _module.Point.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref)
           && _module.Arm.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref))
        {
            b$reqreads#36 := $_ReadsFrame[this, _module.Bot.right];
            assert {:id "id586"} $Unbox(read($Heap, this, _module.Bot.right)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.Bot.right), Tclass._module.Arm?(), $Heap);
            b$reqreads#37 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == $Unbox(read($Heap, this, _module.Bot.right)): ref
                     || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Arm.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref);
        }

        assume {:id "id587"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
             && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
              read($Heap, this, _module.Bot.pos))
             && Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
                read($Heap, this, _module.Bot.right)), 
              $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
             && $Unbox(read($Heap, this, _module.Bot.left)): ref
               != $Unbox(read($Heap, this, _module.Bot.right)): ref
             && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
             && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set, 
              $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
             && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set, 
              $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
             && 
            Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
             && Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
             && Set#Disjoint(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set), 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set)
             && _module.Point.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref)
             && _module.Arm.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref)
             && _module.Arm.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref));
        assume Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box(this))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, 
            read($Heap, this, _module.Bot.pos))
           ==> 
          Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Bot.left)), 
              read($Heap, this, _module.Bot.right)), 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           ==> 
          $Unbox(read($Heap, this, _module.Bot.left)): ref
             != $Unbox(read($Heap, this, _module.Bot.right)): ref
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Bot.Repr)): Set)
           ==> 
          Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
             && Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set)
             && Set#Disjoint(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set), 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set)
           ==> _module.Point.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref)
             && (_module.Point.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref)
               ==> _module.Arm.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref)
                 && (_module.Arm.Valid($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref)
                   ==> _module.Arm.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this), TBool);
        assert {:id "id588"} b$reqreads#1;
        assert {:id "id589"} b$reqreads#2;
        assert {:id "id590"} b$reqreads#3;
        assert {:id "id591"} b$reqreads#4;
        assert {:id "id592"} b$reqreads#5;
        assert {:id "id593"} b$reqreads#6;
        assert {:id "id594"} b$reqreads#7;
        assert {:id "id595"} b$reqreads#8;
        assert {:id "id596"} b$reqreads#9;
        assert {:id "id597"} b$reqreads#10;
        assert {:id "id598"} b$reqreads#11;
        assert {:id "id599"} b$reqreads#12;
        assert {:id "id600"} b$reqreads#13;
        assert {:id "id601"} b$reqreads#14;
        assert {:id "id602"} b$reqreads#15;
        assert {:id "id603"} b$reqreads#16;
        assert {:id "id604"} b$reqreads#17;
        assert {:id "id605"} b$reqreads#18;
        assert {:id "id606"} b$reqreads#19;
        assert {:id "id607"} b$reqreads#20;
        assert {:id "id608"} b$reqreads#21;
        assert {:id "id609"} b$reqreads#22;
        assert {:id "id610"} b$reqreads#23;
        assert {:id "id611"} b$reqreads#24;
        assert {:id "id612"} b$reqreads#25;
        assert {:id "id613"} b$reqreads#26;
        assert {:id "id614"} b$reqreads#27;
        assert {:id "id615"} b$reqreads#28;
        assert {:id "id616"} b$reqreads#29;
        assert {:id "id617"} b$reqreads#30;
        assert {:id "id618"} b$reqreads#31;
        assert {:id "id619"} b$reqreads#32;
        assert {:id "id620"} b$reqreads#33;
        assert {:id "id621"} b$reqreads#34;
        assert {:id "id622"} b$reqreads#35;
        assert {:id "id623"} b$reqreads#36;
        assert {:id "id624"} b$reqreads#37;
        return;

        assume false;
    }
}



const _module.Bot.pos: Field
uses {
axiom FDim(_module.Bot.pos) == 0
   && FieldOfDecl(class._module.Bot?, field$pos) == _module.Bot.pos
   && !$IsGhostField(_module.Bot.pos);
}

// Bot.pos: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Bot.pos)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Bot?()
     ==> $Is($Unbox(read($h, $o, _module.Bot.pos)): ref, Tclass._module.Point()));

// Bot.pos: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Bot.pos)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Bot?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Bot.pos)): ref, Tclass._module.Point(), $h));

const _module.Bot.left: Field
uses {
axiom FDim(_module.Bot.left) == 0
   && FieldOfDecl(class._module.Bot?, field$left) == _module.Bot.left
   && !$IsGhostField(_module.Bot.left);
}

// Bot.left: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Bot.left)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Bot?()
     ==> $Is($Unbox(read($h, $o, _module.Bot.left)): ref, Tclass._module.Arm()));

// Bot.left: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Bot.left)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Bot?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Bot.left)): ref, Tclass._module.Arm(), $h));

const _module.Bot.right: Field
uses {
axiom FDim(_module.Bot.right) == 0
   && FieldOfDecl(class._module.Bot?, field$right) == _module.Bot.right
   && !$IsGhostField(_module.Bot.right);
}

// Bot.right: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Bot.right)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Bot?()
     ==> $Is($Unbox(read($h, $o, _module.Bot.right)): ref, Tclass._module.Arm()));

// Bot.right: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Bot.right)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Bot?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Bot.right)): ref, Tclass._module.Arm(), $h));

procedure {:verboseName "Bot._ctor (well-formedness)"} CheckWellFormed$$_module.Bot.__ctor() returns (this: ref);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Bot._ctor (call)"} Call$$_module.Bot.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Bot())
         && $IsAlloc(this, Tclass._module.Bot(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Bot.Valid#canCall($Heap, this);
  ensures {:id "id627"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
  ensures {:id "id628"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Bot._ctor (correctness)"} Impl$$_module.Bot.__ctor() returns (this: ref, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Bot.Valid#canCall($Heap, this);
  ensures {:id "id629"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
  ensures {:id "id630"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Bot._ctor (correctness)"} Impl$$_module.Bot.__ctor() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Repr: Set;
  var this.pos: ref;
  var this.left: ref;
  var this.right: ref;
  var defass#this.pos: bool;
  var defass#this.left: bool;
  var defass#this.right: bool;
  var $nw: ref;
  var a##0: int;
  var b##0: int;
  var c##0: int;
  var polar_in##0: int;
  var azim_in##0: int;
  var polar_in##1: int;
  var azim_in##1: int;
  var $rhs#0: Set;

    // AddMethodImpl: _ctor, Impl$$_module.Bot.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(111,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(112,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(112,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := LitInt(0);
    call {:id "id631"} $nw := Call$$_module.Point.__ctor(a##0, b##0, c##0);
    // TrCallStmt: After ProcessCallStmt
    this.pos := $nw;
    defass#this.pos := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(113,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(113,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    polar_in##0 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    azim_in##0 := LitInt(0);
    call {:id "id633"} $nw := Call$$_module.Arm.__ctor(polar_in##0, azim_in##0);
    // TrCallStmt: After ProcessCallStmt
    this.left := $nw;
    defass#this.left := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(114,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(114,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    polar_in##1 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    azim_in##1 := LitInt(0);
    call {:id "id635"} $nw := Call$$_module.Arm.__ctor(polar_in##1, azim_in##1);
    // TrCallStmt: After ProcessCallStmt
    this.right := $nw;
    defass#this.right := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(111,3)
    assert {:id "id637"} defass#this.pos;
    assert {:id "id638"} defass#this.left;
    assert {:id "id639"} defass#this.right;
    assume this != null && $Is(this, Tclass._module.Bot?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Bot.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.Bot.pos)): ref == this.pos;
    assume $Unbox(read($Heap, this, _module.Bot.left)): ref == this.left;
    assume $Unbox(read($Heap, this, _module.Bot.right)): ref == this.right;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(111,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(116,10)
    assume true;
    assert {:id "id640"} $_ModifiesFrame[this, _module.Bot.Repr];
    assert {:id "id641"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
    assert {:id "id642"} $Unbox(read($Heap, this, _module.Bot.left)): ref != null;
    assert {:id "id643"} $Unbox(read($Heap, this, _module.Bot.right)): ref != null;
    assume true;
    $rhs#0 := Set#Union(Set#Union(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Repr)): Set), 
        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Repr)): Set), 
      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.Repr)): Set);
    $Heap := update($Heap, this, _module.Bot.Repr, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(117,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(117,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id646"} Call$$_module.Bot.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module.Bot.flying
function _module.Bot.flying($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Bot.flying (revealed)
axiom {:id "id647"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Bot.flying($Heap, this), $IsGoodHeap($Heap) } 
    _module.Bot.flying#canCall($Heap, this)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Bot())
           && $IsAlloc(this, Tclass._module.Bot(), $Heap)
           && _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this))
       ==> _module.Bot.flying($Heap, this)
         == ($Unbox(read($Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.z)): ref, 
              _module.Cell.val)): int
           > 0));
}

function _module.Bot.flying#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Bot.flying
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Bot.flying($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Bot())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && Set#IsMember($Unbox(read($h0, this, _module.Bot.Repr)): Set, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Bot.flying($h0, this) == _module.Bot.flying($h1, this));

function _module.Bot.flying#requires(Heap, ref) : bool;

// #requires axiom for _module.Bot.flying
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Bot.flying#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Bot())
       && $IsAlloc(this, Tclass._module.Bot(), $Heap)
     ==> _module.Bot.flying#requires($Heap, this)
       == _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this));

procedure {:verboseName "Bot.flying (well-formedness)"} CheckWellformed$$_module.Bot.flying(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Bot())
         && $IsAlloc(this, Tclass._module.Bot(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Bot.flying (well-formedness)"} CheckWellformed$$_module.Bot.flying(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(121,15)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(121,22)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id648"} Call$$_module.Bot.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Bot?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Bot.Valid#canCall($Heap, this);
    assume {:id "id649"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
    assert {:id "id650"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.Bot.Repr];
    assert {:id "id651"} b$reqreads#1;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#2 := $_ReadsFrame[this, _module.Bot.pos];
        assert {:id "id652"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
        b$reqreads#3 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.z];
        assert {:id "id653"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.z)): ref
           != null;
        b$reqreads#4 := $_ReadsFrame[$Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.z)): ref, _module.Cell.val];
        assume {:id "id654"} _module.Bot.flying($Heap, this)
           == ($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.z)): ref, 
                _module.Cell.val)): int
             > 0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Bot.flying($Heap, this), TBool);
        assert {:id "id655"} b$reqreads#2;
        assert {:id "id656"} b$reqreads#3;
        assert {:id "id657"} b$reqreads#4;
        return;

        assume false;
    }
}



// function declaration for _module.Bot.arms_up
function _module.Bot.arms__up($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Bot.arms__up (revealed)
axiom {:id "id658"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Bot.arms__up($Heap, this), $IsGoodHeap($Heap) } 
    _module.Bot.arms__up#canCall($Heap, this)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Bot())
           && $IsAlloc(this, Tclass._module.Bot(), $Heap)
           && _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this))
       ==> _module.Bot.arms__up($Heap, this)
         == ($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int
             == $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int
           && $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int
             == LitInt(0)));
}

function _module.Bot.arms__up#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Bot.arms__up
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Bot.arms__up($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Bot())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && Set#IsMember($Unbox(read($h0, this, _module.Bot.Repr)): Set, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Bot.arms__up($h0, this) == _module.Bot.arms__up($h1, this));

function _module.Bot.arms__up#requires(Heap, ref) : bool;

// #requires axiom for _module.Bot.arms__up
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Bot.arms__up#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Bot())
       && $IsAlloc(this, Tclass._module.Bot(), $Heap)
     ==> _module.Bot.arms__up#requires($Heap, this)
       == _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this));

procedure {:verboseName "Bot.arms_up (well-formedness)"} CheckWellformed$$_module.Bot.arms__up(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Bot())
         && $IsAlloc(this, Tclass._module.Bot(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Bot.arms_up (well-formedness)"} CheckWellformed$$_module.Bot.arms__up(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(128,15)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(128,22)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id659"} Call$$_module.Bot.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Bot?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Bot.Valid#canCall($Heap, this);
    assume {:id "id660"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
    assert {:id "id661"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.Bot.Repr];
    assert {:id "id662"} b$reqreads#1;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#2 := $_ReadsFrame[this, _module.Bot.left];
        assert {:id "id663"} $Unbox(read($Heap, this, _module.Bot.left)): ref != null;
        b$reqreads#3 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.polar];
        assert {:id "id664"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.polar)): ref
           != null;
        b$reqreads#4 := $_ReadsFrame[$Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.polar)): ref, _module.Cell.val];
        b$reqreads#5 := $_ReadsFrame[this, _module.Bot.right];
        assert {:id "id665"} $Unbox(read($Heap, this, _module.Bot.right)): ref != null;
        b$reqreads#6 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar];
        assert {:id "id666"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref
           != null;
        b$reqreads#7 := $_ReadsFrame[$Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref, _module.Cell.val];
        if ($Unbox(read($Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.polar)): ref, 
              _module.Cell.val)): int
           == $Unbox(read($Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
              _module.Cell.val)): int)
        {
            b$reqreads#8 := $_ReadsFrame[this, _module.Bot.right];
            assert {:id "id667"} $Unbox(read($Heap, this, _module.Bot.right)): ref != null;
            b$reqreads#9 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar];
            assert {:id "id668"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref
               != null;
            b$reqreads#10 := $_ReadsFrame[$Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref, _module.Cell.val];
        }

        assume {:id "id669"} _module.Bot.arms__up($Heap, this)
           == ($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.polar)): ref, 
                  _module.Cell.val)): int
               == $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
                  _module.Cell.val)): int
             && $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
                  _module.Cell.val)): int
               == LitInt(0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Bot.arms__up($Heap, this), TBool);
        assert {:id "id670"} b$reqreads#2;
        assert {:id "id671"} b$reqreads#3;
        assert {:id "id672"} b$reqreads#4;
        assert {:id "id673"} b$reqreads#5;
        assert {:id "id674"} b$reqreads#6;
        assert {:id "id675"} b$reqreads#7;
        assert {:id "id676"} b$reqreads#8;
        assert {:id "id677"} b$reqreads#9;
        assert {:id "id678"} b$reqreads#10;
        return;

        assume false;
    }
}



// function declaration for _module.Bot.robot_inv
function _module.Bot.robot__inv($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Bot.robot__inv (revealed)
axiom {:id "id679"} 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Bot.robot__inv($Heap, this), $IsGoodHeap($Heap) } 
    _module.Bot.robot__inv#canCall($Heap, this)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Bot())
           && $IsAlloc(this, Tclass._module.Bot(), $Heap)
           && _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this))
       ==> _module.Bot.flying#canCall($Heap, this)
         && (_module.Bot.flying($Heap, this) ==> _module.Bot.arms__up#canCall($Heap, this))
         && _module.Bot.robot__inv($Heap, this)
           == (_module.Bot.flying($Heap, this) ==> _module.Bot.arms__up($Heap, this)));
}

function _module.Bot.robot__inv#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Bot.robot__inv
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Bot.robot__inv($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Bot())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && Set#IsMember($Unbox(read($h0, this, _module.Bot.Repr)): Set, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Bot.robot__inv($h0, this) == _module.Bot.robot__inv($h1, this));

function _module.Bot.robot__inv#requires(Heap, ref) : bool;

// #requires axiom for _module.Bot.robot__inv
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Bot.robot__inv#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Bot())
       && $IsAlloc(this, Tclass._module.Bot(), $Heap)
     ==> _module.Bot.robot__inv#requires($Heap, this)
       == _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this));

procedure {:verboseName "Bot.robot_inv (well-formedness)"} CheckWellformed$$_module.Bot.robot__inv(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Bot())
         && $IsAlloc(this, Tclass._module.Bot(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Bot.robot_inv (well-formedness)"} CheckWellformed$$_module.Bot.robot__inv(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(135,15)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(135,22)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id680"} Call$$_module.Bot.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Bot?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Bot.Valid#canCall($Heap, this);
    assume {:id "id681"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
    assert {:id "id682"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.Bot.Repr];
    assert {:id "id683"} b$reqreads#1;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Bot?(), $Heap);
        assert {:id "id684"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
        assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
        b$reqreads#2 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Bot.flying#canCall($Heap, this);
        if (_module.Bot.flying($Heap, this))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Bot?(), $Heap);
            assert {:id "id685"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
            assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
            b$reqreads#3 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Bot.arms__up#canCall($Heap, this);
        }

        assume {:id "id686"} _module.Bot.robot__inv($Heap, this)
           == (_module.Bot.flying($Heap, this) ==> _module.Bot.arms__up($Heap, this));
        assume _module.Bot.flying#canCall($Heap, this)
           && (_module.Bot.flying($Heap, this) ==> _module.Bot.arms__up#canCall($Heap, this));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Bot.robot__inv($Heap, this), TBool);
        assert {:id "id687"} b$reqreads#2;
        assert {:id "id688"} b$reqreads#3;
        return;

        assume false;
    }
}



procedure {:verboseName "Bot.Fly (well-formedness)"} CheckWellFormed$$_module.Bot.Fly(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Bot())
         && $IsAlloc(this, Tclass._module.Bot(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Bot.Fly (well-formedness)"} CheckWellFormed$$_module.Bot.Fly(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Fly, CheckWellFormed$$_module.Bot.Fly
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, this);
    assume {:id "id689"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.Bot.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Bot?(), $Heap);
    assume _module.Bot.Valid#canCall($Heap, this);
    assume {:id "id690"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
    assert {:id "id691"} $IsAlloc(this, Tclass._module.Bot(), old($Heap));
    assume {:id "id692"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Bot.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Bot.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Bot?(), $Heap);
    assert {:id "id693"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
    assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
    assume _module.Bot.robot__inv#canCall($Heap, this);
    assume {:id "id694"} _module.Bot.robot__inv($Heap, this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Bot?(), $Heap);
    assert {:id "id695"} {:subsumption 0} Lit(true) ==> _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
    assume _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
    assume _module.Bot.flying#canCall($Heap, this);
    assume {:id "id696"} _module.Bot.flying($Heap, this);
}



procedure {:verboseName "Bot.Fly (call)"} Call$$_module.Bot.Fly(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Bot())
         && $IsAlloc(this, Tclass._module.Bot(), $Heap));
  // user-defined preconditions
  requires {:id "id697"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Bot.Valid#canCall($Heap, this);
  ensures {:id "id698"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
  ensures {:id "id699"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Bot.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Bot.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures _module.Bot.robot__inv#canCall($Heap, this)
     && (_module.Bot.robot__inv($Heap, this)
       ==> _module.Bot.flying#canCall($Heap, this));
  free ensures {:id "id700"} _module.Bot.robot__inv#canCall($Heap, this)
     && 
    _module.Bot.robot__inv($Heap, this)
     && (_module.Bot.flying($Heap, this) ==> _module.Bot.arms__up($Heap, this));
  free ensures {:id "id701"} _module.Bot.flying#canCall($Heap, this)
     && 
    _module.Bot.flying($Heap, this)
     && $Unbox(read($Heap, 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.z)): ref, 
          _module.Cell.val)): int
       > 0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Bot.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Bot.Fly (correctness)"} Impl$$_module.Bot.Fly(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Bot())
         && $IsAlloc(this, Tclass._module.Bot(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id702"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Bot.Valid#canCall($Heap, this);
  ensures {:id "id703"} _module.Bot.Valid(reveal__module.Bot.Valid, $Heap, this);
  ensures {:id "id704"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Bot.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Bot.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures _module.Bot.robot__inv#canCall($Heap, this)
     && (_module.Bot.robot__inv($Heap, this)
       ==> _module.Bot.flying#canCall($Heap, this));
  ensures {:id "id705"} _module.Bot.robot__inv#canCall($Heap, this)
     ==> _module.Bot.robot__inv($Heap, this)
       || (_module.Bot.flying($Heap, this)
         ==> 
        _module.Bot.arms__up#canCall($Heap, this)
         ==> _module.Bot.arms__up($Heap, this)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int
             == $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int);
  ensures {:id "id706"} _module.Bot.robot__inv#canCall($Heap, this)
     ==> _module.Bot.robot__inv($Heap, this)
       || (_module.Bot.flying($Heap, this)
         ==> 
        _module.Bot.arms__up#canCall($Heap, this)
         ==> _module.Bot.arms__up($Heap, this)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref, 
                _module.Cell.val)): int
             == LitInt(0));
  ensures {:id "id707"} _module.Bot.flying#canCall($Heap, this)
     ==> _module.Bot.flying($Heap, this)
       || $Unbox(read($Heap, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.z)): ref, 
            _module.Cell.val)): int
         > 0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Bot.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Bot.Fly (correctness)"} Impl$$_module.Bot.Fly(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $rhs#3: int;
  var $rhs#4: DatatypeType;
  var $rhs#5: DatatypeType;
  var $rhs#6: DatatypeType;

    // AddMethodImpl: Fly, Impl$$_module.Bot.Fly
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Bot.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(147,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(147,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id708"} Call$$_module.Bot.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(148,37)
    assert {:id "id709"} $Unbox(read($Heap, this, _module.Bot.left)): ref != null;
    assert {:id "id710"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.polar)): ref
       != null;
    assume true;
    $obj0 := $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.polar)): ref;
    assert {:id "id711"} $_ModifiesFrame[$obj0, _module.Cell.val];
    assert {:id "id712"} $Unbox(read($Heap, this, _module.Bot.right)): ref != null;
    assert {:id "id713"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref
       != null;
    assume true;
    $obj1 := $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref;
    assert {:id "id714"} $_ModifiesFrame[$obj1, _module.Cell.val];
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(0);
    assert {:id "id717"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.polar)): ref
         != $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.polar)): ref
       || $rhs#1 == $rhs#0;
    $Heap := update($Heap, $obj0, _module.Cell.val, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.Cell.val, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(149,15)
    assert {:id "id720"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
    assert {:id "id721"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.z)): ref
       != null;
    assume true;
    assert {:id "id722"} $_ModifiesFrame[$Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.z)): ref, _module.Cell.val];
    assume true;
    $rhs#2 := LitInt(100);
    $Heap := update($Heap, 
      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.z)): ref, 
      _module.Cell.val, 
      $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(150,20)
    assert {:id "id725"} $Unbox(read($Heap, this, _module.Bot.right)): ref != null;
    assert {:id "id726"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.azim)): ref
       != null;
    assume true;
    assert {:id "id727"} $_ModifiesFrame[$Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.azim)): ref, _module.Cell.val];
    assume true;
    $rhs#3 := LitInt(17);
    $Heap := update($Heap, 
      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.right)): ref, _module.Arm.azim)): ref, 
      _module.Cell.val, 
      $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(151,15)
    assert {:id "id730"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
    assume true;
    assert {:id "id731"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Value];
    assert {:id "id732"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
    assume _System.Tuple3.___hMake3_q($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Value)): DatatypeType);
    assert {:id "id733"} $Unbox(read($Heap, this, _module.Bot.pos)): ref != null;
    assume _System.Tuple3.___hMake3_q($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Value)): DatatypeType);
    assume _System.Tuple3.___hMake3_q($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Value)): DatatypeType)
       && _System.Tuple3.___hMake3_q($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Value)): DatatypeType);
    $rhs#4 := #_System._tuple#3._#Make3(_System.Tuple3._0($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Value)): DatatypeType), 
      _System.Tuple3._1($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.pos)): ref, _module.Point.Value)): DatatypeType), 
      $Box(LitInt(100)));
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.Bot.pos)): ref, 
      _module.Point.Value, 
      $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(152,29)
    assert {:id "id736"} $Unbox(read($Heap, this, _module.Bot.left)): ref != null;
    assume true;
    $obj0 := $Unbox(read($Heap, this, _module.Bot.left)): ref;
    assert {:id "id737"} $_ModifiesFrame[$obj0, _module.Arm.Value];
    assert {:id "id738"} $Unbox(read($Heap, this, _module.Bot.right)): ref != null;
    assume true;
    $obj1 := $Unbox(read($Heap, this, _module.Bot.right)): ref;
    assert {:id "id739"} $_ModifiesFrame[$obj1, _module.Arm.Value];
    assert {:id "id740"} $Unbox(read($Heap, this, _module.Bot.left)): ref != null;
    assume _System.Tuple2.___hMake2_q($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Value)): DatatypeType);
    assume _System.Tuple2.___hMake2_q($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Value)): DatatypeType);
    $rhs#5 := #_System._tuple#2._#Make2($Box(LitInt(0)), 
      _System.Tuple2._1($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Bot.left)): ref, _module.Arm.Value)): DatatypeType));
    assume true;
    $rhs#6 := Lit(#_System._tuple#2._#Make2($Box(LitInt(0)), $Box(LitInt(17))));
    assert {:id "id743"} $Unbox(read($Heap, this, _module.Bot.right)): ref
         != $Unbox(read($Heap, this, _module.Bot.left)): ref
       || $rhs#6 == $rhs#5;
    $Heap := update($Heap, $obj0, _module.Arm.Value, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.Arm.Value, $Box($rhs#6));
    assume $IsGoodHeap($Heap);
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(153,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/FlyingRobots.dfy(153,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id746"} Call$$_module.Bot.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Bot.reveal_Valid (well-formedness)"} {:verify false} CheckWellFormed$$_module.Bot.reveal__Valid();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Bot.reveal_Valid (call)"} {:verify false} Call$$_module.Bot.reveal__Valid();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module.Bot.Valid;



// $Is axiom for non-null type _module.Bot
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Bot()) } { $Is(c#0, Tclass._module.Bot?()) } 
  $Is(c#0, Tclass._module.Bot())
     <==> $Is(c#0, Tclass._module.Bot?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Bot
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Bot(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Bot?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Bot(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Bot?(), $h));

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

const unique tytagFamily$_tuple#3: TyTagFamily;

const unique tytagFamily$Bot: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$Point: TyTagFamily;

const unique tytagFamily$Arm: TyTagFamily;

const unique field$Repr: NameFamily;

const unique field$left: NameFamily;

const unique field$polar: NameFamily;

const unique field$val: NameFamily;

const unique field$right: NameFamily;

const unique field$pos: NameFamily;

const unique field$z: NameFamily;

const unique field$Value: NameFamily;

const unique field$x: NameFamily;

const unique field$y: NameFamily;

const unique field$azim: NameFamily;
