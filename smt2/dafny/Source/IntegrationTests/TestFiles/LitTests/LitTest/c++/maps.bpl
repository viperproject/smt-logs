// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy

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

const unique class._module.__default: ClassName;

procedure {:verboseName "Test (well-formedness)"} CheckWellFormed$$_module.__default.Test(name#0: Seq
       where $Is(name#0, TSeq(TChar)) && $IsAlloc(name#0, TSeq(TChar), $Heap), 
    b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test (call)"} Call$$_module.__default.Test(name#0: Seq
       where $Is(name#0, TSeq(TChar)) && $IsAlloc(name#0, TSeq(TChar), $Heap), 
    b#0: bool);
  // user-defined preconditions
  requires {:id "id1"} b#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test (correctness)"} Impl$$_module.__default.Test(name#0: Seq
       where $Is(name#0, TSeq(TChar)) && $IsAlloc(name#0, TSeq(TChar), $Heap), 
    b#0: bool)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id2"} b#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Basic (well-formedness)"} CheckWellFormed$$_module.__default.Basic();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Basic (call)"} Call$$_module.__default.Basic();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Basic (correctness)"} Impl$$_module.__default.Basic() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.map__holder() : Ty
uses {
// Tclass._module.map__holder Tag
axiom Tag(Tclass._module.map__holder()) == Tagclass._module.map__holder
   && TagFamily(Tclass._module.map__holder()) == tytagFamily$map_holder;
}

const unique Tagclass._module.map__holder: TyTag;

// Box/unbox axiom for Tclass._module.map__holder
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.map__holder()) } 
  $IsBox(bx, Tclass._module.map__holder())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.map__holder()));

function Tclass._module.uint32() : Ty
uses {
// Tclass._module.uint32 Tag
axiom Tag(Tclass._module.uint32()) == Tagclass._module.uint32
   && TagFamily(Tclass._module.uint32()) == tytagFamily$uint32;
}

const unique Tagclass._module.uint32: TyTag;

