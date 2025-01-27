// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy

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

function Tclass._module.Shape?() : Ty
uses {
// Tclass._module.Shape? Tag
axiom Tag(Tclass._module.Shape?()) == Tagclass._module.Shape?
   && TagFamily(Tclass._module.Shape?()) == tytagFamily$Shape;
}

const unique Tagclass._module.Shape?: TyTag;

// Box/unbox axiom for Tclass._module.Shape?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Shape?()) } 
  $IsBox(bx, Tclass._module.Shape?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Shape?()));

procedure {:verboseName "PrintArray (well-formedness)"} CheckWellFormed$$_module.__default.PrintArray(shapes#0: ref
       where $Is(shapes#0, Tclass._System.array(Tclass._module.Shape?()))
         && $IsAlloc(shapes#0, Tclass._System.array(Tclass._module.Shape?()), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintArray (call)"} Call$$_module.__default.PrintArray(shapes#0: ref
       where $Is(shapes#0, Tclass._System.array(Tclass._module.Shape?()))
         && $IsAlloc(shapes#0, Tclass._System.array(Tclass._module.Shape?()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintArray (correctness)"} Impl$$_module.__default.PrintArray(shapes#0: ref
       where $Is(shapes#0, Tclass._System.array(Tclass._module.Shape?()))
         && $IsAlloc(shapes#0, Tclass._System.array(Tclass._module.Shape?()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintArray (correctness)"} Impl$$_module.__default.PrintArray(shapes#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var newtype$check#0_0: ref;

    // AddMethodImpl: PrintArray, Impl$$_module.__default.PrintArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(39,15)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(40,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _System.array.Length(shapes#0) - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id3"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id4"} $w$loop#0 ==> i#0 <= _System.array.Length(shapes#0);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant _System.array.Length(shapes#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
                assert {:id "id1"} {:subsumption 0} shapes#0 != null;
            }

            assume true;
            assume {:id "id2"} LitInt(0) <= i#0 && i#0 <= _System.array.Length(shapes#0);
            assert {:id "id5"} shapes#0 != null;
            assume true;
            assume false;
        }

        assert {:id "id6"} shapes#0 != null;
        assume true;
        if (_System.array.Length(shapes#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := _System.array.Length(shapes#0) - i#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(44,5)
        assert {:id "id7"} shapes#0 != null;
        assert {:id "id8"} 0 <= i#0 && i#0 < _System.array.Length(shapes#0);
        newtype$check#0_0 := null;
        assume true;
        if ($Unbox(read($Heap, shapes#0, IndexField(i#0))): ref != null)
        {
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(45,28)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id9"} shapes#0 != null;
            assert {:id "id10"} 0 <= i#0 && i#0 < _System.array.Length(shapes#0);
            assume true;
            assert {:id "id11"} $Unbox(read($Heap, shapes#0, IndexField(i#0))): ref != null;
            call {:id "id12"} Call$$_module.Shape.PrintCenter($Unbox(read($Heap, shapes#0, IndexField(i#0))): ref);
            // TrCallStmt: After ProcessCallStmt
            pop;
        }
        else
        {
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(47,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(40,3)
        assert {:id "id14"} 0 <= $decr$loop#00 || _System.array.Length(shapes#0) - i#0 == $decr$loop#00;
        assert {:id "id15"} _System.array.Length(shapes#0) - i#0 < $decr$loop#00;
        assume true;
    }
}



function Tclass._module.Shape() : Ty
uses {
// Tclass._module.Shape Tag
axiom Tag(Tclass._module.Shape()) == Tagclass._module.Shape
   && TagFamily(Tclass._module.Shape()) == tytagFamily$Shape;
}

const unique Tagclass._module.Shape: TyTag;

// Box/unbox axiom for Tclass._module.Shape
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Shape()) } 
  $IsBox(bx, Tclass._module.Shape())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Shape()));

procedure {:verboseName "PrintSeq (well-formedness)"} CheckWellFormed$$_module.__default.PrintSeq(shapes#0: Seq
       where $Is(shapes#0, TSeq(Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TSeq(Tclass._module.Shape()), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintSeq (call)"} Call$$_module.__default.PrintSeq(shapes#0: Seq
       where $Is(shapes#0, TSeq(Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TSeq(Tclass._module.Shape()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintSeq (correctness)"} Impl$$_module.__default.PrintSeq(shapes#0: Seq
       where $Is(shapes#0, TSeq(Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TSeq(Tclass._module.Shape()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintSeq (correctness)"} Impl$$_module.__default.PrintSeq(shapes#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: PrintSeq, Impl$$_module.__default.PrintSeq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(52,15)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(53,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Seq#Length(shapes#0) - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id18"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id19"} $w$loop#0 ==> i#0 <= Seq#Length(shapes#0);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant Seq#Length(shapes#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            assume true;
            assume {:id "id17"} LitInt(0) <= i#0 && i#0 <= Seq#Length(shapes#0);
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Length(shapes#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length(shapes#0) - i#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(57,26)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id20"} 0 <= i#0 && i#0 < Seq#Length(shapes#0);
        assume true;
        assert {:id "id21"} $Unbox(Seq#Index(shapes#0, i#0)): ref != null;
        call {:id "id22"} Call$$_module.Shape.PrintCenter($Unbox(Seq#Index(shapes#0, i#0)): ref);
        // TrCallStmt: After ProcessCallStmt
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(58,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(53,3)
        assert {:id "id24"} 0 <= $decr$loop#00 || Seq#Length(shapes#0) - i#0 == $decr$loop#00;
        assert {:id "id25"} Seq#Length(shapes#0) - i#0 < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "ThereIsASmallest (well-formedness)"} CheckWellFormed$$_module.__default.ThereIsASmallest(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Shape()))
         && $IsAlloc(s#0, TSet(Tclass._module.Shape()), $Heap))
   returns (shape#0: ref
       where $Is(shape#0, Tclass._module.Shape())
         && $IsAlloc(shape#0, Tclass._module.Shape(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ThereIsASmallest (well-formedness)"} CheckWellFormed$$_module.__default.ThereIsASmallest(s#0: Set) returns (shape#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var shape'#0: ref;


    // AddMethodImpl: ThereIsASmallest, CheckWellFormed$$_module.__default.ThereIsASmallest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id26"} !Set#Equal(s#0, Set#Empty(): Set);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc shape#0;
    assume {:id "id27"} Set#IsMember(s#0, $Box(shape#0));
    havoc shape'#0;
    assume $Is(shape'#0, Tclass._module.Shape())
       && $IsAlloc(shape'#0, Tclass._module.Shape(), $Heap);
    if (*)
    {
        assume {:id "id28"} Set#IsMember(s#0, $Box(shape'#0));
        assert {:id "id29"} shape#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(shape#0), Tclass._module.Shape?(), $Heap);
        assume _module.Shape.Center#canCall($Heap, shape#0);
        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0));
        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0));
        assert {:id "id30"} shape'#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(shape'#0), Tclass._module.Shape?(), $Heap);
        assume _module.Shape.Center#canCall($Heap, shape'#0);
        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#0));
        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#0));
        assume {:id "id31"} $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real
           <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0))): real;
    }
    else
    {
        assume {:id "id32"} Set#IsMember(s#0, $Box(shape'#0))
           ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real
             <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0))): real;
    }

    assume {:id "id33"} (forall shape'#1: ref :: 
      { _module.Shape.Center($Heap, shape'#1) } { Set#IsMember(s#0, $Box(shape'#1)) } 
      $Is(shape'#1, Tclass._module.Shape())
         ==> 
        Set#IsMember(s#0, $Box(shape'#1))
         ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real
           <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#1))): real);
}



procedure {:verboseName "ThereIsASmallest (call)"} Call$$_module.__default.ThereIsASmallest(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Shape()))
         && $IsAlloc(s#0, TSet(Tclass._module.Shape()), $Heap))
   returns (shape#0: ref
       where $Is(shape#0, Tclass._module.Shape())
         && $IsAlloc(shape#0, Tclass._module.Shape(), $Heap));
  // user-defined preconditions
  requires {:id "id34"} !Set#Equal(s#0, Set#Empty(): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures Set#IsMember(s#0, $Box(shape#0))
     ==> (forall shape'#1: ref :: 
      { _module.Shape.Center($Heap, shape'#1) } { Set#IsMember(s#0, $Box(shape'#1)) } 
      $Is(shape'#1, Tclass._module.Shape())
         ==> 
        Set#IsMember(s#0, $Box(shape'#1))
         ==> _module.Shape.Center#canCall($Heap, shape#0)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0))
           && 
          _module.Shape.Center#canCall($Heap, shape'#1)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#1)));
  ensures {:id "id35"} Set#IsMember(s#0, $Box(shape#0));
  ensures {:id "id36"} (forall shape'#1: ref :: 
    { _module.Shape.Center($Heap, shape'#1) } { Set#IsMember(s#0, $Box(shape'#1)) } 
    $Is(shape'#1, Tclass._module.Shape())
       ==> 
      Set#IsMember(s#0, $Box(shape'#1))
       ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real
         <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#1))): real);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ThereIsASmallest (correctness)"} Impl$$_module.__default.ThereIsASmallest(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Shape()))
         && $IsAlloc(s#0, TSet(Tclass._module.Shape()), $Heap))
   returns (defass#shape#0: bool, 
    shape#0: ref
       where defass#shape#0
         ==> $Is(shape#0, Tclass._module.Shape())
           && $IsAlloc(shape#0, Tclass._module.Shape(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id37"} !Set#Equal(s#0, Set#Empty(): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures Set#IsMember(s#0, $Box(shape#0))
     ==> (forall shape'#1: ref :: 
      { _module.Shape.Center($Heap, shape'#1) } { Set#IsMember(s#0, $Box(shape'#1)) } 
      $Is(shape'#1, Tclass._module.Shape())
         ==> 
        Set#IsMember(s#0, $Box(shape'#1))
         ==> _module.Shape.Center#canCall($Heap, shape#0)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0))
           && 
          _module.Shape.Center#canCall($Heap, shape'#1)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#1)));
  ensures {:id "id38"} Set#IsMember(s#0, $Box(shape#0));
  ensures {:id "id39"} (forall shape'#1: ref :: 
    { _module.Shape.Center($Heap, shape'#1) } { Set#IsMember(s#0, $Box(shape'#1)) } 
    $Is(shape'#1, Tclass._module.Shape())
       ==> 
      Set#IsMember(s#0, $Box(shape'#1))
       ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real
         <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#1))): real);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ThereIsASmallest (correctness)"} Impl$$_module.__default.ThereIsASmallest(s#0: Set) returns (defass#shape#0: bool, shape#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var shape#1: ref;
  var eg$shape'#0: ref;
  var shape'#0_0: ref
     where $Is(shape'#0_0, Tclass._module.Shape())
       && $IsAlloc(shape'#0_0, Tclass._module.Shape(), $Heap);
  var s'#1_0: Set
     where $Is(s'#1_0, TSet(Tclass._module.Shape()))
       && $IsAlloc(s'#1_0, TSet(Tclass._module.Shape()), $Heap);
  var $rhs##1_0: ref;
  var s##1_0: Set;

    // AddMethodImpl: ThereIsASmallest, Impl$$_module.__default.ThereIsASmallest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(66,9)
    havoc shape#1;
    if ($Is(shape#1, Tclass._module.Shape())
       && $IsAlloc(shape#1, Tclass._module.Shape(), $Heap))
    {
        assume true;
    }

    assert {:id "id40"} ($Is(null, Tclass._module.Shape()) && Set#IsMember(s#0, $Box(null)))
       || (exists $as#shape0#0: ref :: 
        $Is($as#shape0#0, Tclass._module.Shape())
           && Set#IsMember(s#0, $Box($as#shape0#0)));
    defass#shape#0 := true;
    havoc shape#0;
    assume {:id "id41"} Set#IsMember(s#0, $Box(shape#0));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(67,3)
    // Begin Comprehension WF check
    havoc eg$shape'#0;
    if ($Is(eg$shape'#0, Tclass._module.Shape())
       && $IsAlloc(eg$shape'#0, Tclass._module.Shape(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(eg$shape'#0)))
        {
            assert {:id "id42"} eg$shape'#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(eg$shape'#0), Tclass._module.Shape?(), $Heap);
            assume _module.Shape.Center#canCall($Heap, eg$shape'#0);
            assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, eg$shape'#0));
            assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, eg$shape'#0));
            assert {:id "id43"} defass#shape#0;
            assert {:id "id44"} shape#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(shape#0), Tclass._module.Shape?(), $Heap);
            assume _module.Shape.Center#canCall($Heap, shape#0);
            assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0));
            assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0));
        }
    }

    // End Comprehension WF check
    assume (forall eg$shape'#1: ref :: 
      { _module.Shape.Center($Heap, eg$shape'#1) } 
        { Set#IsMember(s#0, $Box(eg$shape'#1)) } 
      $Is(eg$shape'#1, Tclass._module.Shape())
         ==> 
        Set#IsMember(s#0, $Box(eg$shape'#1))
         ==> _module.Shape.Center#canCall($Heap, eg$shape'#1)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, eg$shape'#1))
           && 
          _module.Shape.Center#canCall($Heap, shape#0)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0)));
    havoc shape'#0_0 /* where $Is(shape'#0_0, Tclass._module.Shape())
       && $IsAlloc(shape'#0_0, Tclass._module.Shape(), $Heap) */;
    if (*)
    {
        assume Set#IsMember(s#0, $Box(shape'#0_0))
           && $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0_0))): real
             < $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(68,12)
        assume true;
        assert {:id "id45"} defass#shape#0;
        assume true;
        s'#1_0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, $Box(shape#0)));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(69,5)
        assume true;
        assert {:id "id47"} Set#IsMember(s'#1_0, $Box(shape'#0_0));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(70,30)
        assume true;
        // TrCallStmt: Adding lhs with type Shape
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_0 := s'#1_0;
        assert {:id "id48"} Set#Subset(s##1_0, s#0) && !Set#Subset(s#0, s##1_0);
        call {:id "id49"} $rhs##1_0 := Call$$_module.__default.ThereIsASmallest(s##1_0);
        // TrCallStmt: After ProcessCallStmt
        shape#0 := $rhs##1_0;
        defass#shape#0 := true;
    }
    else
    {
        assume {:id "id51"} !(exists eg$shape'#1: ref :: 
          { _module.Shape.Center($Heap, eg$shape'#1) } 
            { Set#IsMember(s#0, $Box(eg$shape'#1)) } 
          $Is(eg$shape'#1, Tclass._module.Shape())
             && 
            Set#IsMember(s#0, $Box(eg$shape'#1))
             && $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, eg$shape'#1))): real
               < $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real);
    }

    assert {:id "id52"} defass#shape#0;
}



procedure {:verboseName "PrintSet (well-formedness)"} CheckWellFormed$$_module.__default.PrintSet(shapes#0: Set
       where $Is(shapes#0, TSet(Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TSet(Tclass._module.Shape()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintSet (call)"} Call$$_module.__default.PrintSet(shapes#0: Set
       where $Is(shapes#0, TSet(Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TSet(Tclass._module.Shape()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintSet (correctness)"} Impl$$_module.__default.PrintSet(shapes#0: Set
       where $Is(shapes#0, TSet(Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TSet(Tclass._module.Shape()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintSet (correctness)"} Impl$$_module.__default.PrintSet(shapes#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._module.Shape()))
       && $IsAlloc(s#0, TSet(Tclass._module.Shape()), $Heap);
  var ordered#0: Seq
     where $Is(ordered#0, TSeq(Tclass._module.Shape()))
       && $IsAlloc(ordered#0, TSeq(Tclass._module.Shape()), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var defass#_v0#0_0: bool;
  var _v0#0_0: ref
     where defass#_v0#0_0
       ==> $Is(_v0#0_0, Tclass._module.Shape())
         && $IsAlloc(_v0#0_0, Tclass._module.Shape(), $Heap);
  var $rhs##0_0: ref;
  var s##0_0: Set;
  var defass#shape#0_0: bool;
  var shape#0_0: ref
     where defass#shape#0_0
       ==> $Is(shape#0_0, Tclass._module.Shape())
         && $IsAlloc(shape#0_0, Tclass._module.Shape(), $Heap);
  var shape#0_1: ref;
  var shape'#0_0: ref;
  var shapes##0: Seq;

    // AddMethodImpl: PrintSet, Impl$$_module.__default.PrintSet
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(75,9)
    assume true;
    assume true;
    s#0 := shapes#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(76,15)
    assume true;
    assume true;
    ordered#0 := Lit(Seq#Empty(): Seq);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(77,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0);
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (Set#Card(s#0) <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (Set#Card(s#0) == 0)
        {
            break;
        }

        $decr$loop#00 := (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0);
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(78,36)
        assume true;
        // TrCallStmt: Adding lhs with type Shape
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        call {:id "id55"} $rhs##0_0 := Call$$_module.__default.ThereIsASmallest(s##0_0);
        // TrCallStmt: After ProcessCallStmt
        _v0#0_0 := $rhs##0_0;
        defass#_v0#0_0 := true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(79,15)
        havoc shape#0_1;
        if ($Is(shape#0_1, Tclass._module.Shape())
           && $IsAlloc(shape#0_1, Tclass._module.Shape(), $Heap))
        {
            if (Set#IsMember(s#0, $Box(shape#0_1)))
            {
                // Begin Comprehension WF check
                havoc shape'#0_0;
                if ($Is(shape'#0_0, Tclass._module.Shape())
                   && $IsAlloc(shape'#0_0, Tclass._module.Shape(), $Heap))
                {
                    if (Set#IsMember(s#0, $Box(shape'#0_0)))
                    {
                        assert {:id "id57"} {:subsumption 0} shape#0_1 != null;
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(shape#0_1), Tclass._module.Shape?(), $Heap);
                        assume _module.Shape.Center#canCall($Heap, shape#0_1);
                        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0_1));
                        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0_1));
                        assert {:id "id58"} {:subsumption 0} shape'#0_0 != null;
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(shape'#0_0), Tclass._module.Shape?(), $Heap);
                        assume _module.Shape.Center#canCall($Heap, shape'#0_0);
                        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#0_0));
                        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#0_0));
                    }
                }

                // End Comprehension WF check
            }

            assume Set#IsMember(s#0, $Box(shape#0_1))
               ==> (forall shape'#0_1: ref :: 
                { _module.Shape.Center($Heap, shape'#0_1) } 
                  { Set#IsMember(s#0, $Box(shape'#0_1)) } 
                $Is(shape'#0_1, Tclass._module.Shape())
                   ==> 
                  Set#IsMember(s#0, $Box(shape'#0_1))
                   ==> _module.Shape.Center#canCall($Heap, shape#0_1)
                     && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0_1))
                     && 
                    _module.Shape.Center#canCall($Heap, shape'#0_1)
                     && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#0_1)));
        }

        assert {:id "id59"} ($Is(null, Tclass._module.Shape())
             && 
            Set#IsMember(s#0, $Box(null))
             && (forall shape'#0_3: ref :: 
              { _module.Shape.Center($Heap, shape'#0_3) } 
                { Set#IsMember(s#0, $Box(shape'#0_3)) } 
              $Is(shape'#0_3, Tclass._module.Shape())
                 ==> 
                Set#IsMember(s#0, $Box(shape'#0_3))
                 ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, null))): real
                   <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0_3))): real))
           || (exists $as#shape0_0#0_0: ref :: 
            $Is($as#shape0_0#0_0, Tclass._module.Shape())
               && 
              Set#IsMember(s#0, $Box($as#shape0_0#0_0))
               && (forall shape'#0_2: ref :: 
                { _module.Shape.Center($Heap, shape'#0_2) } 
                  { Set#IsMember(s#0, $Box(shape'#0_2)) } 
                $Is(shape'#0_2, Tclass._module.Shape())
                   ==> 
                  Set#IsMember(s#0, $Box(shape'#0_2))
                   ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, $as#shape0_0#0_0))): real
                     <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0_2))): real));
        defass#shape#0_0 := true;
        havoc shape#0_0;
        assume {:id "id60"} Set#IsMember(s#0, $Box(shape#0_0))
           && (forall shape'#0_4: ref :: 
            { _module.Shape.Center($Heap, shape'#0_4) } 
              { Set#IsMember(s#0, $Box(shape'#0_4)) } 
            $Is(shape'#0_4, Tclass._module.Shape())
               ==> 
              Set#IsMember(s#0, $Box(shape'#0_4))
               ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0_0))): real
                 <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0_4))): real);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(80,13)
        assume true;
        assert {:id "id61"} defass#shape#0_0;
        assume true;
        ordered#0 := Seq#Append(ordered#0, Seq#Build(Seq#Empty(): Seq, $Box(shape#0_0)));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(81,7)
        assume true;
        assert {:id "id63"} defass#shape#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, $Box(shape#0_0)));
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(77,3)
        assert {:id "id65"} 0 <= $decr$loop#00
           || (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
             == $decr$loop#00;
        assert {:id "id66"} (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
           < $decr$loop#00;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(83,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    shapes##0 := ordered#0;
    call {:id "id67"} Call$$_module.__default.PrintSeq(shapes##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "ThereIsASmallestInMultiset (well-formedness)"} CheckWellFormed$$_module.__default.ThereIsASmallestInMultiset(s#0: MultiSet
       where $Is(s#0, TMultiSet(Tclass._module.Shape()))
         && $IsAlloc(s#0, TMultiSet(Tclass._module.Shape()), $Heap))
   returns (shape#0: ref
       where $Is(shape#0, Tclass._module.Shape())
         && $IsAlloc(shape#0, Tclass._module.Shape(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ThereIsASmallestInMultiset (well-formedness)"} CheckWellFormed$$_module.__default.ThereIsASmallestInMultiset(s#0: MultiSet) returns (shape#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var shape'#0: ref;


    // AddMethodImpl: ThereIsASmallestInMultiset, CheckWellFormed$$_module.__default.ThereIsASmallestInMultiset
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id68"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc shape#0;
    assume {:id "id69"} MultiSet#Multiplicity(s#0, $Box(shape#0)) > 0;
    havoc shape'#0;
    assume $Is(shape'#0, Tclass._module.Shape())
       && $IsAlloc(shape'#0, Tclass._module.Shape(), $Heap);
    if (*)
    {
        assume {:id "id70"} MultiSet#Multiplicity(s#0, $Box(shape'#0)) > 0;
        assert {:id "id71"} shape#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(shape#0), Tclass._module.Shape?(), $Heap);
        assume _module.Shape.Center#canCall($Heap, shape#0);
        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0));
        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0));
        assert {:id "id72"} shape'#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(shape'#0), Tclass._module.Shape?(), $Heap);
        assume _module.Shape.Center#canCall($Heap, shape'#0);
        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#0));
        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#0));
        assume {:id "id73"} $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real
           <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0))): real;
    }
    else
    {
        assume {:id "id74"} MultiSet#Multiplicity(s#0, $Box(shape'#0)) > 0
           ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real
             <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0))): real;
    }

    assume {:id "id75"} (forall shape'#1: ref :: 
      { _module.Shape.Center($Heap, shape'#1) } 
        { MultiSet#Multiplicity(s#0, $Box(shape'#1)) } 
      $Is(shape'#1, Tclass._module.Shape())
         ==> 
        MultiSet#Multiplicity(s#0, $Box(shape'#1)) > 0
         ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real
           <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#1))): real);
}



procedure {:verboseName "ThereIsASmallestInMultiset (call)"} Call$$_module.__default.ThereIsASmallestInMultiset(s#0: MultiSet
       where $Is(s#0, TMultiSet(Tclass._module.Shape()))
         && $IsAlloc(s#0, TMultiSet(Tclass._module.Shape()), $Heap))
   returns (shape#0: ref
       where $Is(shape#0, Tclass._module.Shape())
         && $IsAlloc(shape#0, Tclass._module.Shape(), $Heap));
  // user-defined preconditions
  requires {:id "id76"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
  modifies $Heap;
  // user-defined postconditions
  free ensures MultiSet#Multiplicity(s#0, $Box(shape#0)) > 0
     ==> (forall shape'#1: ref :: 
      { _module.Shape.Center($Heap, shape'#1) } 
        { MultiSet#Multiplicity(s#0, $Box(shape'#1)) } 
      $Is(shape'#1, Tclass._module.Shape())
         ==> 
        MultiSet#Multiplicity(s#0, $Box(shape'#1)) > 0
         ==> _module.Shape.Center#canCall($Heap, shape#0)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0))
           && 
          _module.Shape.Center#canCall($Heap, shape'#1)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#1)));
  ensures {:id "id77"} MultiSet#Multiplicity(s#0, $Box(shape#0)) > 0;
  ensures {:id "id78"} (forall shape'#1: ref :: 
    { _module.Shape.Center($Heap, shape'#1) } 
      { MultiSet#Multiplicity(s#0, $Box(shape'#1)) } 
    $Is(shape'#1, Tclass._module.Shape())
       ==> 
      MultiSet#Multiplicity(s#0, $Box(shape'#1)) > 0
       ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real
         <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#1))): real);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ThereIsASmallestInMultiset (correctness)"} Impl$$_module.__default.ThereIsASmallestInMultiset(s#0: MultiSet
       where $Is(s#0, TMultiSet(Tclass._module.Shape()))
         && $IsAlloc(s#0, TMultiSet(Tclass._module.Shape()), $Heap))
   returns (defass#shape#0: bool, 
    shape#0: ref
       where defass#shape#0
         ==> $Is(shape#0, Tclass._module.Shape())
           && $IsAlloc(shape#0, Tclass._module.Shape(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id79"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
  modifies $Heap;
  // user-defined postconditions
  free ensures MultiSet#Multiplicity(s#0, $Box(shape#0)) > 0
     ==> (forall shape'#1: ref :: 
      { _module.Shape.Center($Heap, shape'#1) } 
        { MultiSet#Multiplicity(s#0, $Box(shape'#1)) } 
      $Is(shape'#1, Tclass._module.Shape())
         ==> 
        MultiSet#Multiplicity(s#0, $Box(shape'#1)) > 0
         ==> _module.Shape.Center#canCall($Heap, shape#0)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0))
           && 
          _module.Shape.Center#canCall($Heap, shape'#1)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#1)));
  ensures {:id "id80"} MultiSet#Multiplicity(s#0, $Box(shape#0)) > 0;
  ensures {:id "id81"} (forall shape'#1: ref :: 
    { _module.Shape.Center($Heap, shape'#1) } 
      { MultiSet#Multiplicity(s#0, $Box(shape'#1)) } 
    $Is(shape'#1, Tclass._module.Shape())
       ==> 
      MultiSet#Multiplicity(s#0, $Box(shape'#1)) > 0
       ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real
         <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#1))): real);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ThereIsASmallestInMultiset (correctness)"} Impl$$_module.__default.ThereIsASmallestInMultiset(s#0: MultiSet)
   returns (defass#shape#0: bool, shape#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var shape#1: ref;
  var eg$shape'#0: ref;
  var shape'#0_0: ref
     where $Is(shape'#0_0, Tclass._module.Shape())
       && $IsAlloc(shape'#0_0, Tclass._module.Shape(), $Heap);
  var s'#1_0: MultiSet
     where $Is(s'#1_0, TMultiSet(Tclass._module.Shape()))
       && $IsAlloc(s'#1_0, TMultiSet(Tclass._module.Shape()), $Heap);
  var $rhs##1_0: ref;
  var s##1_0: MultiSet;

    // AddMethodImpl: ThereIsASmallestInMultiset, Impl$$_module.__default.ThereIsASmallestInMultiset
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(90,9)
    havoc shape#1;
    if ($Is(shape#1, Tclass._module.Shape())
       && $IsAlloc(shape#1, Tclass._module.Shape(), $Heap))
    {
        assume true;
    }

    assert {:id "id82"} ($Is(null, Tclass._module.Shape())
         && MultiSet#Multiplicity(s#0, $Box(null)) > 0)
       || (exists $as#shape0#0: ref :: 
        $Is($as#shape0#0, Tclass._module.Shape())
           && MultiSet#Multiplicity(s#0, $Box($as#shape0#0)) > 0);
    defass#shape#0 := true;
    havoc shape#0;
    assume {:id "id83"} MultiSet#Multiplicity(s#0, $Box(shape#0)) > 0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(91,3)
    // Begin Comprehension WF check
    havoc eg$shape'#0;
    if ($Is(eg$shape'#0, Tclass._module.Shape())
       && $IsAlloc(eg$shape'#0, Tclass._module.Shape(), $Heap))
    {
        if (MultiSet#Multiplicity(s#0, $Box(eg$shape'#0)) > 0)
        {
            assert {:id "id84"} eg$shape'#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(eg$shape'#0), Tclass._module.Shape?(), $Heap);
            assume _module.Shape.Center#canCall($Heap, eg$shape'#0);
            assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, eg$shape'#0));
            assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, eg$shape'#0));
            assert {:id "id85"} defass#shape#0;
            assert {:id "id86"} shape#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(shape#0), Tclass._module.Shape?(), $Heap);
            assume _module.Shape.Center#canCall($Heap, shape#0);
            assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0));
            assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0));
        }
    }

    // End Comprehension WF check
    assume (forall eg$shape'#1: ref :: 
      { _module.Shape.Center($Heap, eg$shape'#1) } 
        { MultiSet#Multiplicity(s#0, $Box(eg$shape'#1)) } 
      $Is(eg$shape'#1, Tclass._module.Shape())
         ==> 
        MultiSet#Multiplicity(s#0, $Box(eg$shape'#1)) > 0
         ==> _module.Shape.Center#canCall($Heap, eg$shape'#1)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, eg$shape'#1))
           && 
          _module.Shape.Center#canCall($Heap, shape#0)
           && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0)));
    havoc shape'#0_0 /* where $Is(shape'#0_0, Tclass._module.Shape())
       && $IsAlloc(shape'#0_0, Tclass._module.Shape(), $Heap) */;
    if (*)
    {
        assume MultiSet#Multiplicity(s#0, $Box(shape'#0_0)) > 0
           && $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0_0))): real
             < $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(92,12)
        assume true;
        assert {:id "id87"} defass#shape#0;
        assume true;
        s'#1_0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(shape#0)));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(93,5)
        assume true;
        assert {:id "id89"} MultiSet#Multiplicity(s'#1_0, $Box(shape'#0_0)) > 0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(94,40)
        assume true;
        // TrCallStmt: Adding lhs with type Shape
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_0 := s'#1_0;
        assert {:id "id90"} MultiSet#Subset(s##1_0, s#0) && !MultiSet#Equal(s##1_0, s#0);
        call {:id "id91"} $rhs##1_0 := Call$$_module.__default.ThereIsASmallestInMultiset(s##1_0);
        // TrCallStmt: After ProcessCallStmt
        shape#0 := $rhs##1_0;
        defass#shape#0 := true;
    }
    else
    {
        assume {:id "id93"} !(exists eg$shape'#1: ref :: 
          { _module.Shape.Center($Heap, eg$shape'#1) } 
            { MultiSet#Multiplicity(s#0, $Box(eg$shape'#1)) } 
          $Is(eg$shape'#1, Tclass._module.Shape())
             && 
            MultiSet#Multiplicity(s#0, $Box(eg$shape'#1)) > 0
             && $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, eg$shape'#1))): real
               < $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0))): real);
    }

    assert {:id "id94"} defass#shape#0;
}



procedure {:verboseName "PrintMultiSet (well-formedness)"} CheckWellFormed$$_module.__default.PrintMultiSet(shapes#0: MultiSet
       where $Is(shapes#0, TMultiSet(Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TMultiSet(Tclass._module.Shape()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintMultiSet (call)"} Call$$_module.__default.PrintMultiSet(shapes#0: MultiSet
       where $Is(shapes#0, TMultiSet(Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TMultiSet(Tclass._module.Shape()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintMultiSet (correctness)"} Impl$$_module.__default.PrintMultiSet(shapes#0: MultiSet
       where $Is(shapes#0, TMultiSet(Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TMultiSet(Tclass._module.Shape()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintMultiSet (correctness)"} Impl$$_module.__default.PrintMultiSet(shapes#0: MultiSet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(Tclass._module.Shape()))
       && $IsAlloc(s#0, TMultiSet(Tclass._module.Shape()), $Heap);
  var ordered#0: Seq
     where $Is(ordered#0, TSeq(Tclass._module.Shape()))
       && $IsAlloc(ordered#0, TSeq(Tclass._module.Shape()), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var defass#_v1#0_0: bool;
  var _v1#0_0: ref
     where defass#_v1#0_0
       ==> $Is(_v1#0_0, Tclass._module.Shape())
         && $IsAlloc(_v1#0_0, Tclass._module.Shape(), $Heap);
  var $rhs##0_0: ref;
  var s##0_0: MultiSet;
  var defass#shape#0_0: bool;
  var shape#0_0: ref
     where defass#shape#0_0
       ==> $Is(shape#0_0, Tclass._module.Shape())
         && $IsAlloc(shape#0_0, Tclass._module.Shape(), $Heap);
  var shape#0_1: ref;
  var shape'#0_0: ref;
  var shapes##0: Seq;

    // AddMethodImpl: PrintMultiSet, Impl$$_module.__default.PrintMultiSet
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(99,9)
    assume true;
    assume true;
    s#0 := shapes#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(100,15)
    assume true;
    assume true;
    ordered#0 := Lit(Seq#Empty(): Seq);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(101,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if MultiSet#Card(s#0) <= LitInt(0)
       then 0 - MultiSet#Card(s#0)
       else MultiSet#Card(s#0) - 0);
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant (if MultiSet#Card(s#0) <= LitInt(0)
           then 0 - MultiSet#Card(s#0)
           else MultiSet#Card(s#0) - 0)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (MultiSet#Card(s#0) <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (MultiSet#Card(s#0) == 0)
        {
            break;
        }

        $decr$loop#00 := (if MultiSet#Card(s#0) <= LitInt(0)
           then 0 - MultiSet#Card(s#0)
           else MultiSet#Card(s#0) - 0);
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(102,46)
        assume true;
        // TrCallStmt: Adding lhs with type Shape
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        call {:id "id97"} $rhs##0_0 := Call$$_module.__default.ThereIsASmallestInMultiset(s##0_0);
        // TrCallStmt: After ProcessCallStmt
        _v1#0_0 := $rhs##0_0;
        defass#_v1#0_0 := true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(103,15)
        havoc shape#0_1;
        if ($Is(shape#0_1, Tclass._module.Shape())
           && $IsAlloc(shape#0_1, Tclass._module.Shape(), $Heap))
        {
            if (MultiSet#Multiplicity(s#0, $Box(shape#0_1)) > 0)
            {
                // Begin Comprehension WF check
                havoc shape'#0_0;
                if ($Is(shape'#0_0, Tclass._module.Shape())
                   && $IsAlloc(shape'#0_0, Tclass._module.Shape(), $Heap))
                {
                    if (MultiSet#Multiplicity(s#0, $Box(shape'#0_0)) > 0)
                    {
                        assert {:id "id99"} {:subsumption 0} shape#0_1 != null;
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(shape#0_1), Tclass._module.Shape?(), $Heap);
                        assume _module.Shape.Center#canCall($Heap, shape#0_1);
                        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0_1));
                        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0_1));
                        assert {:id "id100"} {:subsumption 0} shape'#0_0 != null;
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(shape'#0_0), Tclass._module.Shape?(), $Heap);
                        assume _module.Shape.Center#canCall($Heap, shape'#0_0);
                        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#0_0));
                        assume _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#0_0));
                    }
                }

                // End Comprehension WF check
            }

            assume MultiSet#Multiplicity(s#0, $Box(shape#0_1)) > 0
               ==> (forall shape'#0_1: ref :: 
                { _module.Shape.Center($Heap, shape'#0_1) } 
                  { MultiSet#Multiplicity(s#0, $Box(shape'#0_1)) } 
                $Is(shape'#0_1, Tclass._module.Shape())
                   ==> 
                  MultiSet#Multiplicity(s#0, $Box(shape'#0_1)) > 0
                   ==> _module.Shape.Center#canCall($Heap, shape#0_1)
                     && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape#0_1))
                     && 
                    _module.Shape.Center#canCall($Heap, shape'#0_1)
                     && _System.Tuple2.___hMake2_q(_module.Shape.Center($Heap, shape'#0_1)));
        }

        assert {:id "id101"} ($Is(null, Tclass._module.Shape())
             && 
            MultiSet#Multiplicity(s#0, $Box(null)) > 0
             && (forall shape'#0_3: ref :: 
              { _module.Shape.Center($Heap, shape'#0_3) } 
                { MultiSet#Multiplicity(s#0, $Box(shape'#0_3)) } 
              $Is(shape'#0_3, Tclass._module.Shape())
                 ==> 
                MultiSet#Multiplicity(s#0, $Box(shape'#0_3)) > 0
                 ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, null))): real
                   <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0_3))): real))
           || (exists $as#shape0_0#0_0: ref :: 
            $Is($as#shape0_0#0_0, Tclass._module.Shape())
               && 
              MultiSet#Multiplicity(s#0, $Box($as#shape0_0#0_0)) > 0
               && (forall shape'#0_2: ref :: 
                { _module.Shape.Center($Heap, shape'#0_2) } 
                  { MultiSet#Multiplicity(s#0, $Box(shape'#0_2)) } 
                $Is(shape'#0_2, Tclass._module.Shape())
                   ==> 
                  MultiSet#Multiplicity(s#0, $Box(shape'#0_2)) > 0
                   ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, $as#shape0_0#0_0))): real
                     <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0_2))): real));
        defass#shape#0_0 := true;
        havoc shape#0_0;
        assume {:id "id102"} MultiSet#Multiplicity(s#0, $Box(shape#0_0)) > 0
           && (forall shape'#0_4: ref :: 
            { _module.Shape.Center($Heap, shape'#0_4) } 
              { MultiSet#Multiplicity(s#0, $Box(shape'#0_4)) } 
            $Is(shape'#0_4, Tclass._module.Shape())
               ==> 
              MultiSet#Multiplicity(s#0, $Box(shape'#0_4)) > 0
               ==> $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape#0_0))): real
                 <= $Unbox(_System.Tuple2._0(_module.Shape.Center($Heap, shape'#0_4))): real);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(104,13)
        assume true;
        assert {:id "id103"} defass#shape#0_0;
        assume true;
        ordered#0 := Seq#Append(ordered#0, Seq#Build(Seq#Empty(): Seq, $Box(shape#0_0)));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(105,7)
        assume true;
        assert {:id "id105"} defass#shape#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(shape#0_0)));
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(101,3)
        assert {:id "id107"} 0 <= $decr$loop#00
           || (if MultiSet#Card(s#0) <= LitInt(0)
               then 0 - MultiSet#Card(s#0)
               else MultiSet#Card(s#0) - 0)
             == $decr$loop#00;
        assert {:id "id108"} (if MultiSet#Card(s#0) <= LitInt(0)
             then 0 - MultiSet#Card(s#0)
             else MultiSet#Card(s#0) - 0)
           < $decr$loop#00;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(107,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    shapes##0 := ordered#0;
    call {:id "id109"} Call$$_module.__default.PrintSeq(shapes##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "ThereIsASmallestInt (well-formedness)"} CheckWellFormed$$_module.__default.ThereIsASmallestInt(s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap))
   returns (k#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ThereIsASmallestInt (call)"} Call$$_module.__default.ThereIsASmallestInt(s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap))
   returns (k#0: int);
  // user-defined preconditions
  requires {:id "id116"} !Set#Equal(s#0, Set#Empty(): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id117"} Set#IsMember(s#0, $Box(k#0));
  ensures {:id "id118"} (forall k'#1: int :: 
    { Set#IsMember(s#0, $Box(k'#1)) } 
    Set#IsMember(s#0, $Box(k'#1)) ==> k#0 <= k'#1);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ThereIsASmallestInt (correctness)"} Impl$$_module.__default.ThereIsASmallestInt(s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap))
   returns (k#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id119"} !Set#Equal(s#0, Set#Empty(): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id120"} Set#IsMember(s#0, $Box(k#0));
  ensures {:id "id121"} (forall k'#1: int :: 
    { Set#IsMember(s#0, $Box(k'#1)) } 
    Set#IsMember(s#0, $Box(k'#1)) ==> k#0 <= k'#1);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ThereIsASmallestInt (correctness)"} Impl$$_module.__default.ThereIsASmallestInt(s#0: Set) returns (k#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#1: int;
  var eg$k'#0: int;
  var k'#0_0: int;
  var s'#1_0: Set where $Is(s'#1_0, TSet(TInt)) && $IsAlloc(s'#1_0, TSet(TInt), $Heap);
  var $rhs##1_0: int;
  var s##1_0: Set;

    // AddMethodImpl: ThereIsASmallestInt, Impl$$_module.__default.ThereIsASmallestInt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(114,5)
    havoc k#1;
    if (true)
    {
        assume true;
    }

    assert {:id "id122"} ($Is(LitInt(0), TInt) && Set#IsMember(s#0, $Box(LitInt(0))))
       || (exists $as#k0#0: int :: Set#IsMember(s#0, $Box($as#k0#0)));
    havoc k#0;
    assume {:id "id123"} Set#IsMember(s#0, $Box(k#0));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(115,3)
    // Begin Comprehension WF check
    havoc eg$k'#0;
    if (true)
    {
        if (Set#IsMember(s#0, $Box(eg$k'#0)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    havoc k'#0_0;
    if (*)
    {
        assume Set#IsMember(s#0, $Box(k'#0_0)) && k'#0_0 < k#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(116,12)
        assume true;
        assume true;
        s'#1_0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, $Box(k#0)));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(117,5)
        assume true;
        assert {:id "id125"} Set#Equal(s#0, Set#Union(s'#1_0, Set#UnionOne(Set#Empty(): Set, $Box(k#0))));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(118,5)
        assume true;
        assert {:id "id126"} Set#IsMember(s'#1_0, $Box(k'#0_0));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(119,29)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_0 := s'#1_0;
        assert {:id "id127"} Set#Subset(s##1_0, s#0) && !Set#Subset(s#0, s##1_0);
        call {:id "id128"} $rhs##1_0 := Call$$_module.__default.ThereIsASmallestInt(s##1_0);
        // TrCallStmt: After ProcessCallStmt
        k#0 := $rhs##1_0;
    }
    else
    {
        assume {:id "id130"} !(exists eg$k'#1: int :: 
          { Set#IsMember(s#0, $Box(eg$k'#1)) } 
          Set#IsMember(s#0, $Box(eg$k'#1)) && eg$k'#1 < k#0);
    }
}



procedure {:verboseName "PrintMap (well-formedness)"} CheckWellFormed$$_module.__default.PrintMap(shapes#0: Map
       where $Is(shapes#0, TMap(Tclass._System.nat(), Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TMap(Tclass._System.nat(), Tclass._module.Shape()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintMap (call)"} Call$$_module.__default.PrintMap(shapes#0: Map
       where $Is(shapes#0, TMap(Tclass._System.nat(), Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TMap(Tclass._System.nat(), Tclass._module.Shape()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintMap (correctness)"} Impl$$_module.__default.PrintMap(shapes#0: Map
       where $Is(shapes#0, TMap(Tclass._System.nat(), Tclass._module.Shape()))
         && $IsAlloc(shapes#0, TMap(Tclass._System.nat(), Tclass._module.Shape()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintMap (correctness)"} Impl$$_module.__default.PrintMap(shapes#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._System.nat()))
       && $IsAlloc(s#0, TSet(Tclass._System.nat()), $Heap);
  var ordered#0: Seq
     where $Is(ordered#0, TSeq(Tclass._module.Shape()))
       && $IsAlloc(ordered#0, TSeq(Tclass._module.Shape()), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var _v2#0_0: int;
  var $rhs##0_0: int;
  var s##0_0: Set;
  var k#0_0: int where LitInt(0) <= k#0_0;
  var k#0_1: int;
  var k'#0_0: int;
  var shapes##0: Seq;

    // AddMethodImpl: PrintMap, Impl$$_module.__default.PrintMap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(124,9)
    assume true;
    assume true;
    s#0 := Map#Domain(shapes#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(125,15)
    assume true;
    assume true;
    ordered#0 := Lit(Seq#Empty(): Seq);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(126,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0);
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id134"} $w$loop#0 ==> Set#Subset(s#0, Map#Domain(shapes#0));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id133"} Set#Subset(s#0, Map#Domain(shapes#0));
            if (Set#Card(s#0) <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (Set#Card(s#0) == 0)
        {
            break;
        }

        $decr$loop#00 := (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0);
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(129,39)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        call {:id "id135"} $rhs##0_0 := Call$$_module.__default.ThereIsASmallestInt(s##0_0);
        // TrCallStmt: After ProcessCallStmt
        _v2#0_0 := $rhs##0_0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(130,11)
        havoc k#0_1;
        if (LitInt(0) <= k#0_1)
        {
            if (Set#IsMember(s#0, $Box(k#0_1)))
            {
                // Begin Comprehension WF check
                havoc k'#0_0;
                if (true)
                {
                    if (Set#IsMember(s#0, $Box(k'#0_0)))
                    {
                    }
                }

                // End Comprehension WF check
            }

            assume true;
        }

        assert {:id "id137"} ($Is(LitInt(0), Tclass._System.nat())
             && 
            Set#IsMember(s#0, $Box(LitInt(0)))
             && (forall k'#0_4: int :: 
              { Set#IsMember(s#0, $Box(k'#0_4)) } 
              Set#IsMember(s#0, $Box(k'#0_4)) ==> LitInt(0) <= k'#0_4))
           || 
          ($Is(LitInt(0), Tclass._System.nat())
             && 
            Set#IsMember(s#0, $Box(LitInt(0)))
             && (forall k'#0_3: int :: 
              { Set#IsMember(s#0, $Box(k'#0_3)) } 
              Set#IsMember(s#0, $Box(k'#0_3)) ==> LitInt(0) <= k'#0_3))
           || (exists $as#k0_0#0_0: int :: 
            LitInt(0) <= $as#k0_0#0_0
               && 
              Set#IsMember(s#0, $Box($as#k0_0#0_0))
               && (forall k'#0_2: int :: 
                { Set#IsMember(s#0, $Box(k'#0_2)) } 
                Set#IsMember(s#0, $Box(k'#0_2)) ==> $as#k0_0#0_0 <= k'#0_2));
        havoc k#0_0;
        assume {:id "id138"} Set#IsMember(s#0, $Box(k#0_0))
           && (forall k'#0_5: int :: 
            { Set#IsMember(s#0, $Box(k'#0_5)) } 
            Set#IsMember(s#0, $Box(k'#0_5)) ==> k#0_0 <= k'#0_5);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(131,13)
        assume true;
        assert {:id "id139"} Set#IsMember(Map#Domain(shapes#0), $Box(k#0_0));
        assume true;
        ordered#0 := Seq#Append(ordered#0, Seq#Build(Seq#Empty(): Seq, Map#Elements(shapes#0)[$Box(k#0_0)]));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(132,7)
        assume true;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, $Box(k#0_0)));
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(126,3)
        assert {:id "id142"} 0 <= $decr$loop#00
           || (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
             == $decr$loop#00;
        assert {:id "id143"} (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
           < $decr$loop#00;
        assume true;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(134,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    shapes##0 := ordered#0;
    call {:id "id144"} Call$$_module.__default.PrintSeq(shapes##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 5 == $FunctionContextHeight;
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
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Square() : Ty
uses {
// Tclass._module.Square Tag
axiom Tag(Tclass._module.Square()) == Tagclass._module.Square
   && TagFamily(Tclass._module.Square()) == tytagFamily$Square;
}

const unique Tagclass._module.Square: TyTag;

// Box/unbox axiom for Tclass._module.Square
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Square()) } 
  $IsBox(bx, Tclass._module.Square())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Square()));

function Tclass._module.Square?() : Ty
uses {
// Tclass._module.Square? Tag
axiom Tag(Tclass._module.Square?()) == Tagclass._module.Square?
   && TagFamily(Tclass._module.Square?()) == tytagFamily$Square;
axiom implements$_module.Shape(Tclass._module.Square?());
}

const unique Tagclass._module.Square?: TyTag;

// Box/unbox axiom for Tclass._module.Square?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Square?()) } 
  $IsBox(bx, Tclass._module.Square?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Square?()));

function Tclass._module.Circle() : Ty
uses {
// Tclass._module.Circle Tag
axiom Tag(Tclass._module.Circle()) == Tagclass._module.Circle
   && TagFamily(Tclass._module.Circle()) == tytagFamily$Circle;
}

const unique Tagclass._module.Circle: TyTag;

// Box/unbox axiom for Tclass._module.Circle
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Circle()) } 
  $IsBox(bx, Tclass._module.Circle())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Circle()));

function Tclass._module.Circle?() : Ty
uses {
// Tclass._module.Circle? Tag
axiom Tag(Tclass._module.Circle?()) == Tagclass._module.Circle?
   && TagFamily(Tclass._module.Circle?()) == tytagFamily$Circle;
axiom implements$_module.Shape(Tclass._module.Circle?());
}

const unique Tagclass._module.Circle?: TyTag;

// Box/unbox axiom for Tclass._module.Circle?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Circle?()) } 
  $IsBox(bx, Tclass._module.Circle?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Circle?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#square#0: bool;
  var square#0: ref
     where defass#square#0
       ==> $Is(square#0, Tclass._module.Square())
         && $IsAlloc(square#0, Tclass._module.Square(), $Heap);
  var $nw: ref;
  var x1##0: real;
  var y1##0: real;
  var x2##0: real;
  var y2##0: real;
  var defass#circle#0: bool;
  var circle#0: ref
     where defass#circle#0
       ==> $Is(circle#0, Tclass._module.Circle())
         && $IsAlloc(circle#0, Tclass._module.Circle(), $Heap);
  var x##0: real;
  var y##0: real;
  var r##0: real;
  var shapes#0: ref
     where $Is(shapes#0, Tclass._System.array(Tclass._module.Shape?()))
       && $IsAlloc(shapes#0, Tclass._System.array(Tclass._module.Shape?()), $Heap);
  var $rhs#0: ref;
  var $rhs#1: ref;
  var shapes##0: ref;
  var shapes##1: Seq;
  var shapes##2: Set;
  var shapes##3: MultiSet;
  var shapes##4: Map;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(138,14)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(138,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x1##0 := LitReal(0e0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    y1##0 := LitReal(1e0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x2##0 := LitReal(1e0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    y2##0 := LitReal(0e0);
    call {:id "id145"} $nw := Call$$_module.Square.__ctor(x1##0, y1##0, x2##0, y2##0);
    // TrCallStmt: After ProcessCallStmt
    square#0 := $nw;
    defass#square#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(139,3)
    assume true;
    assert {:id "id147"} defass#square#0;
    assert {:id "id148"} {:subsumption 0} square#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(square#0), Tclass._module.Square?(), $Heap);
    assume _module.Square.Center#canCall($Heap, square#0);
    assume _System.Tuple2.___hMake2_q(_module.Square.Center($Heap, square#0));
    assume _module.Square.Center#canCall($Heap, square#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(141,14)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(141,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitReal(1e0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := LitReal(1e0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##0 := LitReal(4e0);
    call {:id "id149"} $nw := Call$$_module.Circle.__ctor(x##0, y##0, r##0);
    // TrCallStmt: After ProcessCallStmt
    circle#0 := $nw;
    defass#circle#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(142,3)
    assume true;
    assert {:id "id151"} defass#circle#0;
    assert {:id "id152"} {:subsumption 0} circle#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(circle#0), Tclass._module.Circle?(), $Heap);
    assume _module.Circle.Center#canCall($Heap, circle#0);
    assume _System.Tuple2.___hMake2_q(_module.Circle.Center($Heap, circle#0));
    assume _module.Circle.Center#canCall($Heap, circle#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(144,30)
    assume true;
    assert {:id "id153"} 0 <= LitInt(2);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.Shape?()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(2);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    shapes#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(145,13)
    assert {:id "id155"} shapes#0 != null;
    assert {:id "id156"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(shapes#0);
    assume true;
    assert {:id "id157"} $_ModifiesFrame[shapes#0, IndexField(LitInt(0))];
    assert {:id "id158"} defass#square#0;
    assume true;
    $rhs#0 := square#0;
    $Heap := update($Heap, shapes#0, IndexField(LitInt(0)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(146,13)
    assert {:id "id161"} shapes#0 != null;
    assert {:id "id162"} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(shapes#0);
    assume true;
    assert {:id "id163"} $_ModifiesFrame[shapes#0, IndexField(LitInt(1))];
    assert {:id "id164"} defass#circle#0;
    assume true;
    $rhs#1 := circle#0;
    $Heap := update($Heap, shapes#0, IndexField(LitInt(1)), $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(147,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    shapes##0 := shapes#0;
    call {:id "id167"} Call$$_module.__default.PrintArray(shapes##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(149,11)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id168"} defass#square#0;
    assert {:id "id169"} defass#circle#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    shapes##1 := Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(square#0)), $Box(circle#0));
    call {:id "id170"} Call$$_module.__default.PrintSeq(shapes##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(150,11)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id171"} defass#square#0;
    assert {:id "id172"} defass#circle#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    shapes##2 := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(square#0)), $Box(circle#0));
    call {:id "id173"} Call$$_module.__default.PrintSet(shapes##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(151,16)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id174"} defass#square#0;
    assert {:id "id175"} defass#circle#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    shapes##3 := MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(square#0)), $Box(circle#0));
    call {:id "id176"} Call$$_module.__default.PrintMultiSet(shapes##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Poly.dfy(152,11)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id177"} $Is(LitInt(0), Tclass._System.nat());
    assert {:id "id178"} defass#square#0;
    assert {:id "id179"} $Is(LitInt(1), Tclass._System.nat());
    assert {:id "id180"} defass#circle#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    shapes##4 := Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(0)), $Box(square#0)), 
      $Box(LitInt(1)), 
      $Box(circle#0));
    call {:id "id181"} Call$$_module.__default.PrintMap(shapes##4);
    // TrCallStmt: After ProcessCallStmt
}



const unique class._module.Shape?: ClassName;

// $Is axiom for trait Shape
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Shape?()) } 
  $Is($o, Tclass._module.Shape?())
     <==> $o == null || implements$_module.Shape(dtype($o)));

// $IsAlloc axiom for trait Shape
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Shape?(), $h) } 
  $IsAlloc($o, Tclass._module.Shape?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.Shape(ty: Ty) : bool;

// function declaration for _module.Shape.Center
function _module.Shape.Center($heap: Heap, this: ref) : DatatypeType
uses {
// consequence axiom for _module.Shape.Center
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Shape.Center($Heap, this) } 
    _module.Shape.Center#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Shape())
           && $IsAlloc(this, Tclass._module.Shape(), $Heap))
       ==> $Is(_module.Shape.Center($Heap, this), Tclass._System.Tuple2(TReal, TReal)));
}

function _module.Shape.Center#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Shape.Center
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Shape.Center($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Shape())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Shape.Center($h0, this) == _module.Shape.Center($h1, this));

function _module.Shape.Center#requires(Heap, ref) : bool;

// #requires axiom for _module.Shape.Center
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Shape.Center#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Shape())
       && $IsAlloc(this, Tclass._module.Shape(), $Heap)
     ==> _module.Shape.Center#requires($Heap, this) == true);

procedure {:verboseName "Shape.Center (well-formedness)"} CheckWellformed$$_module.Shape.Center(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Shape())
         && $IsAlloc(this, Tclass._module.Shape(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Shape.PrintCenter (well-formedness)"} CheckWellFormed$$_module.Shape.PrintCenter(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Shape())
         && $IsAlloc(this, Tclass._module.Shape(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Shape.PrintCenter (call)"} Call$$_module.Shape.PrintCenter(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Shape())
         && $IsAlloc(this, Tclass._module.Shape(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Shape.PrintCenter (correctness)"} Impl$$_module.Shape.PrintCenter(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Shape())
         && $IsAlloc(this, Tclass._module.Shape(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.Shape
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Shape()) } { $Is(c#0, Tclass._module.Shape?()) } 
  $Is(c#0, Tclass._module.Shape())
     <==> $Is(c#0, Tclass._module.Shape?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Shape
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Shape(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Shape?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Shape(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Shape?(), $h));

const unique class._module.Square?: ClassName;

// $Is axiom for class Square
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Square?()) } 
  $Is($o, Tclass._module.Square?())
     <==> $o == null || dtype($o) == Tclass._module.Square?());

// $IsAlloc axiom for class Square
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Square?(), $h) } 
  $IsAlloc($o, Tclass._module.Square?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Square.x1: Field
uses {
axiom FDim(_module.Square.x1) == 0
   && FieldOfDecl(class._module.Square?, field$x1) == _module.Square.x1
   && !$IsGhostField(_module.Square.x1);
}

// Square.x1: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Square.x1)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Square?()
     ==> $Is($Unbox(read($h, $o, _module.Square.x1)): real, TReal));

// Square.x1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Square.x1)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Square?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Square.x1)): real, TReal, $h));

const _module.Square.y1: Field
uses {
axiom FDim(_module.Square.y1) == 0
   && FieldOfDecl(class._module.Square?, field$y1) == _module.Square.y1
   && !$IsGhostField(_module.Square.y1);
}

// Square.y1: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Square.y1)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Square?()
     ==> $Is($Unbox(read($h, $o, _module.Square.y1)): real, TReal));

// Square.y1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Square.y1)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Square?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Square.y1)): real, TReal, $h));

const _module.Square.x2: Field
uses {
axiom FDim(_module.Square.x2) == 0
   && FieldOfDecl(class._module.Square?, field$x2) == _module.Square.x2
   && !$IsGhostField(_module.Square.x2);
}

// Square.x2: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Square.x2)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Square?()
     ==> $Is($Unbox(read($h, $o, _module.Square.x2)): real, TReal));

// Square.x2: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Square.x2)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Square?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Square.x2)): real, TReal, $h));

const _module.Square.y2: Field
uses {
axiom FDim(_module.Square.y2) == 0
   && FieldOfDecl(class._module.Square?, field$y2) == _module.Square.y2
   && !$IsGhostField(_module.Square.y2);
}

// Square.y2: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Square.y2)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Square?()
     ==> $Is($Unbox(read($h, $o, _module.Square.y2)): real, TReal));

// Square.y2: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Square.y2)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Square?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Square.y2)): real, TReal, $h));

procedure {:verboseName "Square._ctor (well-formedness)"} CheckWellFormed$$_module.Square.__ctor(x1#0: real, y1#0: real, x2#0: real, y2#0: real) returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Square._ctor (call)"} Call$$_module.Square.__ctor(x1#0: real, y1#0: real, x2#0: real, y2#0: real)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Square())
         && $IsAlloc(this, Tclass._module.Square(), $Heap));
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



procedure {:verboseName "Square._ctor (correctness)"} Impl$$_module.Square.__ctor(x1#0: real, y1#0: real, x2#0: real, y2#0: real)
   returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.Square.Center
function _module.Square.Center($heap: Heap, this: ref) : DatatypeType
uses {
// consequence axiom for _module.Square.Center
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Square.Center($Heap, this) } 
    _module.Square.Center#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Square())
           && $IsAlloc(this, Tclass._module.Square(), $Heap))
       ==> $Is(_module.Square.Center($Heap, this), Tclass._System.Tuple2(TReal, TReal)));
// definition axiom for _module.Square.Center (revealed)
axiom {:id "id186"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Square.Center($Heap, this), $IsGoodHeap($Heap) } 
    _module.Square.Center#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Square())
           && $IsAlloc(this, Tclass._module.Square(), $Heap))
       ==> _module.Square.Center($Heap, this)
         == (var x#0 := ($Unbox(read($Heap, this, _module.Square.x1)): real
                 + $Unbox(read($Heap, this, _module.Square.x2)): real)
               / 2e0; 
          (var y#0 := ($Unbox(read($Heap, this, _module.Square.y1)): real
                   + $Unbox(read($Heap, this, _module.Square.y2)): real)
                 / 2e0; 
            #_System._tuple#2._#Make2($Box(x#0), $Box(y#0)))));
}

function _module.Square.Center#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Square.Center
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Square.Center($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Square())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Square.Center($h0, this) == _module.Square.Center($h1, this));

function _module.Square.Center#requires(Heap, ref) : bool;

// #requires axiom for _module.Square.Center
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Square.Center#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Square())
       && $IsAlloc(this, Tclass._module.Square(), $Heap)
     ==> _module.Square.Center#requires($Heap, this) == true);

// override axiom for _module.Shape.Center in class _module.Square
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Shape.Center($Heap, this), $Is(this, Tclass._module.Square()), $IsGoodHeap($Heap) } 
      { _module.Shape.Center($Heap, this), _module.Square.Center($Heap, this), $IsGoodHeap($Heap) } 
    _module.Square.Center#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Square()))
       ==> _module.Shape.Center($Heap, this) == _module.Square.Center($Heap, this));

procedure {:verboseName "Square.Center (well-formedness)"} CheckWellformed$$_module.Square.Center(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Square())
         && $IsAlloc(this, Tclass._module.Square(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Square.Center (well-formedness)"} CheckWellformed$$_module.Square.Center(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var x#Z#0: real;
  var let#0#0#0: real;
  var y#Z#0: real;
  var let#1#0#0: real;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Square.Center($Heap, this), Tclass._System.Tuple2(TReal, TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc x#Z#0;
        b$reqreads#0 := $_ReadsFrame[this, _module.Square.x1];
        b$reqreads#1 := $_ReadsFrame[this, _module.Square.x2];
        assert {:id "id187"} LitReal(2e0) != 0e0;
        assume {:id "id188"} let#0#0#0
           == ($Unbox(read($Heap, this, _module.Square.x1)): real
               + $Unbox(read($Heap, this, _module.Square.x2)): real)
             / 2e0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TReal);
        assume {:id "id189"} x#Z#0 == let#0#0#0;
        havoc y#Z#0;
        b$reqreads#2 := $_ReadsFrame[this, _module.Square.y1];
        b$reqreads#3 := $_ReadsFrame[this, _module.Square.y2];
        assert {:id "id190"} LitReal(2e0) != 0e0;
        assume {:id "id191"} let#1#0#0
           == ($Unbox(read($Heap, this, _module.Square.y1)): real
               + $Unbox(read($Heap, this, _module.Square.y2)): real)
             / 2e0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, TReal);
        assume {:id "id192"} y#Z#0 == let#1#0#0;
        assume {:id "id193"} _module.Square.Center($Heap, this)
           == #_System._tuple#2._#Make2($Box(x#Z#0), $Box(y#Z#0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Square.Center($Heap, this), Tclass._System.Tuple2(TReal, TReal));
        assert {:id "id194"} b$reqreads#0;
        assert {:id "id195"} b$reqreads#1;
        assert {:id "id196"} b$reqreads#2;
        assert {:id "id197"} b$reqreads#3;
        return;

        assume false;
    }
}



procedure {:verboseName "Square.Center (override check)"} OverrideCheck$$_module.Square.Center(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Square())
         && $IsAlloc(this, Tclass._module.Square(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Square.Center (override check)"} OverrideCheck$$_module.Square.Center(this: ref)
{
  var Square_$_ReadsFrame: [ref,Field]bool;

    assert {:id "id198"} Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
      Set#UnionOne(Set#Empty(): Set, $Box(this)));
    Square_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assert {:id "id199"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this ==> $o == this);
}



// $Is axiom for non-null type _module.Square
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Square()) } { $Is(c#0, Tclass._module.Square?()) } 
  $Is(c#0, Tclass._module.Square())
     <==> $Is(c#0, Tclass._module.Square?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Square
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Square(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Square?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Square(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Square?(), $h));

const unique class._module.Circle?: ClassName;

// $Is axiom for class Circle
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Circle?()) } 
  $Is($o, Tclass._module.Circle?())
     <==> $o == null || dtype($o) == Tclass._module.Circle?());

// $IsAlloc axiom for class Circle
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Circle?(), $h) } 
  $IsAlloc($o, Tclass._module.Circle?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Circle.x: Field
uses {
axiom FDim(_module.Circle.x) == 0
   && FieldOfDecl(class._module.Circle?, field$x) == _module.Circle.x
   && !$IsGhostField(_module.Circle.x);
}

// Circle.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Circle.x)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Circle?()
     ==> $Is($Unbox(read($h, $o, _module.Circle.x)): real, TReal));

// Circle.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Circle.x)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Circle?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Circle.x)): real, TReal, $h));

const _module.Circle.y: Field
uses {
axiom FDim(_module.Circle.y) == 0
   && FieldOfDecl(class._module.Circle?, field$y) == _module.Circle.y
   && !$IsGhostField(_module.Circle.y);
}

// Circle.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Circle.y)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Circle?()
     ==> $Is($Unbox(read($h, $o, _module.Circle.y)): real, TReal));

// Circle.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Circle.y)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Circle?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Circle.y)): real, TReal, $h));

const _module.Circle.r: Field
uses {
axiom FDim(_module.Circle.r) == 0
   && FieldOfDecl(class._module.Circle?, field$r) == _module.Circle.r
   && !$IsGhostField(_module.Circle.r);
}

// Circle.r: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Circle.r)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Circle?()
     ==> $Is($Unbox(read($h, $o, _module.Circle.r)): real, TReal));

// Circle.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Circle.r)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Circle?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Circle.r)): real, TReal, $h));

procedure {:verboseName "Circle._ctor (well-formedness)"} CheckWellFormed$$_module.Circle.__ctor(x#0: real, y#0: real, r#0: real) returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Circle._ctor (call)"} Call$$_module.Circle.__ctor(x#0: real, y#0: real, r#0: real)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Circle())
         && $IsAlloc(this, Tclass._module.Circle(), $Heap));
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



procedure {:verboseName "Circle._ctor (correctness)"} Impl$$_module.Circle.__ctor(x#0: real, y#0: real, r#0: real) returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.Circle.Center
function _module.Circle.Center($heap: Heap, this: ref) : DatatypeType
uses {
// consequence axiom for _module.Circle.Center
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Circle.Center($Heap, this) } 
    _module.Circle.Center#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Circle())
           && $IsAlloc(this, Tclass._module.Circle(), $Heap))
       ==> $Is(_module.Circle.Center($Heap, this), Tclass._System.Tuple2(TReal, TReal)));
// definition axiom for _module.Circle.Center (revealed)
axiom {:id "id203"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Circle.Center($Heap, this), $IsGoodHeap($Heap) } 
    _module.Circle.Center#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Circle())
           && $IsAlloc(this, Tclass._module.Circle(), $Heap))
       ==> _module.Circle.Center($Heap, this)
         == #_System._tuple#2._#Make2(read($Heap, this, _module.Circle.x), read($Heap, this, _module.Circle.y)));
}

function _module.Circle.Center#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Circle.Center
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Circle.Center($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Circle())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Circle.Center($h0, this) == _module.Circle.Center($h1, this));

function _module.Circle.Center#requires(Heap, ref) : bool;

// #requires axiom for _module.Circle.Center
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Circle.Center#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Circle())
       && $IsAlloc(this, Tclass._module.Circle(), $Heap)
     ==> _module.Circle.Center#requires($Heap, this) == true);

// override axiom for _module.Shape.Center in class _module.Circle
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Shape.Center($Heap, this), $Is(this, Tclass._module.Circle()), $IsGoodHeap($Heap) } 
      { _module.Shape.Center($Heap, this), _module.Circle.Center($Heap, this), $IsGoodHeap($Heap) } 
    _module.Circle.Center#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Circle()))
       ==> _module.Shape.Center($Heap, this) == _module.Circle.Center($Heap, this));

procedure {:verboseName "Circle.Center (well-formedness)"} CheckWellformed$$_module.Circle.Center(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Circle())
         && $IsAlloc(this, Tclass._module.Circle(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Circle.Center (well-formedness)"} CheckWellformed$$_module.Circle.Center(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Circle.Center($Heap, this), Tclass._System.Tuple2(TReal, TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#0 := $_ReadsFrame[this, _module.Circle.x];
        b$reqreads#1 := $_ReadsFrame[this, _module.Circle.y];
        assume {:id "id204"} _module.Circle.Center($Heap, this)
           == #_System._tuple#2._#Make2(read($Heap, this, _module.Circle.x), read($Heap, this, _module.Circle.y));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Circle.Center($Heap, this), Tclass._System.Tuple2(TReal, TReal));
        assert {:id "id205"} b$reqreads#0;
        assert {:id "id206"} b$reqreads#1;
        return;

        assume false;
    }
}



procedure {:verboseName "Circle.Center (override check)"} OverrideCheck$$_module.Circle.Center(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Circle())
         && $IsAlloc(this, Tclass._module.Circle(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Circle.Center (override check)"} OverrideCheck$$_module.Circle.Center(this: ref)
{
  var Circle_$_ReadsFrame: [ref,Field]bool;

    assert {:id "id207"} Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
      Set#UnionOne(Set#Empty(): Set, $Box(this)));
    Circle_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assert {:id "id208"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this ==> $o == this);
}



// $Is axiom for non-null type _module.Circle
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Circle()) } { $Is(c#0, Tclass._module.Circle?()) } 
  $Is(c#0, Tclass._module.Circle())
     <==> $Is(c#0, Tclass._module.Circle?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Circle
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Circle(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Circle?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Circle(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Circle?(), $h));

// type axiom for trait parent: Square? extends Shape?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Square?()) } 
  $Is($o, Tclass._module.Square?()) ==> $Is($o, Tclass._module.Shape?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Square?()) } 
  $IsBox(bx, Tclass._module.Square?()) ==> $IsBox(bx, Tclass._module.Shape?()));

// allocation axiom for trait parent: Square? extends Shape?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.Square?(), $heap) } 
  $IsAlloc($o, Tclass._module.Square?(), $heap)
     ==> $IsAlloc($o, Tclass._module.Shape?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.Square?(), $h) } 
  $IsAllocBox(bx, Tclass._module.Square?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.Shape?(), $h));

// type axiom for trait parent: Circle? extends Shape?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Circle?()) } 
  $Is($o, Tclass._module.Circle?()) ==> $Is($o, Tclass._module.Shape?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Circle?()) } 
  $IsBox(bx, Tclass._module.Circle?()) ==> $IsBox(bx, Tclass._module.Shape?()));

// allocation axiom for trait parent: Circle? extends Shape?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.Circle?(), $heap) } 
  $IsAlloc($o, Tclass._module.Circle?(), $heap)
     ==> $IsAlloc($o, Tclass._module.Shape?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.Circle?(), $h) } 
  $IsAllocBox(bx, Tclass._module.Circle?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.Shape?(), $h));

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

const unique tytagFamily$Shape: TyTagFamily;

const unique tytagFamily$Square: TyTagFamily;

const unique tytagFamily$Circle: TyTagFamily;

const unique field$x1: NameFamily;

const unique field$y1: NameFamily;

const unique field$x2: NameFamily;

const unique field$y2: NameFamily;

const unique field$x: NameFamily;

const unique field$y: NameFamily;

const unique field$r: NameFamily;
