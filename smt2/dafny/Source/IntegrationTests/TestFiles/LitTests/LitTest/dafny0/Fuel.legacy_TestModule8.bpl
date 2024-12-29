// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Fuel.legacy.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Fuel.legacy-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Fuel.legacy.dfy

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

const BaseFuel_TestModule8._default.ValInGrammar: LayerType;

const StartFuel_TestModule8._default.ValInGrammar: LayerType;

const StartFuelAssert_TestModule8._default.ValInGrammar: LayerType;

const unique class.TestModule8.__default: ClassName;

// function declaration for TestModule8._default.ValInGrammar
function TestModule8.__default.ValInGrammar($ly: LayerType, val#0: DatatypeType, grammar#0: DatatypeType) : bool
uses {
// definition axiom for TestModule8.__default.ValInGrammar (revealed)
axiom {:id "id277"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, val#0: DatatypeType, grammar#0: DatatypeType :: 
    { TestModule8.__default.ValInGrammar($LS($ly), val#0, grammar#0) } 
    TestModule8.__default.ValInGrammar#canCall(val#0, grammar#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && $Is(grammar#0, Tclass.TestModule8.G()))
       ==> (!TestModule8.V.VUint64_q(val#0)
           ==> (TestModule8.V.VTuple_q(val#0)
               ==> (var t#1 := TestModule8.V.t(val#0); 
                TestModule8.G.GTuple_q(grammar#0)
                   ==> 
                  Seq#Length(t#1) == Seq#Length(TestModule8.G.t(grammar#0))
                   ==> (forall i#1: int :: 
                    { $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#1)): DatatypeType } 
                      { $Unbox(Seq#Index(t#1, i#1)): DatatypeType } 
                    LitInt(0) <= i#1
                       ==> 
                      i#1 < Seq#Length(t#1)
                       ==> TestModule8.__default.ValInGrammar#canCall($Unbox(Seq#Index(t#1, i#1)): DatatypeType, 
                        $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#1)): DatatypeType))))
             && (!TestModule8.V.VTuple_q(val#0)
               ==> (var val#2 := TestModule8.V.val(val#0); 
                (var c#1 := TestModule8.V.c(val#0); 
                  TestModule8.G.GTaggedUnion_q(grammar#0)
                     ==> 
                    c#1 < Seq#Length(TestModule8.G.cases(grammar#0))
                     ==> TestModule8.__default.ValInGrammar#canCall(val#2, $Unbox(Seq#Index(TestModule8.G.cases(grammar#0), c#1)): DatatypeType)))))
         && TestModule8.__default.ValInGrammar($LS($ly), val#0, grammar#0)
           == (if TestModule8.V.VUint64_q(val#0)
             then TestModule8.G.GUint64_q(grammar#0)
             else (if TestModule8.V.VTuple_q(val#0)
               then (var t#0 := TestModule8.V.t(val#0); 
                TestModule8.G.GTuple_q(grammar#0)
                   && Seq#Length(t#0) == Seq#Length(TestModule8.G.t(grammar#0))
                   && (forall i#0: int :: 
                    { $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#0)): DatatypeType } 
                      { $Unbox(Seq#Index(t#0, i#0)): DatatypeType } 
                    LitInt(0) <= i#0 && i#0 < Seq#Length(t#0)
                       ==> TestModule8.__default.ValInGrammar($ly, 
                        $Unbox(Seq#Index(t#0, i#0)): DatatypeType, 
                        $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#0)): DatatypeType)))
               else (var val#1 := TestModule8.V.val(val#0); 
                (var c#0 := TestModule8.V.c(val#0); 
                  TestModule8.G.GTaggedUnion_q(grammar#0)
                     && c#0 < Seq#Length(TestModule8.G.cases(grammar#0))
                     && TestModule8.__default.ValInGrammar($ly, val#1, $Unbox(Seq#Index(TestModule8.G.cases(grammar#0), c#0)): DatatypeType))))));
// definition axiom for TestModule8.__default.ValInGrammar for all literals (revealed)
axiom {:id "id278"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, val#0: DatatypeType, grammar#0: DatatypeType :: 
    {:weight 3} { TestModule8.__default.ValInGrammar($LS($ly), Lit(val#0), Lit(grammar#0)) } 
    TestModule8.__default.ValInGrammar#canCall(Lit(val#0), Lit(grammar#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && $Is(grammar#0, Tclass.TestModule8.G()))
       ==> (!Lit(TestModule8.V.VUint64_q(Lit(val#0)))
           ==> (Lit(TestModule8.V.VTuple_q(Lit(val#0)))
               ==> (var t#3 := Lit(TestModule8.V.t(Lit(val#0))); 
                Lit(TestModule8.G.GTuple_q(Lit(grammar#0)))
                   ==> 
                  Seq#Length(t#3) == Seq#Length(Lit(TestModule8.G.t(Lit(grammar#0))))
                   ==> (forall i#3: int :: 
                    { $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#3)): DatatypeType } 
                      { $Unbox(Seq#Index(t#3, i#3)): DatatypeType } 
                    LitInt(0) <= i#3
                       ==> 
                      i#3 < Seq#Length(t#3)
                       ==> TestModule8.__default.ValInGrammar#canCall($Unbox(Seq#Index(t#3, i#3)): DatatypeType, 
                        $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(grammar#0))), i#3)): DatatypeType))))
             && (!Lit(TestModule8.V.VTuple_q(Lit(val#0)))
               ==> (var val#4 := Lit(TestModule8.V.val(Lit(val#0))); 
                (var c#3 := LitInt(TestModule8.V.c(Lit(val#0))); 
                  Lit(TestModule8.G.GTaggedUnion_q(Lit(grammar#0)))
                     ==> 
                    c#3 < Seq#Length(Lit(TestModule8.G.cases(Lit(grammar#0))))
                     ==> TestModule8.__default.ValInGrammar#canCall(val#4, 
                      $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(grammar#0))), c#3)): DatatypeType)))))
         && TestModule8.__default.ValInGrammar($LS($ly), Lit(val#0), Lit(grammar#0))
           == (if TestModule8.V.VUint64_q(Lit(val#0))
             then TestModule8.G.GUint64_q(Lit(grammar#0))
             else (if TestModule8.V.VTuple_q(Lit(val#0))
               then (var t#2 := Lit(TestModule8.V.t(Lit(val#0))); 
                TestModule8.G.GTuple_q(Lit(grammar#0))
                   && Seq#Length(t#2) == Seq#Length(Lit(TestModule8.G.t(Lit(grammar#0))))
                   && (forall i#2: int :: 
                    { $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#2)): DatatypeType } 
                      { $Unbox(Seq#Index(t#2, i#2)): DatatypeType } 
                    LitInt(0) <= i#2 && i#2 < Seq#Length(t#2)
                       ==> TestModule8.__default.ValInGrammar($LS($ly), 
                        $Unbox(Seq#Index(t#2, i#2)): DatatypeType, 
                        $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(grammar#0))), i#2)): DatatypeType)))
               else (var val#3 := Lit(TestModule8.V.val(Lit(val#0))); 
                (var c#2 := LitInt(TestModule8.V.c(Lit(val#0))); 
                  TestModule8.G.GTaggedUnion_q(Lit(grammar#0))
                     && c#2 < Seq#Length(Lit(TestModule8.G.cases(Lit(grammar#0))))
                     && TestModule8.__default.ValInGrammar($LS($ly), 
                      val#3, 
                      $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(grammar#0))), c#2)): DatatypeType))))));
}

function TestModule8.__default.ValInGrammar#canCall(val#0: DatatypeType, grammar#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, val#0: DatatypeType, grammar#0: DatatypeType :: 
  { TestModule8.__default.ValInGrammar($LS($ly), val#0, grammar#0) } 
  TestModule8.__default.ValInGrammar($LS($ly), val#0, grammar#0)
     == TestModule8.__default.ValInGrammar($ly, val#0, grammar#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, val#0: DatatypeType, grammar#0: DatatypeType :: 
  { TestModule8.__default.ValInGrammar(AsFuelBottom($ly), val#0, grammar#0) } 
  TestModule8.__default.ValInGrammar($ly, val#0, grammar#0)
     == TestModule8.__default.ValInGrammar($LZ, val#0, grammar#0));

function Tclass.TestModule8.V() : Ty
uses {
// Tclass.TestModule8.V Tag
axiom Tag(Tclass.TestModule8.V()) == Tagclass.TestModule8.V
   && TagFamily(Tclass.TestModule8.V()) == tytagFamily$V;
}

const unique Tagclass.TestModule8.V: TyTag;

// Box/unbox axiom for Tclass.TestModule8.V
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule8.V()) } 
  $IsBox(bx, Tclass.TestModule8.V())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TestModule8.V()));

function Tclass.TestModule8.G() : Ty
uses {
// Tclass.TestModule8.G Tag
axiom Tag(Tclass.TestModule8.G()) == Tagclass.TestModule8.G
   && TagFamily(Tclass.TestModule8.G()) == tytagFamily$G;
}

const unique Tagclass.TestModule8.G: TyTag;

// Box/unbox axiom for Tclass.TestModule8.G
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule8.G()) } 
  $IsBox(bx, Tclass.TestModule8.G())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TestModule8.G()));

function TestModule8.__default.ValInGrammar#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for TestModule8.__default.ValInGrammar
axiom (forall $ly: LayerType, val#0: DatatypeType, grammar#0: DatatypeType :: 
  { TestModule8.__default.ValInGrammar#requires($ly, val#0, grammar#0) } 
  $Is(val#0, Tclass.TestModule8.V()) && $Is(grammar#0, Tclass.TestModule8.G())
     ==> TestModule8.__default.ValInGrammar#requires($ly, val#0, grammar#0) == true);

procedure {:verboseName "TestModule8.ValInGrammar (well-formedness)"} CheckWellformed$$TestModule8.__default.ValInGrammar(val#0: DatatypeType where $Is(val#0, Tclass.TestModule8.V()), 
    grammar#0: DatatypeType where $Is(grammar#0, Tclass.TestModule8.G()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.TestModule8.uint64() : Ty
uses {
// Tclass.TestModule8.uint64 Tag
axiom Tag(Tclass.TestModule8.uint64()) == Tagclass.TestModule8.uint64
   && TagFamily(Tclass.TestModule8.uint64()) == tytagFamily$uint64;
}

const unique Tagclass.TestModule8.uint64: TyTag;

// Box/unbox axiom for Tclass.TestModule8.uint64
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule8.uint64()) } 
  $IsBox(bx, Tclass.TestModule8.uint64())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TestModule8.uint64()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestModule8.ValInGrammar (well-formedness)"} CheckWellformed$$TestModule8.__default.ValInGrammar(val#0: DatatypeType, grammar#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#2#0: int;
  var _mcc#3#0: DatatypeType;
  var val#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var c#Z#0: int;
  var let#1#0#0: int;
  var ##val#0: DatatypeType;
  var ##grammar#0: DatatypeType;
  var _mcc#1#0: Seq;
  var t#Z#0: Seq;
  var let#2#0#0: Seq;
  var i#4: int;
  var ##val#1: DatatypeType;
  var ##grammar#1: DatatypeType;
  var _mcc#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_TestModule8._default.ValInGrammar
       == $LS($LS(BaseFuel_TestModule8._default.ValInGrammar));
    assume StartFuelAssert_TestModule8._default.ValInGrammar
       == $LS($LS($LS(BaseFuel_TestModule8._default.ValInGrammar)));
    assume AsFuelBottom(BaseFuel_TestModule8._default.ValInGrammar)
       == BaseFuel_TestModule8._default.ValInGrammar;
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
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
        if (val#0 == #TestModule8.V.VUint64(_mcc#0#0))
        {
            assume LitInt(0) <= _mcc#0#0 && _mcc#0#0 < 18446744073709551616;
            assume {:id "id296"} TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, val#0, grammar#0)
               == TestModule8.G.GUint64_q(grammar#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, val#0, grammar#0), 
              TBool);
            return;
        }
        else if (val#0 == #TestModule8.V.VTuple(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, TSeq(Tclass.TestModule8.V()));
            havoc t#Z#0;
            assume {:id "id288"} let#2#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TSeq(Tclass.TestModule8.V()));
            assume {:id "id289"} t#Z#0 == let#2#0#0;
            if (TestModule8.G.GTuple_q(grammar#0))
            {
                assert {:id "id290"} TestModule8.G.GTuple_q(grammar#0);
            }

            if (TestModule8.G.GTuple_q(grammar#0)
               && Seq#Length(t#Z#0) == Seq#Length(TestModule8.G.t(grammar#0)))
            {
                // Begin Comprehension WF check
                havoc i#4;
                if (true)
                {
                    if (LitInt(0) <= i#4)
                    {
                    }

                    if (LitInt(0) <= i#4 && i#4 < Seq#Length(t#Z#0))
                    {
                        assert {:id "id291"} 0 <= i#4 && i#4 < Seq#Length(t#Z#0);
                        ##val#1 := $Unbox(Seq#Index(t#Z#0, i#4)): DatatypeType;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##val#1, Tclass.TestModule8.V(), $Heap);
                        assert {:id "id292"} TestModule8.G.GTuple_q(grammar#0);
                        assert {:id "id293"} 0 <= i#4 && i#4 < Seq#Length(TestModule8.G.t(grammar#0));
                        ##grammar#1 := $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#4)): DatatypeType;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##grammar#1, Tclass.TestModule8.G(), $Heap);
                        assert {:id "id294"} DtRank(##val#1) < DtRank(val#0)
                           || (DtRank(##val#1) == DtRank(val#0) && DtRank(##grammar#1) < DtRank(grammar#0));
                        assume TestModule8.__default.ValInGrammar#canCall($Unbox(Seq#Index(t#Z#0, i#4)): DatatypeType, 
                          $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#4)): DatatypeType);
                    }
                }

                // End Comprehension WF check
            }

            assume {:id "id295"} TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, val#0, grammar#0)
               == (
                TestModule8.G.GTuple_q(grammar#0)
                 && Seq#Length(t#Z#0) == Seq#Length(TestModule8.G.t(grammar#0))
                 && (forall i#5: int :: 
                  { $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#5)): DatatypeType } 
                    { $Unbox(Seq#Index(t#Z#0, i#5)): DatatypeType } 
                  LitInt(0) <= i#5 && i#5 < Seq#Length(t#Z#0)
                     ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                      $Unbox(Seq#Index(t#Z#0, i#5)): DatatypeType, 
                      $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#5)): DatatypeType)));
            assume TestModule8.G.GTuple_q(grammar#0)
               ==> 
              Seq#Length(t#Z#0) == Seq#Length(TestModule8.G.t(grammar#0))
               ==> (forall i#5: int :: 
                { $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#5)): DatatypeType } 
                  { $Unbox(Seq#Index(t#Z#0, i#5)): DatatypeType } 
                LitInt(0) <= i#5
                   ==> 
                  i#5 < Seq#Length(t#Z#0)
                   ==> TestModule8.__default.ValInGrammar#canCall($Unbox(Seq#Index(t#Z#0, i#5)): DatatypeType, 
                    $Unbox(Seq#Index(TestModule8.G.t(grammar#0), i#5)): DatatypeType));
            // CheckWellformedWithResult: any expression
            assume $Is(TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, val#0, grammar#0), 
              TBool);
            return;
        }
        else if (val#0 == #TestModule8.V.VCase(_mcc#2#0, _mcc#3#0))
        {
            assume LitInt(0) <= _mcc#2#0 && _mcc#2#0 < 18446744073709551616;
            assume $Is(_mcc#3#0, Tclass.TestModule8.V());
            havoc val#Z#0;
            assume {:id "id279"} let#0#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.TestModule8.V());
            assume {:id "id280"} val#Z#0 == let#0#0#0;
            havoc c#Z#0;
            assume {:id "id281"} let#1#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass.TestModule8.uint64());
            assume {:id "id282"} c#Z#0 == let#1#0#0;
            if (TestModule8.G.GTaggedUnion_q(grammar#0))
            {
                assert {:id "id283"} TestModule8.G.GTaggedUnion_q(grammar#0);
            }

            if (TestModule8.G.GTaggedUnion_q(grammar#0)
               && c#Z#0 < Seq#Length(TestModule8.G.cases(grammar#0)))
            {
                ##val#0 := val#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##val#0, Tclass.TestModule8.V(), $Heap);
                assert {:id "id284"} TestModule8.G.GTaggedUnion_q(grammar#0);
                assert {:id "id285"} 0 <= c#Z#0 && c#Z#0 < Seq#Length(TestModule8.G.cases(grammar#0));
                ##grammar#0 := $Unbox(Seq#Index(TestModule8.G.cases(grammar#0), c#Z#0)): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##grammar#0, Tclass.TestModule8.G(), $Heap);
                assert {:id "id286"} DtRank(##val#0) < DtRank(val#0)
                   || (DtRank(##val#0) == DtRank(val#0) && DtRank(##grammar#0) < DtRank(grammar#0));
                assume TestModule8.__default.ValInGrammar#canCall(val#Z#0, $Unbox(Seq#Index(TestModule8.G.cases(grammar#0), c#Z#0)): DatatypeType);
            }

            assume {:id "id287"} TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, val#0, grammar#0)
               == (
                TestModule8.G.GTaggedUnion_q(grammar#0)
                 && c#Z#0 < Seq#Length(TestModule8.G.cases(grammar#0))
                 && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  val#Z#0, 
                  $Unbox(Seq#Index(TestModule8.G.cases(grammar#0), c#Z#0)): DatatypeType));
            assume TestModule8.G.GTaggedUnion_q(grammar#0)
               ==> 
              c#Z#0 < Seq#Length(TestModule8.G.cases(grammar#0))
               ==> TestModule8.__default.ValInGrammar#canCall(val#Z#0, $Unbox(Seq#Index(TestModule8.G.cases(grammar#0), c#Z#0)): DatatypeType);
            // CheckWellformedWithResult: any expression
            assume $Is(TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, val#0, grammar#0), 
              TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for TestModule8._default.EndPoint_grammar
function TestModule8.__default.EndPoint__grammar() : DatatypeType
uses {
// consequence axiom for TestModule8.__default.EndPoint__grammar
axiom 1 <= $FunctionContextHeight
   ==> 
  TestModule8.__default.EndPoint__grammar#canCall() || 1 < $FunctionContextHeight
   ==> $Is(TestModule8.__default.EndPoint__grammar(), Tclass.TestModule8.G());
// definition axiom for TestModule8.__default.EndPoint__grammar (revealed)
axiom {:id "id297"} 1 <= $FunctionContextHeight
   ==> 
  TestModule8.__default.EndPoint__grammar#canCall() || 1 < $FunctionContextHeight
   ==> TestModule8.__default.EndPoint__grammar() == Lit(#TestModule8.G.GUint64());
// definition axiom for TestModule8.__default.EndPoint__grammar for all literals (revealed)
axiom {:id "id298"} 1 <= $FunctionContextHeight
   ==> 
  TestModule8.__default.EndPoint__grammar#canCall() || 1 < $FunctionContextHeight
   ==> TestModule8.__default.EndPoint__grammar() == Lit(#TestModule8.G.GUint64());
}

function TestModule8.__default.EndPoint__grammar#canCall() : bool;

function TestModule8.__default.EndPoint__grammar#requires() : bool
uses {
// #requires axiom for TestModule8.__default.EndPoint__grammar
axiom TestModule8.__default.EndPoint__grammar#requires() == true;
}

procedure {:verboseName "TestModule8.EndPoint_grammar (well-formedness)"} CheckWellformed$$TestModule8.__default.EndPoint__grammar();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for TestModule8._default.CRequest_grammar
function TestModule8.__default.CRequest__grammar() : DatatypeType
uses {
// consequence axiom for TestModule8.__default.CRequest__grammar
axiom 2 <= $FunctionContextHeight
   ==> 
  TestModule8.__default.CRequest__grammar#canCall() || 2 < $FunctionContextHeight
   ==> $Is(TestModule8.__default.CRequest__grammar(), Tclass.TestModule8.G());
// definition axiom for TestModule8.__default.CRequest__grammar (revealed)
axiom {:id "id300"} 2 <= $FunctionContextHeight
   ==> 
  TestModule8.__default.CRequest__grammar#canCall() || 2 < $FunctionContextHeight
   ==> TestModule8.__default.EndPoint__grammar#canCall()
     && TestModule8.__default.CAppMessage__grammar#canCall()
     && TestModule8.__default.CRequest__grammar()
       == Lit(#TestModule8.G.GTaggedUnion(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                $Box(Lit(#TestModule8.G.GTuple(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(Lit(TestModule8.__default.EndPoint__grammar()))), 
                            $Box(Lit(#TestModule8.G.GUint64()))), 
                          $Box(Lit(TestModule8.__default.CAppMessage__grammar())))))))), 
              $Box(Lit(#TestModule8.G.GUint64()))))));
// definition axiom for TestModule8.__default.CRequest__grammar for all literals (revealed)
axiom {:id "id301"} 2 <= $FunctionContextHeight
   ==> 
  TestModule8.__default.CRequest__grammar#canCall() || 2 < $FunctionContextHeight
   ==> TestModule8.__default.EndPoint__grammar#canCall()
     && TestModule8.__default.CAppMessage__grammar#canCall()
     && TestModule8.__default.CRequest__grammar()
       == Lit(#TestModule8.G.GTaggedUnion(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                $Box(Lit(#TestModule8.G.GTuple(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(Lit(TestModule8.__default.EndPoint__grammar()))), 
                            $Box(Lit(#TestModule8.G.GUint64()))), 
                          $Box(Lit(TestModule8.__default.CAppMessage__grammar())))))))), 
              $Box(Lit(#TestModule8.G.GUint64()))))));
}

function TestModule8.__default.CRequest__grammar#canCall() : bool;

function TestModule8.__default.CRequest__grammar#requires() : bool
uses {
// #requires axiom for TestModule8.__default.CRequest__grammar
axiom TestModule8.__default.CRequest__grammar#requires() == true;
}

procedure {:verboseName "TestModule8.CRequest_grammar (well-formedness)"} CheckWellformed$$TestModule8.__default.CRequest__grammar();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for TestModule8._default.parse_EndPoint
function TestModule8.__default.parse__EndPoint(val#0: DatatypeType) : Box
uses {
// consequence axiom for TestModule8.__default.parse__EndPoint
axiom 3 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    { TestModule8.__default.parse__EndPoint(val#0) } 
    TestModule8.__default.parse__EndPoint#canCall(val#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
            val#0, 
            Lit(TestModule8.__default.EndPoint__grammar())))
       ==> $IsBox(TestModule8.__default.parse__EndPoint(val#0), Tclass.TestModule8.EndPoint()));
// alloc consequence axiom for TestModule8.__default.parse__EndPoint
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, val#0: DatatypeType :: 
    { $IsAllocBox(TestModule8.__default.parse__EndPoint(val#0), 
        Tclass.TestModule8.EndPoint(), 
        $Heap) } 
    (TestModule8.__default.parse__EndPoint#canCall(val#0)
           || (3 < $FunctionContextHeight
             && 
            $Is(val#0, Tclass.TestModule8.V())
             && $IsAlloc(val#0, Tclass.TestModule8.V(), $Heap)
             && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              val#0, 
              Lit(TestModule8.__default.EndPoint__grammar()))))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(TestModule8.__default.parse__EndPoint(val#0), 
        Tclass.TestModule8.EndPoint(), 
        $Heap));
}

function TestModule8.__default.parse__EndPoint#canCall(val#0: DatatypeType) : bool;

function Tclass.TestModule8.EndPoint() : Ty;

function TestModule8.__default.parse__EndPoint#requires(DatatypeType) : bool;

// #requires axiom for TestModule8.__default.parse__EndPoint
axiom (forall val#0: DatatypeType :: 
  { TestModule8.__default.parse__EndPoint#requires(val#0) } 
  $Is(val#0, Tclass.TestModule8.V())
     ==> TestModule8.__default.parse__EndPoint#requires(val#0)
       == TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.EndPoint__grammar())));

procedure {:verboseName "TestModule8.parse_EndPoint (well-formedness)"} CheckWellformed$$TestModule8.__default.parse__EndPoint(val#0: DatatypeType where $Is(val#0, Tclass.TestModule8.V()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for TestModule8._default.CAppMessage_grammar
function TestModule8.__default.CAppMessage__grammar() : DatatypeType
uses {
// consequence axiom for TestModule8.__default.CAppMessage__grammar
axiom 1 <= $FunctionContextHeight
   ==> 
  TestModule8.__default.CAppMessage__grammar#canCall()
     || 1 < $FunctionContextHeight
   ==> $Is(TestModule8.__default.CAppMessage__grammar(), Tclass.TestModule8.G());
// definition axiom for TestModule8.__default.CAppMessage__grammar (revealed)
axiom {:id "id304"} 1 <= $FunctionContextHeight
   ==> 
  TestModule8.__default.CAppMessage__grammar#canCall()
     || 1 < $FunctionContextHeight
   ==> TestModule8.__default.CAppMessage__grammar()
     == Lit(#TestModule8.G.GTaggedUnion(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(Lit(#TestModule8.G.GUint64()))), 
              $Box(Lit(#TestModule8.G.GUint64()))), 
            $Box(Lit(#TestModule8.G.GUint64()))))));
// definition axiom for TestModule8.__default.CAppMessage__grammar for all literals (revealed)
axiom {:id "id305"} 1 <= $FunctionContextHeight
   ==> 
  TestModule8.__default.CAppMessage__grammar#canCall()
     || 1 < $FunctionContextHeight
   ==> TestModule8.__default.CAppMessage__grammar()
     == Lit(#TestModule8.G.GTaggedUnion(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(Lit(#TestModule8.G.GUint64()))), 
              $Box(Lit(#TestModule8.G.GUint64()))), 
            $Box(Lit(#TestModule8.G.GUint64()))))));
}

function TestModule8.__default.CAppMessage__grammar#canCall() : bool;

function TestModule8.__default.CAppMessage__grammar#requires() : bool
uses {
// #requires axiom for TestModule8.__default.CAppMessage__grammar
axiom TestModule8.__default.CAppMessage__grammar#requires() == true;
}

procedure {:verboseName "TestModule8.CAppMessage_grammar (well-formedness)"} CheckWellformed$$TestModule8.__default.CAppMessage__grammar();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for TestModule8._default.parse_AppMessage
function TestModule8.__default.parse__AppMessage(val#0: DatatypeType) : Box
uses {
// consequence axiom for TestModule8.__default.parse__AppMessage
axiom 3 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    { TestModule8.__default.parse__AppMessage(val#0) } 
    TestModule8.__default.parse__AppMessage#canCall(val#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
            val#0, 
            Lit(TestModule8.__default.CAppMessage__grammar())))
       ==> $IsBox(TestModule8.__default.parse__AppMessage(val#0), Tclass.TestModule8.CAppMessage()));
// alloc consequence axiom for TestModule8.__default.parse__AppMessage
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, val#0: DatatypeType :: 
    { $IsAllocBox(TestModule8.__default.parse__AppMessage(val#0), 
        Tclass.TestModule8.CAppMessage(), 
        $Heap) } 
    (TestModule8.__default.parse__AppMessage#canCall(val#0)
           || (3 < $FunctionContextHeight
             && 
            $Is(val#0, Tclass.TestModule8.V())
             && $IsAlloc(val#0, Tclass.TestModule8.V(), $Heap)
             && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              val#0, 
              Lit(TestModule8.__default.CAppMessage__grammar()))))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(TestModule8.__default.parse__AppMessage(val#0), 
        Tclass.TestModule8.CAppMessage(), 
        $Heap));
}

function TestModule8.__default.parse__AppMessage#canCall(val#0: DatatypeType) : bool;

function Tclass.TestModule8.CAppMessage() : Ty;

function TestModule8.__default.parse__AppMessage#requires(DatatypeType) : bool;

// #requires axiom for TestModule8.__default.parse__AppMessage
axiom (forall val#0: DatatypeType :: 
  { TestModule8.__default.parse__AppMessage#requires(val#0) } 
  $Is(val#0, Tclass.TestModule8.V())
     ==> TestModule8.__default.parse__AppMessage#requires(val#0)
       == TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CAppMessage__grammar())));

procedure {:verboseName "TestModule8.parse_AppMessage (well-formedness)"} CheckWellformed$$TestModule8.__default.parse__AppMessage(val#0: DatatypeType where $Is(val#0, Tclass.TestModule8.V()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for TestModule8._default.parse_Request1
function TestModule8.__default.parse__Request1(val#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for TestModule8.__default.parse__Request1
axiom 4 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    { TestModule8.__default.parse__Request1(val#0) } 
    TestModule8.__default.parse__Request1#canCall(val#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
            val#0, 
            Lit(TestModule8.__default.CRequest__grammar())))
       ==> $Is(TestModule8.__default.parse__Request1(val#0), Tclass.TestModule8.CRequest()));
// alloc consequence axiom for TestModule8.__default.parse__Request1
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, val#0: DatatypeType :: 
    { $IsAlloc(TestModule8.__default.parse__Request1(val#0), 
        Tclass.TestModule8.CRequest(), 
        $Heap) } 
    (TestModule8.__default.parse__Request1#canCall(val#0)
           || (4 < $FunctionContextHeight
             && 
            $Is(val#0, Tclass.TestModule8.V())
             && $IsAlloc(val#0, Tclass.TestModule8.V(), $Heap)
             && TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
              val#0, 
              Lit(TestModule8.__default.CRequest__grammar()))))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(TestModule8.__default.parse__Request1(val#0), 
        Tclass.TestModule8.CRequest(), 
        $Heap));
// definition axiom for TestModule8.__default.parse__Request1 (revealed)
axiom {:id "id308"} 4 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    { TestModule8.__default.parse__Request1(val#0) } 
    TestModule8.__default.parse__Request1#canCall(val#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
            val#0, 
            Lit(TestModule8.__default.CRequest__grammar())))
       ==> (TestModule8.V.c(val#0) == LitInt(0)
           ==> TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType)
             && TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType))
         && TestModule8.__default.parse__Request1(val#0)
           == (if TestModule8.V.c(val#0) == LitInt(0)
             then (var ep#0 := TestModule8.__default.parse__EndPoint($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType); 
              #TestModule8.CRequest.CRequest(ep#0, 
                TestModule8.V.u($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType), 
                TestModule8.__default.parse__AppMessage($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType)))
             else #TestModule8.CRequest.CRequestNoOp()));
// definition axiom for TestModule8.__default.parse__Request1 for all literals (revealed)
axiom {:id "id309"} 4 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    {:weight 3} { TestModule8.__default.parse__Request1(Lit(val#0)) } 
    TestModule8.__default.parse__Request1#canCall(Lit(val#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && Lit(TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
              Lit(val#0), 
              Lit(TestModule8.__default.CRequest__grammar()))))
       ==> (LitInt(TestModule8.V.c(Lit(val#0))) == LitInt(0)
           ==> TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(0))): DatatypeType)
             && TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(2))): DatatypeType))
         && TestModule8.__default.parse__Request1(Lit(val#0))
           == (if LitInt(TestModule8.V.c(Lit(val#0))) == LitInt(0)
             then (var ep#1 := TestModule8.__default.parse__EndPoint($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(0))): DatatypeType); 
              #TestModule8.CRequest.CRequest(ep#1, 
                TestModule8.V.u($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(1))): DatatypeType), 
                TestModule8.__default.parse__AppMessage($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(2))): DatatypeType)))
             else #TestModule8.CRequest.CRequestNoOp()));
}

function TestModule8.__default.parse__Request1#canCall(val#0: DatatypeType) : bool;

function Tclass.TestModule8.CRequest() : Ty
uses {
// Tclass.TestModule8.CRequest Tag
axiom Tag(Tclass.TestModule8.CRequest()) == Tagclass.TestModule8.CRequest
   && TagFamily(Tclass.TestModule8.CRequest()) == tytagFamily$CRequest;
}

const unique Tagclass.TestModule8.CRequest: TyTag;

// Box/unbox axiom for Tclass.TestModule8.CRequest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule8.CRequest()) } 
  $IsBox(bx, Tclass.TestModule8.CRequest())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TestModule8.CRequest()));

function TestModule8.__default.parse__Request1#requires(DatatypeType) : bool;

// #requires axiom for TestModule8.__default.parse__Request1
axiom (forall val#0: DatatypeType :: 
  { TestModule8.__default.parse__Request1#requires(val#0) } 
  $Is(val#0, Tclass.TestModule8.V())
     ==> TestModule8.__default.parse__Request1#requires(val#0)
       == TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CRequest__grammar())));

procedure {:verboseName "TestModule8.parse_Request1 (well-formedness)"} CheckWellformed$$TestModule8.__default.parse__Request1(val#0: DatatypeType where $Is(val#0, Tclass.TestModule8.V()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestModule8.parse_Request1 (well-formedness)"} CheckWellformed$$TestModule8.__default.parse__Request1(val#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##val#0: DatatypeType;
  var ##grammar#0: DatatypeType;
  var newtype$check#0: int;
  var ep#Z#0: Box;
  var let#0#0#0: Box;
  var ##val#1: DatatypeType;
  var ##val#2: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_TestModule8._default.ValInGrammar
       == $LS(BaseFuel_TestModule8._default.ValInGrammar);
    assume StartFuelAssert_TestModule8._default.ValInGrammar
       == $LS($LS(BaseFuel_TestModule8._default.ValInGrammar));
    assume AsFuelBottom(BaseFuel_TestModule8._default.ValInGrammar)
       == BaseFuel_TestModule8._default.ValInGrammar;
    // Check well-formedness of preconditions, and then assume them
    ##val#0 := val#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##val#0, Tclass.TestModule8.V(), $Heap);
    assume TestModule8.__default.CRequest__grammar#canCall();
    ##grammar#0 := Lit(TestModule8.__default.CRequest__grammar());
    // assume allocatedness for argument to function
    assume $IsAlloc(##grammar#0, Tclass.TestModule8.G(), $Heap);
    assume TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()));
    assume {:id "id310"} TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
      val#0, 
      Lit(TestModule8.__default.CRequest__grammar()));
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(TestModule8.__default.parse__Request1(val#0), Tclass.TestModule8.CRequest());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id311"} TestModule8.V.VCase_q(val#0);
        newtype$check#0 := LitInt(0);
        assert {:id "id312"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 18446744073709551616;
        if (TestModule8.V.c(val#0) == LitInt(0))
        {
            havoc ep#Z#0;
            assert {:id "id313"} TestModule8.V.VCase_q(val#0);
            assert {:id "id314"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
            assert {:id "id315"} 0 <= LitInt(0)
               && LitInt(0) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
            ##val#1 := $Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#1, Tclass.TestModule8.V(), $Heap);
            assert {:id "id316"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (TestModule8.V.VUint64_q(##val#1)
                   ==> Lit(TestModule8.G.GUint64_q(Lit(TestModule8.__default.EndPoint__grammar()))));
            assert {:id "id317"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  TestModule8.V.VTuple_q(##val#1)
                   ==> (var t#0 := TestModule8.V.t(##val#1); 
                    Lit(TestModule8.G.GTuple_q(Lit(TestModule8.__default.EndPoint__grammar())))));
            assert {:id "id318"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  TestModule8.V.VTuple_q(##val#1)
                   ==> (var t#0 := TestModule8.V.t(##val#1); 
                    Seq#Length(t#0)
                       == Seq#Length(Lit(TestModule8.G.t(Lit(TestModule8.__default.EndPoint__grammar()))))));
            assert {:id "id319"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  TestModule8.V.VTuple_q(##val#1)
                   ==> (var t#0 := TestModule8.V.t(##val#1); 
                    (forall i#0: int :: 
                      { $Unbox(Seq#Index(TestModule8.G.t(TestModule8.__default.EndPoint__grammar()), i#0)): DatatypeType } 
                        { $Unbox(Seq#Index(t#0, i#0)): DatatypeType } 
                      LitInt(0) <= i#0 && i#0 < Seq#Length(t#0)
                         ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                          $Unbox(Seq#Index(t#0, i#0)): DatatypeType, 
                          $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(TestModule8.__default.EndPoint__grammar()))), i#0)): DatatypeType))));
            assert {:id "id320"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#1)
                   ==> (var val#1 := TestModule8.V.val(##val#1); 
                    (var c#0 := TestModule8.V.c(##val#1); 
                      Lit(TestModule8.G.GTaggedUnion_q(Lit(TestModule8.__default.EndPoint__grammar()))))));
            assert {:id "id321"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#1)
                   ==> (var val#1 := TestModule8.V.val(##val#1); 
                    (var c#0 := TestModule8.V.c(##val#1); 
                      c#0
                         < Seq#Length(Lit(TestModule8.G.cases(Lit(TestModule8.__default.EndPoint__grammar())))))));
            assert {:id "id322"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#1)
                   ==> (var val#1 := TestModule8.V.val(##val#1); 
                    (var c#0 := TestModule8.V.c(##val#1); 
                      TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                        val#1, 
                        $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(TestModule8.__default.EndPoint__grammar()))), c#0)): DatatypeType))));
            assume TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
              ##val#1, 
              Lit(TestModule8.__default.EndPoint__grammar()));
            assume TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
            assume {:id "id323"} let#0#0#0
               == TestModule8.__default.parse__EndPoint($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
            assume TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0#0#0, Tclass.TestModule8.EndPoint());
            assume {:id "id324"} ep#Z#0 == let#0#0#0;
            assert {:id "id325"} TestModule8.V.VCase_q(val#0);
            assert {:id "id326"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
            assert {:id "id327"} 0 <= LitInt(1)
               && LitInt(1) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
            assert {:id "id328"} TestModule8.V.VUint64_q($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType);
            assert {:id "id329"} TestModule8.V.VCase_q(val#0);
            assert {:id "id330"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
            assert {:id "id331"} 0 <= LitInt(2)
               && LitInt(2) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
            ##val#2 := $Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#2, Tclass.TestModule8.V(), $Heap);
            assert {:id "id332"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (TestModule8.V.VUint64_q(##val#2)
                   ==> Lit(TestModule8.G.GUint64_q(Lit(TestModule8.__default.CAppMessage__grammar()))));
            assert {:id "id333"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  TestModule8.V.VTuple_q(##val#2)
                   ==> (var t#2 := TestModule8.V.t(##val#2); 
                    Lit(TestModule8.G.GTuple_q(Lit(TestModule8.__default.CAppMessage__grammar())))));
            assert {:id "id334"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  TestModule8.V.VTuple_q(##val#2)
                   ==> (var t#2 := TestModule8.V.t(##val#2); 
                    Seq#Length(t#2)
                       == Seq#Length(Lit(TestModule8.G.t(Lit(TestModule8.__default.CAppMessage__grammar()))))));
            assert {:id "id335"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  TestModule8.V.VTuple_q(##val#2)
                   ==> (var t#2 := TestModule8.V.t(##val#2); 
                    (forall i#2: int :: 
                      { $Unbox(Seq#Index(TestModule8.G.t(TestModule8.__default.CAppMessage__grammar()), i#2)): DatatypeType } 
                        { $Unbox(Seq#Index(t#2, i#2)): DatatypeType } 
                      LitInt(0) <= i#2 && i#2 < Seq#Length(t#2)
                         ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                          $Unbox(Seq#Index(t#2, i#2)): DatatypeType, 
                          $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(TestModule8.__default.CAppMessage__grammar()))), i#2)): DatatypeType))));
            assert {:id "id336"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#2)
                   ==> (var val#3 := TestModule8.V.val(##val#2); 
                    (var c#2 := TestModule8.V.c(##val#2); 
                      Lit(TestModule8.G.GTaggedUnion_q(Lit(TestModule8.__default.CAppMessage__grammar()))))));
            assert {:id "id337"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#2)
                   ==> (var val#3 := TestModule8.V.val(##val#2); 
                    (var c#2 := TestModule8.V.c(##val#2); 
                      c#2
                         < Seq#Length(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CAppMessage__grammar())))))));
            assert {:id "id338"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#2)
                   ==> (var val#3 := TestModule8.V.val(##val#2); 
                    (var c#2 := TestModule8.V.c(##val#2); 
                      TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                        val#3, 
                        $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CAppMessage__grammar()))), c#2)): DatatypeType))));
            assume TestModule8.__default.ValInGrammar(StartFuel_TestModule8._default.ValInGrammar, 
              ##val#2, 
              Lit(TestModule8.__default.CAppMessage__grammar()));
            assume TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType);
            assume {:id "id339"} TestModule8.__default.parse__Request1(val#0)
               == #TestModule8.CRequest.CRequest(ep#Z#0, 
                TestModule8.V.u($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType), 
                TestModule8.__default.parse__AppMessage($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType));
            assume TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType);
            // CheckWellformedWithResult: any expression
            assume $Is(TestModule8.__default.parse__Request1(val#0), Tclass.TestModule8.CRequest());
            return;
        }
        else
        {
            assume {:id "id340"} TestModule8.__default.parse__Request1(val#0)
               == Lit(#TestModule8.CRequest.CRequestNoOp());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(TestModule8.__default.parse__Request1(val#0), Tclass.TestModule8.CRequest());
            return;
        }

        assume false;
    }
}



// function declaration for TestModule8._default.parse_Request2
function TestModule8.__default.parse__Request2(val#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for TestModule8.__default.parse__Request2
axiom 4 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    { TestModule8.__default.parse__Request2(val#0) } 
    TestModule8.__default.parse__Request2#canCall(val#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
            val#0, 
            Lit(TestModule8.__default.CRequest__grammar())))
       ==> $Is(TestModule8.__default.parse__Request2(val#0), Tclass.TestModule8.CRequest()));
// alloc consequence axiom for TestModule8.__default.parse__Request2
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, val#0: DatatypeType :: 
    { $IsAlloc(TestModule8.__default.parse__Request2(val#0), 
        Tclass.TestModule8.CRequest(), 
        $Heap) } 
    (TestModule8.__default.parse__Request2#canCall(val#0)
           || (4 < $FunctionContextHeight
             && 
            $Is(val#0, Tclass.TestModule8.V())
             && $IsAlloc(val#0, Tclass.TestModule8.V(), $Heap)
             && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              val#0, 
              Lit(TestModule8.__default.CRequest__grammar()))))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(TestModule8.__default.parse__Request2(val#0), 
        Tclass.TestModule8.CRequest(), 
        $Heap));
// definition axiom for TestModule8.__default.parse__Request2 (revealed)
axiom {:id "id341"} 4 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    { TestModule8.__default.parse__Request2(val#0) } 
    TestModule8.__default.parse__Request2#canCall(val#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
            val#0, 
            Lit(TestModule8.__default.CRequest__grammar())))
       ==> (TestModule8.V.c(val#0) == LitInt(0)
           ==> TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType)
             && TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType))
         && TestModule8.__default.parse__Request2(val#0)
           == (if TestModule8.V.c(val#0) == LitInt(0)
             then (var ep#0 := TestModule8.__default.parse__EndPoint($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType); 
              #TestModule8.CRequest.CRequest(ep#0, 
                TestModule8.V.u($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType), 
                TestModule8.__default.parse__AppMessage($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType)))
             else #TestModule8.CRequest.CRequestNoOp()));
// definition axiom for TestModule8.__default.parse__Request2 for all literals (revealed)
axiom {:id "id342"} 4 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    {:weight 3} { TestModule8.__default.parse__Request2(Lit(val#0)) } 
    TestModule8.__default.parse__Request2#canCall(Lit(val#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && Lit(TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              Lit(val#0), 
              Lit(TestModule8.__default.CRequest__grammar()))))
       ==> (LitInt(TestModule8.V.c(Lit(val#0))) == LitInt(0)
           ==> TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(0))): DatatypeType)
             && TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(2))): DatatypeType))
         && TestModule8.__default.parse__Request2(Lit(val#0))
           == (if LitInt(TestModule8.V.c(Lit(val#0))) == LitInt(0)
             then (var ep#1 := TestModule8.__default.parse__EndPoint($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(0))): DatatypeType); 
              #TestModule8.CRequest.CRequest(ep#1, 
                TestModule8.V.u($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(1))): DatatypeType), 
                TestModule8.__default.parse__AppMessage($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(2))): DatatypeType)))
             else #TestModule8.CRequest.CRequestNoOp()));
}

function TestModule8.__default.parse__Request2#canCall(val#0: DatatypeType) : bool;

function TestModule8.__default.parse__Request2#requires(DatatypeType) : bool;

// #requires axiom for TestModule8.__default.parse__Request2
axiom (forall val#0: DatatypeType :: 
  { TestModule8.__default.parse__Request2#requires(val#0) } 
  $Is(val#0, Tclass.TestModule8.V())
     ==> TestModule8.__default.parse__Request2#requires(val#0)
       == TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CRequest__grammar())));

procedure {:verboseName "TestModule8.parse_Request2 (well-formedness)"} CheckWellformed$$TestModule8.__default.parse__Request2(val#0: DatatypeType where $Is(val#0, Tclass.TestModule8.V()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestModule8.parse_Request2 (well-formedness)"} CheckWellformed$$TestModule8.__default.parse__Request2(val#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##val#0: DatatypeType;
  var ##grammar#0: DatatypeType;
  var newtype$check#0: int;
  var ep#Z#0: Box;
  var let#0#0#0: Box;
  var ##val#1: DatatypeType;
  var ##val#2: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_TestModule8._default.ValInGrammar
       == $LS($LS(BaseFuel_TestModule8._default.ValInGrammar));
    assume StartFuelAssert_TestModule8._default.ValInGrammar
       == $LS($LS($LS(BaseFuel_TestModule8._default.ValInGrammar)));
    assume AsFuelBottom(BaseFuel_TestModule8._default.ValInGrammar)
       == BaseFuel_TestModule8._default.ValInGrammar;
    // Check well-formedness of preconditions, and then assume them
    ##val#0 := val#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##val#0, Tclass.TestModule8.V(), $Heap);
    assume TestModule8.__default.CRequest__grammar#canCall();
    ##grammar#0 := Lit(TestModule8.__default.CRequest__grammar());
    // assume allocatedness for argument to function
    assume $IsAlloc(##grammar#0, Tclass.TestModule8.G(), $Heap);
    assume TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()));
    assume {:id "id343"} TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
      val#0, 
      Lit(TestModule8.__default.CRequest__grammar()));
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(TestModule8.__default.parse__Request2(val#0), Tclass.TestModule8.CRequest());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id344"} TestModule8.V.VCase_q(val#0);
        newtype$check#0 := LitInt(0);
        assert {:id "id345"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 18446744073709551616;
        if (TestModule8.V.c(val#0) == LitInt(0))
        {
            havoc ep#Z#0;
            assert {:id "id346"} TestModule8.V.VCase_q(val#0);
            assert {:id "id347"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
            assert {:id "id348"} 0 <= LitInt(0)
               && LitInt(0) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
            ##val#1 := $Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#1, Tclass.TestModule8.V(), $Heap);
            assert {:id "id349"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (TestModule8.V.VUint64_q(##val#1)
                   ==> Lit(TestModule8.G.GUint64_q(Lit(TestModule8.__default.EndPoint__grammar()))));
            assert {:id "id350"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  TestModule8.V.VTuple_q(##val#1)
                   ==> (var t#0 := TestModule8.V.t(##val#1); 
                    Lit(TestModule8.G.GTuple_q(Lit(TestModule8.__default.EndPoint__grammar())))));
            assert {:id "id351"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  TestModule8.V.VTuple_q(##val#1)
                   ==> (var t#0 := TestModule8.V.t(##val#1); 
                    Seq#Length(t#0)
                       == Seq#Length(Lit(TestModule8.G.t(Lit(TestModule8.__default.EndPoint__grammar()))))));
            assert {:id "id352"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  TestModule8.V.VTuple_q(##val#1)
                   ==> (var t#0 := TestModule8.V.t(##val#1); 
                    (forall i#0: int :: 
                      { $Unbox(Seq#Index(TestModule8.G.t(TestModule8.__default.EndPoint__grammar()), i#0)): DatatypeType } 
                        { $Unbox(Seq#Index(t#0, i#0)): DatatypeType } 
                      LitInt(0) <= i#0 && i#0 < Seq#Length(t#0)
                         ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                          $Unbox(Seq#Index(t#0, i#0)): DatatypeType, 
                          $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(TestModule8.__default.EndPoint__grammar()))), i#0)): DatatypeType))));
            assert {:id "id353"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#1)
                   ==> (var val#1 := TestModule8.V.val(##val#1); 
                    (var c#0 := TestModule8.V.c(##val#1); 
                      Lit(TestModule8.G.GTaggedUnion_q(Lit(TestModule8.__default.EndPoint__grammar()))))));
            assert {:id "id354"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#1)
                   ==> (var val#1 := TestModule8.V.val(##val#1); 
                    (var c#0 := TestModule8.V.c(##val#1); 
                      c#0
                         < Seq#Length(Lit(TestModule8.G.cases(Lit(TestModule8.__default.EndPoint__grammar())))))));
            assert {:id "id355"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#1)
                   ==> (var val#1 := TestModule8.V.val(##val#1); 
                    (var c#0 := TestModule8.V.c(##val#1); 
                      TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                        val#1, 
                        $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(TestModule8.__default.EndPoint__grammar()))), c#0)): DatatypeType))));
            assume TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#1, 
              Lit(TestModule8.__default.EndPoint__grammar()));
            assume TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
            assume {:id "id356"} let#0#0#0
               == TestModule8.__default.parse__EndPoint($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
            assume TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0#0#0, Tclass.TestModule8.EndPoint());
            assume {:id "id357"} ep#Z#0 == let#0#0#0;
            assert {:id "id358"} TestModule8.V.VCase_q(val#0);
            assert {:id "id359"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
            assert {:id "id360"} 0 <= LitInt(1)
               && LitInt(1) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
            assert {:id "id361"} TestModule8.V.VUint64_q($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType);
            assert {:id "id362"} TestModule8.V.VCase_q(val#0);
            assert {:id "id363"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
            assert {:id "id364"} 0 <= LitInt(2)
               && LitInt(2) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
            ##val#2 := $Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#2, Tclass.TestModule8.V(), $Heap);
            assert {:id "id365"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (TestModule8.V.VUint64_q(##val#2)
                   ==> Lit(TestModule8.G.GUint64_q(Lit(TestModule8.__default.CAppMessage__grammar()))));
            assert {:id "id366"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  TestModule8.V.VTuple_q(##val#2)
                   ==> (var t#2 := TestModule8.V.t(##val#2); 
                    Lit(TestModule8.G.GTuple_q(Lit(TestModule8.__default.CAppMessage__grammar())))));
            assert {:id "id367"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  TestModule8.V.VTuple_q(##val#2)
                   ==> (var t#2 := TestModule8.V.t(##val#2); 
                    Seq#Length(t#2)
                       == Seq#Length(Lit(TestModule8.G.t(Lit(TestModule8.__default.CAppMessage__grammar()))))));
            assert {:id "id368"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  TestModule8.V.VTuple_q(##val#2)
                   ==> (var t#2 := TestModule8.V.t(##val#2); 
                    (forall i#2: int :: 
                      { $Unbox(Seq#Index(TestModule8.G.t(TestModule8.__default.CAppMessage__grammar()), i#2)): DatatypeType } 
                        { $Unbox(Seq#Index(t#2, i#2)): DatatypeType } 
                      LitInt(0) <= i#2 && i#2 < Seq#Length(t#2)
                         ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                          $Unbox(Seq#Index(t#2, i#2)): DatatypeType, 
                          $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(TestModule8.__default.CAppMessage__grammar()))), i#2)): DatatypeType))));
            assert {:id "id369"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#2)
                   ==> (var val#3 := TestModule8.V.val(##val#2); 
                    (var c#2 := TestModule8.V.c(##val#2); 
                      Lit(TestModule8.G.GTaggedUnion_q(Lit(TestModule8.__default.CAppMessage__grammar()))))));
            assert {:id "id370"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#2)
                   ==> (var val#3 := TestModule8.V.val(##val#2); 
                    (var c#2 := TestModule8.V.c(##val#2); 
                      c#2
                         < Seq#Length(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CAppMessage__grammar())))))));
            assert {:id "id371"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#2)
                   ==> (var val#3 := TestModule8.V.val(##val#2); 
                    (var c#2 := TestModule8.V.c(##val#2); 
                      TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                        val#3, 
                        $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CAppMessage__grammar()))), c#2)): DatatypeType))));
            assume TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#2, 
              Lit(TestModule8.__default.CAppMessage__grammar()));
            assume TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType);
            assume {:id "id372"} TestModule8.__default.parse__Request2(val#0)
               == #TestModule8.CRequest.CRequest(ep#Z#0, 
                TestModule8.V.u($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType), 
                TestModule8.__default.parse__AppMessage($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType));
            assume TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType);
            // CheckWellformedWithResult: any expression
            assume $Is(TestModule8.__default.parse__Request2(val#0), Tclass.TestModule8.CRequest());
            return;
        }
        else
        {
            assume {:id "id373"} TestModule8.__default.parse__Request2(val#0)
               == Lit(#TestModule8.CRequest.CRequestNoOp());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(TestModule8.__default.parse__Request2(val#0), Tclass.TestModule8.CRequest());
            return;
        }

        assume false;
    }
}



// function declaration for TestModule8._default.parse_Request3
function TestModule8.__default.parse__Request3(val#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for TestModule8.__default.parse__Request3
axiom 4 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    { TestModule8.__default.parse__Request3(val#0) } 
    TestModule8.__default.parse__Request3#canCall(val#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
            val#0, 
            Lit(TestModule8.__default.CRequest__grammar())))
       ==> $Is(TestModule8.__default.parse__Request3(val#0), Tclass.TestModule8.CRequest()));
// alloc consequence axiom for TestModule8.__default.parse__Request3
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, val#0: DatatypeType :: 
    { $IsAlloc(TestModule8.__default.parse__Request3(val#0), 
        Tclass.TestModule8.CRequest(), 
        $Heap) } 
    (TestModule8.__default.parse__Request3#canCall(val#0)
           || (4 < $FunctionContextHeight
             && 
            $Is(val#0, Tclass.TestModule8.V())
             && $IsAlloc(val#0, Tclass.TestModule8.V(), $Heap)
             && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              val#0, 
              Lit(TestModule8.__default.CRequest__grammar()))))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(TestModule8.__default.parse__Request3(val#0), 
        Tclass.TestModule8.CRequest(), 
        $Heap));
// definition axiom for TestModule8.__default.parse__Request3 (revealed)
axiom {:id "id374"} 4 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    { TestModule8.__default.parse__Request3(val#0) } 
    TestModule8.__default.parse__Request3#canCall(val#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
            val#0, 
            Lit(TestModule8.__default.CRequest__grammar())))
       ==> (TestModule8.V.c(val#0) == LitInt(0)
           ==> TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType)
             && TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType))
         && TestModule8.__default.parse__Request3(val#0)
           == (if TestModule8.V.c(val#0) == LitInt(0)
             then (var ep#0 := TestModule8.__default.parse__EndPoint($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType); 
              #TestModule8.CRequest.CRequest(ep#0, 
                TestModule8.V.u($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType), 
                TestModule8.__default.parse__AppMessage($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType)))
             else #TestModule8.CRequest.CRequestNoOp()));
// definition axiom for TestModule8.__default.parse__Request3 for all literals (revealed)
axiom {:id "id375"} 4 <= $FunctionContextHeight
   ==> (forall val#0: DatatypeType :: 
    {:weight 3} { TestModule8.__default.parse__Request3(Lit(val#0)) } 
    TestModule8.__default.parse__Request3#canCall(Lit(val#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(val#0, Tclass.TestModule8.V())
           && Lit(TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              Lit(val#0), 
              Lit(TestModule8.__default.CRequest__grammar()))))
       ==> (LitInt(TestModule8.V.c(Lit(val#0))) == LitInt(0)
           ==> TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(0))): DatatypeType)
             && TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(2))): DatatypeType))
         && TestModule8.__default.parse__Request3(Lit(val#0))
           == (if LitInt(TestModule8.V.c(Lit(val#0))) == LitInt(0)
             then (var ep#1 := TestModule8.__default.parse__EndPoint($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(0))): DatatypeType); 
              #TestModule8.CRequest.CRequest(ep#1, 
                TestModule8.V.u($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(1))): DatatypeType), 
                TestModule8.__default.parse__AppMessage($Unbox(Seq#Index(Lit(TestModule8.V.t(Lit(TestModule8.V.val(Lit(val#0))))), LitInt(2))): DatatypeType)))
             else #TestModule8.CRequest.CRequestNoOp()));
}

function TestModule8.__default.parse__Request3#canCall(val#0: DatatypeType) : bool;

function TestModule8.__default.parse__Request3#requires(DatatypeType) : bool;

// #requires axiom for TestModule8.__default.parse__Request3
axiom (forall val#0: DatatypeType :: 
  { TestModule8.__default.parse__Request3#requires(val#0) } 
  $Is(val#0, Tclass.TestModule8.V())
     ==> TestModule8.__default.parse__Request3#requires(val#0)
       == TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CRequest__grammar())));

procedure {:verboseName "TestModule8.parse_Request3 (well-formedness)"} CheckWellformed$$TestModule8.__default.parse__Request3(val#0: DatatypeType where $Is(val#0, Tclass.TestModule8.V()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestModule8.parse_Request3 (well-formedness)"} CheckWellformed$$TestModule8.__default.parse__Request3(val#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##val#0: DatatypeType;
  var ##grammar#0: DatatypeType;
  var newtype$check#0: int;
  var ep#Z#0: Box;
  var let#0#0#0: Box;
  var ##val#1: DatatypeType;
  var ##val#2: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_TestModule8._default.ValInGrammar
       == $LS($LS($LS(BaseFuel_TestModule8._default.ValInGrammar)));
    assume StartFuelAssert_TestModule8._default.ValInGrammar
       == $LS($LS($LS($LS(BaseFuel_TestModule8._default.ValInGrammar))));
    assume AsFuelBottom(BaseFuel_TestModule8._default.ValInGrammar)
       == BaseFuel_TestModule8._default.ValInGrammar;
    // Check well-formedness of preconditions, and then assume them
    ##val#0 := val#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##val#0, Tclass.TestModule8.V(), $Heap);
    assume TestModule8.__default.CRequest__grammar#canCall();
    ##grammar#0 := Lit(TestModule8.__default.CRequest__grammar());
    // assume allocatedness for argument to function
    assume $IsAlloc(##grammar#0, Tclass.TestModule8.G(), $Heap);
    assume TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()));
    assume {:id "id376"} TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
      val#0, 
      Lit(TestModule8.__default.CRequest__grammar()));
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(TestModule8.__default.parse__Request3(val#0), Tclass.TestModule8.CRequest());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id377"} TestModule8.V.VCase_q(val#0);
        newtype$check#0 := LitInt(0);
        assert {:id "id378"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 18446744073709551616;
        if (TestModule8.V.c(val#0) == LitInt(0))
        {
            havoc ep#Z#0;
            assert {:id "id379"} TestModule8.V.VCase_q(val#0);
            assert {:id "id380"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
            assert {:id "id381"} 0 <= LitInt(0)
               && LitInt(0) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
            ##val#1 := $Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#1, Tclass.TestModule8.V(), $Heap);
            assert {:id "id382"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (TestModule8.V.VUint64_q(##val#1)
                   ==> Lit(TestModule8.G.GUint64_q(Lit(TestModule8.__default.EndPoint__grammar()))));
            assert {:id "id383"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  TestModule8.V.VTuple_q(##val#1)
                   ==> (var t#0 := TestModule8.V.t(##val#1); 
                    Lit(TestModule8.G.GTuple_q(Lit(TestModule8.__default.EndPoint__grammar())))));
            assert {:id "id384"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  TestModule8.V.VTuple_q(##val#1)
                   ==> (var t#0 := TestModule8.V.t(##val#1); 
                    Seq#Length(t#0)
                       == Seq#Length(Lit(TestModule8.G.t(Lit(TestModule8.__default.EndPoint__grammar()))))));
            assert {:id "id385"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  TestModule8.V.VTuple_q(##val#1)
                   ==> (var t#0 := TestModule8.V.t(##val#1); 
                    (forall i#0: int :: 
                      { $Unbox(Seq#Index(TestModule8.G.t(TestModule8.__default.EndPoint__grammar()), i#0)): DatatypeType } 
                        { $Unbox(Seq#Index(t#0, i#0)): DatatypeType } 
                      LitInt(0) <= i#0 && i#0 < Seq#Length(t#0)
                         ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                          $Unbox(Seq#Index(t#0, i#0)): DatatypeType, 
                          $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(TestModule8.__default.EndPoint__grammar()))), i#0)): DatatypeType))));
            assert {:id "id386"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#1)
                   ==> (var val#1 := TestModule8.V.val(##val#1); 
                    (var c#0 := TestModule8.V.c(##val#1); 
                      Lit(TestModule8.G.GTaggedUnion_q(Lit(TestModule8.__default.EndPoint__grammar()))))));
            assert {:id "id387"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#1)
                   ==> (var val#1 := TestModule8.V.val(##val#1); 
                    (var c#0 := TestModule8.V.c(##val#1); 
                      c#0
                         < Seq#Length(Lit(TestModule8.G.cases(Lit(TestModule8.__default.EndPoint__grammar())))))));
            assert {:id "id388"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#1, Lit(TestModule8.__default.EndPoint__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#1, 
                  Lit(TestModule8.__default.EndPoint__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#1)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#1)
                   ==> (var val#1 := TestModule8.V.val(##val#1); 
                    (var c#0 := TestModule8.V.c(##val#1); 
                      TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                        val#1, 
                        $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(TestModule8.__default.EndPoint__grammar()))), c#0)): DatatypeType))));
            assume TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#1, 
              Lit(TestModule8.__default.EndPoint__grammar()));
            assume TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
            assume {:id "id389"} let#0#0#0
               == TestModule8.__default.parse__EndPoint($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
            assume TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0#0#0, Tclass.TestModule8.EndPoint());
            assume {:id "id390"} ep#Z#0 == let#0#0#0;
            assert {:id "id391"} TestModule8.V.VCase_q(val#0);
            assert {:id "id392"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
            assert {:id "id393"} 0 <= LitInt(1)
               && LitInt(1) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
            assert {:id "id394"} TestModule8.V.VUint64_q($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType);
            assert {:id "id395"} TestModule8.V.VCase_q(val#0);
            assert {:id "id396"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
            assert {:id "id397"} 0 <= LitInt(2)
               && LitInt(2) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
            ##val#2 := $Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##val#2, Tclass.TestModule8.V(), $Heap);
            assert {:id "id398"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (TestModule8.V.VUint64_q(##val#2)
                   ==> Lit(TestModule8.G.GUint64_q(Lit(TestModule8.__default.CAppMessage__grammar()))));
            assert {:id "id399"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  TestModule8.V.VTuple_q(##val#2)
                   ==> (var t#2 := TestModule8.V.t(##val#2); 
                    Lit(TestModule8.G.GTuple_q(Lit(TestModule8.__default.CAppMessage__grammar())))));
            assert {:id "id400"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  TestModule8.V.VTuple_q(##val#2)
                   ==> (var t#2 := TestModule8.V.t(##val#2); 
                    Seq#Length(t#2)
                       == Seq#Length(Lit(TestModule8.G.t(Lit(TestModule8.__default.CAppMessage__grammar()))))));
            assert {:id "id401"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  TestModule8.V.VTuple_q(##val#2)
                   ==> (var t#2 := TestModule8.V.t(##val#2); 
                    (forall i#2: int :: 
                      { $Unbox(Seq#Index(TestModule8.G.t(TestModule8.__default.CAppMessage__grammar()), i#2)): DatatypeType } 
                        { $Unbox(Seq#Index(t#2, i#2)): DatatypeType } 
                      LitInt(0) <= i#2 && i#2 < Seq#Length(t#2)
                         ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                          $Unbox(Seq#Index(t#2, i#2)): DatatypeType, 
                          $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(TestModule8.__default.CAppMessage__grammar()))), i#2)): DatatypeType))));
            assert {:id "id402"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#2)
                   ==> (var val#3 := TestModule8.V.val(##val#2); 
                    (var c#2 := TestModule8.V.c(##val#2); 
                      Lit(TestModule8.G.GTaggedUnion_q(Lit(TestModule8.__default.CAppMessage__grammar()))))));
            assert {:id "id403"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#2)
                   ==> (var val#3 := TestModule8.V.val(##val#2); 
                    (var c#2 := TestModule8.V.c(##val#2); 
                      c#2
                         < Seq#Length(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CAppMessage__grammar())))))));
            assert {:id "id404"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#2, Lit(TestModule8.__default.CAppMessage__grammar()))
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  ##val#2, 
                  Lit(TestModule8.__default.CAppMessage__grammar()))
                 || (!TestModule8.V.VUint64_q(##val#2)
                   ==> 
                  !TestModule8.V.VTuple_q(##val#2)
                   ==> (var val#3 := TestModule8.V.val(##val#2); 
                    (var c#2 := TestModule8.V.c(##val#2); 
                      TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                        val#3, 
                        $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CAppMessage__grammar()))), c#2)): DatatypeType))));
            assume TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#2, 
              Lit(TestModule8.__default.CAppMessage__grammar()));
            assume TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType);
            assume {:id "id405"} TestModule8.__default.parse__Request3(val#0)
               == #TestModule8.CRequest.CRequest(ep#Z#0, 
                TestModule8.V.u($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType), 
                TestModule8.__default.parse__AppMessage($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType));
            assume TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType);
            // CheckWellformedWithResult: any expression
            assume $Is(TestModule8.__default.parse__Request3(val#0), Tclass.TestModule8.CRequest());
            return;
        }
        else
        {
            assume {:id "id406"} TestModule8.__default.parse__Request3(val#0)
               == Lit(#TestModule8.CRequest.CRequestNoOp());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(TestModule8.__default.parse__Request3(val#0), Tclass.TestModule8.CRequest());
            return;
        }

        assume false;
    }
}



procedure {:verboseName "TestModule8.parse_Request4 (well-formedness)"} CheckWellFormed$$TestModule8.__default.parse__Request4(val#0: DatatypeType
       where $Is(val#0, Tclass.TestModule8.V())
         && $IsAlloc(val#0, Tclass.TestModule8.V(), $Heap)
         && $IsA#TestModule8.V(val#0))
   returns (req#0: DatatypeType
       where $Is(req#0, Tclass.TestModule8.CRequest())
         && $IsAlloc(req#0, Tclass.TestModule8.CRequest(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestModule8.parse_Request4 (call)"} Call$$TestModule8.__default.parse__Request4(val#0: DatatypeType
       where $Is(val#0, Tclass.TestModule8.V())
         && $IsAlloc(val#0, Tclass.TestModule8.V(), $Heap)
         && $IsA#TestModule8.V(val#0))
   returns (req#0: DatatypeType
       where $Is(req#0, Tclass.TestModule8.CRequest())
         && $IsAlloc(req#0, Tclass.TestModule8.CRequest(), $Heap));
  // user-defined preconditions
  requires {:id "id408"} TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()))
     ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CRequest__grammar()))
       || (TestModule8.V.VUint64_q(val#0)
         ==> Lit(TestModule8.G.GUint64_q(Lit(TestModule8.__default.CRequest__grammar()))));
  requires {:id "id409"} TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()))
     ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CRequest__grammar()))
       || (!TestModule8.V.VUint64_q(val#0)
         ==> 
        TestModule8.V.VTuple_q(val#0)
         ==> (var t#0 := TestModule8.V.t(val#0); 
          Lit(TestModule8.G.GTuple_q(Lit(TestModule8.__default.CRequest__grammar())))));
  requires {:id "id410"} TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()))
     ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CRequest__grammar()))
       || (!TestModule8.V.VUint64_q(val#0)
         ==> 
        TestModule8.V.VTuple_q(val#0)
         ==> (var t#0 := TestModule8.V.t(val#0); 
          Seq#Length(t#0)
             == Seq#Length(Lit(TestModule8.G.t(Lit(TestModule8.__default.CRequest__grammar()))))));
  requires {:id "id411"} TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()))
     ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CRequest__grammar()))
       || (!TestModule8.V.VUint64_q(val#0)
         ==> 
        TestModule8.V.VTuple_q(val#0)
         ==> (var t#0 := TestModule8.V.t(val#0); 
          (forall i#0: int :: 
            { $Unbox(Seq#Index(TestModule8.G.t(TestModule8.__default.CRequest__grammar()), i#0)): DatatypeType } 
              { $Unbox(Seq#Index(t#0, i#0)): DatatypeType } 
            LitInt(0) <= i#0 && i#0 < Seq#Length(t#0)
               ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                $Unbox(Seq#Index(t#0, i#0)): DatatypeType, 
                $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(TestModule8.__default.CRequest__grammar()))), i#0)): DatatypeType))));
  requires {:id "id412"} TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()))
     ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CRequest__grammar()))
       || (!TestModule8.V.VUint64_q(val#0)
         ==> 
        !TestModule8.V.VTuple_q(val#0)
         ==> (var val#1 := TestModule8.V.val(val#0); 
          (var c#0 := TestModule8.V.c(val#0); 
            Lit(TestModule8.G.GTaggedUnion_q(Lit(TestModule8.__default.CRequest__grammar()))))));
  requires {:id "id413"} TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()))
     ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CRequest__grammar()))
       || (!TestModule8.V.VUint64_q(val#0)
         ==> 
        !TestModule8.V.VTuple_q(val#0)
         ==> (var val#1 := TestModule8.V.val(val#0); 
          (var c#0 := TestModule8.V.c(val#0); 
            c#0
               < Seq#Length(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CRequest__grammar())))))));
  requires {:id "id414"} TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()))
     ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
        val#0, 
        Lit(TestModule8.__default.CRequest__grammar()))
       || (!TestModule8.V.VUint64_q(val#0)
         ==> 
        !TestModule8.V.VTuple_q(val#0)
         ==> (var val#1 := TestModule8.V.val(val#0); 
          (var c#0 := TestModule8.V.c(val#0); 
            TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              val#1, 
              $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CRequest__grammar()))), c#0)): DatatypeType))));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestModule8.parse_Request4 (correctness)"} Impl$$TestModule8.__default.parse__Request4(val#0: DatatypeType
       where $Is(val#0, Tclass.TestModule8.V())
         && $IsAlloc(val#0, Tclass.TestModule8.V(), $Heap)
         && $IsA#TestModule8.V(val#0))
   returns (defass#req#0: bool, 
    req#0: DatatypeType
       where defass#req#0
         ==> $Is(req#0, Tclass.TestModule8.CRequest())
           && $IsAlloc(req#0, Tclass.TestModule8.CRequest(), $Heap), 
    $_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id415"} TestModule8.__default.ValInGrammar#canCall(val#0, Lit(TestModule8.__default.CRequest__grammar()))
     && 
    TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
      val#0, 
      Lit(TestModule8.__default.CRequest__grammar()))
     && (if TestModule8.V.VUint64_q(val#0)
       then TestModule8.G.GUint64_q(Lit(TestModule8.__default.CRequest__grammar()))
       else (if TestModule8.V.VTuple_q(val#0)
         then (var t#3 := TestModule8.V.t(val#0); 
          TestModule8.G.GTuple_q(Lit(TestModule8.__default.CRequest__grammar()))
             && Seq#Length(t#3)
               == Seq#Length(Lit(TestModule8.G.t(Lit(TestModule8.__default.CRequest__grammar()))))
             && (forall i#3: int :: 
              { $Unbox(Seq#Index(TestModule8.G.t(TestModule8.__default.CRequest__grammar()), i#3)): DatatypeType } 
                { $Unbox(Seq#Index(t#3, i#3)): DatatypeType } 
              LitInt(0) <= i#3 && i#3 < Seq#Length(t#3)
                 ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                  $Unbox(Seq#Index(t#3, i#3)): DatatypeType, 
                  $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(TestModule8.__default.CRequest__grammar()))), i#3)): DatatypeType)))
         else (var val#4 := TestModule8.V.val(val#0); 
          (var c#3 := TestModule8.V.c(val#0); 
            TestModule8.G.GTaggedUnion_q(Lit(TestModule8.__default.CRequest__grammar()))
               && c#3
                 < Seq#Length(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CRequest__grammar()))))
               && TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                val#4, 
                $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CRequest__grammar()))), c#3)): DatatypeType)))));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestModule8.parse_Request4 (correctness)"} Impl$$TestModule8.__default.parse__Request4(val#0: DatatypeType)
   returns (defass#req#0: bool, req#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var defass#ep#0_0: bool;
  var ep#0_0: Box
     where defass#ep#0_0
       ==> $IsBox(ep#0_0, Tclass.TestModule8.EndPoint())
         && $IsAllocBox(ep#0_0, Tclass.TestModule8.EndPoint(), $Heap);
  var ##val#0_0: DatatypeType;
  var ##val#0_1: DatatypeType;

    // AddMethodImpl: parse_Request4, Impl$$TestModule8.__default.parse__Request4
    // initialize fuel constant
    assume StartFuel_TestModule8._default.ValInGrammar
       == $LS($LS(BaseFuel_TestModule8._default.ValInGrammar));
    assume StartFuelAssert_TestModule8._default.ValInGrammar
       == $LS($LS($LS(BaseFuel_TestModule8._default.ValInGrammar)));
    assume AsFuelBottom(BaseFuel_TestModule8._default.ValInGrammar)
       == BaseFuel_TestModule8._default.ValInGrammar;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Fuel.legacy.dfy(365,13)
    assert {:id "id416"} TestModule8.V.VCase_q(val#0);
    newtype$check#0 := LitInt(0);
    assert {:id "id417"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 18446744073709551616;
    assume true;
    if (TestModule8.V.c(val#0) == LitInt(0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Fuel.legacy.dfy(366,24)
        assume true;
        assert {:id "id418"} TestModule8.V.VCase_q(val#0);
        assert {:id "id419"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
        assert {:id "id420"} 0 <= LitInt(0)
           && LitInt(0) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
        ##val#0_0 := $Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType;
        // assume allocatedness for argument to function
        assume $IsAlloc(##val#0_0, Tclass.TestModule8.V(), $Heap);
        assert {:id "id421"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_0, Lit(TestModule8.__default.EndPoint__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_0, 
              Lit(TestModule8.__default.EndPoint__grammar()))
             || (TestModule8.V.VUint64_q(##val#0_0)
               ==> Lit(TestModule8.G.GUint64_q(Lit(TestModule8.__default.EndPoint__grammar()))));
        assert {:id "id422"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_0, Lit(TestModule8.__default.EndPoint__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_0, 
              Lit(TestModule8.__default.EndPoint__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_0)
               ==> 
              TestModule8.V.VTuple_q(##val#0_0)
               ==> (var t#0_0 := TestModule8.V.t(##val#0_0); 
                Lit(TestModule8.G.GTuple_q(Lit(TestModule8.__default.EndPoint__grammar())))));
        assert {:id "id423"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_0, Lit(TestModule8.__default.EndPoint__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_0, 
              Lit(TestModule8.__default.EndPoint__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_0)
               ==> 
              TestModule8.V.VTuple_q(##val#0_0)
               ==> (var t#0_0 := TestModule8.V.t(##val#0_0); 
                Seq#Length(t#0_0)
                   == Seq#Length(Lit(TestModule8.G.t(Lit(TestModule8.__default.EndPoint__grammar()))))));
        assert {:id "id424"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_0, Lit(TestModule8.__default.EndPoint__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_0, 
              Lit(TestModule8.__default.EndPoint__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_0)
               ==> 
              TestModule8.V.VTuple_q(##val#0_0)
               ==> (var t#0_0 := TestModule8.V.t(##val#0_0); 
                (forall i#0_0: int :: 
                  { $Unbox(Seq#Index(TestModule8.G.t(TestModule8.__default.EndPoint__grammar()), i#0_0)): DatatypeType } 
                    { $Unbox(Seq#Index(t#0_0, i#0_0)): DatatypeType } 
                  LitInt(0) <= i#0_0 && i#0_0 < Seq#Length(t#0_0)
                     ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                      $Unbox(Seq#Index(t#0_0, i#0_0)): DatatypeType, 
                      $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(TestModule8.__default.EndPoint__grammar()))), i#0_0)): DatatypeType))));
        assert {:id "id425"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_0, Lit(TestModule8.__default.EndPoint__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_0, 
              Lit(TestModule8.__default.EndPoint__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_0)
               ==> 
              !TestModule8.V.VTuple_q(##val#0_0)
               ==> (var val#0_0 := TestModule8.V.val(##val#0_0); 
                (var c#0_0 := TestModule8.V.c(##val#0_0); 
                  Lit(TestModule8.G.GTaggedUnion_q(Lit(TestModule8.__default.EndPoint__grammar()))))));
        assert {:id "id426"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_0, Lit(TestModule8.__default.EndPoint__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_0, 
              Lit(TestModule8.__default.EndPoint__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_0)
               ==> 
              !TestModule8.V.VTuple_q(##val#0_0)
               ==> (var val#0_0 := TestModule8.V.val(##val#0_0); 
                (var c#0_0 := TestModule8.V.c(##val#0_0); 
                  c#0_0
                     < Seq#Length(Lit(TestModule8.G.cases(Lit(TestModule8.__default.EndPoint__grammar())))))));
        assert {:id "id427"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_0, Lit(TestModule8.__default.EndPoint__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_0, 
              Lit(TestModule8.__default.EndPoint__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_0)
               ==> 
              !TestModule8.V.VTuple_q(##val#0_0)
               ==> (var val#0_0 := TestModule8.V.val(##val#0_0); 
                (var c#0_0 := TestModule8.V.c(##val#0_0); 
                  TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                    val#0_0, 
                    $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(TestModule8.__default.EndPoint__grammar()))), c#0_0)): DatatypeType))));
        assume TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
          ##val#0_0, 
          Lit(TestModule8.__default.EndPoint__grammar()));
        assume TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
        assume TestModule8.__default.parse__EndPoint#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
        ep#0_0 := TestModule8.__default.parse__EndPoint($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(0))): DatatypeType);
        defass#ep#0_0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Fuel.legacy.dfy(367,21)
        assume true;
        assert {:id "id429"} defass#ep#0_0;
        assert {:id "id430"} TestModule8.V.VCase_q(val#0);
        assert {:id "id431"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
        assert {:id "id432"} 0 <= LitInt(1)
           && LitInt(1) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
        assert {:id "id433"} TestModule8.V.VUint64_q($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType);
        assert {:id "id434"} TestModule8.V.VCase_q(val#0);
        assert {:id "id435"} TestModule8.V.VTuple_q(TestModule8.V.val(val#0));
        assert {:id "id436"} 0 <= LitInt(2)
           && LitInt(2) < Seq#Length(TestModule8.V.t(TestModule8.V.val(val#0)));
        ##val#0_1 := $Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType;
        // assume allocatedness for argument to function
        assume $IsAlloc(##val#0_1, Tclass.TestModule8.V(), $Heap);
        assert {:id "id437"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_1, Lit(TestModule8.__default.CAppMessage__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_1, 
              Lit(TestModule8.__default.CAppMessage__grammar()))
             || (TestModule8.V.VUint64_q(##val#0_1)
               ==> Lit(TestModule8.G.GUint64_q(Lit(TestModule8.__default.CAppMessage__grammar()))));
        assert {:id "id438"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_1, Lit(TestModule8.__default.CAppMessage__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_1, 
              Lit(TestModule8.__default.CAppMessage__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_1)
               ==> 
              TestModule8.V.VTuple_q(##val#0_1)
               ==> (var t#0_2 := TestModule8.V.t(##val#0_1); 
                Lit(TestModule8.G.GTuple_q(Lit(TestModule8.__default.CAppMessage__grammar())))));
        assert {:id "id439"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_1, Lit(TestModule8.__default.CAppMessage__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_1, 
              Lit(TestModule8.__default.CAppMessage__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_1)
               ==> 
              TestModule8.V.VTuple_q(##val#0_1)
               ==> (var t#0_2 := TestModule8.V.t(##val#0_1); 
                Seq#Length(t#0_2)
                   == Seq#Length(Lit(TestModule8.G.t(Lit(TestModule8.__default.CAppMessage__grammar()))))));
        assert {:id "id440"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_1, Lit(TestModule8.__default.CAppMessage__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_1, 
              Lit(TestModule8.__default.CAppMessage__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_1)
               ==> 
              TestModule8.V.VTuple_q(##val#0_1)
               ==> (var t#0_2 := TestModule8.V.t(##val#0_1); 
                (forall i#0_2: int :: 
                  { $Unbox(Seq#Index(TestModule8.G.t(TestModule8.__default.CAppMessage__grammar()), i#0_2)): DatatypeType } 
                    { $Unbox(Seq#Index(t#0_2, i#0_2)): DatatypeType } 
                  LitInt(0) <= i#0_2 && i#0_2 < Seq#Length(t#0_2)
                     ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                      $Unbox(Seq#Index(t#0_2, i#0_2)): DatatypeType, 
                      $Unbox(Seq#Index(Lit(TestModule8.G.t(Lit(TestModule8.__default.CAppMessage__grammar()))), i#0_2)): DatatypeType))));
        assert {:id "id441"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_1, Lit(TestModule8.__default.CAppMessage__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_1, 
              Lit(TestModule8.__default.CAppMessage__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_1)
               ==> 
              !TestModule8.V.VTuple_q(##val#0_1)
               ==> (var val#0_2 := TestModule8.V.val(##val#0_1); 
                (var c#0_2 := TestModule8.V.c(##val#0_1); 
                  Lit(TestModule8.G.GTaggedUnion_q(Lit(TestModule8.__default.CAppMessage__grammar()))))));
        assert {:id "id442"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_1, Lit(TestModule8.__default.CAppMessage__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_1, 
              Lit(TestModule8.__default.CAppMessage__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_1)
               ==> 
              !TestModule8.V.VTuple_q(##val#0_1)
               ==> (var val#0_2 := TestModule8.V.val(##val#0_1); 
                (var c#0_2 := TestModule8.V.c(##val#0_1); 
                  c#0_2
                     < Seq#Length(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CAppMessage__grammar())))))));
        assert {:id "id443"} {:subsumption 0} TestModule8.__default.ValInGrammar#canCall(##val#0_1, Lit(TestModule8.__default.CAppMessage__grammar()))
           ==> TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
              ##val#0_1, 
              Lit(TestModule8.__default.CAppMessage__grammar()))
             || (!TestModule8.V.VUint64_q(##val#0_1)
               ==> 
              !TestModule8.V.VTuple_q(##val#0_1)
               ==> (var val#0_2 := TestModule8.V.val(##val#0_1); 
                (var c#0_2 := TestModule8.V.c(##val#0_1); 
                  TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
                    val#0_2, 
                    $Unbox(Seq#Index(Lit(TestModule8.G.cases(Lit(TestModule8.__default.CAppMessage__grammar()))), 
                        c#0_2)): DatatypeType))));
        assume TestModule8.__default.ValInGrammar(StartFuelAssert_TestModule8._default.ValInGrammar, 
          ##val#0_1, 
          Lit(TestModule8.__default.CAppMessage__grammar()));
        assume TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType);
        assume TestModule8.__default.parse__AppMessage#canCall($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType);
        req#0 := #TestModule8.CRequest.CRequest(ep#0_0, 
          TestModule8.V.u($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(1))): DatatypeType), 
          TestModule8.__default.parse__AppMessage($Unbox(Seq#Index(TestModule8.V.t(TestModule8.V.val(val#0)), LitInt(2))): DatatypeType));
        defass#req#0 := true;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Fuel.legacy.dfy(369,21)
        assume true;
        assume true;
        req#0 := Lit(#TestModule8.CRequest.CRequestNoOp());
        defass#req#0 := true;
    }

    assert {:id "id446"} defass#req#0;
}



procedure {:verboseName "TestModule8.byte (well-formedness)"} CheckWellFormed$$TestModule8.byte(i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestModule8.byte (well-formedness)"} CheckWellFormed$$TestModule8.byte(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype byte
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= i#0)
        {
        }

        assume {:id "id447"} LitInt(0) <= i#0 && i#0 < 256;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id448"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id449"} {:subsumption 0} Lit(0 < 256);
        assume false;
    }
}



function Tclass.TestModule8.byte() : Ty
uses {
// Tclass.TestModule8.byte Tag
axiom Tag(Tclass.TestModule8.byte()) == Tagclass.TestModule8.byte
   && TagFamily(Tclass.TestModule8.byte()) == tytagFamily$byte;
}

const unique Tagclass.TestModule8.byte: TyTag;

// Box/unbox axiom for Tclass.TestModule8.byte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestModule8.byte()) } 
  $IsBox(bx, Tclass.TestModule8.byte())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TestModule8.byte()));

// $Is axiom for newtype TestModule8.byte
axiom (forall i#0: int :: 
  { $Is(i#0, Tclass.TestModule8.byte()) } 
  $Is(i#0, Tclass.TestModule8.byte()) <==> LitInt(0) <= i#0 && i#0 < 256);

// $IsAlloc axiom for newtype TestModule8.byte
axiom (forall i#0: int, $h: Heap :: 
  { $IsAlloc(i#0, Tclass.TestModule8.byte(), $h) } 
  $IsAlloc(i#0, Tclass.TestModule8.byte(), $h));

const unique class.TestModule8.byte: ClassName;

procedure {:verboseName "TestModule8.uint64 (well-formedness)"} CheckWellFormed$$TestModule8.uint64(i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestModule8.uint64 (well-formedness)"} CheckWellFormed$$TestModule8.uint64(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint64
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= i#0)
        {
        }

        assume {:id "id450"} LitInt(0) <= i#0 && i#0 < 18446744073709551616;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id451"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id452"} {:subsumption 0} Lit(0 < 18446744073709551616);
        assume false;
    }
}



// $Is axiom for newtype TestModule8.uint64
axiom (forall i#0: int :: 
  { $Is(i#0, Tclass.TestModule8.uint64()) } 
  $Is(i#0, Tclass.TestModule8.uint64())
     <==> LitInt(0) <= i#0 && i#0 < 18446744073709551616);

// $IsAlloc axiom for newtype TestModule8.uint64
axiom (forall i#0: int, $h: Heap :: 
  { $IsAlloc(i#0, Tclass.TestModule8.uint64(), $h) } 
  $IsAlloc(i#0, Tclass.TestModule8.uint64(), $h));

const unique class.TestModule8.uint64: ClassName;

// Constructor function declaration
function #TestModule8.G.GUint64() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule8.G.GUint64()) == ##TestModule8.G.GUint64;
// Constructor $Is
axiom $Is(#TestModule8.G.GUint64(), Tclass.TestModule8.G());
// Constructor literal
axiom #TestModule8.G.GUint64() == Lit(#TestModule8.G.GUint64());
}

const unique ##TestModule8.G.GUint64: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule8.G.GUint64()) == ##TestModule8.G.GUint64;
}

function TestModule8.G.GUint64_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GUint64_q(d) } 
  TestModule8.G.GUint64_q(d) <==> DatatypeCtorId(d) == ##TestModule8.G.GUint64);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GUint64_q(d) } 
  TestModule8.G.GUint64_q(d) ==> d == #TestModule8.G.GUint64());

// Constructor function declaration
function #TestModule8.G.GArray(DatatypeType) : DatatypeType;

const unique ##TestModule8.G.GArray: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType :: 
  { #TestModule8.G.GArray(a#4#0#0) } 
  DatatypeCtorId(#TestModule8.G.GArray(a#4#0#0)) == ##TestModule8.G.GArray);
}

function TestModule8.G.GArray_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GArray_q(d) } 
  TestModule8.G.GArray_q(d) <==> DatatypeCtorId(d) == ##TestModule8.G.GArray);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GArray_q(d) } 
  TestModule8.G.GArray_q(d)
     ==> (exists a#5#0#0: DatatypeType :: d == #TestModule8.G.GArray(a#5#0#0)));

// Constructor $Is
axiom (forall a#6#0#0: DatatypeType :: 
  { $Is(#TestModule8.G.GArray(a#6#0#0), Tclass.TestModule8.G()) } 
  $Is(#TestModule8.G.GArray(a#6#0#0), Tclass.TestModule8.G())
     <==> $Is(a#6#0#0, Tclass.TestModule8.G()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(TestModule8.G.elt(d), Tclass.TestModule8.G(), $h) } 
  $IsGoodHeap($h)
       && 
      TestModule8.G.GArray_q(d)
       && $IsAlloc(d, Tclass.TestModule8.G(), $h)
     ==> $IsAlloc(TestModule8.G.elt(d), Tclass.TestModule8.G(), $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType :: 
  { #TestModule8.G.GArray(Lit(a#7#0#0)) } 
  #TestModule8.G.GArray(Lit(a#7#0#0)) == Lit(#TestModule8.G.GArray(a#7#0#0)));

function TestModule8.G.elt(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType :: 
  { #TestModule8.G.GArray(a#8#0#0) } 
  TestModule8.G.elt(#TestModule8.G.GArray(a#8#0#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType :: 
  { #TestModule8.G.GArray(a#9#0#0) } 
  DtRank(a#9#0#0) < DtRank(#TestModule8.G.GArray(a#9#0#0)));

// Constructor function declaration
function #TestModule8.G.GTuple(Seq) : DatatypeType;

const unique ##TestModule8.G.GTuple: DtCtorId
uses {
// Constructor identifier
axiom (forall a#10#0#0: Seq :: 
  { #TestModule8.G.GTuple(a#10#0#0) } 
  DatatypeCtorId(#TestModule8.G.GTuple(a#10#0#0)) == ##TestModule8.G.GTuple);
}

function TestModule8.G.GTuple_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GTuple_q(d) } 
  TestModule8.G.GTuple_q(d) <==> DatatypeCtorId(d) == ##TestModule8.G.GTuple);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GTuple_q(d) } 
  TestModule8.G.GTuple_q(d)
     ==> (exists a#11#0#0: Seq :: d == #TestModule8.G.GTuple(a#11#0#0)));

// Constructor $Is
axiom (forall a#12#0#0: Seq :: 
  { $Is(#TestModule8.G.GTuple(a#12#0#0), Tclass.TestModule8.G()) } 
  $Is(#TestModule8.G.GTuple(a#12#0#0), Tclass.TestModule8.G())
     <==> $Is(a#12#0#0, TSeq(Tclass.TestModule8.G())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(TestModule8.G.t(d), TSeq(Tclass.TestModule8.G()), $h) } 
  $IsGoodHeap($h)
       && 
      TestModule8.G.GTuple_q(d)
       && $IsAlloc(d, Tclass.TestModule8.G(), $h)
     ==> $IsAlloc(TestModule8.G.t(d), TSeq(Tclass.TestModule8.G()), $h));

// Constructor literal
axiom (forall a#13#0#0: Seq :: 
  { #TestModule8.G.GTuple(Lit(a#13#0#0)) } 
  #TestModule8.G.GTuple(Lit(a#13#0#0)) == Lit(#TestModule8.G.GTuple(a#13#0#0)));

function TestModule8.G.t(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#14#0#0: Seq :: 
  { #TestModule8.G.GTuple(a#14#0#0) } 
  TestModule8.G.t(#TestModule8.G.GTuple(a#14#0#0)) == a#14#0#0);

// Inductive seq element rank
axiom (forall a#15#0#0: Seq, i: int :: 
  { Seq#Index(a#15#0#0, i), #TestModule8.G.GTuple(a#15#0#0) } 
  0 <= i && i < Seq#Length(a#15#0#0)
     ==> DtRank($Unbox(Seq#Index(a#15#0#0, i)): DatatypeType)
       < DtRank(#TestModule8.G.GTuple(a#15#0#0)));

// Inductive seq rank
axiom (forall a#16#0#0: Seq :: 
  { #TestModule8.G.GTuple(a#16#0#0) } 
  Seq#Rank(a#16#0#0) < DtRank(#TestModule8.G.GTuple(a#16#0#0)));

// Constructor function declaration
function #TestModule8.G.GByteArray() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule8.G.GByteArray()) == ##TestModule8.G.GByteArray;
// Constructor $Is
axiom $Is(#TestModule8.G.GByteArray(), Tclass.TestModule8.G());
// Constructor literal
axiom #TestModule8.G.GByteArray() == Lit(#TestModule8.G.GByteArray());
}

const unique ##TestModule8.G.GByteArray: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule8.G.GByteArray()) == ##TestModule8.G.GByteArray;
}

function TestModule8.G.GByteArray_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GByteArray_q(d) } 
  TestModule8.G.GByteArray_q(d)
     <==> DatatypeCtorId(d) == ##TestModule8.G.GByteArray);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GByteArray_q(d) } 
  TestModule8.G.GByteArray_q(d) ==> d == #TestModule8.G.GByteArray());

// Constructor function declaration
function #TestModule8.G.GTaggedUnion(Seq) : DatatypeType;

const unique ##TestModule8.G.GTaggedUnion: DtCtorId
uses {
// Constructor identifier
axiom (forall a#21#0#0: Seq :: 
  { #TestModule8.G.GTaggedUnion(a#21#0#0) } 
  DatatypeCtorId(#TestModule8.G.GTaggedUnion(a#21#0#0))
     == ##TestModule8.G.GTaggedUnion);
}

function TestModule8.G.GTaggedUnion_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GTaggedUnion_q(d) } 
  TestModule8.G.GTaggedUnion_q(d)
     <==> DatatypeCtorId(d) == ##TestModule8.G.GTaggedUnion);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GTaggedUnion_q(d) } 
  TestModule8.G.GTaggedUnion_q(d)
     ==> (exists a#22#0#0: Seq :: d == #TestModule8.G.GTaggedUnion(a#22#0#0)));

// Constructor $Is
axiom (forall a#23#0#0: Seq :: 
  { $Is(#TestModule8.G.GTaggedUnion(a#23#0#0), Tclass.TestModule8.G()) } 
  $Is(#TestModule8.G.GTaggedUnion(a#23#0#0), Tclass.TestModule8.G())
     <==> $Is(a#23#0#0, TSeq(Tclass.TestModule8.G())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(TestModule8.G.cases(d), TSeq(Tclass.TestModule8.G()), $h) } 
  $IsGoodHeap($h)
       && 
      TestModule8.G.GTaggedUnion_q(d)
       && $IsAlloc(d, Tclass.TestModule8.G(), $h)
     ==> $IsAlloc(TestModule8.G.cases(d), TSeq(Tclass.TestModule8.G()), $h));

// Constructor literal
axiom (forall a#24#0#0: Seq :: 
  { #TestModule8.G.GTaggedUnion(Lit(a#24#0#0)) } 
  #TestModule8.G.GTaggedUnion(Lit(a#24#0#0))
     == Lit(#TestModule8.G.GTaggedUnion(a#24#0#0)));

function TestModule8.G.cases(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#25#0#0: Seq :: 
  { #TestModule8.G.GTaggedUnion(a#25#0#0) } 
  TestModule8.G.cases(#TestModule8.G.GTaggedUnion(a#25#0#0)) == a#25#0#0);

// Inductive seq element rank
axiom (forall a#26#0#0: Seq, i: int :: 
  { Seq#Index(a#26#0#0, i), #TestModule8.G.GTaggedUnion(a#26#0#0) } 
  0 <= i && i < Seq#Length(a#26#0#0)
     ==> DtRank($Unbox(Seq#Index(a#26#0#0, i)): DatatypeType)
       < DtRank(#TestModule8.G.GTaggedUnion(a#26#0#0)));

// Inductive seq rank
axiom (forall a#27#0#0: Seq :: 
  { #TestModule8.G.GTaggedUnion(a#27#0#0) } 
  Seq#Rank(a#27#0#0) < DtRank(#TestModule8.G.GTaggedUnion(a#27#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.TestModule8.G(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.TestModule8.G())
     ==> $IsAlloc(d, Tclass.TestModule8.G(), $h));

// Depth-one case-split function
function $IsA#TestModule8.G(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TestModule8.G(d) } 
  $IsA#TestModule8.G(d)
     ==> TestModule8.G.GUint64_q(d)
       || TestModule8.G.GArray_q(d)
       || TestModule8.G.GTuple_q(d)
       || TestModule8.G.GByteArray_q(d)
       || TestModule8.G.GTaggedUnion_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { TestModule8.G.GTaggedUnion_q(d), $Is(d, Tclass.TestModule8.G()) } 
    { TestModule8.G.GByteArray_q(d), $Is(d, Tclass.TestModule8.G()) } 
    { TestModule8.G.GTuple_q(d), $Is(d, Tclass.TestModule8.G()) } 
    { TestModule8.G.GArray_q(d), $Is(d, Tclass.TestModule8.G()) } 
    { TestModule8.G.GUint64_q(d), $Is(d, Tclass.TestModule8.G()) } 
  $Is(d, Tclass.TestModule8.G())
     ==> TestModule8.G.GUint64_q(d)
       || TestModule8.G.GArray_q(d)
       || TestModule8.G.GTuple_q(d)
       || TestModule8.G.GByteArray_q(d)
       || TestModule8.G.GTaggedUnion_q(d));

// Datatype extensional equality declaration
function TestModule8.G#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TestModule8.G.GUint64
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.G#Equal(a, b), TestModule8.G.GUint64_q(a) } 
    { TestModule8.G#Equal(a, b), TestModule8.G.GUint64_q(b) } 
  TestModule8.G.GUint64_q(a) && TestModule8.G.GUint64_q(b)
     ==> TestModule8.G#Equal(a, b));

// Datatype extensional equality definition: #TestModule8.G.GArray
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.G#Equal(a, b), TestModule8.G.GArray_q(a) } 
    { TestModule8.G#Equal(a, b), TestModule8.G.GArray_q(b) } 
  TestModule8.G.GArray_q(a) && TestModule8.G.GArray_q(b)
     ==> (TestModule8.G#Equal(a, b)
       <==> TestModule8.G#Equal(TestModule8.G.elt(a), TestModule8.G.elt(b))));

// Datatype extensional equality definition: #TestModule8.G.GTuple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.G#Equal(a, b), TestModule8.G.GTuple_q(a) } 
    { TestModule8.G#Equal(a, b), TestModule8.G.GTuple_q(b) } 
  TestModule8.G.GTuple_q(a) && TestModule8.G.GTuple_q(b)
     ==> (TestModule8.G#Equal(a, b)
       <==> Seq#Equal(TestModule8.G.t(a), TestModule8.G.t(b))));

// Datatype extensional equality definition: #TestModule8.G.GByteArray
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.G#Equal(a, b), TestModule8.G.GByteArray_q(a) } 
    { TestModule8.G#Equal(a, b), TestModule8.G.GByteArray_q(b) } 
  TestModule8.G.GByteArray_q(a) && TestModule8.G.GByteArray_q(b)
     ==> TestModule8.G#Equal(a, b));

// Datatype extensional equality definition: #TestModule8.G.GTaggedUnion
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.G#Equal(a, b), TestModule8.G.GTaggedUnion_q(a) } 
    { TestModule8.G#Equal(a, b), TestModule8.G.GTaggedUnion_q(b) } 
  TestModule8.G.GTaggedUnion_q(a) && TestModule8.G.GTaggedUnion_q(b)
     ==> (TestModule8.G#Equal(a, b)
       <==> Seq#Equal(TestModule8.G.cases(a), TestModule8.G.cases(b))));

// Datatype extensionality axiom: TestModule8.G
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.G#Equal(a, b) } 
  TestModule8.G#Equal(a, b) <==> a == b);

const unique class.TestModule8.G: ClassName;

// Constructor function declaration
function #TestModule8.V.VUint64(int) : DatatypeType;

const unique ##TestModule8.V.VUint64: DtCtorId
uses {
// Constructor identifier
axiom (forall a#28#0#0: int :: 
  { #TestModule8.V.VUint64(a#28#0#0) } 
  DatatypeCtorId(#TestModule8.V.VUint64(a#28#0#0)) == ##TestModule8.V.VUint64);
}

function TestModule8.V.VUint64_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule8.V.VUint64_q(d) } 
  TestModule8.V.VUint64_q(d) <==> DatatypeCtorId(d) == ##TestModule8.V.VUint64);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule8.V.VUint64_q(d) } 
  TestModule8.V.VUint64_q(d)
     ==> (exists a#29#0#0: int :: d == #TestModule8.V.VUint64(a#29#0#0)));

// Constructor $Is
axiom (forall a#30#0#0: int :: 
  { $Is(#TestModule8.V.VUint64(a#30#0#0), Tclass.TestModule8.V()) } 
  $Is(#TestModule8.V.VUint64(a#30#0#0), Tclass.TestModule8.V())
     <==> $Is(a#30#0#0, Tclass.TestModule8.uint64()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(TestModule8.V.u(d), Tclass.TestModule8.uint64(), $h) } 
  $IsGoodHeap($h)
       && 
      TestModule8.V.VUint64_q(d)
       && $IsAlloc(d, Tclass.TestModule8.V(), $h)
     ==> $IsAlloc(TestModule8.V.u(d), Tclass.TestModule8.uint64(), $h));

// Constructor literal
axiom (forall a#31#0#0: int :: 
  { #TestModule8.V.VUint64(LitInt(a#31#0#0)) } 
  #TestModule8.V.VUint64(LitInt(a#31#0#0))
     == Lit(#TestModule8.V.VUint64(a#31#0#0)));

function TestModule8.V.u(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#32#0#0: int :: 
  { #TestModule8.V.VUint64(a#32#0#0) } 
  TestModule8.V.u(#TestModule8.V.VUint64(a#32#0#0)) == a#32#0#0);

// Constructor function declaration
function #TestModule8.V.VTuple(Seq) : DatatypeType;

const unique ##TestModule8.V.VTuple: DtCtorId
uses {
// Constructor identifier
axiom (forall a#33#0#0: Seq :: 
  { #TestModule8.V.VTuple(a#33#0#0) } 
  DatatypeCtorId(#TestModule8.V.VTuple(a#33#0#0)) == ##TestModule8.V.VTuple);
}

function TestModule8.V.VTuple_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule8.V.VTuple_q(d) } 
  TestModule8.V.VTuple_q(d) <==> DatatypeCtorId(d) == ##TestModule8.V.VTuple);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule8.V.VTuple_q(d) } 
  TestModule8.V.VTuple_q(d)
     ==> (exists a#34#0#0: Seq :: d == #TestModule8.V.VTuple(a#34#0#0)));

// Constructor $Is
axiom (forall a#35#0#0: Seq :: 
  { $Is(#TestModule8.V.VTuple(a#35#0#0), Tclass.TestModule8.V()) } 
  $Is(#TestModule8.V.VTuple(a#35#0#0), Tclass.TestModule8.V())
     <==> $Is(a#35#0#0, TSeq(Tclass.TestModule8.V())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(TestModule8.V.t(d), TSeq(Tclass.TestModule8.V()), $h) } 
  $IsGoodHeap($h)
       && 
      TestModule8.V.VTuple_q(d)
       && $IsAlloc(d, Tclass.TestModule8.V(), $h)
     ==> $IsAlloc(TestModule8.V.t(d), TSeq(Tclass.TestModule8.V()), $h));

// Constructor literal
axiom (forall a#36#0#0: Seq :: 
  { #TestModule8.V.VTuple(Lit(a#36#0#0)) } 
  #TestModule8.V.VTuple(Lit(a#36#0#0)) == Lit(#TestModule8.V.VTuple(a#36#0#0)));

function TestModule8.V.t(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#37#0#0: Seq :: 
  { #TestModule8.V.VTuple(a#37#0#0) } 
  TestModule8.V.t(#TestModule8.V.VTuple(a#37#0#0)) == a#37#0#0);

// Inductive seq element rank
axiom (forall a#38#0#0: Seq, i: int :: 
  { Seq#Index(a#38#0#0, i), #TestModule8.V.VTuple(a#38#0#0) } 
  0 <= i && i < Seq#Length(a#38#0#0)
     ==> DtRank($Unbox(Seq#Index(a#38#0#0, i)): DatatypeType)
       < DtRank(#TestModule8.V.VTuple(a#38#0#0)));

// Inductive seq rank
axiom (forall a#39#0#0: Seq :: 
  { #TestModule8.V.VTuple(a#39#0#0) } 
  Seq#Rank(a#39#0#0) < DtRank(#TestModule8.V.VTuple(a#39#0#0)));

// Constructor function declaration
function #TestModule8.V.VCase(int, DatatypeType) : DatatypeType;

const unique ##TestModule8.V.VCase: DtCtorId
uses {
// Constructor identifier
axiom (forall a#40#0#0: int, a#40#1#0: DatatypeType :: 
  { #TestModule8.V.VCase(a#40#0#0, a#40#1#0) } 
  DatatypeCtorId(#TestModule8.V.VCase(a#40#0#0, a#40#1#0))
     == ##TestModule8.V.VCase);
}

function TestModule8.V.VCase_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule8.V.VCase_q(d) } 
  TestModule8.V.VCase_q(d) <==> DatatypeCtorId(d) == ##TestModule8.V.VCase);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule8.V.VCase_q(d) } 
  TestModule8.V.VCase_q(d)
     ==> (exists a#41#0#0: int, a#41#1#0: DatatypeType :: 
      d == #TestModule8.V.VCase(a#41#0#0, a#41#1#0)));

// Constructor $Is
axiom (forall a#42#0#0: int, a#42#1#0: DatatypeType :: 
  { $Is(#TestModule8.V.VCase(a#42#0#0, a#42#1#0), Tclass.TestModule8.V()) } 
  $Is(#TestModule8.V.VCase(a#42#0#0, a#42#1#0), Tclass.TestModule8.V())
     <==> $Is(a#42#0#0, Tclass.TestModule8.uint64())
       && $Is(a#42#1#0, Tclass.TestModule8.V()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(TestModule8.V.c(d), Tclass.TestModule8.uint64(), $h) } 
  $IsGoodHeap($h)
       && 
      TestModule8.V.VCase_q(d)
       && $IsAlloc(d, Tclass.TestModule8.V(), $h)
     ==> $IsAlloc(TestModule8.V.c(d), Tclass.TestModule8.uint64(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(TestModule8.V.val(d), Tclass.TestModule8.V(), $h) } 
  $IsGoodHeap($h)
       && 
      TestModule8.V.VCase_q(d)
       && $IsAlloc(d, Tclass.TestModule8.V(), $h)
     ==> $IsAlloc(TestModule8.V.val(d), Tclass.TestModule8.V(), $h));

// Constructor literal
axiom (forall a#43#0#0: int, a#43#1#0: DatatypeType :: 
  { #TestModule8.V.VCase(LitInt(a#43#0#0), Lit(a#43#1#0)) } 
  #TestModule8.V.VCase(LitInt(a#43#0#0), Lit(a#43#1#0))
     == Lit(#TestModule8.V.VCase(a#43#0#0, a#43#1#0)));

function TestModule8.V.c(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#44#0#0: int, a#44#1#0: DatatypeType :: 
  { #TestModule8.V.VCase(a#44#0#0, a#44#1#0) } 
  TestModule8.V.c(#TestModule8.V.VCase(a#44#0#0, a#44#1#0)) == a#44#0#0);

function TestModule8.V.val(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#45#0#0: int, a#45#1#0: DatatypeType :: 
  { #TestModule8.V.VCase(a#45#0#0, a#45#1#0) } 
  TestModule8.V.val(#TestModule8.V.VCase(a#45#0#0, a#45#1#0)) == a#45#1#0);

// Inductive rank
axiom (forall a#46#0#0: int, a#46#1#0: DatatypeType :: 
  { #TestModule8.V.VCase(a#46#0#0, a#46#1#0) } 
  DtRank(a#46#1#0) < DtRank(#TestModule8.V.VCase(a#46#0#0, a#46#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.TestModule8.V(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.TestModule8.V())
     ==> $IsAlloc(d, Tclass.TestModule8.V(), $h));

// Depth-one case-split function
function $IsA#TestModule8.V(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TestModule8.V(d) } 
  $IsA#TestModule8.V(d)
     ==> TestModule8.V.VUint64_q(d)
       || TestModule8.V.VTuple_q(d)
       || TestModule8.V.VCase_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { TestModule8.V.VCase_q(d), $Is(d, Tclass.TestModule8.V()) } 
    { TestModule8.V.VTuple_q(d), $Is(d, Tclass.TestModule8.V()) } 
    { TestModule8.V.VUint64_q(d), $Is(d, Tclass.TestModule8.V()) } 
  $Is(d, Tclass.TestModule8.V())
     ==> TestModule8.V.VUint64_q(d)
       || TestModule8.V.VTuple_q(d)
       || TestModule8.V.VCase_q(d));

// Datatype extensional equality declaration
function TestModule8.V#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TestModule8.V.VUint64
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.V#Equal(a, b), TestModule8.V.VUint64_q(a) } 
    { TestModule8.V#Equal(a, b), TestModule8.V.VUint64_q(b) } 
  TestModule8.V.VUint64_q(a) && TestModule8.V.VUint64_q(b)
     ==> (TestModule8.V#Equal(a, b) <==> TestModule8.V.u(a) == TestModule8.V.u(b)));

// Datatype extensional equality definition: #TestModule8.V.VTuple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.V#Equal(a, b), TestModule8.V.VTuple_q(a) } 
    { TestModule8.V#Equal(a, b), TestModule8.V.VTuple_q(b) } 
  TestModule8.V.VTuple_q(a) && TestModule8.V.VTuple_q(b)
     ==> (TestModule8.V#Equal(a, b)
       <==> Seq#Equal(TestModule8.V.t(a), TestModule8.V.t(b))));

// Datatype extensional equality definition: #TestModule8.V.VCase
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.V#Equal(a, b), TestModule8.V.VCase_q(a) } 
    { TestModule8.V#Equal(a, b), TestModule8.V.VCase_q(b) } 
  TestModule8.V.VCase_q(a) && TestModule8.V.VCase_q(b)
     ==> (TestModule8.V#Equal(a, b)
       <==> TestModule8.V.c(a) == TestModule8.V.c(b)
         && TestModule8.V#Equal(TestModule8.V.val(a), TestModule8.V.val(b))));

// Datatype extensionality axiom: TestModule8.V
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.V#Equal(a, b) } 
  TestModule8.V#Equal(a, b) <==> a == b);

const unique class.TestModule8.V: ClassName;

// Constructor function declaration
function #TestModule8.CRequest.CRequest(Box, int, Box) : DatatypeType;

const unique ##TestModule8.CRequest.CRequest: DtCtorId
uses {
// Constructor identifier
axiom (forall a#47#0#0: Box, a#47#1#0: int, a#47#2#0: Box :: 
  { #TestModule8.CRequest.CRequest(a#47#0#0, a#47#1#0, a#47#2#0) } 
  DatatypeCtorId(#TestModule8.CRequest.CRequest(a#47#0#0, a#47#1#0, a#47#2#0))
     == ##TestModule8.CRequest.CRequest);
}

function TestModule8.CRequest.CRequest_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule8.CRequest.CRequest_q(d) } 
  TestModule8.CRequest.CRequest_q(d)
     <==> DatatypeCtorId(d) == ##TestModule8.CRequest.CRequest);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule8.CRequest.CRequest_q(d) } 
  TestModule8.CRequest.CRequest_q(d)
     ==> (exists a#48#0#0: Box, a#48#1#0: int, a#48#2#0: Box :: 
      d == #TestModule8.CRequest.CRequest(a#48#0#0, a#48#1#0, a#48#2#0)));

// Constructor $Is
axiom (forall a#49#0#0: Box, a#49#1#0: int, a#49#2#0: Box :: 
  { $Is(#TestModule8.CRequest.CRequest(a#49#0#0, a#49#1#0, a#49#2#0), 
      Tclass.TestModule8.CRequest()) } 
  $Is(#TestModule8.CRequest.CRequest(a#49#0#0, a#49#1#0, a#49#2#0), 
      Tclass.TestModule8.CRequest())
     <==> $IsBox(a#49#0#0, Tclass.TestModule8.EndPoint())
       && $Is(a#49#1#0, Tclass.TestModule8.uint64())
       && $IsBox(a#49#2#0, Tclass.TestModule8.CAppMessage()));

// Constructor $IsAlloc
axiom (forall a#49#0#0: Box, a#49#1#0: int, a#49#2#0: Box, $h: Heap :: 
  { $IsAlloc(#TestModule8.CRequest.CRequest(a#49#0#0, a#49#1#0, a#49#2#0), 
      Tclass.TestModule8.CRequest(), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TestModule8.CRequest.CRequest(a#49#0#0, a#49#1#0, a#49#2#0), 
        Tclass.TestModule8.CRequest(), 
        $h)
       <==> $IsAllocBox(a#49#0#0, Tclass.TestModule8.EndPoint(), $h)
         && $IsAlloc(a#49#1#0, Tclass.TestModule8.uint64(), $h)
         && $IsAllocBox(a#49#2#0, Tclass.TestModule8.CAppMessage(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAllocBox(TestModule8.CRequest.client(d), Tclass.TestModule8.EndPoint(), $h) } 
  $IsGoodHeap($h)
       && 
      TestModule8.CRequest.CRequest_q(d)
       && $IsAlloc(d, Tclass.TestModule8.CRequest(), $h)
     ==> $IsAllocBox(TestModule8.CRequest.client(d), Tclass.TestModule8.EndPoint(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(TestModule8.CRequest.seqno(d), Tclass.TestModule8.uint64(), $h) } 
  $IsGoodHeap($h)
       && 
      TestModule8.CRequest.CRequest_q(d)
       && $IsAlloc(d, Tclass.TestModule8.CRequest(), $h)
     ==> $IsAlloc(TestModule8.CRequest.seqno(d), Tclass.TestModule8.uint64(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAllocBox(TestModule8.CRequest.request(d), Tclass.TestModule8.CAppMessage(), $h) } 
  $IsGoodHeap($h)
       && 
      TestModule8.CRequest.CRequest_q(d)
       && $IsAlloc(d, Tclass.TestModule8.CRequest(), $h)
     ==> $IsAllocBox(TestModule8.CRequest.request(d), Tclass.TestModule8.CAppMessage(), $h));

// Constructor literal
axiom (forall a#50#0#0: Box, a#50#1#0: int, a#50#2#0: Box :: 
  { #TestModule8.CRequest.CRequest(Lit(a#50#0#0), LitInt(a#50#1#0), Lit(a#50#2#0)) } 
  #TestModule8.CRequest.CRequest(Lit(a#50#0#0), LitInt(a#50#1#0), Lit(a#50#2#0))
     == Lit(#TestModule8.CRequest.CRequest(a#50#0#0, a#50#1#0, a#50#2#0)));

function TestModule8.CRequest.client(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#51#0#0: Box, a#51#1#0: int, a#51#2#0: Box :: 
  { #TestModule8.CRequest.CRequest(a#51#0#0, a#51#1#0, a#51#2#0) } 
  TestModule8.CRequest.client(#TestModule8.CRequest.CRequest(a#51#0#0, a#51#1#0, a#51#2#0))
     == a#51#0#0);

function TestModule8.CRequest.seqno(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#52#0#0: Box, a#52#1#0: int, a#52#2#0: Box :: 
  { #TestModule8.CRequest.CRequest(a#52#0#0, a#52#1#0, a#52#2#0) } 
  TestModule8.CRequest.seqno(#TestModule8.CRequest.CRequest(a#52#0#0, a#52#1#0, a#52#2#0))
     == a#52#1#0);

function TestModule8.CRequest.request(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#53#0#0: Box, a#53#1#0: int, a#53#2#0: Box :: 
  { #TestModule8.CRequest.CRequest(a#53#0#0, a#53#1#0, a#53#2#0) } 
  TestModule8.CRequest.request(#TestModule8.CRequest.CRequest(a#53#0#0, a#53#1#0, a#53#2#0))
     == a#53#2#0);

// Constructor function declaration
function #TestModule8.CRequest.CRequestNoOp() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule8.CRequest.CRequestNoOp())
   == ##TestModule8.CRequest.CRequestNoOp;
// Constructor $Is
axiom $Is(#TestModule8.CRequest.CRequestNoOp(), Tclass.TestModule8.CRequest());
// Constructor literal
axiom #TestModule8.CRequest.CRequestNoOp()
   == Lit(#TestModule8.CRequest.CRequestNoOp());
}

const unique ##TestModule8.CRequest.CRequestNoOp: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestModule8.CRequest.CRequestNoOp())
   == ##TestModule8.CRequest.CRequestNoOp;
}

function TestModule8.CRequest.CRequestNoOp_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestModule8.CRequest.CRequestNoOp_q(d) } 
  TestModule8.CRequest.CRequestNoOp_q(d)
     <==> DatatypeCtorId(d) == ##TestModule8.CRequest.CRequestNoOp);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestModule8.CRequest.CRequestNoOp_q(d) } 
  TestModule8.CRequest.CRequestNoOp_q(d)
     ==> d == #TestModule8.CRequest.CRequestNoOp());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#TestModule8.CRequest.CRequestNoOp(), Tclass.TestModule8.CRequest(), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#TestModule8.CRequest.CRequestNoOp(), Tclass.TestModule8.CRequest(), $h));

// Depth-one case-split function
function $IsA#TestModule8.CRequest(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TestModule8.CRequest(d) } 
  $IsA#TestModule8.CRequest(d)
     ==> TestModule8.CRequest.CRequest_q(d) || TestModule8.CRequest.CRequestNoOp_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { TestModule8.CRequest.CRequestNoOp_q(d), $Is(d, Tclass.TestModule8.CRequest()) } 
    { TestModule8.CRequest.CRequest_q(d), $Is(d, Tclass.TestModule8.CRequest()) } 
  $Is(d, Tclass.TestModule8.CRequest())
     ==> TestModule8.CRequest.CRequest_q(d) || TestModule8.CRequest.CRequestNoOp_q(d));

// Datatype extensional equality declaration
function TestModule8.CRequest#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TestModule8.CRequest.CRequest
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.CRequest#Equal(a, b), TestModule8.CRequest.CRequest_q(a) } 
    { TestModule8.CRequest#Equal(a, b), TestModule8.CRequest.CRequest_q(b) } 
  TestModule8.CRequest.CRequest_q(a) && TestModule8.CRequest.CRequest_q(b)
     ==> (TestModule8.CRequest#Equal(a, b)
       <==> TestModule8.CRequest.client(a) == TestModule8.CRequest.client(b)
         && TestModule8.CRequest.seqno(a) == TestModule8.CRequest.seqno(b)
         && TestModule8.CRequest.request(a) == TestModule8.CRequest.request(b)));

// Datatype extensional equality definition: #TestModule8.CRequest.CRequestNoOp
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.CRequest#Equal(a, b), TestModule8.CRequest.CRequestNoOp_q(a) } 
    { TestModule8.CRequest#Equal(a, b), TestModule8.CRequest.CRequestNoOp_q(b) } 
  TestModule8.CRequest.CRequestNoOp_q(a) && TestModule8.CRequest.CRequestNoOp_q(b)
     ==> TestModule8.CRequest#Equal(a, b));

// Datatype extensionality axiom: TestModule8.CRequest
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestModule8.CRequest#Equal(a, b) } 
  TestModule8.CRequest#Equal(a, b) <==> a == b);

const unique class.TestModule8.CRequest: ClassName;

const unique class.TestModule8.EndPoint: ClassName;

const unique class.TestModule8.CAppMessage: ClassName;

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

const unique tytagFamily$V: TyTagFamily;

const unique tytagFamily$G: TyTagFamily;

const unique tytagFamily$uint64: TyTagFamily;

const unique tytagFamily$CRequest: TyTagFamily;

const unique tytagFamily$byte: TyTagFamily;