// Box/unbox axiom for Tclass._module.uint32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint32()) } 
  $IsBox(bx, Tclass._module.uint32())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint32()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Basic (correctness)"} Impl$$_module.__default.Basic() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var f#0: DatatypeType
     where $Is(f#0, Tclass._module.map__holder())
       && $IsAlloc(f#0, Tclass._module.map__holder(), $Heap);
  var s#0: Map
     where $Is(s#0, TMap(Tclass._module.uint32(), Tclass._module.uint32()))
       && $IsAlloc(s#0, TMap(Tclass._module.uint32(), Tclass._module.uint32()), $Heap);
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var t#0: Map
     where $Is(t#0, TMap(Tclass._module.uint32(), Tclass._module.uint32()))
       && $IsAlloc(t#0, TMap(Tclass._module.uint32(), Tclass._module.uint32()), $Heap);
  var newtype$check#8: int;
  var newtype$check#9: int;
  var newtype$check#10: int;
  var newtype$check#11: int;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var name##0: Seq;
  var b##0: bool;
  var name##1: Seq;
  var b##1: bool;
  var name##2: Seq;
  var b##2: bool;
  var newtype$check#16: int;
  var name##3: Seq;
  var b##3: bool;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var name##4: Seq;
  var b##4: bool;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var u#0: Map
     where $Is(u#0, TMap(Tclass._module.uint32(), Tclass._module.uint32()))
       && $IsAlloc(u#0, TMap(Tclass._module.uint32(), Tclass._module.uint32()), $Heap);
  var newtype$check#21: int;
  var newtype$check#22: int;
  var name##5: Seq;
  var b##5: bool;
  var name##6: Seq;
  var b##6: bool;
  var name##7: Seq;
  var b##7: bool;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var name##8: Seq;
  var b##8: bool;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var name##9: Seq;
  var b##9: bool;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var s_keys#0: Set
     where $Is(s_keys#0, TSet(Tclass._module.uint32()))
       && $IsAlloc(s_keys#0, TSet(Tclass._module.uint32()), $Heap);
  var t_keys#0: Set
     where $Is(t_keys#0, TSet(Tclass._module.uint32()))
       && $IsAlloc(t_keys#0, TSet(Tclass._module.uint32()), $Heap);
  var name##10: Seq;
  var b##10: bool;
  var name##11: Seq;
  var b##11: bool;
  var newtype$check#29: int;
  var name##12: Seq;
  var b##12: bool;
  var newtype$check#30: int;
  var name##13: Seq;
  var b##13: bool;
  var newtype$check#31: int;
  var name##14: Seq;
  var b##14: bool;
  var newtype$check#32: int;

    // AddMethodImpl: Basic, Impl$$_module.__default.Basic
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc f#0 /* where $Is(f#0, Tclass._module.map__holder())
       && $IsAlloc(f#0, Tclass._module.map__holder(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(19,28)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id3"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    newtype$check#1 := LitInt(0);
    assert {:id "id4"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    newtype$check#2 := LitInt(2);
    assert {:id "id5"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    newtype$check#3 := LitInt(1);
    assert {:id "id6"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
    newtype$check#4 := LitInt(3);
    assert {:id "id7"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
    newtype$check#5 := LitInt(2);
    assert {:id "id8"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 4294967296;
    newtype$check#6 := LitInt(4);
    assert {:id "id9"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 4294967296;
    newtype$check#7 := LitInt(3);
    assert {:id "id10"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 4294967296;
    assume true;
    s#0 := Lit(Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(1)), $Box(LitInt(0))), 
            $Box(LitInt(2)), 
            $Box(LitInt(1))), 
          $Box(LitInt(3)), 
          $Box(LitInt(2))), 
        $Box(LitInt(4)), 
        $Box(LitInt(3))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(20,28)
    assume true;
    newtype$check#8 := LitInt(1);
    assert {:id "id12"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 4294967296;
    newtype$check#9 := LitInt(0);
    assert {:id "id13"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 4294967296;
    newtype$check#10 := LitInt(2);
    assert {:id "id14"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 4294967296;
    newtype$check#11 := LitInt(1);
    assert {:id "id15"} LitInt(0) <= newtype$check#11 && newtype$check#11 < 4294967296;
    newtype$check#12 := LitInt(3);
    assert {:id "id16"} LitInt(0) <= newtype$check#12 && newtype$check#12 < 4294967296;
    newtype$check#13 := LitInt(2);
    assert {:id "id17"} LitInt(0) <= newtype$check#13 && newtype$check#13 < 4294967296;
    newtype$check#14 := LitInt(4);
    assert {:id "id18"} LitInt(0) <= newtype$check#14 && newtype$check#14 < 4294967296;
    newtype$check#15 := LitInt(3);
    assert {:id "id19"} LitInt(0) <= newtype$check#15 && newtype$check#15 < 4294967296;
    assume true;
    t#0 := Lit(Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(1)), $Box(LitInt(0))), 
            $Box(LitInt(2)), 
            $Box(LitInt(1))), 
          $Box(LitInt(3)), 
          $Box(LitInt(2))), 
        $Box(LitInt(4)), 
        $Box(LitInt(3))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(22,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(73))), $Box(char#FromInt(100))), 
                  $Box(char#FromInt(101))), 
                $Box(char#FromInt(110))), 
              $Box(char#FromInt(116))), 
            $Box(char#FromInt(105))), 
          $Box(char#FromInt(116))), 
        $Box(char#FromInt(121))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := Map#Equal(s#0, s#0);
    call {:id "id21"} Call$$_module.__default.Test(name##0, b##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(23,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(86))), $Box(char#FromInt(97))), 
                              $Box(char#FromInt(108))), 
                            $Box(char#FromInt(117))), 
                          $Box(char#FromInt(101))), 
                        $Box(char#FromInt(115))), 
                      $Box(char#FromInt(73))), 
                    $Box(char#FromInt(100))), 
                  $Box(char#FromInt(101))), 
                $Box(char#FromInt(110))), 
              $Box(char#FromInt(116))), 
            $Box(char#FromInt(105))), 
          $Box(char#FromInt(116))), 
        $Box(char#FromInt(121))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := Map#Equal(s#0, t#0);
    call {:id "id22"} Call$$_module.__default.Test(name##1, b##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(24,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(75))), $Box(char#FromInt(101))), 
                            $Box(char#FromInt(121))), 
                          $Box(char#FromInt(77))), 
                        $Box(char#FromInt(101))), 
                      $Box(char#FromInt(109))), 
                    $Box(char#FromInt(98))), 
                  $Box(char#FromInt(101))), 
                $Box(char#FromInt(114))), 
              $Box(char#FromInt(115))), 
            $Box(char#FromInt(104))), 
          $Box(char#FromInt(105))), 
        $Box(char#FromInt(112))));
    newtype$check#16 := LitInt(1);
    assert {:id "id23"} LitInt(0) <= newtype$check#16 && newtype$check#16 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##2 := Set#IsMember(Map#Domain(s#0), $Box(1));
    call {:id "id24"} Call$$_module.__default.Test(name##2, b##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(25,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(86))), $Box(char#FromInt(97))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(117))), 
          $Box(char#FromInt(101))), 
        $Box(char#FromInt(49))));
    newtype$check#17 := LitInt(1);
    assert {:id "id25"} LitInt(0) <= newtype$check#17 && newtype$check#17 < 4294967296;
    assert {:id "id26"} Set#IsMember(Map#Domain(s#0), $Box(LitInt(1)));
    newtype$check#18 := LitInt(0);
    assert {:id "id27"} LitInt(0) <= newtype$check#18 && newtype$check#18 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##3 := $Unbox(Map#Elements(s#0)[$Box(LitInt(1))]): int == LitInt(0);
    call {:id "id28"} Call$$_module.__default.Test(name##3, b##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(26,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##4 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(86))), $Box(char#FromInt(97))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(117))), 
          $Box(char#FromInt(101))), 
        $Box(char#FromInt(50))));
    newtype$check#19 := LitInt(2);
    assert {:id "id29"} LitInt(0) <= newtype$check#19 && newtype$check#19 < 4294967296;
    assert {:id "id30"} Set#IsMember(Map#Domain(t#0), $Box(LitInt(2)));
    newtype$check#20 := LitInt(1);
    assert {:id "id31"} LitInt(0) <= newtype$check#20 && newtype$check#20 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##4 := $Unbox(Map#Elements(t#0)[$Box(LitInt(2))]): int == LitInt(1);
    call {:id "id32"} Call$$_module.__default.Test(name##4, b##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(28,9)
    assume true;
    newtype$check#21 := LitInt(1);
    assert {:id "id33"} LitInt(0) <= newtype$check#21 && newtype$check#21 < 4294967296;
    newtype$check#22 := LitInt(42);
    assert {:id "id34"} LitInt(0) <= newtype$check#22 && newtype$check#22 < 4294967296;
    assume true;
    u#0 := Map#Build(s#0, $Box(LitInt(1)), $Box(LitInt(42)));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(29,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##5 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(85))), $Box(char#FromInt(112))), 
                                    $Box(char#FromInt(100))), 
                                  $Box(char#FromInt(97))), 
                                $Box(char#FromInt(116))), 
                              $Box(char#FromInt(101))), 
                            $Box(char#FromInt(32))), 
                          $Box(char#FromInt(73))), 
                        $Box(char#FromInt(110))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(113))), 
                  $Box(char#FromInt(117))), 
                $Box(char#FromInt(97))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(105))), 
          $Box(char#FromInt(116))), 
        $Box(char#FromInt(121))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##5 := !Map#Equal(s#0, u#0);
    call {:id "id36"} Call$$_module.__default.Test(name##5, b##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(30,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##6 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(85))), $Box(char#FromInt(112))), 
                                      $Box(char#FromInt(100))), 
                                    $Box(char#FromInt(97))), 
                                  $Box(char#FromInt(116))), 
                                $Box(char#FromInt(101))), 
                              $Box(char#FromInt(32))), 
                            $Box(char#FromInt(73))), 
                          $Box(char#FromInt(109))), 
                        $Box(char#FromInt(109))), 
                      $Box(char#FromInt(117))), 
                    $Box(char#FromInt(116))), 
                  $Box(char#FromInt(97))), 
                $Box(char#FromInt(98))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(32))), 
        $Box(char#FromInt(49))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##6 := Map#Equal(s#0, s#0);
    call {:id "id37"} Call$$_module.__default.Test(name##6, b##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(31,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##7 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(85))), $Box(char#FromInt(112))), 
                                      $Box(char#FromInt(100))), 
                                    $Box(char#FromInt(97))), 
                                  $Box(char#FromInt(116))), 
                                $Box(char#FromInt(101))), 
                              $Box(char#FromInt(32))), 
                            $Box(char#FromInt(73))), 
                          $Box(char#FromInt(109))), 
                        $Box(char#FromInt(109))), 
                      $Box(char#FromInt(117))), 
                    $Box(char#FromInt(116))), 
                  $Box(char#FromInt(97))), 
                $Box(char#FromInt(98))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(32))), 
        $Box(char#FromInt(50))));
    newtype$check#23 := LitInt(1);
    assert {:id "id38"} LitInt(0) <= newtype$check#23 && newtype$check#23 < 4294967296;
    assert {:id "id39"} Set#IsMember(Map#Domain(s#0), $Box(LitInt(1)));
    newtype$check#24 := LitInt(0);
    assert {:id "id40"} LitInt(0) <= newtype$check#24 && newtype$check#24 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##7 := $Unbox(Map#Elements(s#0)[$Box(LitInt(1))]): int == LitInt(0);
    call {:id "id41"} Call$$_module.__default.Test(name##7, b##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(32,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##8 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(85))), $Box(char#FromInt(112))), 
                            $Box(char#FromInt(100))), 
                          $Box(char#FromInt(97))), 
                        $Box(char#FromInt(116))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(32))), 
                  $Box(char#FromInt(82))), 
                $Box(char#FromInt(101))), 
              $Box(char#FromInt(115))), 
            $Box(char#FromInt(117))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(116))));
    newtype$check#25 := LitInt(1);
    assert {:id "id42"} LitInt(0) <= newtype$check#25 && newtype$check#25 < 4294967296;
    assert {:id "id43"} Set#IsMember(Map#Domain(u#0), $Box(LitInt(1)));
    newtype$check#26 := LitInt(42);
    assert {:id "id44"} LitInt(0) <= newtype$check#26 && newtype$check#26 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##8 := $Unbox(Map#Elements(u#0)[$Box(LitInt(1))]): int == LitInt(42);
    call {:id "id45"} Call$$_module.__default.Test(name##8, b##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(33,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##9 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(85))), $Box(char#FromInt(112))), 
                            $Box(char#FromInt(100))), 
                          $Box(char#FromInt(97))), 
                        $Box(char#FromInt(116))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(32))), 
                  $Box(char#FromInt(79))), 
                $Box(char#FromInt(116))), 
              $Box(char#FromInt(104))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(114))), 
        $Box(char#FromInt(115))));
    newtype$check#27 := LitInt(2);
    assert {:id "id46"} LitInt(0) <= newtype$check#27 && newtype$check#27 < 4294967296;
    assert {:id "id47"} Set#IsMember(Map#Domain(u#0), $Box(LitInt(2)));
    newtype$check#28 := LitInt(1);
    assert {:id "id48"} LitInt(0) <= newtype$check#28 && newtype$check#28 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##9 := $Unbox(Map#Elements(u#0)[$Box(LitInt(2))]): int == LitInt(1);
    call {:id "id49"} Call$$_module.__default.Test(name##9, b##9);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(35,14)
    assume true;
    assume true;
    s_keys#0 := Map#Domain(s#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(36,14)
    assume true;
    assume true;
    t_keys#0 := Map#Domain(t#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(37,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##10 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(75))), $Box(char#FromInt(101))), 
                      $Box(char#FromInt(121))), 
                    $Box(char#FromInt(115))), 
                  $Box(char#FromInt(32))), 
                $Box(char#FromInt(101))), 
              $Box(char#FromInt(113))), 
            $Box(char#FromInt(117))), 
          $Box(char#FromInt(97))), 
        $Box(char#FromInt(108))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##10 := Set#Equal(s_keys#0, t_keys#0);
    call {:id "id52"} Call$$_module.__default.Test(name##10, b##10);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(38,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##11 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(75))), $Box(char#FromInt(101))), 
                                    $Box(char#FromInt(121))), 
                                  $Box(char#FromInt(115))), 
                                $Box(char#FromInt(32))), 
                              $Box(char#FromInt(109))), 
                            $Box(char#FromInt(101))), 
                          $Box(char#FromInt(109))), 
                        $Box(char#FromInt(98))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(115))), 
                $Box(char#FromInt(104))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(112))), 
          $Box(char#FromInt(32))), 
        $Box(char#FromInt(49))));
    newtype$check#29 := LitInt(1);
    assert {:id "id53"} LitInt(0) <= newtype$check#29 && newtype$check#29 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##11 := Set#IsMember(s_keys#0, $Box(LitInt(1)));
    call {:id "id54"} Call$$_module.__default.Test(name##11, b##11);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(39,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##12 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(75))), $Box(char#FromInt(101))), 
                                    $Box(char#FromInt(121))), 
                                  $Box(char#FromInt(115))), 
                                $Box(char#FromInt(32))), 
                              $Box(char#FromInt(109))), 
                            $Box(char#FromInt(101))), 
                          $Box(char#FromInt(109))), 
                        $Box(char#FromInt(98))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(115))), 
                $Box(char#FromInt(104))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(112))), 
          $Box(char#FromInt(32))), 
        $Box(char#FromInt(50))));
    newtype$check#30 := LitInt(2);
    assert {:id "id55"} LitInt(0) <= newtype$check#30 && newtype$check#30 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##12 := Set#IsMember(s_keys#0, $Box(LitInt(2)));
    call {:id "id56"} Call$$_module.__default.Test(name##12, b##12);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(40,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##13 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(75))), $Box(char#FromInt(101))), 
                                    $Box(char#FromInt(121))), 
                                  $Box(char#FromInt(115))), 
                                $Box(char#FromInt(32))), 
                              $Box(char#FromInt(109))), 
                            $Box(char#FromInt(101))), 
                          $Box(char#FromInt(109))), 
                        $Box(char#FromInt(98))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(115))), 
                $Box(char#FromInt(104))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(112))), 
          $Box(char#FromInt(32))), 
        $Box(char#FromInt(51))));
    newtype$check#31 := LitInt(3);
    assert {:id "id57"} LitInt(0) <= newtype$check#31 && newtype$check#31 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##13 := Set#IsMember(s_keys#0, $Box(LitInt(3)));
    call {:id "id58"} Call$$_module.__default.Test(name##13, b##13);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(41,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##14 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(75))), $Box(char#FromInt(101))), 
                                    $Box(char#FromInt(121))), 
                                  $Box(char#FromInt(115))), 
                                $Box(char#FromInt(32))), 
                              $Box(char#FromInt(109))), 
                            $Box(char#FromInt(101))), 
                          $Box(char#FromInt(109))), 
                        $Box(char#FromInt(98))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(115))), 
                $Box(char#FromInt(104))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(112))), 
          $Box(char#FromInt(32))), 
        $Box(char#FromInt(52))));
    newtype$check#32 := LitInt(4);
    assert {:id "id59"} LitInt(0) <= newtype$check#32 && newtype$check#32 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##14 := Set#IsMember(s_keys#0, $Box(LitInt(4)));
    call {:id "id60"} Call$$_module.__default.Test(name##14, b##14);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 4 == $FunctionContextHeight;
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
  free requires 4 == $FunctionContextHeight;
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

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(46,8)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id61"} Call$$_module.__default.Basic();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(47,26)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id62"} Call$$_module.__default.TestMapMergeSubtraction();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TestMapMergeSubtraction (well-formedness)"} CheckWellFormed$$_module.__default.TestMapMergeSubtraction();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapMergeSubtraction (call)"} Call$$_module.__default.TestMapMergeSubtraction();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapMergeSubtraction (correctness)"} Impl$$_module.__default.TestMapMergeSubtraction() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapMergeSubtraction (correctness)"} Impl$$_module.__default.TestMapMergeSubtraction() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestMapMergeSubtraction, Impl$$_module.__default.TestMapMergeSubtraction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(51,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id63"} Call$$_module.__default.TestMapMerge();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(52,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id64"} Call$$_module.__default.TestMapSubtraction();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(53,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id65"} Call$$_module.__default.TestNullsAmongKeys();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(54,23)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id66"} Call$$_module.__default.TestNullsAmongValues();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TestMapMerge (well-formedness)"} CheckWellFormed$$_module.__default.TestMapMerge();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapMerge (call)"} Call$$_module.__default.TestMapMerge();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapMerge (correctness)"} Impl$$_module.__default.TestMapMerge() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapMerge (correctness)"} Impl$$_module.__default.TestMapMerge() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TSeq(TChar), Tclass._module.uint32()))
       && $IsAlloc(a#0, TMap(TSeq(TChar), Tclass._module.uint32()), $Heap);
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var b#0: Map
     where $Is(b#0, TMap(TSeq(TChar), Tclass._module.uint32()))
       && $IsAlloc(b#0, TMap(TSeq(TChar), Tclass._module.uint32()), $Heap);
  var newtype$check#4: int;
  var newtype$check#5: int;
  var ages#0: Map
     where $Is(ages#0, TMap(TSeq(TChar), Tclass._module.uint32()))
       && $IsAlloc(ages#0, TMap(TSeq(TChar), Tclass._module.uint32()), $Heap);
  var newtype$check#6: int;
  var newtype$check#7: int;

    // AddMethodImpl: TestMapMerge, Impl$$_module.__default.TestMapMerge
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(58,9)
    assume true;
    newtype$check#0 := LitInt(66);
    assert {:id "id67"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    newtype$check#1 := LitInt(66);
    assert {:id "id68"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    newtype$check#2 := LitInt(70);
    assert {:id "id69"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    newtype$check#3 := LitInt(8);
    assert {:id "id70"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
    assume true;
    a#0 := Lit(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, 
            $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(111))), 
                        $Box(char#FromInt(110))), 
                      $Box(char#FromInt(97))), 
                    $Box(char#FromInt(108))), 
                  $Box(char#FromInt(100))))), 
            $Box(LitInt(66))), 
          $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
                  $Box(char#FromInt(99))), 
                $Box(char#FromInt(107))))), 
          $Box(LitInt(70))), 
        $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))), 
        $Box(LitInt(8))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(59,9)
    assume true;
    newtype$check#4 := LitInt(52);
    assert {:id "id72"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
    newtype$check#5 := LitInt(67);
    assert {:id "id73"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 4294967296;
    assume true;
    b#0 := Lit(Map#Build(Map#Build(Map#Empty(): Map, 
          $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(119))), $Box(char#FromInt(101))), 
                    $Box(char#FromInt(110))), 
                  $Box(char#FromInt(100))), 
                $Box(char#FromInt(121))))), 
          $Box(LitInt(52))), 
        $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))), 
        $Box(LitInt(67))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(60,12)
    assume true;
    assume true;
    ages#0 := Map#Merge(a#0, b#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(61,3)
    assert {:id "id76"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
              $Box(char#FromInt(99))), 
            $Box(char#FromInt(107))))));
    newtype$check#6 := LitInt(70);
    assert {:id "id77"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 4294967296;
    assume true;
    assert {:id "id78"} $Unbox(Map#Elements(ages#0)[$Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
                $Box(char#FromInt(99))), 
              $Box(char#FromInt(107)))))]): int
       == LitInt(70);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(62,3)
    assert {:id "id79"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))));
    newtype$check#7 := LitInt(67);
    assert {:id "id80"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 4294967296;
    assume true;
    assert {:id "id81"} $Unbox(Map#Elements(ages#0)[$Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107)))))]): int
       == LitInt(67);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(63,3)
    assume true;
    assert {:id "id82"} !Set#IsMember(Map#Domain(ages#0), 
      $Box(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(97))), 
                  $Box(char#FromInt(110))), 
                $Box(char#FromInt(100))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(114))), 
          $Box(char#FromInt(115)))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(64,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(65,3)
    assert {:id "id83"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
              $Box(char#FromInt(99))), 
            $Box(char#FromInt(107))))));
    assume true;
    assume true;
    assert {:id "id84"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(119))), $Box(char#FromInt(101))), 
                $Box(char#FromInt(110))), 
              $Box(char#FromInt(100))), 
            $Box(char#FromInt(121))))));
    assume true;
    assume true;
    assert {:id "id85"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(111))), 
                  $Box(char#FromInt(110))), 
                $Box(char#FromInt(97))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(100))))));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(66,3)
    assert {:id "id86"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))));
    assume true;
    assume true;
    assert {:id "id87"} {:subsumption 0} Set#IsMember(Map#Domain(b#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))));
    assume true;
    assume true;
    assert {:id "id88"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))));
    assume true;
    assume true;
}



procedure {:verboseName "TestMapSubtraction (well-formedness)"} CheckWellFormed$$_module.__default.TestMapSubtraction();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapSubtraction (call)"} Call$$_module.__default.TestMapSubtraction();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapSubtraction (correctness)"} Impl$$_module.__default.TestMapSubtraction() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapSubtraction (correctness)"} Impl$$_module.__default.TestMapSubtraction() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ages#0: Map
     where $Is(ages#0, TMap(TSeq(TChar), Tclass._module.uint32()))
       && $IsAlloc(ages#0, TMap(TSeq(TChar), Tclass._module.uint32()), $Heap);
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var d#0: Map
     where $Is(d#0, TMap(TSeq(TChar), Tclass._module.uint32()))
       && $IsAlloc(d#0, TMap(TSeq(TChar), Tclass._module.uint32()), $Heap);
  var e#0: Map
     where $Is(e#0, TMap(TSeq(TChar), Tclass._module.uint32()))
       && $IsAlloc(e#0, TMap(TSeq(TChar), Tclass._module.uint32()), $Heap);

    // AddMethodImpl: TestMapSubtraction, Impl$$_module.__default.TestMapSubtraction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(70,12)
    assume true;
    newtype$check#0 := LitInt(66);
    assert {:id "id89"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    newtype$check#1 := LitInt(66);
    assert {:id "id90"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    newtype$check#2 := LitInt(70);
    assert {:id "id91"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    newtype$check#3 := LitInt(67);
    assert {:id "id92"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
    newtype$check#4 := LitInt(52);
    assert {:id "id93"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
    assume true;
    ages#0 := Lit(Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, 
              $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(111))), 
                          $Box(char#FromInt(110))), 
                        $Box(char#FromInt(97))), 
                      $Box(char#FromInt(108))), 
                    $Box(char#FromInt(100))))), 
              $Box(LitInt(66))), 
            $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
                    $Box(char#FromInt(99))), 
                  $Box(char#FromInt(107))))), 
            $Box(LitInt(70))), 
          $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))), 
          $Box(LitInt(67))), 
        $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(119))), $Box(char#FromInt(101))), 
                  $Box(char#FromInt(110))), 
                $Box(char#FromInt(100))), 
              $Box(char#FromInt(121))))), 
        $Box(LitInt(52))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(71,9)
    assume true;
    assume true;
    d#0 := Map#Subtract(ages#0, Set#Empty(): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(72,9)
    assume true;
    assume true;
    e#0 := Map#Subtract(ages#0, 
      Set#UnionOne(Set#UnionOne(Set#Empty(): Set, 
          $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
                  $Box(char#FromInt(99))), 
                $Box(char#FromInt(107)))))), 
        $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(97))), 
                      $Box(char#FromInt(110))), 
                    $Box(char#FromInt(100))), 
                  $Box(char#FromInt(101))), 
                $Box(char#FromInt(114))), 
              $Box(char#FromInt(115)))))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(73,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(74,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(75,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "TestNullsAmongKeys (well-formedness)"} CheckWellFormed$$_module.__default.TestNullsAmongKeys();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestNullsAmongKeys (call)"} Call$$_module.__default.TestNullsAmongKeys();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestNullsAmongKeys (correctness)"} Impl$$_module.__default.TestNullsAmongKeys() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.MyClass() : Ty
uses {
// Tclass._module.MyClass Tag
axiom Tag(Tclass._module.MyClass()) == Tagclass._module.MyClass
   && TagFamily(Tclass._module.MyClass()) == tytagFamily$MyClass;
}

const unique Tagclass._module.MyClass: TyTag;

// Box/unbox axiom for Tclass._module.MyClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass()) } 
  $IsBox(bx, Tclass._module.MyClass())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass()));

function Tclass._module.MyClass?() : Ty
uses {
// Tclass._module.MyClass? Tag
axiom Tag(Tclass._module.MyClass?()) == Tagclass._module.MyClass?
   && TagFamily(Tclass._module.MyClass?()) == tytagFamily$MyClass;
}

const unique Tagclass._module.MyClass?: TyTag;

// Box/unbox axiom for Tclass._module.MyClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass?()) } 
  $IsBox(bx, Tclass._module.MyClass?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestNullsAmongKeys (correctness)"} Impl$$_module.__default.TestNullsAmongKeys() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: ref
     where defass#a#0
       ==> $Is(a#0, Tclass._module.MyClass())
         && $IsAlloc(a#0, Tclass._module.MyClass(), $Heap);
  var $nw: ref;
  var name##0: Seq;
  var defass#b#0: bool;
  var b#0: ref
     where defass#b#0
       ==> $Is(b#0, Tclass._module.MyClass())
         && $IsAlloc(b#0, Tclass._module.MyClass(), $Heap);
  var name##1: Seq;
  var c#0: ref
     where $Is(c#0, Tclass._module.MyClass?())
       && $IsAlloc(c#0, Tclass._module.MyClass?(), $Heap);
  var newtype$check#0: ref;
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.MyClass())
         && $IsAlloc(d#0, Tclass._module.MyClass(), $Heap);
  var name##2: Seq;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.MyClass())
         && $IsAlloc(e#0, Tclass._module.MyClass(), $Heap);
  var name##3: Seq;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()))
       && $IsAlloc(m#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()), $Heap);
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var n#0: Map
     where $Is(n#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()))
       && $IsAlloc(n#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()), $Heap);
  var newtype$check#6: int;
  var newtype$check#7: int;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var o#0: Map
     where $Is(o#0, TMap(Tclass._module.MyClass(), Tclass._module.uint32()))
       && $IsAlloc(o#0, TMap(Tclass._module.MyClass(), Tclass._module.uint32()), $Heap);
  var newtype$check#10: int;
  var newtype$check#11: int;
  var o'#0: Map
     where $Is(o'#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()))
       && $IsAlloc(o'#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()), $Heap);
  var newtype$check#12: int;
  var newtype$check#13: int;
  var newtype$check#14: int;
  var o''#0: Map
     where $Is(o''#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()))
       && $IsAlloc(o''#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()), $Heap);
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var o3#0: Map
     where $Is(o3#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()))
       && $IsAlloc(o3#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()), $Heap);
  var newtype$check#18: int;
  var newtype$check#19: int;
  var x0#0: bool;
  var x1#0: bool;
  var x2#0: bool;
  var $rhs#0: bool;
  var $rhs#1: bool;
  var $rhs#2: bool;
  var p#0: Map
     where $Is(p#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()))
       && $IsAlloc(p#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()), $Heap);
  var q#0: Map
     where $Is(q#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()))
       && $IsAlloc(q#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()), $Heap);
  var r#0: Map
     where $Is(r#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()))
       && $IsAlloc(r#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()), $Heap);
  var s#0: Map
     where $Is(s#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()))
       && $IsAlloc(s#0, TMap(Tclass._module.MyClass?(), Tclass._module.uint32()), $Heap);
  var y0#0: bool;
  var y1#0: bool;
  var y2#0: bool;
  var y3#0: bool;
  var $rhs#3: bool;
  var $rhs#4: bool;
  var $rhs#5: bool;
  var $rhs#6: bool;
  var $rhs##0: Map;
  var $rhs##1: Map;
  var $rhs##2: Map;
  var m##0: Map;
  var n##0: Map;
  var o##0: Map;
  var a##0: ref;
  var b##0: ref;

    // AddMethodImpl: TestNullsAmongKeys, Impl$$_module.__default.TestNullsAmongKeys
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(86,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(86,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(111))), 
              $Box(char#FromInt(110))), 
            $Box(char#FromInt(97))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(100))));
    call {:id "id97"} $nw := Call$$_module.MyClass.__ctor(name##0);
    // TrCallStmt: After ProcessCallStmt
    a#0 := $nw;
    defass#a#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(87,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(87,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(119))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(100))), 
        $Box(char#FromInt(121))));
    call {:id "id99"} $nw := Call$$_module.MyClass.__ctor(name##1);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $nw;
    defass#b#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(88,19)
    assume true;
    newtype$check#0 := null;
    assume true;
    c#0 := null;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(89,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(89,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
          $Box(char#FromInt(99))), 
        $Box(char#FromInt(107))));
    call {:id "id102"} $nw := Call$$_module.MyClass.__ctor(name##2);
    // TrCallStmt: After ProcessCallStmt
    d#0 := $nw;
    defass#d#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(90,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(90,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(105))), 
                $Box(char#FromInt(98))), 
              $Box(char#FromInt(121))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(97))));
    call {:id "id104"} $nw := Call$$_module.MyClass.__ctor(name##3);
    // TrCallStmt: After ProcessCallStmt
    e#0 := $nw;
    defass#e#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(92,9)
    assume true;
    assert {:id "id106"} defass#a#0;
    newtype$check#1 := LitInt(0);
    assert {:id "id107"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    newtype$check#2 := LitInt(0);
    assert {:id "id108"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    assert {:id "id109"} defass#b#0;
    newtype$check#3 := LitInt(1);
    assert {:id "id110"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
    newtype$check#4 := LitInt(2);
    assert {:id "id111"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
    assert {:id "id112"} defass#d#0;
    newtype$check#5 := LitInt(3);
    assert {:id "id113"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 4294967296;
    assume true;
    m#0 := Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(a#0), $Box(LitInt(0))), 
          $Box(b#0), 
          $Box(LitInt(1))), 
        $Box(c#0), 
        $Box(LitInt(2))), 
      $Box(d#0), 
      $Box(LitInt(3)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(93,9)
    assume true;
    assert {:id "id115"} defass#a#0;
    newtype$check#6 := LitInt(0);
    assert {:id "id116"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 4294967296;
    assert {:id "id117"} defass#b#0;
    newtype$check#7 := LitInt(10);
    assert {:id "id118"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 4294967296;
    newtype$check#8 := LitInt(20);
    assert {:id "id119"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 4294967296;
    assert {:id "id120"} defass#e#0;
    newtype$check#9 := LitInt(4);
    assert {:id "id121"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 4294967296;
    assume true;
    n#0 := Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(a#0), $Box(LitInt(0))), 
          $Box(b#0), 
          $Box(LitInt(10))), 
        $Box(c#0), 
        $Box(LitInt(20))), 
      $Box(e#0), 
      $Box(LitInt(4)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(94,9)
    assume true;
    assert {:id "id123"} defass#b#0;
    newtype$check#10 := LitInt(199);
    assert {:id "id124"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 4294967296;
    assert {:id "id125"} defass#a#0;
    newtype$check#11 := LitInt(198);
    assert {:id "id126"} LitInt(0) <= newtype$check#11 && newtype$check#11 < 4294967296;
    assume true;
    o#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(b#0), $Box(LitInt(199))), 
      $Box(a#0), 
      $Box(LitInt(198)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(96,10)
    assume true;
    assert {:id "id128"} defass#b#0;
    newtype$check#12 := LitInt(199);
    assert {:id "id129"} LitInt(0) <= newtype$check#12 && newtype$check#12 < 4294967296;
    newtype$check#13 := LitInt(55);
    assert {:id "id130"} LitInt(0) <= newtype$check#13 && newtype$check#13 < 4294967296;
    assert {:id "id131"} defass#a#0;
    newtype$check#14 := LitInt(198);
    assert {:id "id132"} LitInt(0) <= newtype$check#14 && newtype$check#14 < 4294967296;
    assume true;
    o'#0 := Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(b#0), $Box(LitInt(199))), 
        $Box(c#0), 
        $Box(LitInt(55))), 
      $Box(a#0), 
      $Box(LitInt(198)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(97,11)
    assume true;
    assert {:id "id134"} defass#b#0;
    newtype$check#15 := LitInt(199);
    assert {:id "id135"} LitInt(0) <= newtype$check#15 && newtype$check#15 < 4294967296;
    newtype$check#16 := LitInt(56);
    assert {:id "id136"} LitInt(0) <= newtype$check#16 && newtype$check#16 < 4294967296;
    assert {:id "id137"} defass#a#0;
    newtype$check#17 := LitInt(198);
    assert {:id "id138"} LitInt(0) <= newtype$check#17 && newtype$check#17 < 4294967296;
    assume true;
    o''#0 := Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(b#0), $Box(LitInt(199))), 
        $Box(c#0), 
        $Box(LitInt(56))), 
      $Box(a#0), 
      $Box(LitInt(198)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(98,10)
    assume true;
    newtype$check#18 := LitInt(3);
    assert {:id "id140"} LitInt(0) <= newtype$check#18 && newtype$check#18 < 4294967296;
    assert {:id "id141"} defass#d#0;
    newtype$check#19 := LitInt(16);
    assert {:id "id142"} LitInt(0) <= newtype$check#19 && newtype$check#19 < 4294967296;
    assume true;
    o3#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(c#0), $Box(LitInt(3))), 
      $Box(d#0), 
      $Box(LitInt(16)));
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(99,18)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := Map#Equal(o#0, o'#0);
    assume true;
    $rhs#1 := Map#Equal(o'#0, o''#0);
    assume true;
    $rhs#2 := Map#Equal(o'#0, o'#0);
    x0#0 := $rhs#0;
    x1#0 := $rhs#1;
    x2#0 := $rhs#2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(100,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(102,9)
    assume true;
    assume true;
    p#0 := Map#Merge(m#0, n#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(103,9)
    assume true;
    assume true;
    q#0 := Map#Merge(n#0, o#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(104,9)
    assume true;
    assume true;
    r#0 := Map#Merge(o#0, m#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(105,9)
    assume true;
    assume true;
    s#0 := Map#Merge(o3#0, o#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(106,22)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#3 := Map#Equal(p#0, Map#Merge(n#0, m#0));
    assume true;
    $rhs#4 := Map#Equal(q#0, Map#Merge(o#0, n#0));
    assume true;
    $rhs#5 := Map#Equal(r#0, Map#Merge(m#0, o#0));
    assume true;
    $rhs#6 := Map#Equal(s#0, Map#Merge(o#0, o3#0));
    y0#0 := $rhs#3;
    y1#0 := $rhs#4;
    y2#0 := $rhs#5;
    y3#0 := $rhs#6;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(107,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(109,3)
    assert {:id "id162"} defass#a#0;
    assert {:id "id163"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id164"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id165"} defass#e#0;
    assert {:id "id166"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(e#0));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(110,3)
    assert {:id "id167"} defass#a#0;
    assert {:id "id168"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id169"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id170"} defass#e#0;
    assert {:id "id171"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(e#0));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(111,3)
    assert {:id "id172"} defass#a#0;
    assert {:id "id173"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id174"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id175"} defass#e#0;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(113,24)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type map<MyClass?, uint32>
    // TrCallStmt: Adding lhs with type map<MyClass?, uint32>
    // TrCallStmt: Adding lhs with type map<MyClass?, uint32>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := m#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := o#0;
    assert {:id "id176"} defass#a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assert {:id "id177"} defass#e#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := e#0;
    call {:id "id178"} $rhs##0, $rhs##1, $rhs##2 := Call$$_module.__default.GenericMap(Tclass._module.MyClass?(), Tclass._module.uint32(), m##0, n##0, o##0, $Box(a##0), $Box(b##0));
    // TrCallStmt: After ProcessCallStmt
    p#0 := $rhs##0;
    q#0 := $rhs##1;
    r#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(114,3)
    assert {:id "id182"} defass#a#0;
    assert {:id "id183"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id184"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id185"} defass#e#0;
    assert {:id "id186"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(e#0));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(115,3)
    assert {:id "id187"} defass#a#0;
    assert {:id "id188"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id189"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id190"} defass#e#0;
    assert {:id "id191"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(e#0));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(116,3)
    assert {:id "id192"} defass#a#0;
    assert {:id "id193"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id194"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id195"} defass#e#0;
    assume true;
    assume true;
}



procedure {:verboseName "GenericMap (well-formedness)"} CheckWellFormed$$_module.__default.GenericMap(_module._default.GenericMap$K: Ty, 
    _module._default.GenericMap$V: Ty, 
    m#0: Map
       where $Is(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    o#0: Map
       where $Is(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    a#0: Box
       where $IsBox(a#0, _module._default.GenericMap$K)
         && $IsAllocBox(a#0, _module._default.GenericMap$K, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.GenericMap$K)
         && $IsAllocBox(b#0, _module._default.GenericMap$K, $Heap))
   returns (p#0: Map
       where $Is(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    q#0: Map
       where $Is(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    r#0: Map
       where $Is(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericMap (call)"} Call$$_module.__default.GenericMap(_module._default.GenericMap$K: Ty, 
    _module._default.GenericMap$V: Ty, 
    m#0: Map
       where $Is(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    o#0: Map
       where $Is(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    a#0: Box
       where $IsBox(a#0, _module._default.GenericMap$K)
         && $IsAllocBox(a#0, _module._default.GenericMap$K, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.GenericMap$K)
         && $IsAllocBox(b#0, _module._default.GenericMap$K, $Heap))
   returns (p#0: Map
       where $Is(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    q#0: Map
       where $Is(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    r#0: Map
       where $Is(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap));
  // user-defined preconditions
  requires {:id "id203"} Set#IsMember(Map#Domain(m#0), a#0);
  requires {:id "id204"} Set#IsMember(Map#Domain(n#0), a#0);
  requires {:id "id205"} !Set#IsMember(Map#Domain(m#0), b#0);
  requires {:id "id206"} !Set#IsMember(Map#Domain(o#0), b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id207"} Map#Equal(p#0, Map#Merge(m#0, n#0));
  ensures {:id "id208"} Map#Equal(q#0, Map#Merge(n#0, o#0));
  ensures {:id "id209"} Map#Equal(r#0, Map#Merge(o#0, m#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericMap (correctness)"} Impl$$_module.__default.GenericMap(_module._default.GenericMap$K: Ty, 
    _module._default.GenericMap$V: Ty, 
    m#0: Map
       where $Is(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    o#0: Map
       where $Is(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    a#0: Box
       where $IsBox(a#0, _module._default.GenericMap$K)
         && $IsAllocBox(a#0, _module._default.GenericMap$K, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.GenericMap$K)
         && $IsAllocBox(b#0, _module._default.GenericMap$K, $Heap))
   returns (p#0: Map
       where $Is(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    q#0: Map
       where $Is(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    r#0: Map
       where $Is(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id210"} Set#IsMember(Map#Domain(m#0), a#0);
  requires {:id "id211"} Set#IsMember(Map#Domain(n#0), a#0);
  requires {:id "id212"} !Set#IsMember(Map#Domain(m#0), b#0);
  requires {:id "id213"} !Set#IsMember(Map#Domain(o#0), b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id214"} Map#Equal(p#0, Map#Merge(m#0, n#0));
  ensures {:id "id215"} Map#Equal(q#0, Map#Merge(n#0, o#0));
  ensures {:id "id216"} Map#Equal(r#0, Map#Merge(o#0, m#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericMap (correctness)"} Impl$$_module.__default.GenericMap(_module._default.GenericMap$K: Ty, 
    _module._default.GenericMap$V: Ty, 
    m#0: Map, 
    n#0: Map, 
    o#0: Map, 
    a#0: Box, 
    b#0: Box)
   returns (p#0: Map, q#0: Map, r#0: Map, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: GenericMap, Impl$$_module.__default.GenericMap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(125,5)
    assume true;
    assume true;
    p#0 := Map#Merge(m#0, n#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(126,5)
    assume true;
    assume true;
    q#0 := Map#Merge(n#0, o#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(127,5)
    assume true;
    assume true;
    r#0 := Map#Merge(o#0, m#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(128,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(130,3)
    assume true;
    assert {:id "id220"} Set#Equal(Map#Domain(p#0), Set#Union(Map#Domain(m#0), Map#Domain(n#0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(131,3)
    assume true;
    assert {:id "id221"} Set#Equal(Map#Domain(q#0), Set#Union(Map#Domain(o#0), Map#Domain(n#0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(132,3)
    assume true;
    assert {:id "id222"} Set#Equal(Map#Domain(r#0), Set#Union(Map#Domain(m#0), Map#Domain(o#0)));
}



procedure {:verboseName "TestNullsAmongValues (well-formedness)"} CheckWellFormed$$_module.__default.TestNullsAmongValues();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestNullsAmongValues (call)"} Call$$_module.__default.TestNullsAmongValues();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestNullsAmongValues (correctness)"} Impl$$_module.__default.TestNullsAmongValues() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestNullsAmongValues (correctness)"} Impl$$_module.__default.TestNullsAmongValues() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: ref
     where defass#a#0
       ==> $Is(a#0, Tclass._module.MyClass())
         && $IsAlloc(a#0, Tclass._module.MyClass(), $Heap);
  var $nw: ref;
  var name##0: Seq;
  var defass#b#0: bool;
  var b#0: ref
     where defass#b#0
       ==> $Is(b#0, Tclass._module.MyClass())
         && $IsAlloc(b#0, Tclass._module.MyClass(), $Heap);
  var name##1: Seq;
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.MyClass())
         && $IsAlloc(d#0, Tclass._module.MyClass(), $Heap);
  var name##2: Seq;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.MyClass())
         && $IsAlloc(e#0, Tclass._module.MyClass(), $Heap);
  var name##3: Seq;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()))
       && $IsAlloc(m#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()), $Heap);
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: ref;
  var newtype$check#4: int;
  var newtype$check#5: ref;
  var n#0: Map
     where $Is(n#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()))
       && $IsAlloc(n#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()), $Heap);
  var newtype$check#6: int;
  var newtype$check#7: int;
  var newtype$check#8: int;
  var newtype$check#9: ref;
  var newtype$check#10: int;
  var o#0: Map
     where $Is(o#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()))
       && $IsAlloc(o#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()), $Heap);
  var newtype$check#11: int;
  var newtype$check#12: ref;
  var newtype$check#13: int;
  var o'#0: Map
     where $Is(o'#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()))
       && $IsAlloc(o'#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()), $Heap);
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: ref;
  var newtype$check#17: int;
  var o''#0: Map
     where $Is(o''#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()))
       && $IsAlloc(o''#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()), $Heap);
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: ref;
  var newtype$check#21: int;
  var o3#0: Map
     where $Is(o3#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()))
       && $IsAlloc(o3#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()), $Heap);
  var newtype$check#22: int;
  var newtype$check#23: ref;
  var newtype$check#24: int;
  var x0#0: bool;
  var x1#0: bool;
  var x2#0: bool;
  var $rhs#0: bool;
  var $rhs#1: bool;
  var $rhs#2: bool;
  var p#0: Map
     where $Is(p#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()))
       && $IsAlloc(p#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()), $Heap);
  var q#0: Map
     where $Is(q#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()))
       && $IsAlloc(q#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()), $Heap);
  var r#0: Map
     where $Is(r#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()))
       && $IsAlloc(r#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()), $Heap);
  var s#0: Map
     where $Is(s#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()))
       && $IsAlloc(s#0, TMap(Tclass._module.uint32(), Tclass._module.MyClass?()), $Heap);
  var y0#0: bool;
  var y1#0: bool;
  var y2#0: bool;
  var y3#0: bool;
  var $rhs#3: bool;
  var $rhs#4: bool;
  var $rhs#5: bool;
  var $rhs#6: bool;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: int;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var $rhs##0: Map;
  var $rhs##1: Map;
  var $rhs##2: Map;
  var m##0: Map;
  var n##0: Map;
  var o##0: Map;
  var a##0: int;
  var newtype$check#34: int;
  var b##0: int;
  var newtype$check#35: int;
  var newtype$check#36: int;
  var newtype$check#37: int;
  var newtype$check#38: int;
  var newtype$check#39: int;
  var newtype$check#40: int;
  var newtype$check#41: int;
  var newtype$check#42: int;
  var newtype$check#43: int;
  var newtype$check#44: int;

    // AddMethodImpl: TestNullsAmongValues, Impl$$_module.__default.TestNullsAmongValues
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(136,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(136,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(111))), 
              $Box(char#FromInt(110))), 
            $Box(char#FromInt(97))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(100))));
    call {:id "id223"} $nw := Call$$_module.MyClass.__ctor(name##0);
    // TrCallStmt: After ProcessCallStmt
    a#0 := $nw;
    defass#a#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(137,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(137,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(119))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(100))), 
        $Box(char#FromInt(121))));
    call {:id "id225"} $nw := Call$$_module.MyClass.__ctor(name##1);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $nw;
    defass#b#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(138,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(138,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
          $Box(char#FromInt(99))), 
        $Box(char#FromInt(107))));
    call {:id "id227"} $nw := Call$$_module.MyClass.__ctor(name##2);
    // TrCallStmt: After ProcessCallStmt
    d#0 := $nw;
    defass#d#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(139,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(139,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(105))), 
                $Box(char#FromInt(98))), 
              $Box(char#FromInt(121))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(97))));
    call {:id "id229"} $nw := Call$$_module.MyClass.__ctor(name##3);
    // TrCallStmt: After ProcessCallStmt
    e#0 := $nw;
    defass#e#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(141,32)
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id231"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    assert {:id "id232"} defass#a#0;
    newtype$check#1 := LitInt(1);
    assert {:id "id233"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    assert {:id "id234"} defass#b#0;
    newtype$check#2 := LitInt(2);
    assert {:id "id235"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    newtype$check#3 := null;
    newtype$check#4 := LitInt(3);
    assert {:id "id236"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
    newtype$check#5 := null;
    assume true;
    m#0 := Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(0)), $Box(a#0)), 
          $Box(LitInt(1)), 
          $Box(b#0)), 
        $Box(LitInt(2)), 
        $Box(null)), 
      $Box(LitInt(3)), 
      $Box(null));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(142,32)
    assume true;
    newtype$check#6 := LitInt(0);
    assert {:id "id238"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 4294967296;
    assert {:id "id239"} defass#d#0;
    newtype$check#7 := LitInt(10);
    assert {:id "id240"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 4294967296;
    assert {:id "id241"} defass#b#0;
    newtype$check#8 := LitInt(20);
    assert {:id "id242"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 4294967296;
    newtype$check#9 := null;
    newtype$check#10 := LitInt(4);
    assert {:id "id243"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 4294967296;
    assert {:id "id244"} defass#e#0;
    assume true;
    n#0 := Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(0)), $Box(d#0)), 
          $Box(LitInt(10)), 
          $Box(b#0)), 
        $Box(LitInt(20)), 
        $Box(null)), 
      $Box(LitInt(4)), 
      $Box(e#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(143,32)
    assume true;
    newtype$check#11 := LitInt(199);
    assert {:id "id246"} LitInt(0) <= newtype$check#11 && newtype$check#11 < 4294967296;
    newtype$check#12 := null;
    newtype$check#13 := LitInt(198);
    assert {:id "id247"} LitInt(0) <= newtype$check#13 && newtype$check#13 < 4294967296;
    assert {:id "id248"} defass#a#0;
    assume true;
    o#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(199)), $Box(null)), 
      $Box(LitInt(198)), 
      $Box(a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(145,33)
    assume true;
    newtype$check#14 := LitInt(199);
    assert {:id "id250"} LitInt(0) <= newtype$check#14 && newtype$check#14 < 4294967296;
    assert {:id "id251"} defass#b#0;
    newtype$check#15 := LitInt(55);
    assert {:id "id252"} LitInt(0) <= newtype$check#15 && newtype$check#15 < 4294967296;
    newtype$check#16 := null;
    newtype$check#17 := LitInt(198);
    assert {:id "id253"} LitInt(0) <= newtype$check#17 && newtype$check#17 < 4294967296;
    assert {:id "id254"} defass#a#0;
    assume true;
    o'#0 := Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(199)), $Box(b#0)), 
        $Box(LitInt(55)), 
        $Box(null)), 
      $Box(LitInt(198)), 
      $Box(a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(146,34)
    assume true;
    newtype$check#18 := LitInt(199);
    assert {:id "id256"} LitInt(0) <= newtype$check#18 && newtype$check#18 < 4294967296;
    assert {:id "id257"} defass#b#0;
    newtype$check#19 := LitInt(56);
    assert {:id "id258"} LitInt(0) <= newtype$check#19 && newtype$check#19 < 4294967296;
    newtype$check#20 := null;
    newtype$check#21 := LitInt(198);
    assert {:id "id259"} LitInt(0) <= newtype$check#21 && newtype$check#21 < 4294967296;
    assert {:id "id260"} defass#a#0;
    assume true;
    o''#0 := Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(199)), $Box(b#0)), 
        $Box(LitInt(56)), 
        $Box(null)), 
      $Box(LitInt(198)), 
      $Box(a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(147,33)
    assume true;
    newtype$check#22 := LitInt(3);
    assert {:id "id262"} LitInt(0) <= newtype$check#22 && newtype$check#22 < 4294967296;
    newtype$check#23 := null;
    newtype$check#24 := LitInt(16);
    assert {:id "id263"} LitInt(0) <= newtype$check#24 && newtype$check#24 < 4294967296;
    assert {:id "id264"} defass#d#0;
    assume true;
    o3#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(3)), $Box(null)), 
      $Box(LitInt(16)), 
      $Box(d#0));
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(148,18)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := Map#Equal(o#0, o'#0);
    assume true;
    $rhs#1 := Map#Equal(o'#0, o''#0);
    assume true;
    $rhs#2 := Map#Equal(o'#0, o'#0);
    x0#0 := $rhs#0;
    x1#0 := $rhs#1;
    x2#0 := $rhs#2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(149,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(151,9)
    assume true;
    assume true;
    p#0 := Map#Merge(m#0, n#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(152,9)
    assume true;
    assume true;
    q#0 := Map#Merge(n#0, o#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(153,9)
    assume true;
    assume true;
    r#0 := Map#Merge(o#0, m#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(154,9)
    assume true;
    assume true;
    s#0 := Map#Merge(o3#0, o#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(155,22)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#3 := Map#Equal(p#0, Map#Merge(n#0, m#0));
    assume true;
    $rhs#4 := Map#Equal(q#0, Map#Merge(o#0, n#0));
    assume true;
    $rhs#5 := Map#Equal(r#0, Map#Merge(m#0, o#0));
    assume true;
    $rhs#6 := Map#Equal(s#0, Map#Merge(o#0, o3#0));
    y0#0 := $rhs#3;
    y1#0 := $rhs#4;
    y2#0 := $rhs#5;
    y3#0 := $rhs#6;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(156,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(158,3)
    newtype$check#25 := LitInt(0);
    assert {:id "id284"} LitInt(0) <= newtype$check#25 && newtype$check#25 < 4294967296;
    assert {:id "id285"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(0)));
    assert {:id "id286"} {:subsumption 0} $Unbox(Map#Elements(p#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    newtype$check#26 := LitInt(1);
    assert {:id "id287"} LitInt(0) <= newtype$check#26 && newtype$check#26 < 4294967296;
    assert {:id "id288"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(1)));
    assert {:id "id289"} {:subsumption 0} $Unbox(Map#Elements(p#0)[$Box(LitInt(1))]): ref != null;
    assume true;
    assume true;
    newtype$check#27 := LitInt(20);
    assert {:id "id290"} LitInt(0) <= newtype$check#27 && newtype$check#27 < 4294967296;
    assert {:id "id291"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(20)));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(159,3)
    newtype$check#28 := LitInt(0);
    assert {:id "id292"} LitInt(0) <= newtype$check#28 && newtype$check#28 < 4294967296;
    assert {:id "id293"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(0)));
    assert {:id "id294"} {:subsumption 0} $Unbox(Map#Elements(q#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    newtype$check#29 := LitInt(199);
    assert {:id "id295"} LitInt(0) <= newtype$check#29 && newtype$check#29 < 4294967296;
    assert {:id "id296"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(199)));
    assume true;
    assume true;
    newtype$check#30 := LitInt(20);
    assert {:id "id297"} LitInt(0) <= newtype$check#30 && newtype$check#30 < 4294967296;
    assert {:id "id298"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(20)));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(160,3)
    newtype$check#31 := LitInt(0);
    assert {:id "id299"} LitInt(0) <= newtype$check#31 && newtype$check#31 < 4294967296;
    assert {:id "id300"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(LitInt(0)));
    assert {:id "id301"} {:subsumption 0} $Unbox(Map#Elements(r#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    newtype$check#32 := LitInt(198);
    assert {:id "id302"} LitInt(0) <= newtype$check#32 && newtype$check#32 < 4294967296;
    assert {:id "id303"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(LitInt(198)));
    assert {:id "id304"} {:subsumption 0} $Unbox(Map#Elements(r#0)[$Box(LitInt(198))]): ref != null;
    assume true;
    assume true;
    newtype$check#33 := LitInt(20);
    assert {:id "id305"} LitInt(0) <= newtype$check#33 && newtype$check#33 < 4294967296;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(162,24)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type map<uint32, MyClass?>
    // TrCallStmt: Adding lhs with type map<uint32, MyClass?>
    // TrCallStmt: Adding lhs with type map<uint32, MyClass?>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := m#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := o#0;
    newtype$check#34 := LitInt(0);
    assert {:id "id306"} LitInt(0) <= newtype$check#34 && newtype$check#34 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := LitInt(0);
    newtype$check#35 := LitInt(321);
    assert {:id "id307"} LitInt(0) <= newtype$check#35 && newtype$check#35 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := LitInt(321);
    call {:id "id308"} $rhs##0, $rhs##1, $rhs##2 := Call$$_module.__default.GenericMap(Tclass._module.uint32(), Tclass._module.MyClass?(), m##0, n##0, o##0, $Box(a##0), $Box(b##0));
    // TrCallStmt: After ProcessCallStmt
    p#0 := $rhs##0;
    q#0 := $rhs##1;
    r#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(163,3)
    newtype$check#36 := LitInt(0);
    assert {:id "id312"} LitInt(0) <= newtype$check#36 && newtype$check#36 < 4294967296;
    assert {:id "id313"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(0)));
    assert {:id "id314"} {:subsumption 0} $Unbox(Map#Elements(p#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    newtype$check#37 := LitInt(1);
    assert {:id "id315"} LitInt(0) <= newtype$check#37 && newtype$check#37 < 4294967296;
    assert {:id "id316"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(1)));
    assert {:id "id317"} {:subsumption 0} $Unbox(Map#Elements(p#0)[$Box(LitInt(1))]): ref != null;
    assume true;
    assume true;
    newtype$check#38 := LitInt(20);
    assert {:id "id318"} LitInt(0) <= newtype$check#38 && newtype$check#38 < 4294967296;
    assert {:id "id319"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(20)));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(164,3)
    newtype$check#39 := LitInt(0);
    assert {:id "id320"} LitInt(0) <= newtype$check#39 && newtype$check#39 < 4294967296;
    assert {:id "id321"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(0)));
    assert {:id "id322"} {:subsumption 0} $Unbox(Map#Elements(q#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    newtype$check#40 := LitInt(199);
    assert {:id "id323"} LitInt(0) <= newtype$check#40 && newtype$check#40 < 4294967296;
    assert {:id "id324"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(199)));
    assume true;
    assume true;
    newtype$check#41 := LitInt(20);
    assert {:id "id325"} LitInt(0) <= newtype$check#41 && newtype$check#41 < 4294967296;
    assert {:id "id326"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(20)));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/maps.dfy(165,3)
    newtype$check#42 := LitInt(0);
    assert {:id "id327"} LitInt(0) <= newtype$check#42 && newtype$check#42 < 4294967296;
    assert {:id "id328"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(LitInt(0)));
    assert {:id "id329"} {:subsumption 0} $Unbox(Map#Elements(r#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    newtype$check#43 := LitInt(198);
    assert {:id "id330"} LitInt(0) <= newtype$check#43 && newtype$check#43 < 4294967296;
    assert {:id "id331"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(LitInt(198)));
    assert {:id "id332"} {:subsumption 0} $Unbox(Map#Elements(r#0)[$Box(LitInt(198))]): ref != null;
    assume true;
    assume true;
    newtype$check#44 := LitInt(20);
    assert {:id "id333"} LitInt(0) <= newtype$check#44 && newtype$check#44 < 4294967296;
    assume true;
    assume true;
}



procedure {:verboseName "uint32 (well-formedness)"} CheckWellFormed$$_module.uint32(i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32 (well-formedness)"} CheckWellFormed$$_module.uint32(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint32
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= i#0)
        {
        }

        assume {:id "id334"} LitInt(0) <= i#0 && i#0 < 4294967296;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id335"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id336"} {:subsumption 0} Lit(0 < 4294967296);
        assume false;
    }
}



// $Is axiom for newtype _module.uint32
axiom (forall i#0: int :: 
  { $Is(i#0, Tclass._module.uint32()) } 
  $Is(i#0, Tclass._module.uint32()) <==> LitInt(0) <= i#0 && i#0 < 4294967296);

// $IsAlloc axiom for newtype _module.uint32
axiom (forall i#0: int, $h: Heap :: 
  { $IsAlloc(i#0, Tclass._module.uint32(), $h) } 
  $IsAlloc(i#0, Tclass._module.uint32(), $h));

const unique class._module.uint32: ClassName;

// Constructor function declaration
function #_module.map_holder.map_holder(Map) : DatatypeType;

const unique ##_module.map_holder.map_holder: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Map :: 
  { #_module.map_holder.map_holder(a#0#0#0) } 
  DatatypeCtorId(#_module.map_holder.map_holder(a#0#0#0))
     == ##_module.map_holder.map_holder);
}

function _module.map__holder.map__holder_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.map__holder.map__holder_q(d) } 
  _module.map__holder.map__holder_q(d)
     <==> DatatypeCtorId(d) == ##_module.map_holder.map_holder);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.map__holder.map__holder_q(d) } 
  _module.map__holder.map__holder_q(d)
     ==> (exists a#1#0#0: Map :: d == #_module.map_holder.map_holder(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: Map :: 
  { $Is(#_module.map_holder.map_holder(a#2#0#0), Tclass._module.map__holder()) } 
  $Is(#_module.map_holder.map_holder(a#2#0#0), Tclass._module.map__holder())
     <==> $Is(a#2#0#0, TMap(TBool, TBool)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.map__holder.m(d), TMap(TBool, TBool), $h) } 
  $IsGoodHeap($h)
       && 
      _module.map__holder.map__holder_q(d)
       && $IsAlloc(d, Tclass._module.map__holder(), $h)
     ==> $IsAlloc(_module.map__holder.m(d), TMap(TBool, TBool), $h));

// Constructor literal
axiom (forall a#3#0#0: Map :: 
  { #_module.map_holder.map_holder(Lit(a#3#0#0)) } 
  #_module.map_holder.map_holder(Lit(a#3#0#0))
     == Lit(#_module.map_holder.map_holder(a#3#0#0)));

function _module.map__holder.m(DatatypeType) : Map;

// Constructor injectivity
axiom (forall a#4#0#0: Map :: 
  { #_module.map_holder.map_holder(a#4#0#0) } 
  _module.map__holder.m(#_module.map_holder.map_holder(a#4#0#0)) == a#4#0#0);

// Inductive map key rank
axiom (forall a#5#0#0: Map, d: DatatypeType :: 
  { Set#IsMember(Map#Domain(a#5#0#0), $Box(d)), #_module.map_holder.map_holder(a#5#0#0) } 
  Set#IsMember(Map#Domain(a#5#0#0), $Box(d))
     ==> DtRank(d) < DtRank(#_module.map_holder.map_holder(a#5#0#0)));

// Inductive map value rank
axiom (forall a#6#0#0: Map, bx: Box :: 
  { Set#IsMember(Map#Domain(a#6#0#0), bx), #_module.map_holder.map_holder(a#6#0#0) } 
  Set#IsMember(Map#Domain(a#6#0#0), bx)
     ==> DtRank($Unbox(Map#Elements(a#6#0#0)[bx]): DatatypeType)
       < DtRank(#_module.map_holder.map_holder(a#6#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.map__holder(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.map__holder())
     ==> $IsAlloc(d, Tclass._module.map__holder(), $h));

// Depth-one case-split function
function $IsA#_module.map__holder(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.map__holder(d) } 
  $IsA#_module.map__holder(d) ==> _module.map__holder.map__holder_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.map__holder.map__holder_q(d), $Is(d, Tclass._module.map__holder()) } 
  $Is(d, Tclass._module.map__holder()) ==> _module.map__holder.map__holder_q(d));

// Datatype extensional equality declaration
function _module.map__holder#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.map_holder.map_holder
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.map__holder#Equal(a, b) } 
  _module.map__holder#Equal(a, b)
     <==> Map#Equal(_module.map__holder.m(a), _module.map__holder.m(b)));

// Datatype extensionality axiom: _module.map_holder
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.map__holder#Equal(a, b) } 
  _module.map__holder#Equal(a, b) <==> a == b);

const unique class._module.map__holder: ClassName;

const unique class._module.MyClass?: ClassName;

// $Is axiom for class MyClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.MyClass?()) } 
  $Is($o, Tclass._module.MyClass?())
     <==> $o == null || dtype($o) == Tclass._module.MyClass?());

// $IsAlloc axiom for class MyClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MyClass?(), $h) } 
  $IsAlloc($o, Tclass._module.MyClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.MyClass.name(this: ref) : Seq
uses {
// MyClass.name: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.MyClass.name($o) } 
    $o != null && dtype($o) == Tclass._module.MyClass?()
       ==> $Is(_module.MyClass.name($o), TSeq(TChar)));
// MyClass.name: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.MyClass.name($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.MyClass?()
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.MyClass.name($o), TSeq(TChar), $h));
}

procedure {:verboseName "MyClass._ctor (well-formedness)"} CheckWellFormed$$_module.MyClass.__ctor(name#0: Seq
       where $Is(name#0, TSeq(TChar)) && $IsAlloc(name#0, TSeq(TChar), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyClass._ctor (call)"} Call$$_module.MyClass.__ctor(name#0: Seq
       where $Is(name#0, TSeq(TChar)) && $IsAlloc(name#0, TSeq(TChar), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyClass())
         && $IsAlloc(this, Tclass._module.MyClass(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MyClass._ctor (correctness)"} Impl$$_module.MyClass.__ctor(name#0: Seq
       where $Is(name#0, TSeq(TChar)) && $IsAlloc(name#0, TSeq(TChar), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.MyClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.MyClass()) } { $Is(c#0, Tclass._module.MyClass?()) } 
  $Is(c#0, Tclass._module.MyClass())
     <==> $Is(c#0, Tclass._module.MyClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MyClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MyClass(), $h) } 
    { $IsAlloc(c#0, Tclass._module.MyClass?(), $h) } 
  $IsAlloc(c#0, Tclass._module.MyClass(), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyClass?(), $h));

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

const unique tytagFamily$map_holder: TyTagFamily;

const unique tytagFamily$uint32: TyTagFamily;

const unique tytagFamily$MyClass: TyTagFamily;
