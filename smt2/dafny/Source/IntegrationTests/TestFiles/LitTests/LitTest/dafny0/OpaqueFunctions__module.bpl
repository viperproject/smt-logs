// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions.dfy

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

const reveal_OpaqueFunctionsAreNotInlined._default.F: bool;

const reveal_M0._default.F: bool;

const reveal_M1._default.F: bool;

const reveal_LayerQuantifiers._default.f: bool;

const reveal_Regression._default.Length: bool;

const reveal_TypeMembers.Tr.IsFavorite: bool;

const reveal_TypeMembers.Tr.IsFive: bool;

const reveal_TypeMembers.Color.IsFavorite: bool;

const reveal_TypeMembers.Color.IsFive: bool;

const reveal_TypeMembers.Small.IsFavorite: bool;

const reveal_TypeMembers.Small.IsFive: bool;

const reveal__module._default.id: bool;

const reveal__module._default.id_box: bool;

const reveal__module._default.zero: bool;

const unique class._module.__default: ClassName;

// function declaration for _module._default.id
function _module.__default.id(_module._default.id$A: Ty, $reveal: bool, x#0: Box) : Box
uses {
// consequence axiom for _module.__default.id
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.id$A: Ty, $reveal: bool, x#0: Box :: 
    { _module.__default.id(_module._default.id$A, $reveal, x#0) } 
    _module.__default.id#canCall(_module._default.id$A, x#0)
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module._default.id$A))
       ==> $IsBox(_module.__default.id(_module._default.id$A, $reveal, x#0), _module._default.id$A));
// alloc consequence axiom for _module.__default.id
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.id$A: Ty, $reveal: bool, x#0: Box :: 
    { $IsAllocBox(_module.__default.id(_module._default.id$A, $reveal, x#0), 
        _module._default.id$A, 
        $Heap) } 
    (_module.__default.id#canCall(_module._default.id$A, x#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(x#0, _module._default.id$A)
             && $IsAllocBox(x#0, _module._default.id$A, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.__default.id(_module._default.id$A, $reveal, x#0), 
        _module._default.id$A, 
        $Heap));
// definition axiom for _module.__default.id (revealed)
axiom {:id "id370"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.id$A: Ty, x#0: Box :: 
    { _module.__default.id(_module._default.id$A, true, x#0) } 
    _module.__default.id#canCall(_module._default.id$A, x#0)
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module._default.id$A))
       ==> _module.__default.id(_module._default.id$A, true, x#0) == x#0);
// definition axiom for _module.__default.id for all literals (revealed)
axiom {:id "id371"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.id$A: Ty, x#0: Box :: 
    {:weight 3} { _module.__default.id(_module._default.id$A, true, Lit(x#0)) } 
    _module.__default.id#canCall(_module._default.id$A, Lit(x#0))
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module._default.id$A))
       ==> _module.__default.id(_module._default.id$A, true, Lit(x#0)) == Lit(x#0));
}

function _module.__default.id#canCall(_module._default.id$A: Ty, x#0: Box) : bool;

function _module.__default.id#requires(Ty, Box) : bool;

// #requires axiom for _module.__default.id
axiom (forall _module._default.id$A: Ty, x#0: Box :: 
  { _module.__default.id#requires(_module._default.id$A, x#0) } 
  $IsBox(x#0, _module._default.id$A)
     ==> _module.__default.id#requires(_module._default.id$A, x#0) == true);

procedure {:verboseName "id (well-formedness)"} CheckWellformed$$_module.__default.id(_module._default.id$A: Ty, x#0: Box where $IsBox(x#0, _module._default.id$A));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "id_ok (well-formedness)"} CheckWellFormed$$_module.__default.id__ok();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "id_ok (call)"} Call$$_module.__default.id__ok();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "id_ok (correctness)"} Impl$$_module.__default.id__ok() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "id_ok (correctness)"} Impl$$_module.__default.id__ok() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: int;

    // AddMethodImpl: id_ok, Impl$$_module.__default.id__ok
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions.dfy(208,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions.dfy(208,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id373"} Call$$_module.__default.reveal__id();
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions.dfy(209,3)
    ##x#0 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.__default.id#canCall(TInt, $Box(LitInt(1)));
    assume _module.__default.id#canCall(TInt, $Box(LitInt(1)));
    assert {:id "id374"} $Unbox(_module.__default.id(TInt, reveal__module._default.id, $Box(LitInt(1)))): int
       == LitInt(1);
}



procedure {:verboseName "id_fail (well-formedness)"} CheckWellFormed$$_module.__default.id__fail();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "id_fail (call)"} Call$$_module.__default.id__fail();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "id_fail (correctness)"} Impl$$_module.__default.id__fail() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "id_fail (correctness)"} Impl$$_module.__default.id__fail() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: int;

    // AddMethodImpl: id_fail, Impl$$_module.__default.id__fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions.dfy(214,3)
    ##x#0 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.__default.id#canCall(TInt, $Box(LitInt(1)));
    assume _module.__default.id#canCall(TInt, $Box(LitInt(1)));
    assert {:id "id375"} $Unbox(_module.__default.id(TInt, reveal__module._default.id, $Box(LitInt(1)))): int
       == LitInt(1);
}



// function declaration for _module._default.id_box
function _module.__default.id__box(_module._default.id_box$_T0: Ty, $reveal: bool, x#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.id__box
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.id_box$_T0: Ty, $reveal: bool, x#0: DatatypeType :: 
    { _module.__default.id__box(_module._default.id_box$_T0, $reveal, x#0) } 
    _module.__default.id__box#canCall(_module._default.id_box$_T0, x#0)
         || (1 < $FunctionContextHeight
           && $Is(x#0, Tclass._module.Box(_module._default.id_box$_T0)))
       ==> $Is(_module.__default.id__box(_module._default.id_box$_T0, $reveal, x#0), 
        Tclass._module.Box(_module._default.id_box$_T0)));
// alloc consequence axiom for _module.__default.id__box
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.id_box$_T0: Ty, $reveal: bool, x#0: DatatypeType :: 
    { $IsAlloc(_module.__default.id__box(_module._default.id_box$_T0, $reveal, x#0), 
        Tclass._module.Box(_module._default.id_box$_T0), 
        $Heap) } 
    (_module.__default.id__box#canCall(_module._default.id_box$_T0, x#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(x#0, Tclass._module.Box(_module._default.id_box$_T0))
             && $IsAlloc(x#0, Tclass._module.Box(_module._default.id_box$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.id__box(_module._default.id_box$_T0, $reveal, x#0), 
        Tclass._module.Box(_module._default.id_box$_T0), 
        $Heap));
// definition axiom for _module.__default.id__box (revealed)
axiom {:id "id376"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.id_box$_T0: Ty, x#0: DatatypeType :: 
    { _module.__default.id__box(_module._default.id_box$_T0, true, x#0) } 
    _module.__default.id__box#canCall(_module._default.id_box$_T0, x#0)
         || (1 < $FunctionContextHeight
           && $Is(x#0, Tclass._module.Box(_module._default.id_box$_T0)))
       ==> _module.__default.id__box(_module._default.id_box$_T0, true, x#0) == x#0);
// definition axiom for _module.__default.id__box for all literals (revealed)
axiom {:id "id377"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.id_box$_T0: Ty, x#0: DatatypeType :: 
    {:weight 3} { _module.__default.id__box(_module._default.id_box$_T0, true, Lit(x#0)) } 
    _module.__default.id__box#canCall(_module._default.id_box$_T0, Lit(x#0))
         || (1 < $FunctionContextHeight
           && $Is(x#0, Tclass._module.Box(_module._default.id_box$_T0)))
       ==> _module.__default.id__box(_module._default.id_box$_T0, true, Lit(x#0))
         == Lit(x#0));
}

function _module.__default.id__box#canCall(_module._default.id_box$_T0: Ty, x#0: DatatypeType) : bool;

function Tclass._module.Box(Ty) : Ty;

const unique Tagclass._module.Box: TyTag;

// Tclass._module.Box Tag
axiom (forall _module.Box$A: Ty :: 
  { Tclass._module.Box(_module.Box$A) } 
  Tag(Tclass._module.Box(_module.Box$A)) == Tagclass._module.Box
     && TagFamily(Tclass._module.Box(_module.Box$A)) == tytagFamily$Box);

function Tclass._module.Box_0(Ty) : Ty;

// Tclass._module.Box injectivity 0
axiom (forall _module.Box$A: Ty :: 
  { Tclass._module.Box(_module.Box$A) } 
  Tclass._module.Box_0(Tclass._module.Box(_module.Box$A)) == _module.Box$A);

// Box/unbox axiom for Tclass._module.Box
axiom (forall _module.Box$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Box(_module.Box$A)) } 
  $IsBox(bx, Tclass._module.Box(_module.Box$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Box(_module.Box$A)));

function _module.__default.id__box#requires(Ty, DatatypeType) : bool;

// #requires axiom for _module.__default.id__box
axiom (forall _module._default.id_box$_T0: Ty, x#0: DatatypeType :: 
  { _module.__default.id__box#requires(_module._default.id_box$_T0, x#0) } 
  $Is(x#0, Tclass._module.Box(_module._default.id_box$_T0))
     ==> _module.__default.id__box#requires(_module._default.id_box$_T0, x#0) == true);

procedure {:verboseName "id_box (well-formedness)"} CheckWellformed$$_module.__default.id__box(_module._default.id_box$_T0: Ty, 
    x#0: DatatypeType
       where $Is(x#0, Tclass._module.Box(_module._default.id_box$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "box_ok (well-formedness)"} CheckWellFormed$$_module.__default.box__ok();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "box_ok (call)"} Call$$_module.__default.box__ok();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "box_ok (correctness)"} Impl$$_module.__default.box__ok() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "box_ok (correctness)"} Impl$$_module.__default.box__ok() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: DatatypeType;

    // AddMethodImpl: box_ok, Impl$$_module.__default.box__ok
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions.dfy(223,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions.dfy(223,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id379"} Call$$_module.__default.reveal__id();
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions.dfy(224,3)
    ##x#0 := Lit(#_module.Box.Bx($Box(LitInt(1))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.Box(TInt), $Heap);
    assume _module.__default.id#canCall(Tclass._module.Box(TInt), $Box(Lit(#_module.Box.Bx($Box(LitInt(1))))));
    assume _module.Box.Bx_q($Unbox(_module.__default.id(Tclass._module.Box(TInt), 
          reveal__module._default.id, 
          $Box(Lit(#_module.Box.Bx($Box(LitInt(1))))))): DatatypeType);
    assume $IsA#_module.Box($Unbox(_module.__default.id(Tclass._module.Box(TInt), 
            reveal__module._default.id, 
            $Box(Lit(#_module.Box.Bx($Box(LitInt(1))))))): DatatypeType)
       && _module.__default.id#canCall(Tclass._module.Box(TInt), $Box(Lit(#_module.Box.Bx($Box(LitInt(1))))));
    assert {:id "id380"} _module.Box#Equal($Unbox(_module.__default.id(Tclass._module.Box(TInt), 
          reveal__module._default.id, 
          $Box(Lit(#_module.Box.Bx($Box(LitInt(1))))))): DatatypeType, 
      #_module.Box.Bx($Box(LitInt(1))));
}



procedure {:verboseName "box_fail (well-formedness)"} CheckWellFormed$$_module.__default.box__fail();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "box_fail (call)"} Call$$_module.__default.box__fail();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "box_fail (correctness)"} Impl$$_module.__default.box__fail() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "box_fail (correctness)"} Impl$$_module.__default.box__fail() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: DatatypeType;

    // AddMethodImpl: box_fail, Impl$$_module.__default.box__fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueFunctions.dfy(229,3)
    ##x#0 := Lit(#_module.Box.Bx($Box(LitInt(1))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.Box(TInt), $Heap);
    assume _module.__default.id#canCall(Tclass._module.Box(TInt), $Box(Lit(#_module.Box.Bx($Box(LitInt(1))))));
    assume _module.Box.Bx_q($Unbox(_module.__default.id(Tclass._module.Box(TInt), 
          reveal__module._default.id, 
          $Box(Lit(#_module.Box.Bx($Box(LitInt(1))))))): DatatypeType);
    assume $IsA#_module.Box($Unbox(_module.__default.id(Tclass._module.Box(TInt), 
            reveal__module._default.id, 
            $Box(Lit(#_module.Box.Bx($Box(LitInt(1))))))): DatatypeType)
       && _module.__default.id#canCall(Tclass._module.Box(TInt), $Box(Lit(#_module.Box.Bx($Box(LitInt(1))))));
    assert {:id "id381"} _module.Box#Equal($Unbox(_module.__default.id(Tclass._module.Box(TInt), 
          reveal__module._default.id, 
          $Box(Lit(#_module.Box.Bx($Box(LitInt(1))))))): DatatypeType, 
      #_module.Box.Bx($Box(LitInt(1))));
}



// function declaration for _module._default.zero
function _module.__default.zero(_module._default.zero$A: Ty, $reveal: bool) : int
uses {
// definition axiom for _module.__default.zero (revealed)
axiom {:id "id382"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.zero$A: Ty :: 
    { _module.__default.zero(_module._default.zero$A, true) } 
    _module.__default.zero#canCall(_module._default.zero$A)
         || 0 < $FunctionContextHeight
       ==> _module.__default.zero(_module._default.zero$A, true) == LitInt(0));
// definition axiom for _module.__default.zero for all literals (revealed)
axiom {:id "id383"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.zero$A: Ty :: 
    {:weight 3} { _module.__default.zero(_module._default.zero$A, true) } 
    _module.__default.zero#canCall(_module._default.zero$A)
         || 0 < $FunctionContextHeight
       ==> _module.__default.zero(_module._default.zero$A, true) == LitInt(0));
}

function _module.__default.zero#canCall(_module._default.zero$A: Ty) : bool;

function _module.__default.zero#requires(Ty) : bool;

// #requires axiom for _module.__default.zero
axiom (forall _module._default.zero$A: Ty :: 
  { _module.__default.zero#requires(_module._default.zero$A) } 
  _module.__default.zero#requires(_module._default.zero$A) == true);

procedure {:verboseName "zero (well-formedness)"} CheckWellformed$$_module.__default.zero(_module._default.zero$A: Ty);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_id (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__id();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_id (call)"} {:verify false} Call$$_module.__default.reveal__id();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.id;



procedure {:verboseName "reveal_id_box (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__id__box();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_id_box (call)"} {:verify false} Call$$_module.__default.reveal__id__box();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.id_box;



procedure {:verboseName "reveal_zero (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__zero();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_zero (call)"} {:verify false} Call$$_module.__default.reveal__zero();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.zero;



// Constructor function declaration
function #_module.Box.Bx(Box) : DatatypeType;

const unique ##_module.Box.Bx: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.Box.Bx(a#0#0#0) } 
  DatatypeCtorId(#_module.Box.Bx(a#0#0#0)) == ##_module.Box.Bx);
}

function _module.Box.Bx_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Box.Bx_q(d) } 
  _module.Box.Bx_q(d) <==> DatatypeCtorId(d) == ##_module.Box.Bx);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Box.Bx_q(d) } 
  _module.Box.Bx_q(d) ==> (exists a#1#0#0: Box :: d == #_module.Box.Bx(a#1#0#0)));

// Constructor $Is
axiom (forall _module.Box$A: Ty, a#2#0#0: Box :: 
  { $Is(#_module.Box.Bx(a#2#0#0), Tclass._module.Box(_module.Box$A)) } 
  $Is(#_module.Box.Bx(a#2#0#0), Tclass._module.Box(_module.Box$A))
     <==> $IsBox(a#2#0#0, _module.Box$A));

// Constructor $IsAlloc
axiom (forall _module.Box$A: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Box.Bx(a#2#0#0), Tclass._module.Box(_module.Box$A), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Box.Bx(a#2#0#0), Tclass._module.Box(_module.Box$A), $h)
       <==> $IsAllocBox(a#2#0#0, _module.Box$A, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Box$A: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Box._h0(d), _module.Box$A, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Box.Bx_q(d)
       && $IsAlloc(d, Tclass._module.Box(_module.Box$A), $h)
     ==> $IsAllocBox(_module.Box._h0(d), _module.Box$A, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.Box.Bx(Lit(a#3#0#0)) } 
  #_module.Box.Bx(Lit(a#3#0#0)) == Lit(#_module.Box.Bx(a#3#0#0)));

function _module.Box._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.Box.Bx(a#4#0#0) } 
  _module.Box._h0(#_module.Box.Bx(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.Box.Bx(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.Box.Bx(a#5#0#0)));

// Depth-one case-split function
function $IsA#_module.Box(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Box(d) } 
  $IsA#_module.Box(d) ==> _module.Box.Bx_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Box$A: Ty, d: DatatypeType :: 
  { _module.Box.Bx_q(d), $Is(d, Tclass._module.Box(_module.Box$A)) } 
  $Is(d, Tclass._module.Box(_module.Box$A)) ==> _module.Box.Bx_q(d));

// Datatype extensional equality declaration
function _module.Box#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Box.Bx
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Box#Equal(a, b) } 
  _module.Box#Equal(a, b) <==> _module.Box._h0(a) == _module.Box._h0(b));

// Datatype extensionality axiom: _module.Box
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Box#Equal(a, b) } 
  _module.Box#Equal(a, b) <==> a == b);

const unique class._module.Box: ClassName;

const unique class.A_k.C?: ClassName;

function Tclass.A_k.C?() : Ty
uses {
// Tclass.A_k.C? Tag
axiom Tag(Tclass.A_k.C?()) == Tagclass.A_k.C?
   && TagFamily(Tclass.A_k.C?()) == tytagFamily$C;
}

const unique Tagclass.A_k.C?: TyTag;

// Box/unbox axiom for Tclass.A_k.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.A_k.C?()) } 
  $IsBox(bx, Tclass.A_k.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.A_k.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.A_k.C?()) } 
  $Is($o, Tclass.A_k.C?()) <==> $o == null || dtype($o) == Tclass.A_k.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.A_k.C?(), $h) } 
  $IsAlloc($o, Tclass.A_k.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for A'.C.Valid
function A_k.C.Valid($heap: Heap, this: ref) : bool;

function A_k.C.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.A_k.C() : Ty
uses {
// Tclass.A_k.C Tag
axiom Tag(Tclass.A_k.C()) == Tagclass.A_k.C
   && TagFamily(Tclass.A_k.C()) == tytagFamily$C;
}

const unique Tagclass.A_k.C: TyTag;

// Box/unbox axiom for Tclass.A_k.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.A_k.C()) } 
  $IsBox(bx, Tclass.A_k.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.A_k.C()));

// frame axiom for A_k.C.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), A_k.C.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.A_k.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> A_k.C.Valid($h0, this) == A_k.C.Valid($h1, this));

// consequence axiom for A_k.C.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { A_k.C.Valid($Heap, this) } 
  A_k.C.Valid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.A_k.C())
         && $IsAlloc(this, Tclass.A_k.C(), $Heap))
     ==> (A_k.C.Valid($Heap, this)
         ==> LitInt(0) <= $Unbox(read($Heap, this, A_k.C.x)): int)
       && ($Unbox(read($Heap, this, A_k.C.x)): int == LitInt(8)
         ==> A_k.C.Valid($Heap, this)));

function A_k.C.Valid#requires(Heap, ref) : bool;

// #requires axiom for A_k.C.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { A_k.C.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.A_k.C())
       && $IsAlloc(this, Tclass.A_k.C(), $Heap)
     ==> A_k.C.Valid#requires($Heap, this) == true);

// function declaration for A'.C.RevealedValid
function A_k.C.RevealedValid($heap: Heap, this: ref) : bool;

function A_k.C.RevealedValid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for A_k.C.RevealedValid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), A_k.C.RevealedValid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.A_k.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> A_k.C.RevealedValid($h0, this) == A_k.C.RevealedValid($h1, this));

// consequence axiom for A_k.C.RevealedValid
axiom (forall $Heap: Heap, this: ref :: 
  { A_k.C.RevealedValid($Heap, this) } 
  A_k.C.RevealedValid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.A_k.C())
         && $IsAlloc(this, Tclass.A_k.C(), $Heap))
     ==> (A_k.C.Valid($Heap, this)
         ==> LitInt(0) <= $Unbox(read($Heap, this, A_k.C.x)): int)
       && ($Unbox(read($Heap, this, A_k.C.x)): int == LitInt(8)
         ==> A_k.C.Valid($Heap, this)));

function A_k.C.RevealedValid#requires(Heap, ref) : bool;

// #requires axiom for A_k.C.RevealedValid
axiom (forall $Heap: Heap, this: ref :: 
  { A_k.C.RevealedValid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.A_k.C())
       && $IsAlloc(this, Tclass.A_k.C(), $Heap)
     ==> A_k.C.RevealedValid#requires($Heap, this) == true);

// definition axiom for A_k.C.RevealedValid (revealed)
axiom {:id "id385"} (forall $Heap: Heap, this: ref :: 
  { A_k.C.RevealedValid($Heap, this), $IsGoodHeap($Heap) } 
  A_k.C.RevealedValid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.A_k.C())
         && $IsAlloc(this, Tclass.A_k.C(), $Heap))
     ==> A_k.C.RevealedValid($Heap, this)
       == 
      ($Unbox(read($Heap, this, A_k.C.x)): int
       == LitInt(8)));

const A_k.C.x: Field
uses {
axiom FDim(A_k.C.x) == 0
   && FieldOfDecl(class.A_k.C?, field$x) == A_k.C.x
   && !$IsGhostField(A_k.C.x);
}

// C.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, A_k.C.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.A_k.C?()
     ==> $Is($Unbox(read($h, $o, A_k.C.x)): int, TInt));

// C.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, A_k.C.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.A_k.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, A_k.C.x)): int, TInt, $h));

// function declaration for A'.C.Get
function A_k.C.Get($heap: Heap, this: ref) : int;

function A_k.C.Get#canCall($heap: Heap, this: ref) : bool;

// frame axiom for A_k.C.Get
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), A_k.C.Get($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.A_k.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> A_k.C.Get($h0, this) == A_k.C.Get($h1, this));

function A_k.C.Get#requires(Heap, ref) : bool;

// #requires axiom for A_k.C.Get
axiom (forall $Heap: Heap, this: ref :: 
  { A_k.C.Get#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.A_k.C())
       && $IsAlloc(this, Tclass.A_k.C(), $Heap)
     ==> A_k.C.Get#requires($Heap, this) == true);

// $Is axiom for non-null type A'.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.A_k.C()) } { $Is(c#0, Tclass.A_k.C?()) } 
  $Is(c#0, Tclass.A_k.C()) <==> $Is(c#0, Tclass.A_k.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type A'.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.A_k.C(), $h) } { $IsAlloc(c#0, Tclass.A_k.C?(), $h) } 
  $IsAlloc(c#0, Tclass.A_k.C(), $h) <==> $IsAlloc(c#0, Tclass.A_k.C?(), $h));

const class.B.X.Abs.__default: ClassName;

const class.B.X.Abs.C?: ClassName;

function Tclass.B.X.Abs.C?() : Ty
uses {
// Tclass.B.X.Abs.C? Tag
axiom TagFamily(Tclass.B.X.Abs.C?()) == tytagFamily$C;
}

// Box/unbox axiom for Tclass.B.X.Abs.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.B.X.Abs.C?()) } 
  $IsBox(bx, Tclass.B.X.Abs.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.B.X.Abs.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.B.X.Abs.C?()) } 
  $Is($o, Tclass.B.X.Abs.C?()) <==> $o == null || dtype($o) == Tclass.B.X.Abs.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.B.X.Abs.C?(), $h) } 
  $IsAlloc($o, Tclass.B.X.Abs.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const B.X.Abs.C.x: Field
uses {
axiom FDim(B.X.Abs.C.x) == 0
   && FieldOfDecl(class.B.X.Abs.C?, field$x) == B.X.Abs.C.x
   && !$IsGhostField(B.X.Abs.C.x);
}

// C.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, B.X.Abs.C.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.B.X.Abs.C?()
     ==> $Is($Unbox(read($h, $o, B.X.Abs.C.x)): int, TInt));

// C.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, B.X.Abs.C.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.B.X.Abs.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, B.X.Abs.C.x)): int, TInt, $h));

// function declaration for B.X.Abs.C.Valid
function B.X.Abs.C.Valid($heap: Heap, this: ref) : bool;

function B.X.Abs.C.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.B.X.Abs.C() : Ty
uses {
// Tclass.B.X.Abs.C Tag
axiom TagFamily(Tclass.B.X.Abs.C()) == tytagFamily$C;
}

// Box/unbox axiom for Tclass.B.X.Abs.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.B.X.Abs.C()) } 
  $IsBox(bx, Tclass.B.X.Abs.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.B.X.Abs.C()));

// frame axiom for B.X.Abs.C.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), B.X.Abs.C.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.B.X.Abs.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> B.X.Abs.C.Valid($h0, this) == B.X.Abs.C.Valid($h1, this));

// consequence axiom for B.X.Abs.C.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { B.X.Abs.C.Valid($Heap, this) } 
  B.X.Abs.C.Valid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.B.X.Abs.C())
         && $IsAlloc(this, Tclass.B.X.Abs.C(), $Heap))
     ==> (B.X.Abs.C.Valid($Heap, this)
         ==> LitInt(0) <= $Unbox(read($Heap, this, B.X.Abs.C.x)): int)
       && ($Unbox(read($Heap, this, B.X.Abs.C.x)): int == LitInt(8)
         ==> B.X.Abs.C.Valid($Heap, this)));

function B.X.Abs.C.Valid#requires(Heap, ref) : bool;

// #requires axiom for B.X.Abs.C.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { B.X.Abs.C.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.B.X.Abs.C())
       && $IsAlloc(this, Tclass.B.X.Abs.C(), $Heap)
     ==> B.X.Abs.C.Valid#requires($Heap, this) == true);

// function declaration for B.X.Abs.C.RevealedValid
function B.X.Abs.C.RevealedValid($heap: Heap, this: ref) : bool;

function B.X.Abs.C.RevealedValid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for B.X.Abs.C.RevealedValid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), B.X.Abs.C.RevealedValid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.B.X.Abs.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> B.X.Abs.C.RevealedValid($h0, this) == B.X.Abs.C.RevealedValid($h1, this));

// consequence axiom for B.X.Abs.C.RevealedValid
axiom (forall $Heap: Heap, this: ref :: 
  { B.X.Abs.C.RevealedValid($Heap, this) } 
  B.X.Abs.C.RevealedValid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.B.X.Abs.C())
         && $IsAlloc(this, Tclass.B.X.Abs.C(), $Heap))
     ==> (B.X.Abs.C.Valid($Heap, this)
         ==> LitInt(0) <= $Unbox(read($Heap, this, B.X.Abs.C.x)): int)
       && ($Unbox(read($Heap, this, B.X.Abs.C.x)): int == LitInt(8)
         ==> B.X.Abs.C.Valid($Heap, this)));

function B.X.Abs.C.RevealedValid#requires(Heap, ref) : bool;

// #requires axiom for B.X.Abs.C.RevealedValid
axiom (forall $Heap: Heap, this: ref :: 
  { B.X.Abs.C.RevealedValid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.B.X.Abs.C())
       && $IsAlloc(this, Tclass.B.X.Abs.C(), $Heap)
     ==> B.X.Abs.C.RevealedValid#requires($Heap, this) == true);

// function declaration for B.X.Abs.C.Get
function B.X.Abs.C.Get($heap: Heap, this: ref) : int;

function B.X.Abs.C.Get#canCall($heap: Heap, this: ref) : bool;

// frame axiom for B.X.Abs.C.Get
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), B.X.Abs.C.Get($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.B.X.Abs.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> B.X.Abs.C.Get($h0, this) == B.X.Abs.C.Get($h1, this));

function B.X.Abs.C.Get#requires(Heap, ref) : bool;

// #requires axiom for B.X.Abs.C.Get
axiom (forall $Heap: Heap, this: ref :: 
  { B.X.Abs.C.Get#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.B.X.Abs.C())
       && $IsAlloc(this, Tclass.B.X.Abs.C(), $Heap)
     ==> B.X.Abs.C.Get#requires($Heap, this) == true);

// $Is axiom for non-null type B.X.Abs.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.B.X.Abs.C()) } { $Is(c#0, Tclass.B.X.Abs.C?()) } 
  $Is(c#0, Tclass.B.X.Abs.C()) <==> $Is(c#0, Tclass.B.X.Abs.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type B.X.Abs.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.B.X.Abs.C(), $h) } 
    { $IsAlloc(c#0, Tclass.B.X.Abs.C?(), $h) } 
  $IsAlloc(c#0, Tclass.B.X.Abs.C(), $h)
     <==> $IsAlloc(c#0, Tclass.B.X.Abs.C?(), $h));

const unique class.B.__default: ClassName;

const class.B____direct.X.Abs.__default: ClassName;

const class.B____direct.X.Abs.C?: ClassName;

function Tclass.B____direct.X.Abs.C?() : Ty
uses {
// Tclass.B____direct.X.Abs.C? Tag
axiom TagFamily(Tclass.B____direct.X.Abs.C?()) == tytagFamily$C;
}

// Box/unbox axiom for Tclass.B____direct.X.Abs.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.B____direct.X.Abs.C?()) } 
  $IsBox(bx, Tclass.B____direct.X.Abs.C?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.B____direct.X.Abs.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.B____direct.X.Abs.C?()) } 
  $Is($o, Tclass.B____direct.X.Abs.C?())
     <==> $o == null || dtype($o) == Tclass.B____direct.X.Abs.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.B____direct.X.Abs.C?(), $h) } 
  $IsAlloc($o, Tclass.B____direct.X.Abs.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for B__direct.X.Abs.C.Valid
function B____direct.X.Abs.C.Valid($heap: Heap, this: ref) : bool;

function B____direct.X.Abs.C.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.B____direct.X.Abs.C() : Ty
uses {
// Tclass.B____direct.X.Abs.C Tag
axiom TagFamily(Tclass.B____direct.X.Abs.C()) == tytagFamily$C;
}

// Box/unbox axiom for Tclass.B____direct.X.Abs.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.B____direct.X.Abs.C()) } 
  $IsBox(bx, Tclass.B____direct.X.Abs.C())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.B____direct.X.Abs.C()));

// frame axiom for B____direct.X.Abs.C.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), B____direct.X.Abs.C.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.B____direct.X.Abs.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> B____direct.X.Abs.C.Valid($h0, this) == B____direct.X.Abs.C.Valid($h1, this));

// consequence axiom for B____direct.X.Abs.C.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { B____direct.X.Abs.C.Valid($Heap, this) } 
  B____direct.X.Abs.C.Valid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.B____direct.X.Abs.C())
         && $IsAlloc(this, Tclass.B____direct.X.Abs.C(), $Heap))
     ==> (B____direct.X.Abs.C.Valid($Heap, this)
         ==> LitInt(0) <= $Unbox(read($Heap, this, B____direct.X.Abs.C.x)): int)
       && ($Unbox(read($Heap, this, B____direct.X.Abs.C.x)): int == LitInt(8)
         ==> B____direct.X.Abs.C.Valid($Heap, this)));

function B____direct.X.Abs.C.Valid#requires(Heap, ref) : bool;

// #requires axiom for B____direct.X.Abs.C.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { B____direct.X.Abs.C.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.B____direct.X.Abs.C())
       && $IsAlloc(this, Tclass.B____direct.X.Abs.C(), $Heap)
     ==> B____direct.X.Abs.C.Valid#requires($Heap, this) == true);

// function declaration for B__direct.X.Abs.C.RevealedValid
function B____direct.X.Abs.C.RevealedValid($heap: Heap, this: ref) : bool;

function B____direct.X.Abs.C.RevealedValid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for B____direct.X.Abs.C.RevealedValid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), B____direct.X.Abs.C.RevealedValid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.B____direct.X.Abs.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> B____direct.X.Abs.C.RevealedValid($h0, this)
       == B____direct.X.Abs.C.RevealedValid($h1, this));

// consequence axiom for B____direct.X.Abs.C.RevealedValid
axiom (forall $Heap: Heap, this: ref :: 
  { B____direct.X.Abs.C.RevealedValid($Heap, this) } 
  B____direct.X.Abs.C.RevealedValid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.B____direct.X.Abs.C())
         && $IsAlloc(this, Tclass.B____direct.X.Abs.C(), $Heap))
     ==> (B____direct.X.Abs.C.Valid($Heap, this)
         ==> LitInt(0) <= $Unbox(read($Heap, this, B____direct.X.Abs.C.x)): int)
       && ($Unbox(read($Heap, this, B____direct.X.Abs.C.x)): int == LitInt(8)
         ==> B____direct.X.Abs.C.Valid($Heap, this)));

function B____direct.X.Abs.C.RevealedValid#requires(Heap, ref) : bool;

// #requires axiom for B____direct.X.Abs.C.RevealedValid
axiom (forall $Heap: Heap, this: ref :: 
  { B____direct.X.Abs.C.RevealedValid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.B____direct.X.Abs.C())
       && $IsAlloc(this, Tclass.B____direct.X.Abs.C(), $Heap)
     ==> B____direct.X.Abs.C.RevealedValid#requires($Heap, this) == true);

// definition axiom for B____direct.X.Abs.C.RevealedValid (revealed)
axiom {:id "id386"} (forall $Heap: Heap, this: ref :: 
  { B____direct.X.Abs.C.RevealedValid($Heap, this), $IsGoodHeap($Heap) } 
  B____direct.X.Abs.C.RevealedValid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.B____direct.X.Abs.C())
         && $IsAlloc(this, Tclass.B____direct.X.Abs.C(), $Heap))
     ==> B____direct.X.Abs.C.RevealedValid($Heap, this)
       == 
      ($Unbox(read($Heap, this, B____direct.X.Abs.C.x)): int
       == LitInt(8)));

const B____direct.X.Abs.C.x: Field
uses {
axiom FDim(B____direct.X.Abs.C.x) == 0
   && FieldOfDecl(class.B____direct.X.Abs.C?, field$x) == B____direct.X.Abs.C.x
   && !$IsGhostField(B____direct.X.Abs.C.x);
}

// C.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, B____direct.X.Abs.C.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.B____direct.X.Abs.C?()
     ==> $Is($Unbox(read($h, $o, B____direct.X.Abs.C.x)): int, TInt));

// C.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, B____direct.X.Abs.C.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.B____direct.X.Abs.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, B____direct.X.Abs.C.x)): int, TInt, $h));

// function declaration for B__direct.X.Abs.C.Get
function B____direct.X.Abs.C.Get($heap: Heap, this: ref) : int;

function B____direct.X.Abs.C.Get#canCall($heap: Heap, this: ref) : bool;

// frame axiom for B____direct.X.Abs.C.Get
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), B____direct.X.Abs.C.Get($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.B____direct.X.Abs.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> B____direct.X.Abs.C.Get($h0, this) == B____direct.X.Abs.C.Get($h1, this));

function B____direct.X.Abs.C.Get#requires(Heap, ref) : bool;

// #requires axiom for B____direct.X.Abs.C.Get
axiom (forall $Heap: Heap, this: ref :: 
  { B____direct.X.Abs.C.Get#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.B____direct.X.Abs.C())
       && $IsAlloc(this, Tclass.B____direct.X.Abs.C(), $Heap)
     ==> B____direct.X.Abs.C.Get#requires($Heap, this) == true);

// $Is axiom for non-null type B__direct.X.Abs.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.B____direct.X.Abs.C()) } 
    { $Is(c#0, Tclass.B____direct.X.Abs.C?()) } 
  $Is(c#0, Tclass.B____direct.X.Abs.C())
     <==> $Is(c#0, Tclass.B____direct.X.Abs.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type B__direct.X.Abs.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.B____direct.X.Abs.C(), $h) } 
    { $IsAlloc(c#0, Tclass.B____direct.X.Abs.C?(), $h) } 
  $IsAlloc(c#0, Tclass.B____direct.X.Abs.C(), $h)
     <==> $IsAlloc(c#0, Tclass.B____direct.X.Abs.C?(), $h));

const unique class.B__direct.__default: ClassName;

const class.B____more.X.Abs.__default: ClassName;

const class.B____more.X.Abs.C?: ClassName;

function Tclass.B____more.X.Abs.C?() : Ty
uses {
// Tclass.B____more.X.Abs.C? Tag
axiom TagFamily(Tclass.B____more.X.Abs.C?()) == tytagFamily$C;
}

// Box/unbox axiom for Tclass.B____more.X.Abs.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.B____more.X.Abs.C?()) } 
  $IsBox(bx, Tclass.B____more.X.Abs.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.B____more.X.Abs.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.B____more.X.Abs.C?()) } 
  $Is($o, Tclass.B____more.X.Abs.C?())
     <==> $o == null || dtype($o) == Tclass.B____more.X.Abs.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.B____more.X.Abs.C?(), $h) } 
  $IsAlloc($o, Tclass.B____more.X.Abs.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for B__more.X.Abs.C.Valid
function B____more.X.Abs.C.Valid($heap: Heap, this: ref) : bool;

function B____more.X.Abs.C.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.B____more.X.Abs.C() : Ty
uses {
// Tclass.B____more.X.Abs.C Tag
axiom TagFamily(Tclass.B____more.X.Abs.C()) == tytagFamily$C;
}

// Box/unbox axiom for Tclass.B____more.X.Abs.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.B____more.X.Abs.C()) } 
  $IsBox(bx, Tclass.B____more.X.Abs.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.B____more.X.Abs.C()));

// frame axiom for B____more.X.Abs.C.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), B____more.X.Abs.C.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.B____more.X.Abs.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> B____more.X.Abs.C.Valid($h0, this) == B____more.X.Abs.C.Valid($h1, this));

// consequence axiom for B____more.X.Abs.C.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { B____more.X.Abs.C.Valid($Heap, this) } 
  B____more.X.Abs.C.Valid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.B____more.X.Abs.C())
         && $IsAlloc(this, Tclass.B____more.X.Abs.C(), $Heap))
     ==> (B____more.X.Abs.C.Valid($Heap, this)
         ==> LitInt(0) <= $Unbox(read($Heap, this, B____more.X.Abs.C.x)): int)
       && ($Unbox(read($Heap, this, B____more.X.Abs.C.x)): int == LitInt(8)
         ==> B____more.X.Abs.C.Valid($Heap, this)));

function B____more.X.Abs.C.Valid#requires(Heap, ref) : bool;

// #requires axiom for B____more.X.Abs.C.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { B____more.X.Abs.C.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.B____more.X.Abs.C())
       && $IsAlloc(this, Tclass.B____more.X.Abs.C(), $Heap)
     ==> B____more.X.Abs.C.Valid#requires($Heap, this) == true);

// function declaration for B__more.X.Abs.C.RevealedValid
function B____more.X.Abs.C.RevealedValid($heap: Heap, this: ref) : bool;

function B____more.X.Abs.C.RevealedValid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for B____more.X.Abs.C.RevealedValid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), B____more.X.Abs.C.RevealedValid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.B____more.X.Abs.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> B____more.X.Abs.C.RevealedValid($h0, this)
       == B____more.X.Abs.C.RevealedValid($h1, this));

// consequence axiom for B____more.X.Abs.C.RevealedValid
axiom (forall $Heap: Heap, this: ref :: 
  { B____more.X.Abs.C.RevealedValid($Heap, this) } 
  B____more.X.Abs.C.RevealedValid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.B____more.X.Abs.C())
         && $IsAlloc(this, Tclass.B____more.X.Abs.C(), $Heap))
     ==> (B____more.X.Abs.C.Valid($Heap, this)
         ==> LitInt(0) <= $Unbox(read($Heap, this, B____more.X.Abs.C.x)): int)
       && ($Unbox(read($Heap, this, B____more.X.Abs.C.x)): int == LitInt(8)
         ==> B____more.X.Abs.C.Valid($Heap, this)));

function B____more.X.Abs.C.RevealedValid#requires(Heap, ref) : bool;

// #requires axiom for B____more.X.Abs.C.RevealedValid
axiom (forall $Heap: Heap, this: ref :: 
  { B____more.X.Abs.C.RevealedValid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.B____more.X.Abs.C())
       && $IsAlloc(this, Tclass.B____more.X.Abs.C(), $Heap)
     ==> B____more.X.Abs.C.RevealedValid#requires($Heap, this) == true);

// definition axiom for B____more.X.Abs.C.RevealedValid (revealed)
axiom {:id "id387"} (forall $Heap: Heap, this: ref :: 
  { B____more.X.Abs.C.RevealedValid($Heap, this), $IsGoodHeap($Heap) } 
  B____more.X.Abs.C.RevealedValid#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.B____more.X.Abs.C())
         && $IsAlloc(this, Tclass.B____more.X.Abs.C(), $Heap))
     ==> B____more.X.Abs.C.RevealedValid($Heap, this)
       == 
      ($Unbox(read($Heap, this, B____more.X.Abs.C.x)): int
       == LitInt(8)));

const B____more.X.Abs.C.x: Field
uses {
axiom FDim(B____more.X.Abs.C.x) == 0
   && FieldOfDecl(class.B____more.X.Abs.C?, field$x) == B____more.X.Abs.C.x
   && !$IsGhostField(B____more.X.Abs.C.x);
}

// C.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, B____more.X.Abs.C.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.B____more.X.Abs.C?()
     ==> $Is($Unbox(read($h, $o, B____more.X.Abs.C.x)): int, TInt));

// C.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, B____more.X.Abs.C.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.B____more.X.Abs.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, B____more.X.Abs.C.x)): int, TInt, $h));

// function declaration for B__more.X.Abs.C.Get
function B____more.X.Abs.C.Get($heap: Heap, this: ref) : int;

function B____more.X.Abs.C.Get#canCall($heap: Heap, this: ref) : bool;

// frame axiom for B____more.X.Abs.C.Get
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), B____more.X.Abs.C.Get($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.B____more.X.Abs.C())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> B____more.X.Abs.C.Get($h0, this) == B____more.X.Abs.C.Get($h1, this));

function B____more.X.Abs.C.Get#requires(Heap, ref) : bool;

// #requires axiom for B____more.X.Abs.C.Get
axiom (forall $Heap: Heap, this: ref :: 
  { B____more.X.Abs.C.Get#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.B____more.X.Abs.C())
       && $IsAlloc(this, Tclass.B____more.X.Abs.C(), $Heap)
     ==> B____more.X.Abs.C.Get#requires($Heap, this) == true);

// definition axiom for B____more.X.Abs.C.Get (revealed)
axiom {:id "id388"} (forall $Heap: Heap, this: ref :: 
  { B____more.X.Abs.C.Get($Heap, this), $IsGoodHeap($Heap) } 
  B____more.X.Abs.C.Get#canCall($Heap, this)
       || ($IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.B____more.X.Abs.C())
         && $IsAlloc(this, Tclass.B____more.X.Abs.C(), $Heap))
     ==> B____more.X.Abs.C.Get($Heap, this)
       == $Unbox(read($Heap, this, B____more.X.Abs.C.x)): int);

// $Is axiom for non-null type B__more.X.Abs.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.B____more.X.Abs.C()) } 
    { $Is(c#0, Tclass.B____more.X.Abs.C?()) } 
  $Is(c#0, Tclass.B____more.X.Abs.C())
     <==> $Is(c#0, Tclass.B____more.X.Abs.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type B__more.X.Abs.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.B____more.X.Abs.C(), $h) } 
    { $IsAlloc(c#0, Tclass.B____more.X.Abs.C?(), $h) } 
  $IsAlloc(c#0, Tclass.B____more.X.Abs.C(), $h)
     <==> $IsAlloc(c#0, Tclass.B____more.X.Abs.C?(), $h));

const unique class.B__more.__default: ClassName;

const unique class.B_k.__default: ClassName;

const unique class.OpaqueFunctionsAreNotInlined.__default: ClassName;

// function declaration for OpaqueFunctionsAreNotInlined._default.F
function OpaqueFunctionsAreNotInlined.__default.F($reveal: bool, n#0: int) : bool;

function OpaqueFunctionsAreNotInlined.__default.F#canCall(n#0: int) : bool;

function OpaqueFunctionsAreNotInlined.__default.F#requires(int) : bool;

// #requires axiom for OpaqueFunctionsAreNotInlined.__default.F
axiom (forall n#0: int :: 
  { OpaqueFunctionsAreNotInlined.__default.F#requires(n#0) } 
  OpaqueFunctionsAreNotInlined.__default.F#requires(n#0) == true);

// definition axiom for OpaqueFunctionsAreNotInlined.__default.F (revealed)
axiom {:id "id389"} (forall n#0: int :: 
  { OpaqueFunctionsAreNotInlined.__default.F(true, n#0) } 
  OpaqueFunctionsAreNotInlined.__default.F(true, n#0)
     == (LitInt(0) <= n#0 && n#0 < 100));

// definition axiom for OpaqueFunctionsAreNotInlined.__default.F for all literals (revealed)
axiom {:id "id390"} (forall n#0: int :: 
  {:weight 3} { OpaqueFunctionsAreNotInlined.__default.F(true, LitInt(n#0)) } 
  OpaqueFunctionsAreNotInlined.__default.F(true, LitInt(n#0))
     == (LitInt(0) <= LitInt(n#0) && n#0 < 100));

const unique class.M0.__default: ClassName;

// function declaration for M0._default.F
function M0.__default.F($reveal: bool) : int
uses {
// definition axiom for M0.__default.F (revealed)
axiom {:id "id391"} M0.__default.F(true) == LitInt(12);
// definition axiom for M0.__default.F for all literals (revealed)
axiom {:id "id392"} M0.__default.F(true) == LitInt(12);
}

function M0.__default.F#canCall() : bool;

function M0.__default.F#requires() : bool
uses {
// #requires axiom for M0.__default.F
axiom M0.__default.F#requires() == true;
}

const unique class.M1.__default: ClassName;

// function declaration for M1._default.F
function M1.__default.F($reveal: bool) : int
uses {
// definition axiom for M1.__default.F (revealed)
axiom {:id "id393"} M1.__default.F(true) == LitInt(12);
// definition axiom for M1.__default.F for all literals (revealed)
axiom {:id "id394"} M1.__default.F(true) == LitInt(12);
}

function M1.__default.F#canCall() : bool;

function M1.__default.F#requires() : bool
uses {
// #requires axiom for M1.__default.F
axiom M1.__default.F#requires() == true;
}

const unique class.LayerQuantifiers.__default: ClassName;

// function declaration for LayerQuantifiers._default.f
function LayerQuantifiers.__default.f($ly: LayerType, $reveal: bool, x#0: int) : bool;

function LayerQuantifiers.__default.f#canCall(x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, x#0: int :: 
  { LayerQuantifiers.__default.f($LS($ly), $reveal, x#0) } 
  LayerQuantifiers.__default.f($LS($ly), $reveal, x#0)
     == LayerQuantifiers.__default.f($ly, $reveal, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, x#0: int :: 
  { LayerQuantifiers.__default.f(AsFuelBottom($ly), $reveal, x#0) } 
  LayerQuantifiers.__default.f($ly, $reveal, x#0)
     == LayerQuantifiers.__default.f($LZ, $reveal, x#0));

function LayerQuantifiers.__default.f#requires(LayerType, int) : bool;

// #requires axiom for LayerQuantifiers.__default.f
axiom (forall $ly: LayerType, x#0: int :: 
  { LayerQuantifiers.__default.f#requires($ly, x#0) } 
  LitInt(0) <= x#0 ==> LayerQuantifiers.__default.f#requires($ly, x#0) == true);

// definition axiom for LayerQuantifiers.__default.f (revealed)
axiom {:id "id395"} (forall $ly: LayerType, x#0: int :: 
  { LayerQuantifiers.__default.f($LS($ly), true, x#0) } 
  LayerQuantifiers.__default.f#canCall(x#0) || LitInt(0) <= x#0
     ==> (x#0 != LitInt(0) ==> LayerQuantifiers.__default.f#canCall(x#0 - 1))
       && LayerQuantifiers.__default.f($LS($ly), true, x#0)
         == (if x#0 == LitInt(0)
           then true
           else LayerQuantifiers.__default.f($ly, reveal_LayerQuantifiers._default.f, x#0 - 1)));

// definition axiom for LayerQuantifiers.__default.f for all literals (revealed)
axiom {:id "id396"} (forall $ly: LayerType, x#0: int :: 
  {:weight 3} { LayerQuantifiers.__default.f($LS($ly), true, LitInt(x#0)) } 
  LayerQuantifiers.__default.f#canCall(LitInt(x#0)) || LitInt(0) <= x#0
     ==> (LitInt(x#0) != LitInt(0)
         ==> LayerQuantifiers.__default.f#canCall(LitInt(x#0 - 1)))
       && LayerQuantifiers.__default.f($LS($ly), true, LitInt(x#0))
         == (if LitInt(x#0) == LitInt(0)
           then true
           else LayerQuantifiers.__default.f($LS($ly), reveal_LayerQuantifiers._default.f, LitInt(x#0 - 1))));

const unique class.Regression.__default: ClassName;

// function declaration for Regression._default.Empty
function Regression.__default.Empty(Regression._default.Empty$A: Ty) : DatatypeType;

function Regression.__default.Empty#canCall(Regression._default.Empty$A: Ty) : bool;

function Tclass.Regression.List(Ty) : Ty;

const unique Tagclass.Regression.List: TyTag;

// Tclass.Regression.List Tag
axiom (forall Regression.List$A: Ty :: 
  { Tclass.Regression.List(Regression.List$A) } 
  Tag(Tclass.Regression.List(Regression.List$A)) == Tagclass.Regression.List
     && TagFamily(Tclass.Regression.List(Regression.List$A)) == tytagFamily$List);

function Tclass.Regression.List_0(Ty) : Ty;

// Tclass.Regression.List injectivity 0
axiom (forall Regression.List$A: Ty :: 
  { Tclass.Regression.List(Regression.List$A) } 
  Tclass.Regression.List_0(Tclass.Regression.List(Regression.List$A))
     == Regression.List$A);

// Box/unbox axiom for Tclass.Regression.List
axiom (forall Regression.List$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Regression.List(Regression.List$A)) } 
  $IsBox(bx, Tclass.Regression.List(Regression.List$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Regression.List(Regression.List$A)));

// consequence axiom for Regression.__default.Empty
axiom (forall Regression._default.Empty$A: Ty :: 
  { Regression.__default.Empty(Regression._default.Empty$A) } 
  $Is(Regression.__default.Empty(Regression._default.Empty$A), 
    Tclass.Regression.List(Regression._default.Empty$A)));

// alloc consequence axiom for Regression.__default.Empty
axiom (forall $Heap: Heap, Regression._default.Empty$A: Ty :: 
  { $IsAlloc(Regression.__default.Empty(Regression._default.Empty$A), 
      Tclass.Regression.List(Regression._default.Empty$A), 
      $Heap) } 
  $IsGoodHeap($Heap)
     ==> $IsAlloc(Regression.__default.Empty(Regression._default.Empty$A), 
      Tclass.Regression.List(Regression._default.Empty$A), 
      $Heap));

function Regression.__default.Empty#requires(Ty) : bool;

// #requires axiom for Regression.__default.Empty
axiom (forall Regression._default.Empty$A: Ty :: 
  { Regression.__default.Empty#requires(Regression._default.Empty$A) } 
  Regression.__default.Empty#requires(Regression._default.Empty$A) == true);

// definition axiom for Regression.__default.Empty (revealed)
axiom {:id "id397"} (forall Regression._default.Empty$A: Ty :: 
  { Regression.__default.Empty(Regression._default.Empty$A) } 
  Regression.__default.Empty(Regression._default.Empty$A)
     == Lit(#Regression.List.Nil()));

// definition axiom for Regression.__default.Empty for all literals (revealed)
axiom {:id "id398"} (forall Regression._default.Empty$A: Ty :: 
  {:weight 3} { Regression.__default.Empty(Regression._default.Empty$A) } 
  Regression.__default.Empty(Regression._default.Empty$A)
     == Lit(#Regression.List.Nil()));

// function declaration for Regression._default.Length
function Regression.__default.Length(Regression._default.Length$A: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    s#0: DatatypeType)
   : int;

function Regression.__default.Length#canCall(Regression._default.Length$A: Ty, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall Regression._default.Length$A: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    s#0: DatatypeType :: 
  { Regression.__default.Length(Regression._default.Length$A, $LS($ly), $reveal, s#0) } 
  Regression.__default.Length(Regression._default.Length$A, $LS($ly), $reveal, s#0)
     == Regression.__default.Length(Regression._default.Length$A, $ly, $reveal, s#0));

// fuel synonym axiom
axiom (forall Regression._default.Length$A: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    s#0: DatatypeType :: 
  { Regression.__default.Length(Regression._default.Length$A, AsFuelBottom($ly), $reveal, s#0) } 
  Regression.__default.Length(Regression._default.Length$A, $ly, $reveal, s#0)
     == Regression.__default.Length(Regression._default.Length$A, $LZ, $reveal, s#0));

// consequence axiom for Regression.__default.Length
axiom (forall Regression._default.Length$A: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    s#0: DatatypeType :: 
  { Regression.__default.Length(Regression._default.Length$A, $ly, $reveal, s#0) } 
  Regression.__default.Length#canCall(Regression._default.Length$A, s#0)
       || $Is(s#0, Tclass.Regression.List(Regression._default.Length$A))
     ==> LitInt(0)
       <= Regression.__default.Length(Regression._default.Length$A, $ly, reveal_Regression._default.Length, s#0));

function Regression.__default.Length#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for Regression.__default.Length
axiom (forall Regression._default.Length$A: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { Regression.__default.Length#requires(Regression._default.Length$A, $ly, s#0) } 
  $Is(s#0, Tclass.Regression.List(Regression._default.Length$A))
     ==> Regression.__default.Length#requires(Regression._default.Length$A, $ly, s#0)
       == true);

// definition axiom for Regression.__default.Length (revealed)
axiom {:id "id399"} (forall Regression._default.Length$A: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { Regression.__default.Length(Regression._default.Length$A, $LS($ly), true, s#0) } 
  Regression.__default.Length#canCall(Regression._default.Length$A, s#0)
       || $Is(s#0, Tclass.Regression.List(Regression._default.Length$A))
     ==> (Regression.List.Cons_q(s#0)
         ==> Regression.__default.Length#canCall(Regression._default.Length$A, Regression.List.tl(s#0)))
       && Regression.__default.Length(Regression._default.Length$A, $LS($ly), true, s#0)
         == (if Regression.List.Cons_q(s#0)
           then 1
             + Regression.__default.Length(Regression._default.Length$A, 
              $ly, 
              reveal_Regression._default.Length, 
              Regression.List.tl(s#0))
           else 0));

// definition axiom for Regression.__default.Length for all literals (revealed)
axiom {:id "id400"} (forall Regression._default.Length$A: Ty, $ly: LayerType, s#0: DatatypeType :: 
  {:weight 3} { Regression.__default.Length(Regression._default.Length$A, $LS($ly), true, Lit(s#0)) } 
  Regression.__default.Length#canCall(Regression._default.Length$A, Lit(s#0))
       || $Is(s#0, Tclass.Regression.List(Regression._default.Length$A))
     ==> (Lit(Regression.List.Cons_q(Lit(s#0)))
         ==> Regression.__default.Length#canCall(Regression._default.Length$A, Lit(Regression.List.tl(Lit(s#0)))))
       && Regression.__default.Length(Regression._default.Length$A, $LS($ly), true, Lit(s#0))
         == (if Regression.List.Cons_q(Lit(s#0))
           then 1
             + Regression.__default.Length(Regression._default.Length$A, 
              $LS($ly), 
              reveal_Regression._default.Length, 
              Lit(Regression.List.tl(Lit(s#0))))
           else 0));

// Constructor function declaration
function #Regression.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Regression.List.Nil()) == ##Regression.List.Nil;
// Constructor literal
axiom #Regression.List.Nil() == Lit(#Regression.List.Nil());
}

const unique ##Regression.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Regression.List.Nil()) == ##Regression.List.Nil;
}

function Regression.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Regression.List.Nil_q(d) } 
  Regression.List.Nil_q(d) <==> DatatypeCtorId(d) == ##Regression.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Regression.List.Nil_q(d) } 
  Regression.List.Nil_q(d) ==> d == #Regression.List.Nil());

// Constructor $Is
axiom (forall Regression.List$A: Ty :: 
  { $Is(#Regression.List.Nil(), Tclass.Regression.List(Regression.List$A)) } 
  $Is(#Regression.List.Nil(), Tclass.Regression.List(Regression.List$A)));

// Constructor $IsAlloc
axiom (forall Regression.List$A: Ty, $h: Heap :: 
  { $IsAlloc(#Regression.List.Nil(), Tclass.Regression.List(Regression.List$A), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Regression.List.Nil(), Tclass.Regression.List(Regression.List$A), $h));

// Constructor function declaration
function #Regression.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##Regression.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #Regression.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#Regression.List.Cons(a#4#0#0, a#4#1#0))
     == ##Regression.List.Cons);
}

function Regression.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Regression.List.Cons_q(d) } 
  Regression.List.Cons_q(d) <==> DatatypeCtorId(d) == ##Regression.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Regression.List.Cons_q(d) } 
  Regression.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #Regression.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall Regression.List$A: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#Regression.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.Regression.List(Regression.List$A)) } 
  $Is(#Regression.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.Regression.List(Regression.List$A))
     <==> $IsBox(a#6#0#0, Regression.List$A)
       && $Is(a#6#1#0, Tclass.Regression.List(Regression.List$A)));

// Constructor $IsAlloc
axiom (forall Regression.List$A: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#Regression.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.Regression.List(Regression.List$A), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Regression.List.Cons(a#6#0#0, a#6#1#0), 
        Tclass.Regression.List(Regression.List$A), 
        $h)
       <==> $IsAllocBox(a#6#0#0, Regression.List$A, $h)
         && $IsAlloc(a#6#1#0, Tclass.Regression.List(Regression.List$A), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Regression.List$A: Ty, $h: Heap :: 
  { $IsAllocBox(Regression.List._h1(d), Regression.List$A, $h) } 
  $IsGoodHeap($h)
       && 
      Regression.List.Cons_q(d)
       && $IsAlloc(d, Tclass.Regression.List(Regression.List$A), $h)
     ==> $IsAllocBox(Regression.List._h1(d), Regression.List$A, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Regression.List$A: Ty, $h: Heap :: 
  { $IsAlloc(Regression.List.tl(d), Tclass.Regression.List(Regression.List$A), $h) } 
  $IsGoodHeap($h)
       && 
      Regression.List.Cons_q(d)
       && $IsAlloc(d, Tclass.Regression.List(Regression.List$A), $h)
     ==> $IsAlloc(Regression.List.tl(d), Tclass.Regression.List(Regression.List$A), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #Regression.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #Regression.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#Regression.List.Cons(a#7#0#0, a#7#1#0)));

function Regression.List._h1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #Regression.List.Cons(a#8#0#0, a#8#1#0) } 
  Regression.List._h1(#Regression.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #Regression.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#Regression.List.Cons(a#9#0#0, a#9#1#0)));

function Regression.List.tl(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #Regression.List.Cons(a#10#0#0, a#10#1#0) } 
  Regression.List.tl(#Regression.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #Regression.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#Regression.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#Regression.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Regression.List(d) } 
  $IsA#Regression.List(d)
     ==> Regression.List.Nil_q(d) || Regression.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall Regression.List$A: Ty, d: DatatypeType :: 
  { Regression.List.Cons_q(d), $Is(d, Tclass.Regression.List(Regression.List$A)) } 
    { Regression.List.Nil_q(d), $Is(d, Tclass.Regression.List(Regression.List$A)) } 
  $Is(d, Tclass.Regression.List(Regression.List$A))
     ==> Regression.List.Nil_q(d) || Regression.List.Cons_q(d));

// Datatype extensional equality declaration
function Regression.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Regression.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Regression.List#Equal(a, b), Regression.List.Nil_q(a) } 
    { Regression.List#Equal(a, b), Regression.List.Nil_q(b) } 
  Regression.List.Nil_q(a) && Regression.List.Nil_q(b)
     ==> Regression.List#Equal(a, b));

// Datatype extensional equality definition: #Regression.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Regression.List#Equal(a, b), Regression.List.Cons_q(a) } 
    { Regression.List#Equal(a, b), Regression.List.Cons_q(b) } 
  Regression.List.Cons_q(a) && Regression.List.Cons_q(b)
     ==> (Regression.List#Equal(a, b)
       <==> Regression.List._h1(a) == Regression.List._h1(b)
         && Regression.List#Equal(Regression.List.tl(a), Regression.List.tl(b))));

// Datatype extensionality axiom: Regression.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Regression.List#Equal(a, b) } 
  Regression.List#Equal(a, b) <==> a == b);

const unique class.Regression.List: ClassName;

const unique class.TypeMembers.__default: ClassName;

const unique class.TypeMembers.Tr?: ClassName;

function Tclass.TypeMembers.Tr?() : Ty
uses {
// Tclass.TypeMembers.Tr? Tag
axiom Tag(Tclass.TypeMembers.Tr?()) == Tagclass.TypeMembers.Tr?
   && TagFamily(Tclass.TypeMembers.Tr?()) == tytagFamily$Tr;
}

const unique Tagclass.TypeMembers.Tr?: TyTag;

// Box/unbox axiom for Tclass.TypeMembers.Tr?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeMembers.Tr?()) } 
  $IsBox(bx, Tclass.TypeMembers.Tr?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TypeMembers.Tr?()));

// $Is axiom for trait Tr
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TypeMembers.Tr?()) } 
  $Is($o, Tclass.TypeMembers.Tr?())
     <==> $o == null || implements$TypeMembers.Tr(dtype($o)));

// $IsAlloc axiom for trait Tr
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TypeMembers.Tr?(), $h) } 
  $IsAlloc($o, Tclass.TypeMembers.Tr?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TypeMembers.Tr(ty: Ty) : bool;

function TypeMembers.Tr.fav(this: ref) : bool;

// Tr.fav: Type axiom
axiom (forall $o: ref :: 
  { TypeMembers.Tr.fav($o) } 
  $o != null && $Is($o, Tclass.TypeMembers.Tr?())
     ==> $Is(TypeMembers.Tr.fav($o), TBool));

// Tr.fav: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { TypeMembers.Tr.fav($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.TypeMembers.Tr?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(TypeMembers.Tr.fav($o), TBool, $h));

// function declaration for TypeMembers.Tr.IsFavorite
function TypeMembers.Tr.IsFavorite($reveal: bool, this: ref) : bool;

function TypeMembers.Tr.IsFavorite#canCall(this: ref) : bool;

function Tclass.TypeMembers.Tr() : Ty
uses {
// Tclass.TypeMembers.Tr Tag
axiom Tag(Tclass.TypeMembers.Tr()) == Tagclass.TypeMembers.Tr
   && TagFamily(Tclass.TypeMembers.Tr()) == tytagFamily$Tr;
}

const unique Tagclass.TypeMembers.Tr: TyTag;

// Box/unbox axiom for Tclass.TypeMembers.Tr
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeMembers.Tr()) } 
  $IsBox(bx, Tclass.TypeMembers.Tr())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TypeMembers.Tr()));

function TypeMembers.Tr.IsFavorite#requires(ref) : bool;

// #requires axiom for TypeMembers.Tr.IsFavorite
axiom (forall this: ref :: 
  { TypeMembers.Tr.IsFavorite#requires(this) } 
  this != null && $Is(this, Tclass.TypeMembers.Tr())
     ==> TypeMembers.Tr.IsFavorite#requires(this) == true);

// definition axiom for TypeMembers.Tr.IsFavorite (revealed)
axiom {:id "id401"} (forall this: ref :: 
  { TypeMembers.Tr.IsFavorite(true, this) } 
  TypeMembers.Tr.IsFavorite#canCall(this)
       || (this != null && $Is(this, Tclass.TypeMembers.Tr()))
     ==> TypeMembers.Tr.IsFavorite(true, this) == TypeMembers.Tr.fav(this));

// definition axiom for TypeMembers.Tr.IsFavorite for all literals (revealed)
axiom {:id "id402"} (forall this: ref :: 
  {:weight 3} { TypeMembers.Tr.IsFavorite(true, Lit(this)) } 
  TypeMembers.Tr.IsFavorite#canCall(Lit(this))
       || (this != null && $Is(this, Tclass.TypeMembers.Tr()))
     ==> TypeMembers.Tr.IsFavorite(true, Lit(this)) == TypeMembers.Tr.fav(Lit(this)));

// function declaration for TypeMembers.Tr.IsFive
function TypeMembers.Tr.IsFive($reveal: bool, x#0: int) : bool;

function TypeMembers.Tr.IsFive#canCall(x#0: int) : bool;

function TypeMembers.Tr.IsFive#requires(int) : bool;

// #requires axiom for TypeMembers.Tr.IsFive
axiom (forall x#0: int :: 
  { TypeMembers.Tr.IsFive#requires(x#0) } 
  TypeMembers.Tr.IsFive#requires(x#0) == true);

// definition axiom for TypeMembers.Tr.IsFive (revealed)
axiom {:id "id403"} (forall x#0: int :: 
  { TypeMembers.Tr.IsFive(true, x#0) } 
  TypeMembers.Tr.IsFive(true, x#0) == (x#0 == LitInt(5)));

// definition axiom for TypeMembers.Tr.IsFive for all literals (revealed)
axiom {:id "id404"} (forall x#0: int :: 
  {:weight 3} { TypeMembers.Tr.IsFive(true, LitInt(x#0)) } 
  TypeMembers.Tr.IsFive(true, LitInt(x#0)) == (LitInt(x#0) == LitInt(5)));

// $Is axiom for non-null type TypeMembers.Tr
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TypeMembers.Tr()) } { $Is(c#0, Tclass.TypeMembers.Tr?()) } 
  $Is(c#0, Tclass.TypeMembers.Tr())
     <==> $Is(c#0, Tclass.TypeMembers.Tr?()) && c#0 != null);

// $IsAlloc axiom for non-null type TypeMembers.Tr
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TypeMembers.Tr(), $h) } 
    { $IsAlloc(c#0, Tclass.TypeMembers.Tr?(), $h) } 
  $IsAlloc(c#0, Tclass.TypeMembers.Tr(), $h)
     <==> $IsAlloc(c#0, Tclass.TypeMembers.Tr?(), $h));

// Constructor function declaration
function #TypeMembers.Color.Carrot() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TypeMembers.Color.Carrot()) == ##TypeMembers.Color.Carrot;
// Constructor $Is
axiom $Is(#TypeMembers.Color.Carrot(), Tclass.TypeMembers.Color());
// Constructor literal
axiom #TypeMembers.Color.Carrot() == Lit(#TypeMembers.Color.Carrot());
}

const unique ##TypeMembers.Color.Carrot: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TypeMembers.Color.Carrot()) == ##TypeMembers.Color.Carrot;
}

function TypeMembers.Color.Carrot_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeMembers.Color.Carrot_q(d) } 
  TypeMembers.Color.Carrot_q(d)
     <==> DatatypeCtorId(d) == ##TypeMembers.Color.Carrot);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeMembers.Color.Carrot_q(d) } 
  TypeMembers.Color.Carrot_q(d) ==> d == #TypeMembers.Color.Carrot());

function Tclass.TypeMembers.Color() : Ty
uses {
// Tclass.TypeMembers.Color Tag
axiom Tag(Tclass.TypeMembers.Color()) == Tagclass.TypeMembers.Color
   && TagFamily(Tclass.TypeMembers.Color()) == tytagFamily$Color;
}

const unique Tagclass.TypeMembers.Color: TyTag;

// Box/unbox axiom for Tclass.TypeMembers.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeMembers.Color()) } 
  $IsBox(bx, Tclass.TypeMembers.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TypeMembers.Color()));

// Constructor function declaration
function #TypeMembers.Color.Pumpkin() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TypeMembers.Color.Pumpkin()) == ##TypeMembers.Color.Pumpkin;
// Constructor $Is
axiom $Is(#TypeMembers.Color.Pumpkin(), Tclass.TypeMembers.Color());
// Constructor literal
axiom #TypeMembers.Color.Pumpkin() == Lit(#TypeMembers.Color.Pumpkin());
}

const unique ##TypeMembers.Color.Pumpkin: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TypeMembers.Color.Pumpkin()) == ##TypeMembers.Color.Pumpkin;
}

function TypeMembers.Color.Pumpkin_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeMembers.Color.Pumpkin_q(d) } 
  TypeMembers.Color.Pumpkin_q(d)
     <==> DatatypeCtorId(d) == ##TypeMembers.Color.Pumpkin);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeMembers.Color.Pumpkin_q(d) } 
  TypeMembers.Color.Pumpkin_q(d) ==> d == #TypeMembers.Color.Pumpkin());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.TypeMembers.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.TypeMembers.Color())
     ==> $IsAlloc(d, Tclass.TypeMembers.Color(), $h));

// Depth-one case-split function
function $IsA#TypeMembers.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TypeMembers.Color(d) } 
  $IsA#TypeMembers.Color(d)
     ==> TypeMembers.Color.Carrot_q(d) || TypeMembers.Color.Pumpkin_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { TypeMembers.Color.Pumpkin_q(d), $Is(d, Tclass.TypeMembers.Color()) } 
    { TypeMembers.Color.Carrot_q(d), $Is(d, Tclass.TypeMembers.Color()) } 
  $Is(d, Tclass.TypeMembers.Color())
     ==> TypeMembers.Color.Carrot_q(d) || TypeMembers.Color.Pumpkin_q(d));

// Datatype extensional equality declaration
function TypeMembers.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TypeMembers.Color.Carrot
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeMembers.Color#Equal(a, b), TypeMembers.Color.Carrot_q(a) } 
    { TypeMembers.Color#Equal(a, b), TypeMembers.Color.Carrot_q(b) } 
  TypeMembers.Color.Carrot_q(a) && TypeMembers.Color.Carrot_q(b)
     ==> TypeMembers.Color#Equal(a, b));

// Datatype extensional equality definition: #TypeMembers.Color.Pumpkin
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeMembers.Color#Equal(a, b), TypeMembers.Color.Pumpkin_q(a) } 
    { TypeMembers.Color#Equal(a, b), TypeMembers.Color.Pumpkin_q(b) } 
  TypeMembers.Color.Pumpkin_q(a) && TypeMembers.Color.Pumpkin_q(b)
     ==> TypeMembers.Color#Equal(a, b));

// Datatype extensionality axiom: TypeMembers.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeMembers.Color#Equal(a, b) } 
  TypeMembers.Color#Equal(a, b) <==> a == b);

const unique class.TypeMembers.Color: ClassName;

// function declaration for TypeMembers.Color.IsFavorite
function TypeMembers.Color.IsFavorite($reveal: bool, this: DatatypeType) : bool;

function TypeMembers.Color.IsFavorite#canCall(this: DatatypeType) : bool;

function TypeMembers.Color.IsFavorite#requires(DatatypeType) : bool;

// #requires axiom for TypeMembers.Color.IsFavorite
axiom (forall this: DatatypeType :: 
  { TypeMembers.Color.IsFavorite#requires(this) } 
  $Is(this, Tclass.TypeMembers.Color())
     ==> TypeMembers.Color.IsFavorite#requires(this) == true);

// definition axiom for TypeMembers.Color.IsFavorite (revealed)
axiom {:id "id405"} (forall this: DatatypeType :: 
  { TypeMembers.Color.IsFavorite(true, this) } 
  TypeMembers.Color.IsFavorite#canCall(this)
       || $Is(this, Tclass.TypeMembers.Color())
     ==> $IsA#TypeMembers.Color(this)
       && TypeMembers.Color.IsFavorite(true, this)
         == TypeMembers.Color#Equal(this, #TypeMembers.Color.Pumpkin()));

// definition axiom for TypeMembers.Color.IsFavorite for all literals (revealed)
axiom {:id "id406"} (forall this: DatatypeType :: 
  {:weight 3} { TypeMembers.Color.IsFavorite(true, Lit(this)) } 
  TypeMembers.Color.IsFavorite#canCall(Lit(this))
       || $Is(this, Tclass.TypeMembers.Color())
     ==> $IsA#TypeMembers.Color(Lit(this))
       && TypeMembers.Color.IsFavorite(true, Lit(this))
         == TypeMembers.Color#Equal(this, #TypeMembers.Color.Pumpkin()));

// function declaration for TypeMembers.Color.IsFive
function TypeMembers.Color.IsFive($reveal: bool, x#0: int) : bool;

function TypeMembers.Color.IsFive#canCall(x#0: int) : bool;

function TypeMembers.Color.IsFive#requires(int) : bool;

// #requires axiom for TypeMembers.Color.IsFive
axiom (forall x#0: int :: 
  { TypeMembers.Color.IsFive#requires(x#0) } 
  TypeMembers.Color.IsFive#requires(x#0) == true);

// definition axiom for TypeMembers.Color.IsFive (revealed)
axiom {:id "id407"} (forall x#0: int :: 
  { TypeMembers.Color.IsFive(true, x#0) } 
  TypeMembers.Color.IsFive(true, x#0) == (x#0 == LitInt(5)));

// definition axiom for TypeMembers.Color.IsFive for all literals (revealed)
axiom {:id "id408"} (forall x#0: int :: 
  {:weight 3} { TypeMembers.Color.IsFive(true, LitInt(x#0)) } 
  TypeMembers.Color.IsFive(true, LitInt(x#0)) == (LitInt(x#0) == LitInt(5)));

procedure {:verboseName "TypeMembers.Color.reveal_IsFavorite (well-formedness)"} {:verify false} CheckWellFormed$$TypeMembers.Color.reveal__IsFavorite();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeMembers.Color.reveal_IsFavorite (call)"} {:verify false} Call$$TypeMembers.Color.reveal__IsFavorite();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_TypeMembers.Color.IsFavorite;



procedure {:verboseName "TypeMembers.Color.reveal_IsFive (well-formedness)"} {:verify false} CheckWellFormed$$TypeMembers.Color.reveal__IsFive();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeMembers.Color.reveal_IsFive (call)"} {:verify false} Call$$TypeMembers.Color.reveal__IsFive();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_TypeMembers.Color.IsFive;



function Tclass.TypeMembers.Small() : Ty
uses {
// Tclass.TypeMembers.Small Tag
axiom Tag(Tclass.TypeMembers.Small()) == Tagclass.TypeMembers.Small
   && TagFamily(Tclass.TypeMembers.Small()) == tytagFamily$Small;
}

const unique Tagclass.TypeMembers.Small: TyTag;

// Box/unbox axiom for Tclass.TypeMembers.Small
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeMembers.Small()) } 
  $IsBox(bx, Tclass.TypeMembers.Small())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TypeMembers.Small()));

// $Is axiom for newtype TypeMembers.Small
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TypeMembers.Small()) } 
  $Is(x#0, Tclass.TypeMembers.Small()) <==> LitInt(30) <= x#0 && x#0 < 40);

// $IsAlloc axiom for newtype TypeMembers.Small
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TypeMembers.Small(), $h) } 
  $IsAlloc(x#0, Tclass.TypeMembers.Small(), $h));

const unique class.TypeMembers.Small: ClassName;

// function declaration for TypeMembers.Small.IsFavorite
function TypeMembers.Small.IsFavorite($reveal: bool, this: int) : bool;

function TypeMembers.Small.IsFavorite#canCall(this: int) : bool;

function TypeMembers.Small.IsFavorite#requires(int) : bool;

// #requires axiom for TypeMembers.Small.IsFavorite
axiom (forall this: int :: 
  { TypeMembers.Small.IsFavorite#requires(this) } 
  LitInt(30) <= this && this < 40
     ==> TypeMembers.Small.IsFavorite#requires(this) == true);

// definition axiom for TypeMembers.Small.IsFavorite (revealed)
axiom {:id "id409"} (forall this: int :: 
  { TypeMembers.Small.IsFavorite(true, this) } 
  TypeMembers.Small.IsFavorite#canCall(this) || (LitInt(30) <= this && this < 40)
     ==> TypeMembers.Small.IsFavorite(true, this) == (this == LitInt(34)));

// definition axiom for TypeMembers.Small.IsFavorite for all literals (revealed)
axiom {:id "id410"} (forall this: int :: 
  {:weight 3} { TypeMembers.Small.IsFavorite(true, LitInt(this)) } 
  TypeMembers.Small.IsFavorite#canCall(LitInt(this))
       || (LitInt(30) <= this && this < 40)
     ==> TypeMembers.Small.IsFavorite(true, LitInt(this)) == (LitInt(this) == LitInt(34)));

// function declaration for TypeMembers.Small.IsFive
function TypeMembers.Small.IsFive($reveal: bool, x#0: int) : bool;

function TypeMembers.Small.IsFive#canCall(x#0: int) : bool;

function TypeMembers.Small.IsFive#requires(int) : bool;

// #requires axiom for TypeMembers.Small.IsFive
axiom (forall x#0: int :: 
  { TypeMembers.Small.IsFive#requires(x#0) } 
  TypeMembers.Small.IsFive#requires(x#0) == true);

// definition axiom for TypeMembers.Small.IsFive (revealed)
axiom {:id "id411"} (forall x#0: int :: 
  { TypeMembers.Small.IsFive(true, x#0) } 
  TypeMembers.Small.IsFive(true, x#0) == (x#0 == LitInt(5)));

// definition axiom for TypeMembers.Small.IsFive for all literals (revealed)
axiom {:id "id412"} (forall x#0: int :: 
  {:weight 3} { TypeMembers.Small.IsFive(true, LitInt(x#0)) } 
  TypeMembers.Small.IsFive(true, LitInt(x#0)) == (LitInt(x#0) == LitInt(5)));

procedure {:verboseName "TypeMembers.Small.reveal_IsFavorite (well-formedness)"} {:verify false} CheckWellFormed$$TypeMembers.Small.reveal__IsFavorite();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeMembers.Small.reveal_IsFavorite (call)"} {:verify false} Call$$TypeMembers.Small.reveal__IsFavorite();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_TypeMembers.Small.IsFavorite;



procedure {:verboseName "TypeMembers.Small.reveal_IsFive (well-formedness)"} {:verify false} CheckWellFormed$$TypeMembers.Small.reveal__IsFive();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeMembers.Small.reveal_IsFive (call)"} {:verify false} Call$$TypeMembers.Small.reveal__IsFive();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_TypeMembers.Small.IsFive;



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

const unique tytagFamily$Box: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Tr: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique tytagFamily$Small: TyTagFamily;

const unique field$x: NameFamily;
